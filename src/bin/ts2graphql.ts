#!/usr/bin/env node

// Copyright 2017 Sam Vervaeck
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy of
// this software and associated documentation files (the "Software"), to deal in
// the Software without restriction, including without limitation the rights to
// use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
// of the Software, and to permit persons to whom the Software is furnished to do
// so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE. 

import "source-map-support/register"

import * as path from "path"
import * as ts from "../../typescript"
import { createProgramForFiles, createProgramForProject } from "../util"
import { push, zipObject, flatten } from "../util"
import { pascal } from "case"

type SimplePropertyName = ts.Identifier & ts.NumericLiteral & ts.StringLiteral;
type Property = ts.PropertyDeclaration & ts.PropertySignature;

const argv = require('yargs')
  .string('project')
  .describe('project', 'Path to a directory containing a tsconfig.json-file')
  .demandOption('match')
  .string('match')
  .describe('match', 'Path to the base class its polymorphic enumerator')
  .argv

const memberPath = argv.match.split('.')

const program = argv._.length > 0 
  ? createProgramForFiles(argv._, argv['--'] || []) 
  : createProgramForProject(path.resolve(argv['project'] || process.cwd()));

const printer = ts.createPrinter({ removeComments: true })
const checker = program.getTypeChecker()

const node = findMember(program, memberPath)

if (node === undefined) {
  console.error(`Could not find member ${memberPath.join('.')}`)
  process.exit(1)
}

const classlikes = findClassLikesWithMember(program, <ts.ClassElement>node)
const enumDecls: ts.EnumDeclaration[] = []
const unionTypes: [string, any][] = []

let out = ''

for (const classlike of classlikes) {
  out += `type ${classlike.name.text} {\n`
  for (const sym of checker.getPropertiesOfType(checker.getTypeAtLocation(classlike))) {
    if (sym.name[0] !== '_' && isProperty(sym.declarations[0])) {
      const decl = <Property>sym.declarations[0]
      const resolved = resolveTypeAliases(decl.type)
      const types = flattenUnionTypes(resolved).types.filter(type => type.kind !== ts.SyntaxKind.UndefinedKeyword)
      if (types.length === 1) {
        const type = types[0]
        if (isArray(decl.type)) {
          const indexType = checker.getIndexTypeOfType(checker.getTypeAtLocation(decl.type), ts.IndexKind.Number)
          if (indexType.symbol !== undefined)
            out += `  ${sym.name}: [${printQLType(indexType.symbol.declarations[0])}!]\n`
        } else {
          out += `  ${sym.name}: ${printQLType(type, isNullable(decl.type) || decl.questionToken !== undefined)}\n`
        }
      } else {
        const extraName = classlike.name.text+pascal(sym.name)
        unionTypes.push([extraName, types])
        out += `  ${sym.name}: ${extraName}\n`
        if (isNullable(decl.type))
          out += '!'
      }
    }
  }
  out += '}\n\n'
}

for (const [name, types] of unionTypes) {
  out += `union ${name} = ${types.map(printQLType).join(' | ')}\n\n`
}

console.log(out)

function isPrimitiveType(type: ts.TypeNode) {
  return type.kind === ts.SyntaxKind.AnyKeyword
      || type.kind === ts.SyntaxKind.NumberKeyword
      || type.kind === ts.SyntaxKind.ObjectKeyword
      || type.kind === ts.SyntaxKind.BooleanKeyword
      || type.kind === ts.SyntaxKind.StringKeyword
      || type.kind === ts.SyntaxKind.SymbolKeyword
      || type.kind === ts.SyntaxKind.ThisKeyword
      || type.kind === ts.SyntaxKind.VoidKeyword
      || type.kind === ts.SyntaxKind.UndefinedKeyword
      || type.kind === ts.SyntaxKind.NullKeyword
      || type.kind === ts.SyntaxKind.NeverKeyword
}

// FIXME
function isBitmask(enumDecl: ts.EnumDeclaration) {
  return enumDecl.members
    .filter(member => member.initializer 
            && member.initializer.kind !== ts.SyntaxKind.NumericLiteral)
    .length > 0
}

function flattenUnionTypes(typeNode: ts.TypeNode): any {

  let types: ts.TypeNode[] = []

  visit(typeNode);

  return {
    kind: ts.SyntaxKind.UnionType,
    types,
  }

  function visit(node: ts.TypeNode) {
    switch (node.kind) {
    case ts.SyntaxKind.UnionType:
      for (const type of (<ts.UnionTypeNode>node).types)
        visit(type)
      break;
    default:
      types.push(node)
    }
  }
}

function resolveTypeAliases(typeNode: ts.TypeNode, ): any {

  const mapping = new Map<ts.Node, any>()

  return visit(typeNode, undefined, []);

  //function visit(node: ts.Node, typeArgs: ts.TypeNode[] | undefined, typeParamStack: { [name: string]: ts.TypeNode }[]): any {
    //if (mappping.has(node))
      //return mapping.get(node)
    //const converted = convert(node)
    //mapping.set(node, converted)
    //return mapping
  //}

  function visit(node: ts.Node, typeArgs: ts.TypeNode[] | undefined, typeParamStack: { [name: string]: ts.TypeNode }[]): any {
    if (mapping.has(node))
      return mapping.get(node)
    switch (node.kind) {
    case ts.SyntaxKind.PropertySignature:
    case ts.SyntaxKind.PropertyDeclaration: {
      const prop = <ts.PropertySignature & ts.PropertyDeclaration>node;
      const converted: any = {
        kind: prop.kind,
        name: prop.name,
      }
      mapping.set(node, converted)
      converted.type = visit(prop.type, typeArgs, typeParamStack)
      return converted;
    } case ts.SyntaxKind.TypeParameter:
      for (const mapping of typeParamStack) {
        const typeArg = mapping[(<ts.TypeParameterDeclaration>node).name.text]
        if (typeArg !== undefined) {
          return typeArg
        }
      }
      return node
    case ts.SyntaxKind.InterfaceDeclaration:
    case ts.SyntaxKind.ClassDeclaration:
      const classlike = <ts.ClassLikeDeclaration>node; {
      const converted: any = {
        kind: node.kind,
        name: classlike.name,
      }
      if (classlike.typeParameters === undefined) {
        mapping.set(node, converted)
        converted.members = classlike.members.map(el => visit(el, typeArgs, typeParamStack))
        return converted
      } else {
        if (typeArgs === undefined)
          throw new Error(`required some type arguments but none were found`)
        typeParamStack.push(zipObject(classlike.typeParameters.map(p => p.name.text), typeArgs));
        typeArgs = undefined
        converted.members = classlike.members.map(el => visit(el, typeArgs, typeParamStack))
        return converted
      }
    } case ts.SyntaxKind.UnionType: {
      const converted: any = {
        kind: ts.SyntaxKind.UnionType,
      }
      mapping.set(node, converted);
      converted.types = (<ts.UnionTypeNode>node).types.map(el => visit(el, undefined, typeParamStack));
      return converted
    } case ts.SyntaxKind.TypeAliasDeclaration:
      const typeAlias = <ts.TypeAliasDeclaration>node;
      if (typeAlias.typeParameters !== undefined) {
        if (typeArgs === undefined)
          throw new Error(`required some type arguments but none were found`)
        typeParamStack = push(typeParamStack, zipObject(typeAlias.typeParameters.map(p => p.name.text), typeArgs));
        typeArgs = undefined
      }
      return visit(typeAlias.type, typeArgs, typeParamStack);
    case ts.SyntaxKind.TypeReference:
      const typeRef = <ts.TypeReferenceNode>node;
      const symbol = checker.getSymbolAtLocation(typeRef.typeName)
      const decl = symbol.declarations[0]
      return visit(decl, typeRef.typeArguments, typeParamStack);
    default:
      return node
    }
  }

}

function isNullable(node: ts.TypeNode) {
  const type = checker.getTypeAtLocation(node)
  return checker.isTypeAssignableTo(type, checker.getUndefinedType())
    || checker.isTypeAssignableTo(type, checker.getNullType())
}

function isClassLike(node: ts.Node) {
  return node.kind === ts.SyntaxKind.ClassDeclaration
      || node.kind === ts.SyntaxKind.ClassExpression
      || node.kind === ts.SyntaxKind.InterfaceDeclaration
}

// FIXME
function isArray(node: ts.Node) {
  const type = checker.getTypeAtLocation(node)
  try {
    return checker
        .getBaseTypes(<ts.InterfaceType>type)
        .filter(type => type.symbol && type.symbol.name === 'Array')
        .length > 0
  } catch(e) {
    return false
  }
}

function printQLType(node: ts.Node, optional: boolean = true) {
  let out = ''
  switch (node.kind) {
  //case ts.SyntaxKind.UnionType:
    //out += (<ts.UnionTypeNode>node).types.map(type => printQLType(node)).join(' | ')
    //break;
  case ts.SyntaxKind.EnumDeclaration:
    out += printQLType((<ts.EnumDeclaration>node).name);
    break;
  case ts.SyntaxKind.EnumMember:
    return printQLType(node.parent);
  case ts.SyntaxKind.ArrayType:
    out += `[${printQLType((<ts.ArrayTypeNode>node).elementType)}!]`
    break;
  case ts.SyntaxKind.StringKeyword:
    out += 'String'
    break;
  case ts.SyntaxKind.NumberKeyword:
    out +=  'Int'
    break;
  case ts.SyntaxKind.BooleanKeyword:
    out += 'Boolean'
    break;
  case ts.SyntaxKind.QualifiedName:
    const qualName = <ts.QualifiedName>node;
    out += `${printQLType(qualName.left)}.${printQLType(qualName.right)}`
    break;
  case ts.SyntaxKind.Identifier:
  case ts.SyntaxKind.NumericLiteral:
  case ts.SyntaxKind.StringLiteral:
    out += (<SimplePropertyName>node).text;
    break;
  case ts.SyntaxKind.ClassDeclaration:
  case ts.SyntaxKind.InterfaceDeclaration:
    const classlike = <ts.ClassLikeDeclaration>node;
    return printQLType(classlike.name);
  case ts.SyntaxKind.TypeReference:
    //const typeRefType = checker.getTypeAtLocation(node)
    out += printQLType((<ts.TypeReferenceNode>node).typeName);
    break;
  default:
    console.error('skip', ts.SyntaxKind[node.kind])
  }
  if (!optional)
    out += '!'
  return out
}

function getSourceFile(node: ts.Node) {
  while(node.kind !== ts.SyntaxKind.SourceFile) {
    node = node.parent
  }
  return node
}

function isProperty(node: ts.Node) {
  return node.kind === ts.SyntaxKind.PropertyDeclaration
      || node.kind === ts.SyntaxKind.PropertySignature
}

function findClassLikesWithMember(program: ts.Program, toMatch: ts.ClassElement): ts.ClassLikeDeclaration[] {

  const checker = program.getTypeChecker()
  
  const matches = []

  for (const sourceFile of program.getSourceFiles()) {
    visit(sourceFile)
  }

  return matches

  function visit(node: ts.Node) {
    switch (node.kind) {
    case ts.SyntaxKind.InterfaceDeclaration:
    case ts.SyntaxKind.ClassDeclaration:
      const classLikeDecl = <ts.ClassLikeDeclaration>node;
      for (const member of classLikeDecl.members) {
        if (member.name !== undefined && (<SimplePropertyName>member.name).text === toMatch.name.text
           && checker.isTypeAssignableTo(checker.getTypeAtLocation(member), checker.getTypeAtLocation(toMatch)))
         matches.push(classLikeDecl)
         break;
      }
      break;
    case ts.SyntaxKind.SourceFile:
    case ts.SyntaxKind.Block:
    case ts.SyntaxKind.ModuleBlock:
    case ts.SyntaxKind.ModuleDeclaration:
      ts.forEachChild(node, visit);
      break;
    }
  }
}

function findMember(program: ts.Program, path: string[]) {

  path = path.slice()

  for (const sourceFile of program.getSourceFiles()) {
    if (program.getRootFileNames().indexOf(sourceFile.fileName) !== -1) {
      const match = visit(sourceFile)
      if (match !== undefined)
        return match;
    }
  }

  function visit(node: ts.Node): ts.ClassElement | void {
    switch (node.kind) {
    case ts.SyntaxKind.InterfaceDeclaration:
    case ts.SyntaxKind.ClassDeclaration:
      const classLikeDecl = <ts.ClassLikeDeclaration>node;
      for (const member of classLikeDecl.members) {
        if (member.name !== undefined && (<SimplePropertyName>member.name).text === path[path.length-1])
          return member
      }
      break;
    case ts.SyntaxKind.ModuleDeclaration:
      const modDecl = <ts.ModuleDeclaration>node;
      if (modDecl.name !== undefined) {
        if (modDecl.name.text !== path[0])
          return
        else 
          path.shift()
      }
      if (modDecl.body !== undefined)
        return visit(modDecl.body)
      break;
    case ts.SyntaxKind.Block:
    case ts.SyntaxKind.ModuleBlock:
    case ts.SyntaxKind.SourceFile:
      const blockLike = <ts.SourceFile & ts.Block & ts.ModuleBlock>node;
      if (blockLike.name !== undefined) {
        if (blockLike.name.text !== path[0])
          return
        else 
          path.shift()
      }
      for (const statement of blockLike.statements) {
        const match = visit(statement)
        if (match !== undefined)
          return match
      }
      break;
    default: {
      console.error('skipped', ts.SyntaxKind[node.kind])
    }
    }
  }

}

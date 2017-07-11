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

import * as ts from "../../typescript"
import * as fs from "fs"
import * as path from "path"
import { Queryable } from "../types"
import { createProgramForFiles, createProgramForProject } from "../util"
import { filterAll, find } from "../filter"
import find from "./finder"
import update from "../updater"
import { dropLast, isEqual } from "../util"

const argv = require('yargs')
  .usage('ts2graphql [source files] ...')
  .string('path')
  .describe('path', 'Path to the base class its polymorphic enumerator')
  .demandOption('path')
  .version()
  .argv

const memberPath = argv.path.split('.')

const program = argv._.length > 0 
    ? createProgramForFiles(argv._, argv['--'] || []) 
    : createProgramForProject(path.resolve(argv['project'] || process.cwd()));

const checker = program.getTypeChecker()

update(program)

const member = find(prorgram, member => 

const classlikes = filter(program, { kind: ts.SyntaxKind.InterfaceDeclaration })
  .concat(filter(program, { kind: ts.SyntaxKind.ClassDeclaration }))
  .filter((classlike: ts.ClassLikeDeclaration) => {
    const classType = checker.getTypeAtLocation(classlike)
    // TODO: check for inheritance
    const propType = checker.getPropertyOfType(propType, memberPath[memberPath.length-1])
    if (propType === undefined)
      return false
    checker.isTypeAssignableTo(propType, checker.getTypeAtLocation(memberType))
  }

console.log(classlikes.map(classlike => getPathToNode(classlike).map((propName: SimplePropertyName) => propName.text)))

type SimplePropertyName = ts.Identifier | ts.StringLiteral | ts.NumericLiteral

function isSimplePropertyName(name: ts.DeclarationName) {
  return name.kind === ts.SyntaxKind.Identifier 
    || name.kind === ts.SyntaxKind.StringLiteral
    || name.kind === ts.SyntaxKind.NumericLiteral
}

function hasProperty(node: ts.Node, propertyName: string) {
  return checker.getPropertyOfType(checker.getTypeAtLocation(node), propertyName) !== undefined
}

function getPathToNode(node: Queryable<ts.Node>): ts.PropertyName[] {
  let res: ts.PropertyName[] = []
  while (node !== undefined) {
    const namedDecl = (<ts.NamedDeclaration>node);
    if (namedDecl.name !== undefined && namedDecl.name.kind !== ts.SyntaxKind.ObjectBindingPattern) {
      res.unshift(<ts.PropertyName>namedDecl.name)
    }
    node = node.parentNode
  }
  return res
}


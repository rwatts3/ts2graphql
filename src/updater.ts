/**
 * This module provides function for 'updating' TypeScript nodes with extra
 * information, such as an unique ID and the parent of a node.
 */

import * as ts from "typescript"
import { Visitor } from "./visitor"
import { Queryable } from "./types"

export class NodeUpdater extends Visitor {

  protected _count = 0;

  visitToken<Kind extends ts.SyntaxKind>(node: Queryable<ts.Token<Kind>>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
  }

  visitIdentifier(node: Queryable<ts.Identifier>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitIdentifier(node, parent)
  }

  visitQualifiedName(node: Queryable<ts.QualifiedName>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitQualifiedName(node, parent)
  }

  visitComputedPropertyName(node: Queryable<ts.ComputedPropertyName>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitComputedPropertyName(node, parent)
  }

  visitDecorator(node: Queryable<ts.Decorator>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitDecorator(node, parent)
  }

  visitTypeParameterDeclaration(node: Queryable<ts.TypeParameterDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitTypeParameterDeclaration(node, parent)
  }

  visitCallSignatureDeclaration(node: Queryable<ts.CallSignatureDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitCallSignatureDeclaration(node, parent)
  }

  visitConstructSignatureDeclaration(node: Queryable<ts.ConstructSignatureDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitConstructSignatureDeclaration(node, parent)
  }

  visitVariableDeclaration(node: Queryable<ts.VariableDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitVariableDeclaration(node, parent)
  }

  visitVariableDeclarationList(node: Queryable<ts.VariableDeclarationList>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitVariableDeclarationList(node, parent)
  }

  visitParameterDeclaration(node: Queryable<ts.ParameterDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitParameterDeclaration(node, parent)
  }

  visitBindingElement(node: Queryable<ts.BindingElement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitBindingElement(node, parent)
  }

  visitPropertySignature(node: Queryable<ts.PropertySignature>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitPropertySignature(node, parent)
  }

  visitPropertyDeclaration(node: Queryable<ts.PropertyDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitPropertyDeclaration(node, parent)
  }

  visitPropertyAssignment(node: Queryable<ts.PropertyAssignment>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitPropertyAssignment(node, parent)
  }

  visitShorthandPropertyAssignment(node: Queryable<ts.ShorthandPropertyAssignment>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitShorthandPropertyAssignment(node, parent)
  }

  visitSpreadAssignment(node: Queryable<ts.SpreadAssignment>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitSpreadAssignment(node, parent)
  }

  visitObjectBindingPattern(node: Queryable<ts.ObjectBindingPattern>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitObjectBindingPattern(node, parent)
  }

  visitArrayBindingPattern(node: Queryable<ts.ArrayBindingPattern>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitArrayBindingPattern(node, parent)
  }

  visitFunctionDeclaration(node: Queryable<ts.FunctionDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitFunctionDeclaration(node, parent)
  }

  visitMethodSignature(node: Queryable<ts.MethodSignature>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitMethodSignature(node, parent)
  }

  visitMethodDeclaration(node: Queryable<ts.MethodDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitMethodDeclaration(node, parent)
  }

  visitConstructorDeclaration(node: Queryable<ts.ConstructorDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitConstructorDeclaration(node, parent)
  }

  visitSemicolonClassElement(node: Queryable<ts.SemicolonClassElement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitSemicolonClassElement(node, parent)
  }

  visitGetAccessorDeclaration(node: Queryable<ts.GetAccessorDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitGetAccessorDeclaration(node, parent)
  }

  visitSetAccessorDeclaration(node: Queryable<ts.SetAccessorDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitSetAccessorDeclaration(node, parent)
  }

  visitIndexSignatureDeclaration(node: Queryable<ts.IndexSignatureDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitIndexSignatureDeclaration(node, parent)
  }

  visitKeywordTypeNode(node: Queryable<ts.KeywordTypeNode>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitKeywordTypeNode(node, parent)
  }

  visitThisTypeNode(node: Queryable<ts.ThisTypeNode>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitThisTypeNode(node, parent)
  }

  visitFunctionTypeNode(node: Queryable<ts.FunctionTypeNode>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitFunctionTypeNode(node, parent)
  }

  visitConstructorTypeNode(node: Queryable<ts.ConstructorTypeNode>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitConstructorTypeNode(node, parent)
  }

  visitTypeReferenceNode(node: Queryable<ts.TypeReferenceNode>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitTypeReferenceNode(node, parent)
  }

  visitTypePredicateNode(node: Queryable<ts.TypePredicateNode>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitTypePredicateNode(node, parent)
  }

  visitTypeQueryNode(node: Queryable<ts.TypeQueryNode>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitTypeQueryNode(node, parent)
  }

  visitTypeLiteralNode(node: Queryable<ts.TypeLiteralNode>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitTypeLiteralNode(node, parent)
  }

  visitArrayTypeNode(node: Queryable<ts.ArrayTypeNode>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitArrayTypeNode(node, parent)
  }

  visitTupleTypeNode(node: Queryable<ts.TupleTypeNode>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitTupleTypeNode(node, parent)
  }

  visitUnionTypeNode(node: Queryable<ts.UnionTypeNode>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitUnionTypeNode(node, parent)
  }

  visitIntersectionTypeNode(node: Queryable<ts.IntersectionTypeNode>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitIntersectionTypeNode(node, parent)
  }

  visitParenthesizedTypeNode(node: Queryable<ts.ParenthesizedTypeNode>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitParenthesizedTypeNode(node, parent)
  }

  visitTypeOperatorNode(node: Queryable<ts.TypeOperatorNode>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitTypeOperatorNode(node, parent)
  }

  visitIndexedAccessTypeNode(node: Queryable<ts.IndexedAccessTypeNode>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitIndexedAccessTypeNode(node, parent)
  }

  visitMappedTypeNode(node: Queryable<ts.MappedTypeNode>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitMappedTypeNode(node, parent)
  }

  visitLiteralTypeNode(node: Queryable<ts.LiteralTypeNode>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitLiteralTypeNode(node, parent)
  }

  visitStringLiteral(node: Queryable<ts.StringLiteral>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitStringLiteral(node, parent)
  }

  visitOmittedExpression(node: Queryable<ts.OmittedExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitOmittedExpression(node, parent)
  }

  visitPartiallyEmittedExpression(node: Queryable<ts.PartiallyEmittedExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitPartiallyEmittedExpression(node, parent)
  }

  visitPrefixUnaryExpression(node: Queryable<ts.PrefixUnaryExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitPrefixUnaryExpression(node, parent)
  }

  visitPostfixUnaryExpression(node: Queryable<ts.PostfixUnaryExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitPostfixUnaryExpression(node, parent)
  }

  visitNullLiteral(node: Queryable<ts.NullLiteral>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitNullLiteral(node, parent)
  }

  visitBooleanLiteral(node: Queryable<ts.BooleanLiteral>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitBooleanLiteral(node, parent)
  }

  visitThisExpression(node: Queryable<ts.ThisExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitThisExpression(node, parent)
  }

  visitSuperExpression(node: Queryable<ts.SuperExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitSuperExpression(node, parent)
  }

  visitImportExpression(node: Queryable<ts.ImportExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitImportExpression(node, parent)
  }

  visitDeleteExpression(node: Queryable<ts.DeleteExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitDeleteExpression(node, parent)
  }

  visitTypeOfExpression(node: Queryable<ts.TypeOfExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitTypeOfExpression(node, parent)
  }

  visitVoidExpression(node: Queryable<ts.VoidExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitVoidExpression(node, parent)
  }

  visitAwaitExpression(node: Queryable<ts.AwaitExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitAwaitExpression(node, parent)
  }

  visitYieldExpression(node: Queryable<ts.YieldExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitYieldExpression(node, parent)
  }

  visitBinaryExpression(node: Queryable<ts.BinaryExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitBinaryExpression(node, parent)
  }

  visitConditionalExpression(node: Queryable<ts.ConditionalExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitConditionalExpression(node, parent)
  }

  visitFunctionExpression(node: Queryable<ts.FunctionExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitFunctionExpression(node, parent)
  }

  visitArrowFunction(node: Queryable<ts.ArrowFunction>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitArrowFunction(node, parent)
  }

  visitRegularExpressionLiteral(node: Queryable<ts.RegularExpressionLiteral>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitRegularExpressionLiteral(node, parent)
  }

  visitNoSubstitutionTemplateLiteral(node: Queryable<ts.NoSubstitutionTemplateLiteral>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitNoSubstitutionTemplateLiteral(node, parent)
  }

  visitNumericLiteral(node: Queryable<ts.NumericLiteral>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitNumericLiteral(node, parent)
  }

  visitTemplateHead(node: Queryable<ts.TemplateHead>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitTemplateHead(node, parent)
  }

  visitTemplateMiddle(node: Queryable<ts.TemplateMiddle>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitTemplateMiddle(node, parent)
  }

  visitTemplateTail(node: Queryable<ts.TemplateTail>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitTemplateTail(node, parent)
  }

  visitTemplateExpression(node: Queryable<ts.TemplateExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitTemplateExpression(node, parent)
  }

  visitTemplateSpan(node: Queryable<ts.TemplateSpan>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitTemplateSpan(node, parent)
  }

  visitParenthesizedExpression(node: Queryable<ts.ParenthesizedExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitParenthesizedExpression(node, parent)
  }

  visitArrayLiteralExpression(node: Queryable<ts.ArrayLiteralExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitArrayLiteralExpression(node, parent)
  }

  visitSpreadElement(node: Queryable<ts.SpreadElement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitSpreadElement(node, parent)
  }

  visitObjectLiteralExpression(node: Queryable<ts.ObjectLiteralExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitObjectLiteralExpression(node, parent)
  }

  visitPropertyAccessExpression(node: Queryable<ts.PropertyAccessExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitPropertyAccessExpression(node, parent)
  }

  visitElementAccessExpression(node: Queryable<ts.ElementAccessExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitElementAccessExpression(node, parent)
  }

  visitCallExpression(node: Queryable<ts.CallExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitCallExpression(node, parent)
  }

  visitExpressionWithTypeArguments(node: Queryable<ts.ExpressionWithTypeArguments>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitExpressionWithTypeArguments(node, parent)
  }

  visitNewExpression(node: Queryable<ts.NewExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitNewExpression(node, parent)
  }

  visitTaggedTemplateExpression(node: Queryable<ts.TaggedTemplateExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitTaggedTemplateExpression(node, parent)
  }

  visitAsExpression(node: Queryable<ts.AsExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitAsExpression(node, parent)
  }

  visitTypeAssertion(node: Queryable<ts.TypeAssertion>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitTypeAssertion(node, parent)
  }

  visitNonNullExpression(node: Queryable<ts.NonNullExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitNonNullExpression(node, parent)
  }

  visitMetaProperty(node: Queryable<ts.MetaProperty>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitMetaProperty(node, parent)
  }

  visitJsxElement(node: Queryable<ts.JsxElement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJsxElement(node, parent)
  }

  visitJsxOpeningElement(node: Queryable<ts.JsxOpeningElement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJsxOpeningElement(node, parent)
  }

  visitJsxSelfClosingElement(node: Queryable<ts.JsxSelfClosingElement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJsxSelfClosingElement(node, parent)
  }

  visitJsxAttribute(node: Queryable<ts.JsxAttribute>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJsxAttribute(node, parent)
  }

  visitJsxSpreadAttribute(node: Queryable<ts.JsxSpreadAttribute>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJsxSpreadAttribute(node, parent)
  }

  visitJsxClosingElement(node: Queryable<ts.JsxClosingElement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJsxClosingElement(node, parent)
  }

  visitJsxExpression(node: Queryable<ts.JsxExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJsxExpression(node, parent)
  }

  visitJsxText(node: Queryable<ts.JsxText>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJsxText(node, parent)
  }

  visitNotEmittedStatement(node: Queryable<ts.NotEmittedStatement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitNotEmittedStatement(node, parent)
  }

  visitCommaListExpression(node: Queryable<ts.CommaListExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitCommaListExpression(node, parent)
  }

  visitEmptyStatement(node: Queryable<ts.EmptyStatement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitEmptyStatement(node, parent)
  }

  visitDebuggerStatement(node: Queryable<ts.DebuggerStatement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitDebuggerStatement(node, parent)
  }

  visitMissingDeclaration(node: Queryable<ts.MissingDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitMissingDeclaration(node, parent)
  }

  visitBlock(node: Queryable<ts.Block>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitBlock(node, parent)
  }

  visitVariableStatement(node: Queryable<ts.VariableStatement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitVariableStatement(node, parent)
  }

  visitExpressionStatement(node: Queryable<ts.ExpressionStatement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitExpressionStatement(node, parent)
  }

  visitIfStatement(node: Queryable<ts.IfStatement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitIfStatement(node, parent)
  }

  visitDoStatement(node: Queryable<ts.DoStatement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitDoStatement(node, parent)
  }

  visitWhileStatement(node: Queryable<ts.WhileStatement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitWhileStatement(node, parent)
  }

  visitForStatement(node: Queryable<ts.ForStatement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitForStatement(node, parent)
  }

  visitForInStatement(node: Queryable<ts.ForInStatement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitForInStatement(node, parent)
  }

  visitForOfStatement(node: Queryable<ts.ForOfStatement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitForOfStatement(node, parent)
  }

  visitBreakStatement(node: Queryable<ts.BreakStatement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitBreakStatement(node, parent)
  }

  visitContinueStatement(node: Queryable<ts.ContinueStatement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitContinueStatement(node, parent)
  }

  visitReturnStatement(node: Queryable<ts.ReturnStatement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitReturnStatement(node, parent)
  }

  visitWithStatement(node: Queryable<ts.WithStatement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitWithStatement(node, parent)
  }

  visitSwitchStatement(node: Queryable<ts.SwitchStatement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitSwitchStatement(node, parent)
  }

  visitCaseBlock(node: Queryable<ts.CaseBlock>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitCaseBlock(node, parent)
  }

  visitCaseClause(node: Queryable<ts.CaseClause>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitCaseClause(node, parent)
  }

  visitDefaultClause(node: Queryable<ts.DefaultClause>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitDefaultClause(node, parent)
  }

  visitLabeledStatement(node: Queryable<ts.LabeledStatement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitLabeledStatement(node, parent)
  }

  visitThrowStatement(node: Queryable<ts.ThrowStatement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitThrowStatement(node, parent)
  }

  visitTryStatement(node: Queryable<ts.TryStatement>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitTryStatement(node, parent)
  }

  visitCatchClause(node: Queryable<ts.CatchClause>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitCatchClause(node, parent)
  }

  visitClassDeclaration(node: Queryable<ts.ClassDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitClassDeclaration(node, parent)
  }

  visitClassExpression(node: Queryable<ts.ClassExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitClassExpression(node, parent)
  }

  visitInterfaceDeclaration(node: Queryable<ts.InterfaceDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitInterfaceDeclaration(node, parent)
  }

  visitHeritageClause(node: Queryable<ts.HeritageClause>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitHeritageClause(node, parent)
  }

  visitTypeAliasDeclaration(node: Queryable<ts.TypeAliasDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitTypeAliasDeclaration(node, parent)
  }

  visitEnumMember(node: Queryable<ts.EnumMember>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitEnumMember(node, parent)
  }

  visitEnumDeclaration(node: Queryable<ts.EnumDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitEnumDeclaration(node, parent)
  }

  visitModuleDeclaration(node: Queryable<ts.ModuleDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitModuleDeclaration(node, parent)
  }

  visitModuleBlock(node: Queryable<ts.ModuleBlock>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitModuleBlock(node, parent)
  }

  visitImportEqualsDeclaration(node: Queryable<ts.ImportEqualsDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitImportEqualsDeclaration(node, parent)
  }

  visitExternalModuleReference(node: Queryable<ts.ExternalModuleReference>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitExternalModuleReference(node, parent)
  }

  visitImportDeclaration(node: Queryable<ts.ImportDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitImportDeclaration(node, parent)
  }

  visitImportClause(node: Queryable<ts.ImportClause>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitImportClause(node, parent)
  }

  visitNamespaceImport(node: Queryable<ts.NamespaceImport>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitNamespaceImport(node, parent)
  }

  visitNamespaceExportDeclaration(node: Queryable<ts.NamespaceExportDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitNamespaceExportDeclaration(node, parent)
  }

  visitExportDeclaration(node: Queryable<ts.ExportDeclaration>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitExportDeclaration(node, parent)
  }

  visitNamedImports(node: Queryable<ts.NamedImports>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitNamedImports(node, parent)
  }

  visitNamedExports(node: Queryable<ts.NamedExports>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitNamedExports(node, parent)
  }

  visitImportSpecifier(node: Queryable<ts.ImportSpecifier>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitImportSpecifier(node, parent)
  }

  visitExportSpecifier(node: Queryable<ts.ExportSpecifier>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitExportSpecifier(node, parent)
  }

  visitExportAssignment(node: Queryable<ts.ExportAssignment>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitExportAssignment(node, parent)
  }

  visitJSDocTypeExpression(node: Queryable<ts.JSDocTypeExpression>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocTypeExpression(node, parent)
  }

  visitJSDocAllType(node: Queryable<ts.JSDocAllType>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocAllType(node, parent)
  }

  visitJSDocUnknownType(node: Queryable<ts.JSDocUnknownType>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocUnknownType(node, parent)
  }

  visitJSDocArrayType(node: Queryable<ts.JSDocArrayType>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocArrayType(node, parent)
  }

  visitJSDocUnionType(node: Queryable<ts.JSDocUnionType>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocUnionType(node, parent)
  }

  visitJSDocTupleType(node: Queryable<ts.JSDocTupleType>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocTupleType(node, parent)
  }

  visitJSDocNonNullableType(node: Queryable<ts.JSDocNonNullableType>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocNonNullableType(node, parent)
  }

  visitJSDocNullableType(node: Queryable<ts.JSDocNullableType>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocNullableType(node, parent)
  }

  visitJSDocRecordType(node: Queryable<ts.JSDocRecordType>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocRecordType(node, parent)
  }

  visitJSDocTypeReference(node: Queryable<ts.JSDocTypeReference>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocTypeReference(node, parent)
  }

  visitJSDocOptionalType(node: Queryable<ts.JSDocOptionalType>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocOptionalType(node, parent)
  }

  visitJSDocFunctionType(node: Queryable<ts.JSDocFunctionType>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocFunctionType(node, parent)
  }

  visitJSDocVariadicType(node: Queryable<ts.JSDocVariadicType>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocVariadicType(node, parent)
  }

  visitJSDocConstructorType(node: Queryable<ts.JSDocConstructorType>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocConstructorType(node, parent)
  }

  visitJSDocThisType(node: Queryable<ts.JSDocThisType>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocThisType(node, parent)
  }

  visitJSDocLiteralType(node: Queryable<ts.JSDocLiteralType>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocLiteralType(node, parent)
  }

  visitJSDocRecordMember(node: Queryable<ts.JSDocRecordMember>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocRecordMember(node, parent)
  }

  visitJSDoc(node: Queryable<ts.JSDoc>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDoc(node, parent)
  }

  visitJSDocUnknownTag(node: Queryable<ts.JSDocUnknownTag>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocUnknownTag(node, parent)
  }

  visitJSDocAugmentsTag(node: Queryable<ts.JSDocAugmentsTag>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocAugmentsTag(node, parent)
  }

  visitJSDocClassTag(node: Queryable<ts.JSDocClassTag>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocClassTag(node, parent)
  }

  visitJSDocTemplateTag(node: Queryable<ts.JSDocTemplateTag>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocTemplateTag(node, parent)
  }

  visitJSDocReturnTag(node: Queryable<ts.JSDocReturnTag>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocReturnTag(node, parent)
  }

  visitJSDocTypeTag(node: Queryable<ts.JSDocTypeTag>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocTypeTag(node, parent)
  }

  visitJSDocTypedefTag(node: Queryable<ts.JSDocTypedefTag>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocTypedefTag(node, parent)
  }

  visitJSDocPropertyTag(node: Queryable<ts.JSDocPropertyTag>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocPropertyTag(node, parent)
  }

  visitJSDocTypeLiteral(node: Queryable<ts.JSDocTypeLiteral>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocTypeLiteral(node, parent)
  }

  visitJSDocParameterTag(node: Queryable<ts.JSDocParameterTag>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitJSDocParameterTag(node, parent)
  }

  visitSourceFile(node: Queryable<ts.SourceFile>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitSourceFile(node, parent)
  }

  visitBundle(node: Queryable<ts.Bundle>, parent?: ts.Node) {
    node.id = this.generateId()
    node.parentNode = parent
    super.visitBundle(node, parent)
  }

  protected generateId() {
    return this._count++;
  }

}

export function update(program: ts.Program) {
  const updater = new NodeUpdater()
  for (const sourceFile of program.getSourceFiles())
    updater.visit(sourceFile)
}

export default update


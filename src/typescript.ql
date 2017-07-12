
enum SyntaxKind {
  UNKNOWN
  END_OF_FILE_TOKEN
  SINGLE_LINE_COMMENT_TRIVIA
  MULTI_LINE_COMMENT_TRIVIA
  NEW_LINE_TRIVIA
  WHITESPACE_TRIVIA
  SHEBANG_TRIVIA
  CONFLICT_MARKER_TRIVIA
  NUMERIC_LITERAL
  STRING_LITERAL
  JSX_TEXT
  JSX_TEXT_ALL_WHITE_SPACES
  REGULAR_EXPRESSION_LITERAL
  NO_SUBSTITUTION_TEMPLATE_LITERAL
  TEMPLATE_HEAD
  TEMPLATE_MIDDLE
  TEMPLATE_TAIL
  OPEN_BRACE_TOKEN
  CLOSE_BRACE_TOKEN
  OPEN_PAREN_TOKEN
  CLOSE_PAREN_TOKEN
  OPEN_BRACKET_TOKEN
  CLOSE_BRACKET_TOKEN
  DOT_TOKEN
  DOT_DOT_DOT_TOKEN
  SEMICOLON_TOKEN
  COMMA_TOKEN
  LESS_THAN_TOKEN
  LESS_THAN_SLASH_TOKEN
  GREATER_THAN_TOKEN
  LESS_THAN_EQUALS_TOKEN
  GREATER_THAN_EQUALS_TOKEN
  EQUALS_EQUALS_TOKEN
  EXCLAMATION_EQUALS_TOKEN
  EQUALS_EQUALS_EQUALS_TOKEN
  EXCLAMATION_EQUALS_EQUALS_TOKEN
  EQUALS_GREATER_THAN_TOKEN
  PLUS_TOKEN
  MINUS_TOKEN
  ASTERISK_TOKEN
  ASTERISK_ASTERISK_TOKEN
  SLASH_TOKEN
  PERCENT_TOKEN
  PLUS_PLUS_TOKEN
  MINUS_MINUS_TOKEN
  LESS_THAN_LESS_THAN_TOKEN
  GREATER_THAN_GREATER_THAN_TOKEN
  GREATER_THAN_GREATER_THAN_GREATER_THAN_TOKEN
  AMPERSAND_TOKEN
  BAR_TOKEN
  CARET_TOKEN
  EXCLAMATION_TOKEN
  TILDE_TOKEN
  AMPERSAND_AMPERSAND_TOKEN
  BAR_BAR_TOKEN
  QUESTION_TOKEN
  COLON_TOKEN
  AT_TOKEN
  EQUALS_TOKEN
  PLUS_EQUALS_TOKEN
  MINUS_EQUALS_TOKEN
  ASTERISK_EQUALS_TOKEN
  ASTERISK_ASTERISK_EQUALS_TOKEN
  SLASH_EQUALS_TOKEN
  PERCENT_EQUALS_TOKEN
  LESS_THAN_LESS_THAN_EQUALS_TOKEN
  GREATER_THAN_GREATER_THAN_EQUALS_TOKEN
  GREATER_THAN_GREATER_THAN_GREATER_THAN_EQUALS_TOKEN
  AMPERSAND_EQUALS_TOKEN
  BAR_EQUALS_TOKEN
  CARET_EQUALS_TOKEN
  IDENTIFIER
  BREAK_KEYWORD
  CASE_KEYWORD
  CATCH_KEYWORD
  CLASS_KEYWORD
  CONST_KEYWORD
  CONTINUE_KEYWORD
  DEBUGGER_KEYWORD
  DEFAULT_KEYWORD
  DELETE_KEYWORD
  DO_KEYWORD
  ELSE_KEYWORD
  ENUM_KEYWORD
  EXPORT_KEYWORD
  EXTENDS_KEYWORD
  FALSE_KEYWORD
  FINALLY_KEYWORD
  FOR_KEYWORD
  FUNCTION_KEYWORD
  IF_KEYWORD
  IMPORT_KEYWORD
  IN_KEYWORD
  INSTANCE_OF_KEYWORD
  NEW_KEYWORD
  NULL_KEYWORD
  RETURN_KEYWORD
  SUPER_KEYWORD
  SWITCH_KEYWORD
  THIS_KEYWORD
  THROW_KEYWORD
  TRUE_KEYWORD
  TRY_KEYWORD
  TYPE_OF_KEYWORD
  VAR_KEYWORD
  VOID_KEYWORD
  WHILE_KEYWORD
  WITH_KEYWORD
  IMPLEMENTS_KEYWORD
  INTERFACE_KEYWORD
  LET_KEYWORD
  PACKAGE_KEYWORD
  PRIVATE_KEYWORD
  PROTECTED_KEYWORD
  PUBLIC_KEYWORD
  STATIC_KEYWORD
  YIELD_KEYWORD
  ABSTRACT_KEYWORD
  AS_KEYWORD
  ANY_KEYWORD
  ASYNC_KEYWORD
  AWAIT_KEYWORD
  BOOLEAN_KEYWORD
  CONSTRUCTOR_KEYWORD
  DECLARE_KEYWORD
  GET_KEYWORD
  IS_KEYWORD
  KEY_OF_KEYWORD
  MODULE_KEYWORD
  NAMESPACE_KEYWORD
  NEVER_KEYWORD
  READONLY_KEYWORD
  REQUIRE_KEYWORD
  NUMBER_KEYWORD
  OBJECT_KEYWORD
  SET_KEYWORD
  STRING_KEYWORD
  SYMBOL_KEYWORD
  TYPE_KEYWORD
  UNDEFINED_KEYWORD
  FROM_KEYWORD
  GLOBAL_KEYWORD
  OF_KEYWORD 
  QUALIFIED_NAME
  COMPUTED_PROPERTY_NAME
  TYPE_PARAMETER
  PARAMETER
  DECORATOR
  PROPERTY_SIGNATURE
  PROPERTY_DECLARATION
  METHOD_SIGNATURE
  METHOD_DECLARATION
  CONSTRUCTOR
  GET_ACCESSOR
  SET_ACCESSOR
  CALL_SIGNATURE
  CONSTRUCT_SIGNATURE
  INDEX_SIGNATURE
  TYPE_PREDICATE
  TYPE_REFERENCE
  FUNCTION_TYPE
  CONSTRUCTOR_TYPE
  TYPE_QUERY
  TYPE_LITERAL
  ARRAY_TYPE
  TUPLE_TYPE
  UNION_TYPE
  INTERSECTION_TYPE
  PARENTHESIZED_TYPE
  THIS_TYPE
  TYPE_OPERATOR
  INDEXED_ACCESS_TYPE
  MAPPED_TYPE
  LITERAL_TYPE
  OBJECT_BINDING_PATTERN
  ARRAY_BINDING_PATTERN
  BINDING_ELEMENT
  ARRAY_LITERAL_EXPRESSION
  OBJECT_LITERAL_EXPRESSION
  PROPERTY_ACCESS_EXPRESSION
  ELEMENT_ACCESS_EXPRESSION
  CALL_EXPRESSION
  NEW_EXPRESSION
  TAGGED_TEMPLATE_EXPRESSION
  TYPE_ASSERTION_EXPRESSION
  PARENTHESIZED_EXPRESSION
  FUNCTION_EXPRESSION
  ARROW_FUNCTION
  DELETE_EXPRESSION
  TYPE_OF_EXPRESSION
  VOID_EXPRESSION
  AWAIT_EXPRESSION
  PREFIX_UNARY_EXPRESSION
  POSTFIX_UNARY_EXPRESSION
  BINARY_EXPRESSION
  CONDITIONAL_EXPRESSION
  TEMPLATE_EXPRESSION
  YIELD_EXPRESSION
  SPREAD_ELEMENT
  CLASS_EXPRESSION
  OMITTED_EXPRESSION
  EXPRESSION_WITH_TYPE_ARGUMENTS
  AS_EXPRESSION
  NON_NULL_EXPRESSION
  META_PROPERTY
  TEMPLATE_SPAN
  SEMICOLON_CLASS_ELEMENT
  BLOCK
  VARIABLE_STATEMENT
  EMPTY_STATEMENT
  EXPRESSION_STATEMENT
  IF_STATEMENT
  DO_STATEMENT
  WHILE_STATEMENT
  FOR_STATEMENT
  FOR_IN_STATEMENT
  FOR_OF_STATEMENT
  CONTINUE_STATEMENT
  BREAK_STATEMENT
  RETURN_STATEMENT
  WITH_STATEMENT
  SWITCH_STATEMENT
  LABELED_STATEMENT
  THROW_STATEMENT
  TRY_STATEMENT
  DEBUGGER_STATEMENT
  VARIABLE_DECLARATION
  VARIABLE_DECLARATION_LIST
  FUNCTION_DECLARATION
  CLASS_DECLARATION
  INTERFACE_DECLARATION
  TYPE_ALIAS_DECLARATION
  ENUM_DECLARATION
  MODULE_DECLARATION
  MODULE_BLOCK
  CASE_BLOCK
  NAMESPACE_EXPORT_DECLARATION
  IMPORT_EQUALS_DECLARATION
  IMPORT_DECLARATION
  IMPORT_CLAUSE
  NAMESPACE_IMPORT
  NAMED_IMPORTS
  IMPORT_SPECIFIER
  EXPORT_ASSIGNMENT
  EXPORT_DECLARATION
  NAMED_EXPORTS
  EXPORT_SPECIFIER
  MISSING_DECLARATION
  EXTERNAL_MODULE_REFERENCE
  JSX_ELEMENT
  JSX_SELF_CLOSING_ELEMENT
  JSX_OPENING_ELEMENT
  JSX_CLOSING_ELEMENT
  JSX_ATTRIBUTE
  JSX_ATTRIBUTES
  JSX_SPREAD_ATTRIBUTE
  JSX_EXPRESSION
  CASE_CLAUSE
  DEFAULT_CLAUSE
  HERITAGE_CLAUSE
  CATCH_CLAUSE
  PROPERTY_ASSIGNMENT
  SHORTHAND_PROPERTY_ASSIGNMENT
  SPREAD_ASSIGNMENT
  ENUM_MEMBER
  SOURCE_FILE
  BUNDLE
  JSDOC_TYPE_EXPRESSION
  JSDOC_ALL_TYPE
  JSDOC_UNKNOWN_TYPE
  JSDOC_ARRAY_TYPE
  JSDOC_UNION_TYPE
  JSDOC_TUPLE_TYPE
  JSDOC_NULLABLE_TYPE
  JSDOC_NON_NULLABLE_TYPE
  JSDOC_RECORD_TYPE
  JSDOC_RECORD_MEMBER
  JSDOC_TYPE_REFERENCE
  JSDOC_OPTIONAL_TYPE
  JSDOC_FUNCTION_TYPE
  JSDOC_VARIADIC_TYPE
  JSDOC_CONSTRUCTOR_TYPE
  JSDOC_THIS_TYPE
  JSDOC_COMMENT
  JSDOC_TAG
  JSDOC_AUGMENTS_TAG
  JSDOC_CLASS_TAG
  JSDOC_PARAMETER_TAG
  JSDOC_RETURN_TAG
  JSDOC_TYPE_TAG
  JSDOC_TEMPLATE_TAG
  JSDOC_TYPEDEF_TAG
  JSDOC_PROPERTY_TAG
  JSDOC_TYPE_LITERAL
  JSDOC_LITERAL_TYPE
  SYNTAX_LIST
  NOT_EMITTED_STATEMENT
  PARTIALLY_EMITTED_EXPRESSION
  COMMA_LIST_EXPRESSION
  MERGE_DECLARATION_MARKER
  END_OF_DECLARATION_MARKER
  COUNT
}

enum NodeFlags {
  NONE 
  LET 
  CONST 
  NESTED_NAMESPACE 
  SYNTHESIZED 
  NAMESPACE 
  EXPORT_CONTEXT 
  CONTAINS_THIS 
  HAS_IMPLICIT_RETURN 
  HAS_EXPLICIT_RETURN 
  GLOBAL_AUGMENTATION 
  HAS_ASYNC_FUNCTIONS 
  DISALLOW_IN_CONTEXT
  YIELD_CONTEXT 
  DECORATOR_CONTEXT 
  AWAIT_CONTEXT 
  THIS_NODE_HAS_ERROR 
  JAVA_SCRIPT_FILE 
  THIS_NODE_OR_ANY_SUB_NODES_HAS_ERROR 
  HAS_AGGREGATED_CHILD_DATA 
}

type Expression {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type Node {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type TypeNode {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ClassElement {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
  name: PropertyName
}

union PropertyName = Identifier | StringLiteral | NumericLiteral | ComputedPropertyName

type SignatureDeclaration {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
  name: PropertyName
  typeParameters: [TypeParameterDeclaration!]
  parameters: [ParameterDeclaration!]!
  type: TypeNode
}

union DeclarationWithTypeParameters = SignatureDeclaration | ClassLikeDeclaration | InterfaceDeclaration | TypeAliasDeclaration | JSDocTemplateTag

type ClassLikeDeclaration {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
  name: Identifier
  typeParameters: [TypeParameterDeclaration!]
  heritageClauses: [HeritageClause!]!
  members: [ClassElement!]!
}

type LeftHandSideExpression {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type Token {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type AtToken {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type DotDotDotToken {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type QuestionToken {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type AsteriskToken {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}


type Identifier {
  kind: SyntaxKind!
  text: String!
  originalKeywordKind: SyntaxKind
  isInJSDocNamespace: Boolean
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

union EntityName = Identifier | QualifiedName

type QualifiedName {
  kind: SyntaxKind!
  left: EntityName!
  right: Identifier!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ComputedPropertyName {
  kind: SyntaxKind!
  expression: Expression!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type Decorator {
  kind: SyntaxKind!
  expression: LeftHandSideExpression!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type TypeParameterDeclaration {
  kind: SyntaxKind!
  parent: DeclarationWithTypeParameters
  name: Identifier!
  constraint: TypeNode
  default: TypeNode
  expression: Expression
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type CallSignatureDeclaration {
  kind: SyntaxKind!
  name: PropertyName
  typeParameters: [TypeParameterDeclaration!]
  parameters: [ParameterDeclaration!]!
  type: TypeNode
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
  questionToken: QuestionToken
}

type ConstructSignatureDeclaration {
  kind: SyntaxKind!
  name: PropertyName
  typeParameters: [TypeParameterDeclaration!]
  parameters: [ParameterDeclaration!]!
  type: TypeNode
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
  questionToken: QuestionToken
}


union BindingName = Identifier | ObjectBindingPattern | ArrayBindingPattern

union BindingPattern = ObjectBindingPattern | ArrayBindingPattern

type VariableDeclaration {
  kind: SyntaxKind!
  parent: Node
  name: BindingName!
  type: TypeNode
  initializer: Expression
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type VariableDeclarationList {
  kind: SyntaxKind!
  parent: Node
  declarations: [VariableDeclaration!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type ParameterDeclaration {
  kind: SyntaxKind!
  parent: SignatureDeclaration
  dotDotDotToken: DotDotDotToken
  name: BindingName!
  questionToken: QuestionToken
  type: TypeNode
  initializer: Expression
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type BindingElement {
  kind: SyntaxKind!
  parent: BindingPattern
  propertyName: PropertyName
  dotDotDotToken: DotDotDotToken
  name: BindingName!
  initializer: Expression
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type PropertySignature {
  kind: SyntaxKind
  name: PropertyName!
  questionToken: QuestionToken
  type: TypeNode
  initializer: Expression
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type PropertyDeclaration {
  kind: SyntaxKind!
  questionToken: QuestionToken
  name: PropertyName!
  type: TypeNode
  initializer: Expression
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type PropertyAssignment {
  kind: SyntaxKind!
  name: PropertyName!
  questionToken: QuestionToken
  initializer: Expression!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ShorthandPropertyAssignment {
  kind: SyntaxKind!
  name: Identifier!
  questionToken: QuestionToken
  equalsToken: Token
  objectAssignmentInitializer: Expression
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type SpreadAssignment {
  kind: SyntaxKind!
  expression: Expression!
  name: PropertyName
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

union ObjectBindingPatternParent = VariableDeclaration | ParameterDeclaration | BindingElement

type ObjectBindingPattern {
  kind: SyntaxKind!
  parent: ObjectBindingPatternParent
  elements: [BindingElement!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

union ArrayBindingPatternParent = VariableDeclaration | ParameterDeclaration | BindingElement

type ArrayBindingPattern {
  kind: SyntaxKind!
  parent: ArrayBindingPatternParent
  elements: [ArrayBindingElement!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

union ArrayBindingElement = BindingElement | OmittedExpression

type FunctionDeclaration {
  kind: SyntaxKind!
  name: Identifier
  body: Block
  asteriskToken: AsteriskToken
  questionToken: QuestionToken
  typeParameters: [TypeParameterDeclaration!]
  parameters: [ParameterDeclaration!]!
  type: TypeNode
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type MethodSignature {
  kind: SyntaxKind!
  name: PropertyName!
  typeParameters: [TypeParameterDeclaration!]
  parameters: [ParameterDeclaration!]!
  type: TypeNode
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
  questionToken: QuestionToken
}

type MethodDeclaration {
  kind: SyntaxKind!
  name: PropertyName!
  body: FunctionBody
  asteriskToken: AsteriskToken
  questionToken: QuestionToken
  typeParameters: [TypeParameterDeclaration!]
  parameters: [ParameterDeclaration!]!
  type: TypeNode
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ConstructorDeclaration {
  kind: SyntaxKind!
  parent: ConstructorDeclarationParent
  body: FunctionBody
  asteriskToken: AsteriskToken
  questionToken: QuestionToken
  name: PropertyName
  typeParameters: [TypeParameterDeclaration!]
  parameters: [ParameterDeclaration!]!
  type: TypeNode
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type SemicolonClassElement {
  kind: SyntaxKind!
  parent: SemicolonClassElementParent
  name: PropertyName
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type GetAccessorDeclaration {
  kind: SyntaxKind!
  parent: GetAccessorDeclarationParent
  name: PropertyName!
  body: FunctionBody!
  asteriskToken: AsteriskToken
  questionToken: QuestionToken
  typeParameters: [TypeParameterDeclaration!]
  parameters: [ParameterDeclaration]!
  type: TypeNode
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type SetAccessorDeclaration {
  kind: SyntaxKind!
  parent: SetAccessorDeclarationParent
  name: PropertyName!
  body: FunctionBody!
  asteriskToken: AsteriskToken
  questionToken: QuestionToken
  typeParameters: [TypeParameterDeclaration!]
  parameters: [ParameterDeclaration]!
  type: TypeNode
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type IndexSignatureDeclaration {
  kind: SyntaxKind!
  parent: IndexSignatureDeclarationParent
  name: PropertyName
  typeParameters: [TypeParameterDeclaration!]
  parameters: [ParameterDeclaration!]!
  type: TypeNode
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
  questionToken: QuestionToken
}

type KeywordTypeNode {
  kind: KeywordTypeNodeKind
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ThisTypeNode {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type FunctionTypeNode {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
  name: PropertyName
  typeParameters: [TypeParameterDeclaration!]
  parameters: [ParameterDeclartion!]!
  type: TypeNode
}

type ConstructorTypeNode {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
  name: PropertyName
  typeParameters: [TypeParameterDeclaration]
  parameters: [ParmeterDeclaration!]!
  type: TypeNode
}

type TypeReferenceNode {
  kind: SyntaxKind!
  typeName: EntityName!
  typeArguments: [TypeNode!]
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type TypePredicateNode {
  kind: SyntaxKind!
  parameterName: TypePredicateNodeParameterName
  type: TypeNode!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type TypeQueryNode {
  kind: SyntaxKind!
  exprName: EntityName!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type TypeLiteralNode {
  kind: SyntaxKind!
  members: [TypeElement!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ArrayTypeNode {
  kind: SyntaxKind!
  elementType: TypeNode!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type TupleTypeNode {
  kind: SyntaxKind!
  elementTypes: [TypeNode!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type UnionTypeNode {
  kind: SyntaxKind!
  types: [TypeNode!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type IntersectionTypeNode {
  kind: SyntaxKind!
  types: [TypeNode!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ParenthesizedTypeNode {
  kind: SyntaxKind!
  type: TypeNode!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type TypeOperatorNode {
  kind: SyntaxKind!
  operator: SyntaxKind!
  type: TypeNode!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type IndexedAccessTypeNode {
  kind: SyntaxKind!
  objectType: TypeNode!
  indexType: TypeNode!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type MappedTypeNode {
  kind: SyntaxKind!
  parent: TypeAliasDeclaration
  readonlyToken: ReadonlyToken
  typeParameter: TypeParameterDeclaration!
  questionToken: QuestionToken
  type: TypeNode
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type LiteralTypeNode {
  kind: SyntaxKind!
  literal: Expression!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type StringLiteral {
  kind: SyntaxKind!
  text: String!
  isUnterminated: Boolean
  hasExtendedUnicodeEscape: Boolean
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type OmittedExpression {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type PartiallyEmittedExpression {
  kind: SyntaxKind!
  expression: Expression!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type PrefixUnaryExpression {
  kind: SyntaxKind!
  operator: PrefixUnaryOperator!
  operand: UnaryExpression!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type PostfixUnaryExpression {
  kind: SyntaxKind!
  operand: LeftHandSideExpression!
  operator: PostfixUnaryOperator!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type NullLiteral {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type BooleanLiteral {
  kind: BooleanLiteralKind
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ThisExpression {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type SuperExpression {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ImportExpression {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type DeleteExpression {
  kind: SyntaxKind!
  expression: UnaryExpression!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type TypeOfExpression {
  kind: SyntaxKind!
  expression: UnaryExpression!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type VoidExpression {
  kind: SyntaxKind!
  expression: UnaryExpression!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type AwaitExpression {
  kind: SyntaxKind!
  expression: UnaryExpression!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type YieldExpression {
  kind: SyntaxKind!
  asteriskToken: AsteriskToken
  expression: Expression
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type BinaryExpression {
  kind: SyntaxKind!
  left: Expression!
  operatorToken: BinaryOperatorToken!
  right: Expression!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ConditionalExpression {
  kind: SyntaxKind!
  condition: Expression!
  questionToken: QuestionToken!
  whenTrue: Expression!
  colonToken: ColonToken!
  whenFalse: Expression!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type FunctionExpression {
  kind: SyntaxKind!
  name: Identifier
  body: FunctionBody!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
  asteriskToken: AsteriskToken
  questionToken: QuestionToken
  typeParameters: [TypeParameterDeclaration!]
  parameters: [ParameterDeclaration!]!
  type: TypeNode
}

type ArrowFunction {
  kind: SyntaxKind!
  equalsGreaterThanToken: EqualsGreaterThanToken!
  body: ConciseBody!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
  asteriskToken: AsteriskToken
  questionToken: QuestionToken
  name: PropertyName
  typeParameters: [TypeParameterDeclaration!]
  parameters: [ParameterDeclaration!]!
  type: TypeNode
}

type RegularExpressionLiteral {
  kind: SyntaxKind!
  text: String!
  isUnterminated: Boolean
  hasExtendedUnicodeEscape: Boolean
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type NoSubstitutionTemplateLiteral {
  kind: SyntaxKind!
  text: String!
  isUnterminated: Boolean
  hasExtendedUnicodeEscape: Boolean
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type NumericLiteral {
  kind: SyntaxKind!
  text: String!
  isUnterminated: Boolean
  hasExtendedUnicodeEscape: Boolean
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type TemplateHead {
  kind: SyntaxKind!
  parent: TemplateExpression
  text: String!
  isUnterminated: Boolean
  hasExtendedUnicodeEscape: Boolean
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type TemplateMiddle {
  kind: SyntaxKind!
  parent: TemplateSpan
  text: String!
  isUnterminated: Boolean
  hasExtendedUnicodeEscape: Boolean
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type TemplateTail {
  kind: SyntaxKind!
  parent: TemplateSpan
  text: String!
  isUnterminated: Boolean
  hasExtendedUnicodeEscape: Boolean
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type TemplateExpression {
  kind: SyntaxKind!
  head: TemplateHead!
  templateSpans: [TemplateSpan!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type TemplateSpan {
  kind: SyntaxKind!
  parent: TemplateExpression
  expression: Expression!
  literal: TemplateSpanLiteral
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type ParenthesizedExpression {
  kind: SyntaxKind!
  expression: Expression!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ArrayLiteralExpression {
  kind: SyntaxKind!
  elements: [Expression!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type SpreadElement {
  kind: SyntaxKind!
  expression: Expression!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ObjectLiteralExpression {
  kind: SyntaxKind!
  properties: [ObjectLiteralElementLike!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type PropertyAccessExpression {
  kind: SyntaxKind!
  expression: LeftHandSideExpression!
  name: Identifier!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ElementAccessExpression {
  kind: SyntaxKind!
  expression: LeftHandSideExpression!
  argumentExpression: Expression
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type CallExpression {
  kind: SyntaxKind!
  expression: LeftHandSideExpression!
  typeArguments: [TypeParameterDeclaration!]
  arguments: [ParameterDeclaration!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ExpressionWithTypeArguments {
  kind: SyntaxKind!
  parent: HeritageClause
  expression: LeftHandSideExpression!
  typeArguments: [TypeNode!]
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type NewExpression {
  kind: SyntaxKind!
  expression: LeftHandSideExpression!
  typeArguments: [TypeNode!]
  arguments: [Expression!]
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type TaggedTemplateExpression {
  kind: SyntaxKind!
  tag: LeftHandSideExpression!
  template: TemplateLiteral!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type AsExpression {
  kind: SyntaxKind!
  expression: Expression!
  type: TypeNode!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type TypeAssertion {
  kind: SyntaxKind!
  type: TypeNode!
  expression: UnaryExpression!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type NonNullExpression {
  kind: SyntaxKind!
  expression: Expression!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type MetaProperty {
  kind: SyntaxKind!
  keywordToken: SyntaxKind!
  name: Identifier!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type JsxElement {
  kind: SyntaxKind!
  openingElement: JsxOpeningElement!
  children: [JsxChild!]!
  closingElement: JsxClosingElement!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type JsxOpeningElement {
  kind: SyntaxKind!
  parent: JsxElement
  tagName: JsxTagNameExpression!
  attributes: JsxAttributes!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type JsxSelfClosingElement {
  kind: SyntaxKind!
  tagName: JsxTagNameExpression!
  attributes: JsxAttributes!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type JsxAttribute {
  kind: SyntaxKind!
  parent: JsxAttributes
  name: Identifier!
  initializer: JsxAttributeInitializer
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type JsxSpreadAttribute {
  kind: SyntaxKind!
  parent: JsxAttributes
  expression: Expression!
  name: PropertyName
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type JsxClosingElement {
  kind: SyntaxKind!
  parent: JsxElement
  tagName: JsxTagNameExpression!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type JsxExpression {
  kind: SyntaxKind!
  parent: JsxExpressionParent
  dotDotDotToken: Token
  expression: Expression
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type JsxText {
  kind: SyntaxKind!
  containsOnlyWhiteSpaces: Boolean!
  parent: JsxElement
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type NotEmittedStatement {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type CommaListExpression {
  kind: SyntaxKind!
  elements: [Expression!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type EmptyStatement {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

interface Statement {
  
}

type DebuggerStatement {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type MissingDeclaration {
  kind: SyntaxKind!
  name: Identifier
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
  questionToken: QuestionToken
}

type Block {
  kind: SyntaxKind!
  statements: [Statement!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type VariableStatement {
  kind: SyntaxKind!
  declarationList: VariableDeclarationList!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ExpressionStatement {
  kind: SyntaxKind!
  expression: Expression!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type IfStatement {
  kind: SyntaxKind!
  expression: Expression!
  thenStatement: Statement!
  elseStatement: Statement
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type DoStatement {
  kind: SyntaxKind!
  expression: Expression!
  statement: Statement!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type WhileStatement {
  kind: SyntaxKind!
  expression: Expression!
  statement: Statement!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ForStatement {
  kind: SyntaxKind!
  initializer: ForInitializer
  condition: Expression
  incrementor: Expression
  statement: Statement!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ForInStatement {
  kind: SyntaxKind!
  initializer: ForInitializer!
  expression: Expression!
  statement: Statement!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ForOfStatement {
  kind: SyntaxKind!
  awaitToken: AwaitKeywordToken
  initializer: ForInitializer!
  expression: Expression!
  statement: Statement!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type BreakStatement {
  kind: SyntaxKind!
  label: Identifier
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ContinueStatement {
  kind: SyntaxKind!
  label: Identifier
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ReturnStatement {
  kind: SyntaxKind!
  expression: Expression
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type WithStatement {
  kind: SyntaxKind!
  expression: Expression!
  statement: Statement!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type SwitchStatement {
  kind: SyntaxKind!
  expression: Expression!
  caseBlock: CaseBlock!
  possiblyExhaustive: Boolean
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type CaseBlock {
  kind: SyntaxKind!
  parent: SwitchStatement
  clauses: [CaseOrDefaultClause!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type CaseClause {
  kind: SyntaxKind!
  parent: CaseBlock
  expression: Expression!
  statements: [Statement!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type DefaultClause {
  kind: SyntaxKind!
  parent: CaseBlock
  statements: [Statement!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type LabeledStatement {
  kind: SyntaxKind!
  label: Identifier!
  statement: Statement!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ThrowStatement {
  kind: SyntaxKind!
  expression: Expression!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type TryStatement {
  kind: SyntaxKind!
  tryBlock: Block!
  catchClause: CatchClause
  finallyBlock: Block
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type CatchClause {
  kind: SyntaxKind!
  parent: TryStatement
  variableDeclaration: VariableDeclaration!
  block: Block!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type ClassDeclaration {
  kind: SyntaxKind!
  name: Identifier
  typeParameters: [TypeParameterDeclaration!]
  heritageClauses: [HeritageClause!]
  members: [ClassElement!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ClassExpression {
  kind: SyntaxKind!
  name: Identifier
  typeParameters: [TypeParameterDeclaration!]
  heritageClauses: [HeritageClause!]
  members: [ClassElement!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type InterfaceDeclaration {
  kind: SyntaxKind!
  name: Identifier!
  typeParameters: [TypeParameterDeclaration!]
  heritageClauses: [HeritageClause!]
  members: [ClassElement!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

union HeritageClauseParent = InterfaceDeclaration | ClassDeclaration | ClassExpression

type HeritageClause {
  kind: SyntaxKind!
  parent: HeritageClauseParent
  token: SyntaxKind
  types: [ExpressionWithTypeArguments!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type TypeAliasDeclaration {
  kind: SyntaxKind!
  name: Identifier!
  typeParameters: [TypeParameterDeclaration!]
  type: TypeNode!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type EnumMember {
  kind: SyntaxKind!
  parent: EnumDeclaration
  name: PropertyName!
  initializer: Expression
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type EnumDeclaration {
  kind: SyntaxKind!
  name: Identifier!
  members: [EnumMember!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ModuleDeclaration {
  kind: SyntaxKind!
  parent: ModuleDeclarationParent
  name: ModuleName!
  body: ModuleDeclarationBody
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type ModuleBlock {
  kind: SyntaxKind!
  parent: ModuleDeclaration
  statements: [Statement!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type ImportEqualsDeclaration {
  kind: SyntaxKind!
  parent: ImportEqualsDeclarationParent
  name: Identifier!
  moduleReference: ModuleReference!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type ExternalModuleReference {
  kind: SyntaxKind!
  parent: ImportEqualsDeclaration
  expression: Expression
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type ImportDeclaration {
  kind: SyntaxKind!
  parent: ImportDeclarationParent
  importClause: ImportClause
  moduleSpecifier: Expression!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type ImportClause {
  kind: SyntaxKind!
  parent: ImportDeclaration
  name: Identifier
  namedBindings: NamedImportBindings
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type NamespaceImport {
  kind: SyntaxKind!
  parent: ImportClause
  name: Identifier!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type NamespaceExportDeclaration {
  kind: SyntaxKind!
  name: Identifier!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type ExportDeclaration {
  kind: SyntaxKind!
  parent: ExportDeclarationParent
  exportClause: NamedExports
  moduleSpecifier: Expression
  name: ExportDeclarationName
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type NamedImports {
  kind: SyntaxKind!
  parent: ImportClause
  elements: [ImportSpecifier!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type NamedExports {
  kind: SyntaxKind!
  parent: ExportDeclaration
  elements: [ExportSpecifier!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type ImportSpecifier {
  kind: SyntaxKind!
  parent: NamedImports
  propertyName: Identifier
  name: Identifier!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type ExportSpecifier {
  kind: SyntaxKind!
  parent: NamedExports
  propertyName: Identifier
  name: Identifier!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type ExportAssignment {
  kind: SyntaxKind!
  parent: SourceFile
  isExportEquals: Boolean
  expression: Expression!
  name: ExportAssignmentName
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type JSDocTypeExpression {
  kind: SyntaxKind!
  type: JSDocType!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type JSDocAllType {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type JSDocUnknownType {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type JSDocArrayType {
  kind: SyntaxKind!
  elementType: JSDocType!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type JSDocUnionType {
  kind: SyntaxKind!
  types: [JSDocType!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type JSDocTupleType {
  kind: SyntaxKind!
  types: [JSDocType!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type JSDocNonNullableType {
  kind: SyntaxKind!
  type: JSDocType!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type JSDocNullableType {
  kind: SyntaxKind!
  type: JSDocType!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type JSDocRecordType {
  kind: SyntaxKind!
  literal: TypeLiteralNode!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type JSDocTypeReference {
  kind: SyntaxKind!
  name: EntityName!
  typeArguments: [JSDocType!]!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type JSDocOptionalType {
  kind: SyntaxKind!
  type: JSDocType!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type JSDocFunctionType {
  kind: SyntaxKind!
  parameters: [ParameterDeclaration!]!
  type: JSDocType!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
  name: PropertyName
  typeParameters: [TypeParameterDeclaration!]
}

type JSDocVariadicType {
  kind: SyntaxKind!
  type: JSDocType!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type JSDocConstructorType {
  kind: SyntaxKind!
  type: JSDocType!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type JSDocThisType {
  kind: SyntaxKind!
  type: JSDocType!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type JSDocLiteralType {
  kind: SyntaxKind!
  literal: LiteralTypeNode!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type JSDocRecordMember {
  kind: SyntaxKind!
  name: JSDocRecordMemberName
  type: JSDocType
  questionToken: QuestionToken
  initializer: Expression
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type JSDocTag {
  kind: SyntaxKind!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
  parent: JSDoc
  atToken: AtToken
  tagName: Identifier
  comment: String
}

type JSDoc {
  kind: SyntaxKind!
  tags: [JSDocTag]
  comment: String
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type JSDocUnknownTag {
  kind: SyntaxKind!
  parent: JSDoc!
  atToken: AtToken!
  tagName: Identifier!
  comment: String 
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type JSDocAugmentsTag {
  kind: SyntaxKind!
  typeExpression: JSDocTypeExpression!
  parent: JSDoc!
  atToken: AtToken!
  tagName: Identifier!
  comment: String
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type JSDocClassTag {
  kind: SyntaxKind!
  parent: JSDoc!
  atToken: AtToken!
  tagName: Identifier!
  comment: String
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type JSDocTemplateTag {
  kind: SyntaxKind!
  typeParameters: [TypeParameterDeclaration!]!
  parent: JSDoc!
  atToken: AtToken!
  tagName: Identifier!
  comment: String
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type JSDocReturnTag {
  kind: SyntaxKind!
  typeExpression: JSDocTypeExpression!
  parent: JSDoc!
  atToken: AtToken!
  tagName: Identifier!
  comment: String
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type JSDocTypeTag {
  kind: SyntaxKind!
  typeExpression: JSDocTypeExpression!
  parent: JSDoc!
  atToken: AtToken!
  tagName: Identifier!
  comment: String
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type JSDocTypeLiteral {
  kind: SyntaxKind!
  jsDocPropertyTags: [JSDocPropertyTag!]
  jsDocTypeTag: JSDocTypeTag
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type JSDocParameterTag {
  kind: SyntaxKind!
  preParameterName: Identifier
  typeExpression: JSDocTypeExpression
  postParameterName: Identifier
  name: Identifier!
  isBracketed: Boolean!
  parent: JSDoc!
  atToken: AtToken!
  tagName: Identifier!
  comment: String
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  pos: Float!
  end: Float!
}

type SourceFile {
  kind: SyntaxKind!
  statements: [Statement!]!
  endOfFileToken: Token!
  fileName: String!
  text: String!
  amdDependencies: SourceFileAmdDependencies
  moduleName: String!
  referencedFiles: SourceFileReferencedFiles
  typeReferenceDirectives: SourceFileTypeReferenceDirectives
  languageVariant: LanguageVariant!
  isDeclarationFile: Boolean!
  hasNoDefaultLib: Boolean!
  languageVersion: ScriptTarget!
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type Bundle {
  kind: SyntaxKind!
  sourceFiles: BundleSourceFiles
  flags: [NodeFlags!]!
  decorators: [Decorator!]
  modifiers: [Token!]
  parent: Node
  pos: Float!
  end: Float!
}

type Query {
  node: Node
}


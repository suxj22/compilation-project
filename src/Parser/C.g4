grammar C;

compilationUnit
    : (functionDefinition | declaration)+ EOF
    ;

functionDefinition
    : declarationSpecifiers declarator compoundStatement
    ;

declaration
    : declarationSpecifiers initDeclaratorList? ';'
    ;

declarationSpecifiers
    : (typeSpecifier | storageClassSpecifier)*
    ;

typeSpecifier
    : 'void' | 'char' | 'short' | 'int' | 'long' | 'float' | 'double' | 'signed' | 'unsigned' | 'bool'
    | structSpecifier
    ;

structSpecifier
    : 'struct' Identifier? '{' structDeclarationList '}'
    ;

structDeclarationList
    : structDeclaration+
    ;

structDeclaration
    : declarationSpecifiers initDeclaratorList? ';'
    ;

storageClassSpecifier
    : 'typedef' | 'extern' | 'static' | 'auto' | 'register'
    ;

initDeclaratorList
    : initDeclarator (',' initDeclarator)*
    ;

initDeclarator
    : declarator ('=' initializer)?
    ;

declarator
    : pointer? directDeclarator
    ;

directDeclarator
    : Identifier
    | '(' declarator ')'
    | directDeclarator '[' constantExpression? ']'
    | directDeclarator '(' parameterTypeList? ')'
    ;

pointer
    : '*' typeQualifierList? pointer?
    ;

typeQualifierList
    : typeQualifier+
    ;

typeQualifier
    : 'const' | 'volatile'
    ;

parameterTypeList
    : parameterList (',' '...')?
    ;

parameterList
    : parameterDeclaration (',' parameterDeclaration)*
    ;

parameterDeclaration
    : declarationSpecifiers declarator
    ;

initializer
    : assignmentExpression
    | '{' initializerList? ','? '}'
    ;

initializerList
    : initializer (',' initializer)*
    ;

expression
    : assignmentExpression (',' assignmentExpression)*
    ;

assignmentExpression
    : conditionalExpression
    | unaryExpression assignmentOperator assignmentExpression
    ;

conditionalExpression
    : logicalOrExpression ('?' expression ':' conditionalExpression)?
    ;

logicalOrExpression
    : logicalAndExpression ('||' logicalAndExpression)*
    ;

logicalAndExpression
    : inclusiveOrExpression ('&&' inclusiveOrExpression)*
    ;

inclusiveOrExpression
    : exclusiveOrExpression ('|' exclusiveOrExpression)*
    ;

exclusiveOrExpression
    : andExpression ('^' andExpression)*
    ;

andExpression
    : equalityExpression ('&' equalityExpression)*
    ;

equalityExpression
    : relationalExpression (('==' | '!=') relationalExpression)*
    ;

relationalExpression
    : shiftExpression (('<' | '>' | '<=' | '>=') shiftExpression)*
    ;

shiftExpression
    : additiveExpression (('<<' | '>>') additiveExpression)*
    ;

additiveExpression
    : multiplicativeExpression (('+' | '-') multiplicativeExpression)*
    ;

multiplicativeExpression
    : castExpression (('*' | '/' | '%') castExpression)*
    ;

castExpression
    : '(' typeName ')' castExpression
    | unaryExpression
    ;

unaryExpression
    : ('++' | '--')? postfixExpression
    ;

postfixExpression
    : primaryExpression (('[' expression ']') | ('(' argumentExpressionList? ')') | '.' Identifier | '->' Identifier | '++' | '--')*
    ;

primaryExpression
    : Identifier
    | Constant
    | CharacterConstant
    | StringLiteral
    | '(' expression ')'
    ;

argumentExpressionList
    : assignmentExpression (',' assignmentExpression)*
    ;

constantExpression
    : conditionalExpression
    ;

statement
    : labeledStatement
    | compoundStatement
    | expressionStatement
    | selectionStatement
    | iterationStatement
    | jumpStatement
    ;

labeledStatement
    : Identifier ':' statement
    | 'case' constantExpression ':' statement
    | 'default' ':' statement
    ;

compoundStatement
    : '{' (declaration | statement)* '}'
    ;

expressionStatement
    : expression? ';'
    ;

selectionStatement
    : 'if' '(' expression ')' statement ('else' statement)?
    | 'switch' '(' expression ')' statement
    ;

iterationStatement
    : 'while' '(' expression ')' statement
    | 'do' statement 'while' '(' expression ')' ';'
    | 'for' '(' forCondition ')' statement
    ;

forCondition
    : (forDeclaration | expression?) ';' forExpression? ';' forExpression?
    ;

forExpression
    : assignmentExpression (',' assignmentExpression)*
    ;

forDeclaration
    : declarationSpecifiers initDeclaratorList?
    ;

jumpStatement
    : 'goto' Identifier ';'
    | 'continue' ';'
    | 'break' ';'
    | 'return' expression? ';'
    ;

assignmentOperator
    : '=' | '*=' | '/=' | '%=' | '+=' | '-=' | '<<=' | '>>=' | '&=' | '^=' | '|='
    ;

typeName
    : typeSpecifier pointer? typeQualifierList?
    ;

Identifier
    : [a-zA-Z_][a-zA-Z_0-9]*
    ;

Constant
    : Digit+
    | Digit+ '.' Digit*
    ;

CharacterConstant
    : '\'' ( ~['\\\r\n] | EscapeSequence ) '\''
    ;

StringLiteral
    : '"' (~["\\\r\n] | EscapeSequence)* '"'
    ;

fragment Digit
    : [0-9]
    ;

fragment EscapeSequence
    : '\\' [btnfr"'\\]
    ;

Whitespace
    : [ \t\r\n]+ -> skip
    ;

LineComment
    : '//' ~[\r\n]* -> skip
    ;

BlockComment
    : '/*' .*? '*/' -> skip
    ;

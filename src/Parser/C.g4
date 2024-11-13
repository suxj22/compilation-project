grammar C;

compilationUnit
    : translationUnit? EOF
    ;

translationUnit
    : (functionDefinition | declaration)+
    ;

functionDefinition
    : declarationSpecifiers? declarator compoundStatement
    ;

declarationList
    : declaration+
    ;

declaration
    : declarationSpecifiers initDeclaratorList? ';'
    ;

declarationSpecifiers
    // : (typeSpecifier | storageClassSpecifier)+
    : typeSpecifier+
    ;

typeSpecifier
    : 'void' | 'char' | 'short' | 'int' | 'long' | 'float' | 'double' | 'signed' | 'unsigned'
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

// 以下一个可删
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
    | directDeclarator '[' conditionalExpression? ']'
    | directDeclarator '(' parameterList? ')'
    ;

pointer
    // : '*' typeQualifierList? pointer?
    : ('*')+
    ;

// 以下三个可删
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
    | '{' initializerList? ','? '}' // 数组初始化
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
    : equalityExpression ('&&' equalityExpression)*
    ;

equalityExpression
    : relationalExpression (('==' | '!=') relationalExpression)*
    ;

relationalExpression
    : additiveExpression (('<' | '>' | '<=' | '>=') additiveExpression)*
    ;

additiveExpression
    : multiplicativeExpression (('+' | '-') multiplicativeExpression)*
    ;

multiplicativeExpression
    : unaryExpression (('*' | '/' | '%') unaryExpression)*
    ;

unaryExpression
    : ('++' | '--')? (postfixExpression | unaryOperator unaryExpression)
    ;

unaryOperator
    : '&' | '*' | '+' | '-' | '~' | '!'
    ;

postfixExpression
    : primaryExpression (('[' expression ']') 
                        | ('(' argumentExpressionList? ')') 
                        | '.' Identifier 
                        | '->' Identifier 
                        | '++' 
                        | '--')*
    ;

primaryExpression
    : Identifier
    | Constant
    | CharacterConstant
    | StringLiteral
    | '(' expression ')'
    ;

constantExpression
    : conditionalExpression
    ;

argumentExpressionList
    : assignmentExpression (',' assignmentExpression)*
    ;

compoundStatement
    : '{' (declaration | statement)* '}'
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

expressionStatement
    : expression? ';'
    ;

selectionStatement
    : 'if' '(' expression ')' statement ('else' statement)?
    // | 'switch' '(' expression ')' statement
    ;

iterationStatement
    : 'while' '(' expression ')' statement
    | 'do' statement 'while' '(' expression ')' ';'
    | 'for' '(' forCondition ')' statement
    ;

forCondition
    : (forDeclaration | expression?) ';' expression? ';' expression?
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

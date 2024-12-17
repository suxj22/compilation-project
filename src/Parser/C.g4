grammar C;

// Parser rules
compilationUnit
    : translationUnit? EOF
    ;

translationUnit
    : (functionDefinition | declaration)+
    ;

functionDefinition
    : declarationSpecifiers? declarator compoundStatement
    ;

declaration
    : declarationSpecifiers initDeclaratorList? SEMI
    ;

declarationSpecifiers
    : declarationSpecifier+
    ;

declarationSpecifier
    : storageClassSpecifier
    | typeSpecifier
    | typeQualifier
    ;

storageClassSpecifier
    : TYPEDEF | EXTERN | STATIC
    ;

typeSpecifier
    : VOID | CHAR | SHORT | INT | LONG | FLOAT | DOUBLE | SIGNED | UNSIGNED
    | structSpecifier
    | typedefName
    ;

typeQualifier
    : CONST
    ;

typedefName
    : Identifier
    ;

structSpecifier
    : STRUCT Identifier? LEFT_BRACE structDeclarationList RIGHT_BRACE
    ;

structDeclarationList
    : structDeclaration+
    ;

structDeclaration
    : declarationSpecifiers initDeclaratorList? SEMI
    ;

initDeclaratorList
    : initDeclarator (COMMA initDeclarator)*
    ;

initDeclarator
    : declarator (ASSIGN initializer)?
    ;

declarator
    : pointer? directDeclarator
    ;

directDeclarator
    : Identifier
    | LEFT_PAREN declarator RIGHT_PAREN
    | directDeclarator LEFT_BRACKET constantExpression? RIGHT_BRACKET
    | directDeclarator LEFT_PAREN parameterTypeList? RIGHT_PAREN
    ;

pointer
    : (STAR typeQualifierList?)+
    ;

typeQualifierList
    : typeQualifier+
    ;

parameterTypeList
    : parameterList (COMMA ELLIPSIS)?
    ;

parameterList
    : parameterDeclaration (COMMA parameterDeclaration)*
    ;

parameterDeclaration
    : declarationSpecifiers declarator
    ;

initializer
    : assignmentExpression
    | LEFT_BRACE initializerList? COMMA? RIGHT_BRACE
    ;

initializerList
    : initializer (COMMA initializer)*
    ;

expression
    : assignmentExpression (COMMA assignmentExpression)*
    ;

assignmentExpression
    : conditionalExpression
    | unaryExpression assignmentOperator assignmentExpression
    ;

conditionalExpression
    : logicalOrExpression (QUESTION expression COLON conditionalExpression)?
    ;

logicalOrExpression
    : logicalAndExpression (OR_OR logicalAndExpression)*
    ;

logicalAndExpression
    : equalityExpression (AND_AND equalityExpression)*
    ;

equalityExpression
    : relationalExpression ((EQUAL | NOT_EQUAL) relationalExpression)*
    ;

relationalExpression
    : additiveExpression ((LESS | GREATER | LESS_EQUAL | GREATER_EQUAL) additiveExpression)*
    ;

additiveExpression
    : multiplicativeExpression ((PLUS | MINUS) multiplicativeExpression)*
    ;

multiplicativeExpression
    : unaryExpression ((STAR | DIV | MOD) unaryExpression)*
    ;

unaryExpression
    : (PLUS_PLUS | MINUS_MINUS)? (postfixExpression | unaryOperator unaryExpression)
    ;

unaryOperator
    : AND | STAR | PLUS | MINUS | NOT
    ;

postfixExpression
    : primaryExpression (LEFT_BRACKET expression RIGHT_BRACKET
                        | LEFT_PAREN argumentExpressionList? RIGHT_PAREN
                        | DOT Identifier
                        | ARROW Identifier
                        | PLUS_PLUS
                        | MINUS_MINUS)*
    ;

primaryExpression
<<<<<<< HEAD
    : stdFunction
    | Identifier
=======
    : Identifier
>>>>>>> f10575594f2a1f0700797d063f1ce60cf78a70cf
    | Constant
    | CharacterConstant
    | StringLiteral
    | LEFT_PAREN expression RIGHT_PAREN
    ;

constantExpression
    : conditionalExpression
    ;

argumentExpressionList
    : assignmentExpression (COMMA assignmentExpression)*
    ;

compoundStatement
    : LEFT_BRACE (declaration | statement)* RIGHT_BRACE
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
    : Identifier COLON statement
    ;

expressionStatement
    : expression? SEMI
    ;

selectionStatement
    : IF LEFT_PAREN expression RIGHT_PAREN statement (ELSE statement)?
    ;

iterationStatement
    : WHILE LEFT_PAREN expression RIGHT_PAREN statement
    | DO statement WHILE LEFT_PAREN expression RIGHT_PAREN SEMI
    | FOR LEFT_PAREN forCondition RIGHT_PAREN statement
    ;

forCondition
    : (forDeclaration | expression?) SEMI expression? SEMI expression?
    ;

forDeclaration
    : declarationSpecifiers initDeclaratorList?
    ;

jumpStatement
    : GOTO Identifier SEMI
    | CONTINUE SEMI
    | BREAK SEMI
    | RETURN expression? SEMI
    ;

assignmentOperator
    : ASSIGN | STAR_ASSIGN | DIV_ASSIGN | MOD_ASSIGN | PLUS_ASSIGN | MINUS_ASSIGN
    ;

<<<<<<< HEAD
stdFunction
    : strlenFunction 
    | atoiFunction 
    | printfFunction 
    | scanfFunction 
    | getsFunction
    ;

//strlen
strlenFunction 
    : 'strlen' LEFT_PAREN Identifier RIGHT_PAREN
    ;

//atoi
atoiFunction 
    : 'atoi' LEFT_PAREN Identifier RIGHT_PAREN
    ;

// scanf
scanfFunction
    : 'scanf' LEFT_PAREN StringLiteral (COMMA addressOfVariable)* RIGHT_PAREN
    ;

addressOfVariable
    : AND (Identifier | postfixExpression)
    ;

//printf
printfFunction
    : 'printf' LEFT_PAREN StringLiteral (COMMA expression)* RIGHT_PAREN
    ;

//gets
getsFunction
    : 'gets' LEFT_PAREN expression RIGHT_PAREN
    ;

=======
>>>>>>> f10575594f2a1f0700797d063f1ce60cf78a70cf
// Lexer rules
VOID       : 'void';
CHAR       : 'char';
SHORT      : 'short';
INT        : 'int';
LONG       : 'long';
FLOAT      : 'float';
DOUBLE     : 'double';
SIGNED     : 'signed';
UNSIGNED   : 'unsigned';
STRUCT     : 'struct';
TYPEDEF    : 'typedef';
EXTERN     : 'extern';
STATIC     : 'static';
CONST      : 'const';
IF         : 'if';
ELSE       : 'else';
WHILE      : 'while';
DO         : 'do';
FOR        : 'for';
CONTINUE   : 'continue';
BREAK      : 'break';
RETURN     : 'return';
GOTO       : 'goto';

LEFT_BRACKET : '[';
RIGHT_BRACKET : ']';
LEFT_PAREN   : '(';
RIGHT_PAREN  : ')';
LEFT_BRACE   : '{';
RIGHT_BRACE  : '}';
SEMI        : ';';
COMMA       : ',';

ASSIGN      : '=';
STAR_ASSIGN : '*=';
DIV_ASSIGN  : '/=';
MOD_ASSIGN  : '%=';
PLUS_ASSIGN : '+=';
MINUS_ASSIGN: '-=';

PLUS_PLUS   : '++';
MINUS_MINUS : '--';
PLUS        : '+';
MINUS       : '-';
STAR        : '*';
DIV         : '/';
MOD         : '%';

LESS        : '<';
GREATER     : '>';
LESS_EQUAL  : '<=';
GREATER_EQUAL : '>=';

EQUAL       : '==';
NOT_EQUAL   : '!=';
NOT         : '!';

AND_AND     : '&&';
OR_OR       : '||';

QUESTION    : '?';
COLON       : ':';
AND         : '&';

DOT         : '.';
ARROW       : '->';
ELLIPSIS    : '...';

Identifier
    : [a-zA-Z_][a-zA-Z_0-9]*
    ;

Constant
    : [0-9]+ ('.' [0-9]*)?
    ;

CharacterConstant
    : '\'' ( ~['\\\r\n] | EscapeSequence ) '\''
    ;

StringLiteral
    : '"' (~["\\\r\n] | EscapeSequence)* '"'
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

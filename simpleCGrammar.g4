grammar simpleCGrammar;

// 语法分析部分
prog: (include)* (structDef | arrayDef | varDef | funcDef)*;

include: '#include' '<' LibraryName '>';

// 结构体定义
structDef: 'struct' Identifier '{' structMember+ '}' ';';

structMember: (mType | mArray) Identifier (
		',' (mType | mArray) Identifier
	)* ';';

mStruct: 'struct' Identifier;

// 数组定义
arrayDef: mType Identifier '[' Integer (',' Integer)* ']' ';';

// 变量定义
varDef:
	mType Identifier ('=' expr)? (',' Identifier ('=' expr)?)* ';';

// 函数定义
funcDef: (mType | 'void' | mStruct) Identifier '(' params? ')' '{' funcBody '}';

params: param (',' param)*;

param: mType Identifier;

// 函数体
funcBody: (statement | expr)*;

statement:
	exprStatement
	| compoundStatement
	| selectionStatement
	| iterationStatement
	| returnStatement;

// 表达式语句
exprStatement: expr ';';

// 复合语句
compoundStatement: '{' statement* '}';

// 选择语句
selectionStatement:
	'if' '(' expr ')' statement ('else' statement)?;

// 循环语句
iterationStatement:
	'while' '(' expr ')' statement
	| 'for' '(' (exprStatement | ';') (expr)? (';' expr)? ')' statement;

// 返回语句
returnStatement: 'return' (expr)? ';';

expr:
	primaryExpr
	| expr ArithmeticOperator expr
	| expr RelationalOperator expr
	| expr LogicalOperator expr
	| '!' expr
	| '(' expr ')';

// 基本表达式
primaryExpr:
	Identifier
	| Integer
	| Double
	| Char
	| String
	| 'true'
	| 'false'
	| Identifier '(' (expr (',' expr)*)? ')';

mType: Integer | Double | Char | String | Bool;

mArray: mType Identifier '[' Integer ']';

// 词法分析部分
Integer: '-'? [0-9]+; // 支持负数
Double: '-'? [0-9]+ ('.' [0-9]+)?;
Char: '\'' ('\\' [btnfr"'\\] | ~['\\]) '\''; // 支持转义字符
String: '"' .*? '"';
Bool: 'true' | 'false';

// 变量名和函数名
Identifier: [a-zA-Z_] [a-zA-Z_0-9]*;

// 运算符
ArithmeticOperator: '+' | '-' | '*' | '/' | '%';
RelationalOperator: '==' | '!=' | '<' | '<=' | '>' | '>=';
LogicalOperator: '&&' | '||' | '!';
AssignmentOperator:
	'='
	| '+='
	| '-='
	| '*='
	| '/='
	| '%='
	| '<<'
	| '>>';

// 关键字
Keyword:
	'if'
	| 'else'
	| 'while'
	| 'for'
	| 'return'
	| 'void'
	| 'int'
	| 'double'
	| 'char'
	| 'bool';

// 标点符号
LParen: '(';
RParen: ')';
LBrace: '{';
RBrace: '}';
LBracket: '[';
RBracket: ']';
Comma: ',';
Semi: ';';
Colon: ':';

// 注释部分
LineComment: '//' ~[\r\n]* -> skip;
BlockComment: '/*' .*? '*/' -> skip;
WS: [ \t\r\n]+ -> skip;

// 用于匹配头文件名
LibraryName: [a-zA-Z_][a-zA-Z0-9_]* '.h'?;
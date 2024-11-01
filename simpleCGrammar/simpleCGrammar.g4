grammar simpleCGrammar;

// ----------------- 语法 -----------------

prog: includes declarations functions;

// ------------头文件----------
includes: include*;
include: '#include' '<' lib '>';

// ----------变量声明----------
declarations: declaration*;
declaration: variableDeclaration | arrayDeclaration;

// int a;  int a = 3, b = 2, c;
variableDeclaration: (commonType) id ('=' expr)? (
		',' id ('=' expr)?
	)* ';';
// int a[10], int a[3] = {1, 2, 3};
arrayDeclaration:
	commonType id '[' integer ']' ';'
	| commonType id '[' integer ']' '=' '{' (
		integer (',' integer)*
	)? '}' ';';

// ----------函数定义----------

functions: function*;
// int add(int a, int b) { return a + b; }
function: funccommonType id '(' parameters ')' '{' funcBody '}';
// function : funccommonType id '(' parameters ')' '{' body '}' ;
funccommonType: commonType | 'void';

// (int a),(int a, int b)
parameters: parameter (',' parameter)* |; // |  表示没有参数
parameter: commonType id;

// 函数体
funcBody: body returnBlock?;

// body -> block(语句块) or func(函数调用)
body: (block | func ';')*;

// 语句块：声明语句、赋值语句、if语句、while语句、for语句、return语句
block:
	declaration
	| assignBlock
	| ifBlocks
	| whileBlock
	| forBlock
	| returnBlock; // | breakBlock | continueBlock ;

// 赋值语句 a = 1;, a[3] = 3;
assignBlock: (id | arrayItem) '=' expr ';';
arrayItem: id '[' expr ']';

// if 语句
ifBlocks: ifBlock (elseIfBlock)* (elseBlock)?;
ifBlock: 'if' '(' condition ')' '{' body '}';
elseIfBlock: 'else' 'if' '(' condition ')' '{' body '}';
elseBlock: 'else' '{' body '}';

// while 语句
whileBlock: 'while' '(' condition ')' '{' body '}';

// for 语句
forBlock:
	'for' '(' forInit ';' condition ';' forUpdate ')' (
		'{' body '}'
		| ';'
	);

forInit: id '=' expr (',' forInit)* |;
forUpdate: id '=' expr (',' forUpdate)* |;

// return 语句
returnBlock: 'return' (id | integer)? ';';

condition: expr;

expr:
	'(' expr ')'								# parens
	| op = '!' expr								# Neg
	| expr op = ( '*' | '/' | '%') expr			# MulDiv
	| expr op = ( '+' | '-') expr				# AddSub
	| expr op = ( '>=' | '<=' | '>' | '<') expr	# Compare
	| expr op = ( '==' | '!=') expr				# Equal
	| expr op = '&&' expr						# And
	| expr op = '||' expr						# Or
	| id										# Identifier
	| (op = '-')? integer						# exprint
	| (op = '-')? double						# exprdouble
	| char										# exprchar
	| bool										# exprbool
	| arrayItem									# exprarrayitem
	| string									# exprstring
	| func										# exprfunction;

func: standardFunc | userFunc;
// 自定义函数
userFunc: id '(' arguments ')';
arguments: argument (',' argument)* |;
argument: id | integer | double | char | bool | string;
// 标准库函数
standardFunc:
	strlenFunc
	| printfFunc
	| scanfFunc
	| atoiFunc
	| getsFunc;
strlenFunc: 'strlen' '(' id ')';
printfFunc: 'printf' '(' string (',' expr)* ')';
scanfFunc: 'scanf' '(' string (',' '&'? (id | arrayItem))* ')';
atoiFunc: 'atoi' '(' id ')';
getsFunc: 'gets' '(' id ')';

commonType: 'int' | 'bool' | 'double' | 'char' | 'void';

id: Identifier;

integer: Integer;
double: Double;
char: Char;
bool: Bool;
string: String;

// -------------------------- 词法 ------------------------- 库文件名

// 整数 浮点数 字符 布尔值 字符串
Integer: [0-9]+;
Double: [0-9]+ '.' [0-9]+;
Char: '\'' . '\'' | '\'\\' '0' '\'';
Bool: 'true' | 'false';
String: '"' .*? '"';

// 变量名
Identifier: [a-zA-Z_][0-9A-Za-z_]*;

// Lib 必须在 Identifier 之后，因为 Lib 也是 Identifier 的一种， 如果放在 Identifier 之前，会优先匹配 Lib，导致 Identifier 无法匹配
Lib: [a-zA-Z]+ '.h'?;

// --skip--
Whitespace: [ \t]+ -> skip;

Newline: ( '\r' '\n'? | '\n') -> skip;

BlockComment: '/*' .*? '*/' -> skip;

LineComment: '//' ~[\r\n]* -> skip;
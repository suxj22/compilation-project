import sys
from antlr4 import *
from simpleCGrammarLexer import simpleCGrammarLexer  # 根据你的生成文件名导入
from simpleCGrammarParser import simpleCGrammarParser  # 根据你的生成文件名导入

def main(argv):
    input_stream = FileStream(argv[1])  # 从文件读取输入
    lexer = simpleCGrammarLexer(input_stream)
    stream = CommonTokenStream(lexer)
    parser = simpleCGrammarParser(stream)

    tree = parser.prog()  # 调用入口点
    print(tree.toStringTree(parser.ruleNames))

if __name__ == '__main__':
    main(sys.argv)

import sys
from antlr4 import *
from SimpleCLexer import SimpleCLexer  # 根据你的生成文件名导入
from SimpleCParser import SimpleCParser  # 根据你的生成文件名导入

def main(argv):
    input_stream = FileStream(argv[1])  # 从文件读取输入
    lexer = SimpleCLexer(input_stream)
    stream = CommonTokenStream(lexer)
    parser = SimpleCParser(stream)

    tree = parser.prog()  # 调用入口点
    print(tree.toStringTree(parser.ruleNames))

if __name__ == '__main__':
    main(sys.argv)

import sys
from antlr4 import *
from CLexer import CLexer
from CParser import CParser

def main(argv):
    if len(argv) < 2:
        print("Usage: python3 test_parser.py <input-file>")
        return

    input_file = argv[1]
    input_stream = FileStream(input_file)
    lexer = CLexer(input_stream)
    stream = CommonTokenStream(lexer)
    parser = CParser(stream)
    tree = parser.compilationUnit()  # 根据您的语法入口规则调整
    print(tree.toStringTree(recog=parser))

if __name__ == '__main__':
    main(sys.argv)

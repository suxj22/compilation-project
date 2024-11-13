import sys
from antlr4 import *
from generated.CLexer import CLexer
from generated.CParser import CParser

def main(argv):
    if len(argv) < 2:
        print("Usage: python3 test_parser.py <input-file>")
        return

    input_file = argv[1]
    input_stream = FileStream(input_file)
    lexer = CLexer(input_stream)
    stream = CommonTokenStream(lexer)

    # 获取token流的大小
    token_count = stream.getNumberOfOnChannelTokens()

    # 输出token流
    print("Token stream:")
    for i in range(token_count):
        token = stream.get(i)  # 获取第i个token
        print(f"Token type: {token.type}, text: '{token.text}'")
    
    # 解析并输出语法树
    parser = CParser(stream)
    tree = parser.compilationUnit()  # 根据您的语法入口规则调整
    print("\nParse tree:")
    print(tree.toStringTree(recog=parser))

if __name__ == '__main__':
    main(sys.argv)

import sys
import json
import yaml  # 需要先安装 PyYAML: pip install pyyaml
import os
from datetime import datetime
from antlr4 import *
from antlr4.tree.Tree import TerminalNodeImpl  # 确保正确导入 TerminalNode 类型
from generated.CLexer import CLexer
from generated.CParser import CParser
from Generator.Visitor import Visitor
def tree_to_dict(tree, parser):
    """
    将解析树转换为嵌套字典。
    """
    node = {}
    rule_index = tree.getRuleIndex()
    rule_name = parser.ruleNames[rule_index] if rule_index < len(parser.ruleNames) else "unknown"
    node['rule'] = rule_name
    children = []
    for child in tree.getChildren():
        if isinstance(child, TerminalNodeImpl):
            children.append({
                'terminal': child.getSymbol().text,
                'type': parser.symbolicNames[child.getSymbol().type] if child.getSymbol().type < len(parser.symbolicNames) else "UNKNOWN"
            })
        else:
            children.append(tree_to_dict(child, parser))
    if children:
        node['children'] = children
    return node

def save_to_file(data, filename):
    """
    将数据保存到文件。
    """
    with open(filename, 'w', encoding='utf-8') as file:
        file.write(data)

def generate(argv):
    if len(argv) < 2:
        print("Usage: python3 test_parser.py <input-file>")
        return

    input_file = argv[1]
    input_filename = os.path.basename(input_file)

    # 预处理：读取文件内容并移除所有以 #include 开头的行
    with open(input_file, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    # 移除以 #include 开头的行，忽略前导空白
    filtered_lines = [line for line in lines if not line.lstrip().startswith("#include")]
    filtered_text = ''.join(filtered_lines)

    # 将过滤后的文本传递给 ANTLR
    input_stream = InputStream(filtered_text)
    lexer = CLexer(input_stream)
    stream = CommonTokenStream(lexer)
    stream.fill()  # 加载所有 tokens

    # 词法分析：保存 tokens 到一个列表
    tokens = []
    start_index = 0
    stop_index = len(stream.tokens) - 1  # 使用 len(stream.tokens) 获取最后一个索引

    for token in stream.getTokens(start_index, stop_index):
        if token.type == Token.EOF:
            continue  # 跳过 EOF token
        token_info = {
            'type': CLexer.symbolicNames[token.type] if token.type < len(CLexer.symbolicNames) else 'UNKNOWN',
            'text': token.text,
            'line': token.line,
            'column': token.column
        }
        tokens.append(token_info)

    # 输出词法分析结果
    output_folder = "output"
    os.makedirs(output_folder, exist_ok=True)

    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    base_name = os.path.splitext(input_filename)[0]
    tokens_yaml_filename = os.path.join(output_folder, f"{base_name}_tokens_{timestamp}.yaml")

    # 保存 tokens 为 YAML 文件
    tokens_yaml = yaml.dump(tokens, sort_keys=False, allow_unicode=True)
    save_to_file(tokens_yaml, tokens_yaml_filename)
    print(f"词法分析结果 (YAML) 已保存到: {tokens_yaml_filename}")

    # 语法分析并输出解析树
    parser = CParser(stream)
    tree = parser.compilationUnit()

    # 将解析树转换为字典
    tree_dict = tree_to_dict(tree, parser)

    # 生成并保存解析树文件名
    parse_tree_yaml_filename = os.path.join(output_folder, f"{base_name}_parse_tree_{timestamp}.yaml")

    # 保存解析树为 YAML 文件
    parse_tree_yaml = yaml.dump(tree_dict, sort_keys=False, allow_unicode=True)
    save_to_file(parse_tree_yaml, parse_tree_yaml_filename)
    print(f"解析树 (YAML) 已保存到: {parse_tree_yaml_filename}")

    visitor = Visitor()
    visitor.visit(tree)
    # 生成并保存符号表文件名
    llvm_output_filename = input_filename + ".ll"
    visitor.save(llvm_output_filename)


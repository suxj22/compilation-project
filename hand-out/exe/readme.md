# 运行说明

## 第一次提交部分

本次作业的文件结构如下

```
.
├── exe
│   ├── Calculator.c
│   ├── KMP.c
│   ├── Palindrome.c
│   ├── Sort.c
│   └── readme.md
└── src
    └── Parser
        ├── C.g4
        └── test_parser.py
```

C.g4文件给出了C语言的词法语法定义，test_parser.py文件接受源文件的输入，生成yaml格式的词法分析和语法分析结果。exe文件夹中，四个c语言程序分别实现了简单的四则运算、KMP字符串匹配、回文字符串的检测、排序输入字符串的功能，将作为此次提交的测试文件。

运行此次作业首先需要安装python环境

```sh
pip install antlr4_tools
pip install pyyaml
```

随后进入src/Parser文件夹，使用antlr工具编译C.g4文件，将编译的结果放入Parser的generated文件夹中

```sh
antlr4 -Dlanguage=Python3 -o generated C.g4
```

随后即可运行test_parser.py文件，命令的格式如下

```sh
python test_parser.py <path_to_test_c_file>
# 例如 python test_parser.py ../../exe/KMP.c
```

运行后会在Parser文件夹下创建一个名为output的文件夹，内含目标源文件的yaml格式的词法分析和语法分析结果。
使用antlr工具编译C.g4文件，将编译的结果放入Parser的generated文件夹中

```sh
antlr4 -Dlanguage=Python3 -visitor -o generated C.g4
```
只有使用`visitor`参数才会生成`CVisitor.py`
from antlr4.error.ErrorListener import ErrorListener


class SemanticError(Exception):
    """语义错误"""
    def __init__(self, msg, ctx=None, suggestions=None):
        super().__init__()
        if ctx:
            self.line = ctx.start.line
            self.column = ctx.start.column
        else:
            self.line = 0
            self.column = 0
        self.msg = msg
        self.suggestions = suggestions or []
    
    def __str__(self):
        error_msg = f"语义错误: 第{self.line}行:{self.column}列 {self.msg}"
        if self.suggestions:
            error_msg += "\n可能要使用的变量:"
            for suggestion in self.suggestions:
                error_msg += f"\n  - {suggestion}"
        return error_msg

class SyntaxErrorListener(ErrorListener):
    """
    语法错误监听器
    """
    def __init__(self):
        super().__init__()
        self.errors = []
    
    def syntaxError(self, recognizer, offendingSymbol, line, column, msg, e):
        print("SyntaxError: line %d:%d %s" % (line, column, msg))
        self.errors.append("SyntaxError: line %d:%d %s" % (line, column, msg))
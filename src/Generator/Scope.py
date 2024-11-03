class Scope:
    def __init__(self, name=None):
        self.name = name
        self.symbols = {}  # 存储符号的字典，key为符号名称，value为符号对象，存储当前作用域中的变量

    def add_symbol(self, name, symbol):
        if name in self.symbols:
            raise Exception("Variable already defined in this scope")
        self.symbols[name] = symbol

    def get_symbol(self, name):
        return self.symbols.get(name, None)

    def __str__(self):
        return f"Scope({self.name}, symbols={self.symbols})"

    def __repr__(self):
        return str(self)

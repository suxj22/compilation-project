# 定义符号表中的符号类Symbol，支持更多属性
class Symbol:
    def __init__(self, name, type=None, value=None, scope=None, address=None):
        self.name = name
        self.type = type
        self.value = value
        self.scope = scope
        self.address = address

    def __str__(self):
        return f"Symbol({self.name}, {self.type}, {self.value}, {self.address}, {self.scope})"

    def __repr__(self):
        return str(self)
# # 实现符号表
# from llvmlite import ir
# from Generator.Symbol import Symbol
# from Generator.Scope import Scope

# # class SymbolTable:
# #     def __init__(self):
# #         '''
# #         初始化符号表
# #         当前所在作用域索引为0，即全局作用域
# #         '''
        
# #         self.scopes = [Scope("Global")]  # 初始化全局作用域
# #         self.current_scope_index = 0

# #     def get_item(self, name):
# #         '''
# #         从当前作用域开始，逐级向上查找符号
# #         :param name: 符号名称
# #         :return: 符号对象
# #         '''
# #         for i in range(self.current_scope_index, -1, -1):
# #             symbol = self.scopes[i].get_symbol(name)
# #             if symbol:
# #                 return symbol
# #         return None
    
# #     def add_item(self, name, symbol):
# #         '''
# #         向当前作用域添加符号
# #         :param name: 符号名称
# #         :param symbol: 符号对象
# #         '''
# #         self.scopes[self.current_scope_index].add_symbol(name, symbol)
    
# #     def exists(self, name):
# #         '''
# #         判断符号是否存在
# #         :param name: 符号名称
# #         :return: 是否存在
# #         '''
# #         return self.get_item(name) is not None
# #     def exist_local(self, name):
# #         '''
# #         判断符号是否存在于当前作用域
# #         :param name: 符号名称
# #         :return: 是否存在
# #         '''
# #         return self.scopes[self.current_scope_index].get_symbol(name) is not None
    
# #     def enter_scope(self, context_name=None):
# #         '''
# #         进入新的作用域
# #         :param context_name: 作用域名称
# #         '''
# #         new_scope = Scope(context_name)
# #         self.scopes.append(new_scope)
# #         self.current_scope_index += 1
        
# #     def exit_scope(self):
# #         '''
# #         离开当前作用域
# #         '''
# #         if self.current_scope_index > 0:
# #             self.scopes.pop()
# #             self.current_scope_index -= 1
    
# #     def get_current_context(self):
# #         '''
# #         获取当前作用域名称
# #         :return: 作用域名称
# #         '''
# #         return self.scopes[self.current_scope_index].name if self.current_scope_index < len(self.scopes) else None

# #     def get_global_variables(self):
# #         '''
# #         获取全局变量
# #         :return: 全局变量
# #         '''
# #         return self.scopes[0].symbols
    
# #     def get_local_variables(self):
# #         '''
# #         获取当前作用域变量
# #         :return: 当前作用域变量
# #         '''
# #         return self.scopes[self.current_scope_index].symbols
# class SymbolTable:
#     def __init__(self):
#         self.scopes = [{}]  # 一个列表，每个元素是一个dict表示作用域

#     def enter_scope(self):
#         self.scopes.append({})

#     def exit_scope(self):
#         self.scopes.pop()

#     def add_item(self, name, value):
#         self.scopes[-1][name] = value

#     def get_item(self, name):
#         # 改为从最内层作用域到外层逐个查找
#         for scope in reversed(self.scopes):
#             if name in scope:
#                 return scope[name]
#         return None



class SymbolTable:
    def __init__(self):
        self.scopes = [{}]  # 初始化全局作用域
        self._debug = True  # 用于调试

    def enter_scope(self):
        self.scopes.append({})
        if self._debug:
            print(f"Entering new scope. Current scope depth: {len(self.scopes)}")

    def exit_scope(self):
        if self.scopes:
            popped = self.scopes.pop()
            if self._debug:
                print(f"Exiting scope. Removed symbols: {list(popped.keys())}")
                print(f"Current scope depth: {len(self.scopes)}")

    def add_item(self, name, value):
        if self._debug:
            print(f"Adding symbol: {name} to scope level {len(self.scopes)-1}")
        self.scopes[-1][name] = value

    def get_item(self, name):
        # 从内向外查找
        for scope in reversed(self.scopes):
            if name in scope:
                if self._debug:
                    print(f"Found symbol: {name} in scope")
                return scope[name]
        if self._debug:
            print(f"Symbol not found: {name}")
            print(f"Current scopes: {[list(scope.keys()) for scope in self.scopes]}")
        return None

    def print_scopes(self):
        """用于调试的方法，打印所有作用域的内容"""
        print("\n=== Symbol Table Contents ===")
        for i, scope in enumerate(self.scopes):
            print(f"Scope {i}: {list(scope.keys())}")
        print("===========================\n")
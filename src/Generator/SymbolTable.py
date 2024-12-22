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
    def get_similar_names(self, name, threshold=0.6):
        """查找相似的变量名"""
        similar_names = []
        # 遍历所有作用域中的变量名
        for scope in self.scopes:
            for existing_name in scope.keys():
                # 计算相似度
                similarity = self.calculate_similarity(name, existing_name)
                if similarity >= threshold:
                    similar_names.append((existing_name, similarity))
        # 按相似度排序
        similar_names.sort(key=lambda x: x[1], reverse=True)
        return [name for name, _ in similar_names[:3]]  # 返回前3个最相似的

    def calculate_similarity(self, s1, s2):
        """计算两个字符串的相似度"""
        if len(s1) == 0 or len(s2) == 0:
            return 0.0
        # 使用最长公共子序列长度计算相似度
        matrix = [[0] * (len(s2) + 1) for _ in range(len(s1) + 1)]
        for i in range(1, len(s1) + 1):
            for j in range(1, len(s2) + 1):
                if s1[i-1] == s2[j-1]:
                    matrix[i][j] = matrix[i-1][j-1] + 1
                else:
                    matrix[i][j] = max(matrix[i-1][j], matrix[i][j-1])
        return 2.0 * matrix[-1][-1] / (len(s1) + len(s2))

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
        """获取变量，如果不存在则给出建议"""
        for scope in reversed(self.scopes):
            if name in scope:
                if self._debug:
                    print(f"找到变量: {name}")
                return scope[name]
                
        # 变量未找到，给出建议
        similar_names = self.get_similar_names(name)
        error_msg = f"错误: 变量 '{name}' 未定义\n"
        if similar_names:
            error_msg += "你是否想使用以下变量？\n"
            for suggestion in similar_names:
                error_msg += f"  - {suggestion}\n"
        
        if self._debug:
            print(error_msg)
            self.print_scopes()
            
        return None
    def print_scopes(self):
        """用于调试的方法，打印所有作用域的内容"""
        print("\n=== Symbol Table Contents ===")
        for i, scope in enumerate(self.scopes):
            print(f"Scope {i}: {list(scope.keys())}")
        print("===========================\n")
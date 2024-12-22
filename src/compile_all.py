import os
import sys
from main import generate
from datetime import datetime

def compile_all():
    """编译test目录下所有.c文件"""
    # 确保test目录存在
    test_dir = "test"
    os.makedirs(test_dir, exist_ok=True)

    # 获取所有.c文件
    c_files = [f for f in os.listdir(test_dir) if f.endswith('.c')]
    
    if not c_files:
        print("警告: test目录下没有找到.c文件")
        return

    # 创建编译日志文件
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    log_file = os.path.join(test_dir, f"compile_log_{timestamp}.txt")

    print(f"开始编译 {len(c_files)} 个文件...")
    
    with open(log_file, 'w', encoding='utf-8') as f:
        original_stdout = sys.stdout
        sys.stdout = f

        for c_file in c_files:
            print(f"\n=== 正在编译 {c_file} ===")
            input_path = os.path.join(test_dir, c_file)
            try:
                generate([sys.argv[0], input_path])
                print(f"=== {c_file} 编译成功 ===")
            except Exception as e:
                print(f"=== {c_file} 编译失败: {str(e)} ===")

        sys.stdout = original_stdout

    print(f"编译完成，详细日志已保存到 {log_file}")

if __name__ == '__main__':
    compile_all()

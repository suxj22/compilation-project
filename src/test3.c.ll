; ModuleID = "my_module"
target triple = "aarch64-apple-macosx14.0.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"

define i32 @"main"()
{
entry:
  %"a" = alloca [5 x i32]
  %".2" = getelementptr inbounds [5 x i32], [5 x i32]* %"a", i32 0, i32 0
  store i32 10, i32* %".2"
  %".4" = getelementptr inbounds [5 x i32], [5 x i32]* %"a", i32 0, i32 0
  %".5" = load i32, i32* %".4"
  %"b" = alloca i32
  store i32 %".5", i32* %"b"
  %".7" = getelementptr inbounds [9 x i8], [9 x i8]* @".str", i32 0, i32 0
  %".8" = getelementptr inbounds [5 x i32], [5 x i32]* %"a", i32 0, i32 0
  %".9" = load i32, i32* %".8"
  %".10" = call i32 (i8*, ...) @"printf"(i8* %".7", i32 %".9")
  %".11" = getelementptr inbounds [6 x i8], [6 x i8]* @".str.1", i32 0, i32 0
  %".12" = load i32, i32* %"b"
  %".13" = call i32 (i8*, ...) @"printf"(i8* %".11", i32 %".12")
  %"c" = alloca [3 x i32]
  %".14" = getelementptr inbounds [3 x i32], [3 x i32]* %"c", i32 0, i32 0
  store i32 1, i32* %".14"
  %".16" = getelementptr inbounds [3 x i32], [3 x i32]* %"c", i32 0, i32 1
  store i32 2, i32* %".16"
  %".18" = getelementptr inbounds [3 x i32], [3 x i32]* %"c", i32 0, i32 2
  store i32 3, i32* %".18"
  %".20" = getelementptr inbounds [9 x i8], [9 x i8]* @".str.2", i32 0, i32 0
  %".21" = getelementptr inbounds [3 x i32], [3 x i32]* %"c", i32 0, i32 0
  %".22" = load i32, i32* %".21"
  %".23" = call i32 (i8*, ...) @"printf"(i8* %".20", i32 %".22")
  %".24" = getelementptr inbounds [9 x i8], [9 x i8]* @".str.3", i32 0, i32 0
  %".25" = getelementptr inbounds [3 x i32], [3 x i32]* %"c", i32 0, i32 1
  %".26" = load i32, i32* %".25"
  %".27" = call i32 (i8*, ...) @"printf"(i8* %".24", i32 %".26")
  %".28" = getelementptr inbounds [9 x i8], [9 x i8]* @".str.4", i32 0, i32 0
  %".29" = getelementptr inbounds [3 x i32], [3 x i32]* %"c", i32 0, i32 2
  %".30" = load i32, i32* %".29"
  %".31" = call i32 (i8*, ...) @"printf"(i8* %".28", i32 %".30")
  ret i32 0
}

declare i32 @"printf"(i8* %".1", ...)

@".str" = private constant [9 x i8] c"a[0]:%d\0a\00", align 1
@".str.1" = private constant [6 x i8] c"b:%d\0a\00", align 1
@".str.2" = private constant [9 x i8] c"c[0]:%d\0a\00", align 1
@".str.3" = private constant [9 x i8] c"c[1]:%d\0a\00", align 1
@".str.4" = private constant [9 x i8] c"c[2]:%d\0a\00", align 1
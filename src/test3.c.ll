; ModuleID = "my_module"
target triple = "aarch64-apple-macosx14.0.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"

define i32 @"main"()
{
entry:
  %"a" = alloca [5 x i32]
  %".2" = getelementptr inbounds [5 x i32], [5 x i32]* %"a", i32 0, i32 0
  store i32 10, i32* %".2"
  %"b" = alloca i32
  %".4" = getelementptr inbounds [5 x i32], [5 x i32]* %"a", i32 0, i32 0
  %".5" = load i32, i32* %".4"
  store i32 %".5", i32* %"b"
  %".7" = getelementptr inbounds [9 x i8], [9 x i8]* @".str", i32 0, i32 0
  %".8" = getelementptr inbounds [5 x i32], [5 x i32]* %"a", i32 0, i32 0
  %".9" = load i32, i32* %".8"
  %".10" = call i32 (i8*, ...) @"printf"(i8* %".7", i32 %".9")
  %".11" = getelementptr inbounds [6 x i8], [6 x i8]* @".str.1", i32 0, i32 0
  %".12" = load i32, i32* %"b"
  %".13" = call i32 (i8*, ...) @"printf"(i8* %".11", i32 %".12")
  %".14" = load i32, i32* %"b"
  ret i32 %".14"
}

declare i32 @"printf"(i8* %".1", ...)

@".str" = private constant [9 x i8] c"a[0]:%d\0a\00", align 1
@".str.1" = private constant [6 x i8] c"b:%d\0a\00", align 1
; ModuleID = "my_module"
target triple = "aarch64-apple-macosx14.0.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"

define void @"isPalindrome"(i32 %"s")
{
entry:
  %"s_addr" = alloca i32
  store i32 %"s", i32* %"s_addr"
  %"left" = alloca i32
  store i32 0, i32* %"left"
  %"right" = alloca i32
  %".5" = bitcast i32* %"s_addr" to i8*
  %".6" = call i32 @"strlen"(i8* %".5")
  %".7" = sub i32 %".6", 1
  store i32 %".7", i32* %"right"
  br label %"while_cond"
while_cond:
  %".10" = load i32, i32* %"left"
  %".11" = load i32, i32* %"right"
  %".12" = icmp slt i32 %".10", %".11"
  %".13" = zext i1 %".12" to i32
  %".14" = icmp ne i32 %".13", 0
  br i1 %".14", label %"while_body", label %"while_end"
while_body:
  %".16" = load i32, i32* %"s_addr"
  %".17" = load i32, i32* %"s_addr"
  %".18" = icmp ne i32 %".16", %".17"
  %".19" = zext i1 %".18" to i32
  %".20" = icmp ne i32 %".19", 0
  br i1 %".20", label %"if_then", label %"if_end"
while_end:
  %".32" = getelementptr inbounds [6 x i8], [6 x i8]* @".str.1", i32 0, i32 0
  %".33" = call i32 (i8*, ...) @"printf"(i8* %".32")
  ret void
if_then:
  %".22" = getelementptr inbounds [7 x i8], [7 x i8]* @".str", i32 0, i32 0
  %".23" = call i32 (i8*, ...) @"printf"(i8* %".22")
  ret void
if_end:
  %".25" = load i32, i32* %"left"
  %".26" = add i32 %".25", 1
  store i32 %".26", i32* %"left"
  %".28" = load i32, i32* %"right"
  %".29" = sub i32 %".28", 1
  store i32 %".29", i32* %"right"
  br label %"while_cond"
}

declare i32 @"strlen"(i8* %".1")

declare i32 @"printf"(i8* %".1", ...)

@".str" = private constant [7 x i8] c"False\0a\00", align 1
@".str.1" = private constant [6 x i8] c"True\0a\00", align 1
define i32 @"main"()
{
entry:
  %".2" = getelementptr inbounds [10 x i8], [10 x i8]* @".str.2", i32 0, i32 0
  %".3" = load i8, i8* %".2"
  %".4" = zext i8 %".3" to i32
  call void @"isPalindrome"(i32 %".4")
  %".6" = getelementptr inbounds [4 x i8], [4 x i8]* @".str.3", i32 0, i32 0
  %".7" = load i8, i8* %".6"
  %".8" = zext i8 %".7" to i32
  call void @"isPalindrome"(i32 %".8")
  ret i32 0
}

@".str.2" = private constant [10 x i8] c"abbcdcbba\00", align 1
@".str.3" = private constant [4 x i8] c"abc\00", align 1
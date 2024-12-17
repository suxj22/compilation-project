; filepath: /C:/Users/23040/Documents/GitHub/compilation-project/src/Palindrome.c.ll
; ModuleID = "my_module"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"

define void @"isPalindrome"(i8* %"s")
{
entry:
  %"left" = alloca i32
  store i32 0, i32* %"left"
  %"right" = alloca i32
  %".1" = call i32 @"strlen"(i8* %"s")
  %".2" = sub i32 %".1", 1
  store i32 %".2", i32* %"right"
  br label %"while_cond"

while_cond:
  %".3" = load i32, i32* %"left"
  %".4" = load i32, i32* %"right"
  %".5" = icmp sle i32 %".3", %".4"
  br i1 %".5", label %"while_body", label %"while_end"

while_body:
  %".6" = getelementptr i8, i8* %"s", i32 %".3"
  %".7" = load i8, i8* %".6"
  %".8" = getelementptr i8, i8* %"s", i32 %".4"
  %".9" = load i8, i8* %".8"
  %".10" = icmp ne i8 %".7", %".9"
  br i1 %".10", label %"if_then", label %"if_end"

if_then:
  %".11" = getelementptr inbounds [7 x i8], [7 x i8]* @".str", i32 0, i32 0
  %".12" = call i32 (i8*, ...) @"printf"(i8* %".11")
  ret void

if_end:
  %".13" = load i32, i32* %"left"
  %".14" = add i32 %".13", 1
  store i32 %".14", i32* %"left"
  %".15" = load i32, i32* %"right"
  %".16" = sub i32 %".15", 1
  store i32 %".16", i32* %"right"
  br label %"while_cond"

while_end:
  %".17" = getelementptr inbounds [6 x i8], [6 x i8]* @".str.1", i32 0, i32 0
  %".18" = call i32 (i8*, ...) @"printf"(i8* %".17")
  ret void
}

declare i32 @"strlen"(i8*)

declare i32 @"printf"(i8*, ...)

@".str" = private constant [7 x i8] c"False\0a\00", align 1
@".str.1" = private constant [6 x i8] c"True\0a\00", align 1

define i32 @"main"()
{
entry:
  %".19" = getelementptr inbounds [10 x i8], [10 x i8]* @".str.2", i32 0, i32 0
  call void @"isPalindrome"(i8* %".19")
  %".20" = getelementptr inbounds [4 x i8], [4 x i8]* @".str.3", i32 0, i32 0
  call void @"isPalindrome"(i8* %".20")
  ret i32 0
}

@".str.2" = private constant [10 x i8] c"abbcdcbba\00", align 1
@".str.3" = private constant [4 x i8] c"abc\00", align 1
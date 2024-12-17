; ModuleID = "my_module"
target triple = "aarch64-apple-macosx14.0.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"

define void @"isPalindrome"(i8* %"s")
{
entry:
  %"s_addr" = alloca i8*
  store i8* %"s", i8** %"s_addr"
  %"left" = alloca i32
  %"right" = alloca i32
  br label %"while_cond"
while_cond:
  %".5" = load i32, i32* %"left"
  %".6" = load i32, i32* %"right"
  %".7" = icmp slt i32 %".5", %".6"
  %".8" = zext i1 %".7" to i32
  %".9" = icmp ne i32 %".8", 0
  br i1 %".9", label %"while_body", label %"while_end"
while_body:
  %".11" = load i8*, i8** %"s_addr"
  %".12" = load i8, i8* %".11"
  %".13" = load i8*, i8** %"s_addr"
  %".14" = load i8, i8* %".13"
  %".15" = icmp ne i8 %".12", %".14"
  %".16" = zext i1 %".15" to i32
  %".17" = icmp ne i32 %".16", 0
  br i1 %".17", label %"if_then", label %"if_end"
while_end:
  %".29" = getelementptr inbounds [6 x i8], [6 x i8]* @".str.1", i32 0, i32 0
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29")
  ret void
if_then:
  %".19" = getelementptr inbounds [7 x i8], [7 x i8]* @".str", i32 0, i32 0
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19")
  ret void
if_end:
  %".22" = load i32, i32* %"left"
  %".23" = add i32 %".22", 1
  store i32 %".23", i32* %"left"
  %".25" = load i32, i32* %"right"
  %".26" = sub i32 %".25", 1
  store i32 %".26", i32* %"right"
  br label %"while_cond"
}

declare i32 @"printf"(i8* %".1", ...)

@".str" = private constant [7 x i8] c"False\0a\00", align 1
@".str.1" = private constant [6 x i8] c"True\0a\00", align 1
define i32 @"main"()
{
entry:
  %"str1" = alloca i8*
  ret i32 0
}

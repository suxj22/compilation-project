; ModuleID = "my_module"
target triple = "aarch64-apple-macosx14.0.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"

define void @"isPalindrome"(i32 %"sww")
{
entry:
  %"sww_addr" = alloca i32
  store i32 %"sww", i32* %"sww_addr"
  %"left" = alloca i32
  store i32 0, i32* %"left"
  %"right" = alloca i32
  %".5" = bitcast i32* %"sww_addr" to i8*
  %".6" = call i32 @"strlen"(i8* %".5")
  %".7" = sub i32 %".6", 1
  store i32 %".7", i32* %"right"
  %".9" = getelementptr inbounds [21 x i8], [21 x i8]* @".str", i32 0, i32 0
  %".10" = load i32, i32* %"left"
  %".11" = load i32, i32* %"right"
  %".12" = call i32 (i8*, ...) @"printf"(i8* %".9", i32 %".11")
  br label %"while_cond"
while_cond:
  %".14" = load i32, i32* %"left"
  %".15" = load i32, i32* %"right"
  %".16" = icmp slt i32 %".14", %".15"
  %".17" = zext i1 %".16" to i32
  %".18" = icmp ne i32 %".17", 0
  br i1 %".18", label %"while_body", label %"while_end"
while_body:
  %".20" = getelementptr inbounds [18 x i8], [18 x i8]* @".str.1", i32 0, i32 0
  %".21" = call i32 (i8*, ...) @"printf"(i8* %".20")
  %".22" = getelementptr inbounds [25 x i8], [25 x i8]* @".str.2", i32 0, i32 0
  %".23" = load i32, i32* %"left"
  %".24" = load i32, i32* %"right"
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".22", i32 %".24")
  %".26" = load i32, i32* %"sww_addr"
  %".27" = load i32, i32* %"sww_addr"
  %".28" = icmp ne i32 %".26", %".27"
  %".29" = zext i1 %".28" to i32
  %".30" = icmp ne i32 %".29", 0
  br i1 %".30", label %"if_then", label %"if_end"
while_end:
  %".42" = getelementptr inbounds [6 x i8], [6 x i8]* @".str.4", i32 0, i32 0
  %".43" = call i32 (i8*, ...) @"printf"(i8* %".42")
  ret void
if_then:
  %".32" = getelementptr inbounds [7 x i8], [7 x i8]* @".str.3", i32 0, i32 0
  %".33" = call i32 (i8*, ...) @"printf"(i8* %".32")
  ret void
if_end:
  %".35" = load i32, i32* %"left"
  %".36" = add i32 %".35", 1
  store i32 %".36", i32* %"left"
  %".38" = load i32, i32* %"right"
  %".39" = sub i32 %".38", 1
  store i32 %".39", i32* %"right"
  br label %"while_cond"
}

declare i32 @"strlen"(i8* %".1")

declare i32 @"printf"(i8* %".1", ...)

@".str" = private constant [21 x i8] c"left: %d, right: %d\0a\00", align 1
@".str.1" = private constant [18 x i8] c"enter while loop\0a\00", align 1
@".str.2" = private constant [25 x i8] c"AAA left: %d, right: %d\0a\00", align 1
@".str.3" = private constant [7 x i8] c"False\0a\00", align 1
@".str.4" = private constant [6 x i8] c"True\0a\00", align 1
define i32 @"main"()
{
entry:
  %".2" = getelementptr inbounds [10 x i8], [10 x i8]* @".str.5", i32 0, i32 0
  %".3" = load i8, i8* %".2"
  %".4" = zext i8 %".3" to i32
  call void @"isPalindrome"(i32 %".4")
  %".6" = getelementptr inbounds [4 x i8], [4 x i8]* @".str.6", i32 0, i32 0
  %".7" = load i8, i8* %".6"
  %".8" = zext i8 %".7" to i32
  call void @"isPalindrome"(i32 %".8")
  ret i32 0
}

@".str.5" = private constant [10 x i8] c"abbcdcbba\00", align 1
@".str.6" = private constant [4 x i8] c"abc\00", align 1
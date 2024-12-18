; ModuleID = "my_module"
target triple = "aarch64-apple-macosx14.0.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"

define i32 @"main"()
{
entry:
  %".2" = zext i8 97 to i32
  %".3" = zext i8 98 to i32
  %".4" = zext i8 99 to i32
  %".5" = zext i8 98 to i32
  %".6" = zext i8 97 to i32
  %"str1" = alloca [5 x i8]
  %".7" = getelementptr inbounds [5 x i8], [5 x i8]* %"str1", i32 0, i32 0
  %".8" = trunc i32 %".2" to i8
  store i8 %".8", i8* %".7"
  %".10" = getelementptr inbounds [5 x i8], [5 x i8]* %"str1", i32 0, i32 1
  %".11" = trunc i32 %".3" to i8
  store i8 %".11", i8* %".10"
  %".13" = getelementptr inbounds [5 x i8], [5 x i8]* %"str1", i32 0, i32 2
  %".14" = trunc i32 %".4" to i8
  store i8 %".14", i8* %".13"
  %".16" = getelementptr inbounds [5 x i8], [5 x i8]* %"str1", i32 0, i32 3
  %".17" = trunc i32 %".5" to i8
  store i8 %".17", i8* %".16"
  %".19" = getelementptr inbounds [5 x i8], [5 x i8]* %"str1", i32 0, i32 4
  %".20" = trunc i32 %".6" to i8
  store i8 %".20", i8* %".19"
  %".22" = zext i8 97 to i32
  %".23" = zext i8 98 to i32
  %".24" = zext i8 99 to i32
  %".25" = zext i8 100 to i32
  %".26" = zext i8 101 to i32
  %"str2" = alloca [5 x i8]
  %".27" = getelementptr inbounds [5 x i8], [5 x i8]* %"str2", i32 0, i32 0
  %".28" = trunc i32 %".22" to i8
  store i8 %".28", i8* %".27"
  %".30" = getelementptr inbounds [5 x i8], [5 x i8]* %"str2", i32 0, i32 1
  %".31" = trunc i32 %".23" to i8
  store i8 %".31", i8* %".30"
  %".33" = getelementptr inbounds [5 x i8], [5 x i8]* %"str2", i32 0, i32 2
  %".34" = trunc i32 %".24" to i8
  store i8 %".34", i8* %".33"
  %".36" = getelementptr inbounds [5 x i8], [5 x i8]* %"str2", i32 0, i32 3
  %".37" = trunc i32 %".25" to i8
  store i8 %".37", i8* %".36"
  %".39" = getelementptr inbounds [5 x i8], [5 x i8]* %"str2", i32 0, i32 4
  %".40" = trunc i32 %".26" to i8
  store i8 %".40", i8* %".39"
  %"length" = alloca i32
  store i32 5, i32* %"length"
  %"is_palindrome_1" = alloca i32
  store i32 1, i32* %"is_palindrome_1"
  %"is_palindrome_2" = alloca i32
  store i32 1, i32* %"is_palindrome_2"
  br label %"for_init"
for_init:
  %"i" = alloca i32
  store i32 0, i32* %"i"
  br label %"for_cond"
for_cond:
  %".48" = load i32, i32* %"i"
  %".49" = load i32, i32* %"length"
  %".50" = icmp slt i32 %".48", %".49"
  %".51" = zext i1 %".50" to i32
  %".52" = icmp ne i32 %".51", 0
  br i1 %".52", label %"for_body", label %"for_end"
for_body:
  %".54" = load i32, i32* %"i"
  %".55" = getelementptr inbounds [5 x i8], [5 x i8]* %"str1", i32 0, i32 %".54"
  %".56" = load i8, i8* %".55"
  %".57" = load i32, i32* %"length"
  %".58" = sub i32 %".57", 1
  %".59" = load i32, i32* %"i"
  %".60" = sub i32 %".58", %".59"
  %".61" = getelementptr inbounds [5 x i8], [5 x i8]* %"str1", i32 0, i32 %".60"
  %".62" = load i8, i8* %".61"
  %".63" = icmp ne i8 %".56", %".62"
  %".64" = zext i1 %".63" to i32
  %".65" = icmp ne i32 %".64", 0
  br i1 %".65", label %"if_then", label %"if_end"
for_inc:
  %".70" = load i32, i32* %"i"
  %".71" = add i32 %".70", 1
  store i32 %".71", i32* %"i"
  br label %"for_cond"
for_end:
  br label %"for_init.1"
if_then:
  store i32 0, i32* %"is_palindrome_1"
  br label %"for_end"
if_end:
  br label %"for_inc"
for_init.1:
  %"i.1" = alloca i32
  store i32 0, i32* %"i.1"
  br label %"for_cond.1"
for_cond.1:
  %".77" = load i32, i32* %"i.1"
  %".78" = load i32, i32* %"length"
  %".79" = icmp slt i32 %".77", %".78"
  %".80" = zext i1 %".79" to i32
  %".81" = icmp ne i32 %".80", 0
  br i1 %".81", label %"for_body.1", label %"for_end.1"
for_body.1:
  %".83" = load i32, i32* %"i.1"
  %".84" = getelementptr inbounds [5 x i8], [5 x i8]* %"str2", i32 0, i32 %".83"
  %".85" = load i8, i8* %".84"
  %".86" = load i32, i32* %"length"
  %".87" = sub i32 %".86", 1
  %".88" = load i32, i32* %"i.1"
  %".89" = sub i32 %".87", %".88"
  %".90" = getelementptr inbounds [5 x i8], [5 x i8]* %"str2", i32 0, i32 %".89"
  %".91" = load i8, i8* %".90"
  %".92" = icmp ne i8 %".85", %".91"
  %".93" = zext i1 %".92" to i32
  %".94" = icmp ne i32 %".93", 0
  br i1 %".94", label %"if_then.1", label %"if_end.1"
for_inc.1:
  %".99" = load i32, i32* %"i.1"
  %".100" = add i32 %".99", 1
  store i32 %".100", i32* %"i.1"
  br label %"for_cond.1"
for_end.1:
  %".103" = load i32, i32* %"is_palindrome_1"
  %".104" = icmp ne i32 %".103", 0
  br i1 %".104", label %"if_then.2", label %"if_else"
if_then.1:
  store i32 0, i32* %"is_palindrome_2"
  br label %"for_end.1"
if_end.1:
  br label %"for_inc.1"
if_then.2:
  %".106" = getelementptr inbounds [30 x i8], [30 x i8]* @".str", i32 0, i32 0
  %".107" = call i32 (i8*, ...) @"printf"(i8* %".106")
  br label %"if_merge"
if_else:
  %".108" = getelementptr inbounds [34 x i8], [34 x i8]* @".str.1", i32 0, i32 0
  %".109" = call i32 (i8*, ...) @"printf"(i8* %".108")
  br label %"if_merge"
if_merge:
  %".112" = load i32, i32* %"is_palindrome_2"
  %".113" = icmp ne i32 %".112", 0
  br i1 %".113", label %"if_then.3", label %"if_else.1"
if_then.3:
  %".115" = getelementptr inbounds [30 x i8], [30 x i8]* @".str.2", i32 0, i32 0
  %".116" = call i32 (i8*, ...) @"printf"(i8* %".115")
  br label %"if_merge.1"
if_else.1:
  %".117" = getelementptr inbounds [34 x i8], [34 x i8]* @".str.3", i32 0, i32 0
  %".118" = call i32 (i8*, ...) @"printf"(i8* %".117")
  br label %"if_merge.1"
if_merge.1:
  ret i32 0
}

declare i32 @"printf"(i8* %".1", ...)

@".str" = private constant [30 x i8] c"The string1 is a palindrome.\0a\00", align 1
@".str.1" = private constant [34 x i8] c"The string1 is not a palindrome.\0a\00", align 1
@".str.2" = private constant [30 x i8] c"The string2 is a palindrome.\0a\00", align 1
@".str.3" = private constant [34 x i8] c"The string2 is not a palindrome.\0a\00", align 1
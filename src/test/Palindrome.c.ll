; ModuleID = "my_module"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"

define i32 @"main"()
{
entry:
  %".2" = zext i8 97 to i32
  %".3" = zext i8 98 to i32
  %".4" = zext i8 99 to i32
  %".5" = zext i8 98 to i32
  %".6" = zext i8 97 to i32
  %"str1" = alloca [100 x i8]
  %".7" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 0
  %".8" = trunc i32 %".2" to i8
  store i8 %".8", i8* %".7"
  %".10" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 1
  %".11" = trunc i32 %".3" to i8
  store i8 %".11", i8* %".10"
  %".13" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 2
  %".14" = trunc i32 %".4" to i8
  store i8 %".14", i8* %".13"
  %".16" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 3
  %".17" = trunc i32 %".5" to i8
  store i8 %".17", i8* %".16"
  %".19" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 4
  %".20" = trunc i32 %".6" to i8
  store i8 %".20", i8* %".19"
  %".22" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 5
  store i8 0, i8* %".22"
  %".24" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 6
  store i8 0, i8* %".24"
  %".26" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 7
  store i8 0, i8* %".26"
  %".28" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 8
  store i8 0, i8* %".28"
  %".30" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 9
  store i8 0, i8* %".30"
  %".32" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 10
  store i8 0, i8* %".32"
  %".34" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 11
  store i8 0, i8* %".34"
  %".36" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 12
  store i8 0, i8* %".36"
  %".38" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 13
  store i8 0, i8* %".38"
  %".40" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 14
  store i8 0, i8* %".40"
  %".42" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 15
  store i8 0, i8* %".42"
  %".44" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 16
  store i8 0, i8* %".44"
  %".46" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 17
  store i8 0, i8* %".46"
  %".48" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 18
  store i8 0, i8* %".48"
  %".50" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 19
  store i8 0, i8* %".50"
  %".52" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 20
  store i8 0, i8* %".52"
  %".54" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 21
  store i8 0, i8* %".54"
  %".56" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 22
  store i8 0, i8* %".56"
  %".58" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 23
  store i8 0, i8* %".58"
  %".60" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 24
  store i8 0, i8* %".60"
  %".62" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 25
  store i8 0, i8* %".62"
  %".64" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 26
  store i8 0, i8* %".64"
  %".66" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 27
  store i8 0, i8* %".66"
  %".68" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 28
  store i8 0, i8* %".68"
  %".70" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 29
  store i8 0, i8* %".70"
  %".72" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 30
  store i8 0, i8* %".72"
  %".74" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 31
  store i8 0, i8* %".74"
  %".76" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 32
  store i8 0, i8* %".76"
  %".78" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 33
  store i8 0, i8* %".78"
  %".80" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 34
  store i8 0, i8* %".80"
  %".82" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 35
  store i8 0, i8* %".82"
  %".84" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 36
  store i8 0, i8* %".84"
  %".86" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 37
  store i8 0, i8* %".86"
  %".88" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 38
  store i8 0, i8* %".88"
  %".90" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 39
  store i8 0, i8* %".90"
  %".92" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 40
  store i8 0, i8* %".92"
  %".94" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 41
  store i8 0, i8* %".94"
  %".96" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 42
  store i8 0, i8* %".96"
  %".98" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 43
  store i8 0, i8* %".98"
  %".100" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 44
  store i8 0, i8* %".100"
  %".102" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 45
  store i8 0, i8* %".102"
  %".104" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 46
  store i8 0, i8* %".104"
  %".106" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 47
  store i8 0, i8* %".106"
  %".108" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 48
  store i8 0, i8* %".108"
  %".110" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 49
  store i8 0, i8* %".110"
  %".112" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 50
  store i8 0, i8* %".112"
  %".114" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 51
  store i8 0, i8* %".114"
  %".116" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 52
  store i8 0, i8* %".116"
  %".118" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 53
  store i8 0, i8* %".118"
  %".120" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 54
  store i8 0, i8* %".120"
  %".122" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 55
  store i8 0, i8* %".122"
  %".124" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 56
  store i8 0, i8* %".124"
  %".126" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 57
  store i8 0, i8* %".126"
  %".128" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 58
  store i8 0, i8* %".128"
  %".130" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 59
  store i8 0, i8* %".130"
  %".132" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 60
  store i8 0, i8* %".132"
  %".134" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 61
  store i8 0, i8* %".134"
  %".136" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 62
  store i8 0, i8* %".136"
  %".138" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 63
  store i8 0, i8* %".138"
  %".140" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 64
  store i8 0, i8* %".140"
  %".142" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 65
  store i8 0, i8* %".142"
  %".144" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 66
  store i8 0, i8* %".144"
  %".146" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 67
  store i8 0, i8* %".146"
  %".148" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 68
  store i8 0, i8* %".148"
  %".150" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 69
  store i8 0, i8* %".150"
  %".152" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 70
  store i8 0, i8* %".152"
  %".154" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 71
  store i8 0, i8* %".154"
  %".156" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 72
  store i8 0, i8* %".156"
  %".158" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 73
  store i8 0, i8* %".158"
  %".160" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 74
  store i8 0, i8* %".160"
  %".162" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 75
  store i8 0, i8* %".162"
  %".164" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 76
  store i8 0, i8* %".164"
  %".166" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 77
  store i8 0, i8* %".166"
  %".168" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 78
  store i8 0, i8* %".168"
  %".170" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 79
  store i8 0, i8* %".170"
  %".172" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 80
  store i8 0, i8* %".172"
  %".174" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 81
  store i8 0, i8* %".174"
  %".176" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 82
  store i8 0, i8* %".176"
  %".178" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 83
  store i8 0, i8* %".178"
  %".180" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 84
  store i8 0, i8* %".180"
  %".182" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 85
  store i8 0, i8* %".182"
  %".184" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 86
  store i8 0, i8* %".184"
  %".186" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 87
  store i8 0, i8* %".186"
  %".188" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 88
  store i8 0, i8* %".188"
  %".190" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 89
  store i8 0, i8* %".190"
  %".192" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 90
  store i8 0, i8* %".192"
  %".194" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 91
  store i8 0, i8* %".194"
  %".196" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 92
  store i8 0, i8* %".196"
  %".198" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 93
  store i8 0, i8* %".198"
  %".200" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 94
  store i8 0, i8* %".200"
  %".202" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 95
  store i8 0, i8* %".202"
  %".204" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 96
  store i8 0, i8* %".204"
  %".206" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 97
  store i8 0, i8* %".206"
  %".208" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 98
  store i8 0, i8* %".208"
  %".210" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 99
  store i8 0, i8* %".210"
  %".212" = getelementptr inbounds [54 x i8], [54 x i8]* @".str", i32 0, i32 0
  %".213" = call i32 (i8*, ...) @"printf"(i8* %".212")
  %".214" = getelementptr inbounds [3 x i8], [3 x i8]* @".str.1", i32 0, i32 0
  %".215" = call i32 (i8*, ...) @"scanf"(i8* %".214", [100 x i8]* %"str1")
  %"length" = alloca i32
  store i32 0, i32* %"length"
  br label %"while_cond"
while_cond:
  %".218" = load i32, i32* %"length"
  %".219" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 %".218"
  %".220" = load i8, i8* %".219"
  %".221" = icmp ne i8 %".220", 35
  %".222" = zext i1 %".221" to i32
  %".223" = icmp ne i32 %".222", 0
  br i1 %".223", label %"while_body", label %"while_end"
while_body:
  %".225" = load i32, i32* %"length"
  %".226" = add i32 %".225", 1
  store i32 %".226", i32* %"length"
  br label %"while_cond"
while_end:
  %"is_palindrome_1" = alloca i32
  store i32 1, i32* %"is_palindrome_1"
  br label %"for_init"
for_init:
  %"i" = alloca i32
  store i32 0, i32* %"i"
  br label %"for_cond"
for_cond:
  %".233" = load i32, i32* %"i"
  %".234" = load i32, i32* %"length"
  %".235" = icmp slt i32 %".233", %".234"
  %".236" = zext i1 %".235" to i32
  %".237" = icmp ne i32 %".236", 0
  br i1 %".237", label %"for_body", label %"for_end"
for_body:
  %".239" = load i32, i32* %"i"
  %".240" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 %".239"
  %".241" = load i8, i8* %".240"
  %".242" = load i32, i32* %"length"
  %".243" = sub i32 %".242", 1
  %".244" = load i32, i32* %"i"
  %".245" = sub i32 %".243", %".244"
  %".246" = getelementptr inbounds [100 x i8], [100 x i8]* %"str1", i32 0, i32 %".245"
  %".247" = load i8, i8* %".246"
  %".248" = icmp ne i8 %".241", %".247"
  %".249" = zext i1 %".248" to i32
  %".250" = icmp ne i32 %".249", 0
  br i1 %".250", label %"if_then", label %"if_end"
for_inc:
  %".255" = load i32, i32* %"i"
  %".256" = add i32 %".255", 1
  store i32 %".256", i32* %"i"
  br label %"for_cond"
for_end:
  %".259" = load i32, i32* %"is_palindrome_1"
  %".260" = icmp ne i32 %".259", 0
  br i1 %".260", label %"if_then.1", label %"if_else"
if_then:
  store i32 0, i32* %"is_palindrome_1"
  br label %"for_end"
if_end:
  br label %"for_inc"
if_then.1:
  %".262" = getelementptr inbounds [30 x i8], [30 x i8]* @".str.2", i32 0, i32 0
  %".263" = call i32 (i8*, ...) @"printf"(i8* %".262")
  br label %"if_merge"
if_else:
  %".264" = getelementptr inbounds [34 x i8], [34 x i8]* @".str.3", i32 0, i32 0
  %".265" = call i32 (i8*, ...) @"printf"(i8* %".264")
  br label %"if_merge"
if_merge:
  ret i32 0
}

declare i32 @"printf"(i8* %".1", ...)

@".str" = private constant [54 x i8] c"Please type in the string1 and finish typing with #: \00", align 1
declare i32 @"scanf"(i8* %".1", ...)

@".str.1" = private constant [3 x i8] c"%s\00", align 1
@".str.2" = private constant [30 x i8] c"The string1 is a palindrome.\0a\00", align 1
@".str.3" = private constant [34 x i8] c"The string1 is not a palindrome.\0a\00", align 1
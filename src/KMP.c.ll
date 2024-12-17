; ModuleID = "my_module"
target triple = "aarch64-apple-macosx14.0.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"

define void @"computeLPS"(i32 %"pat", i32 %"m", i32 %"lps")
{
entry:
  %"pat_addr" = alloca i32
  store i32 %"pat", i32* %"pat_addr"
  %"m_addr" = alloca i32
  store i32 %"m", i32* %"m_addr"
  %"lps_addr" = alloca i32
  store i32 %"lps", i32* %"lps_addr"
  %"len" = alloca i32
  store i32 0, i32* %"len"
  %"i" = alloca i32
  store i32 1, i32* %"i"
  store i32 0, i32* %"lps_addr"
  br label %"while_cond"
while_cond:
  %".12" = load i32, i32* %"i"
  %".13" = load i32, i32* %"m_addr"
  %".14" = icmp slt i32 %".12", %".13"
  %".15" = zext i1 %".14" to i32
  %".16" = icmp ne i32 %".15", 0
  br i1 %".16", label %"while_body", label %"while_end"
while_body:
  %".18" = load i32, i32* %"pat_addr"
  %".19" = load i32, i32* %"pat_addr"
  %".20" = icmp eq i32 %".18", %".19"
  %".21" = zext i1 %".20" to i32
  %".22" = icmp ne i32 %".21", 0
  br i1 %".22", label %"if_then", label %"if_else"
while_end:
  ret void
if_then:
  %".24" = load i32, i32* %"len"
  %".25" = add i32 %".24", 1
  store i32 %".25", i32* %"len"
  store i32 %".25", i32* %"lps_addr"
  br label %"if_merge.1"
if_else:
  %".28" = load i32, i32* %"len"
  %".29" = icmp ne i32 %".28", 0
  br i1 %".29", label %"if_then.1", label %"if_else.1"
if_then.1:
  %".31" = load i32, i32* %"lps_addr"
  store i32 %".31", i32* %"len"
  br label %"if_merge"
if_else.1:
  store i32 0, i32* %"lps_addr"
  br label %"if_merge"
if_merge:
if_merge.1:
  br label %"while_cond"
}

define void @"KMP"(i32 %"txt", i32 %"pat")
{
entry:
  %"txt_addr" = alloca i32
  store i32 %"txt", i32* %"txt_addr"
  %"pat_addr" = alloca i32
  store i32 %"pat", i32* %"pat_addr"
  %"n" = alloca i32
  %".6" = bitcast i32* %"txt_addr" to i8*
  %".7" = call i32 @"strlen"(i8* %".6")
  store i32 %".7", i32* %"n"
  %"m" = alloca i32
  %".9" = bitcast i32* %"pat_addr" to i8*
  %".10" = call i32 @"strlen"(i8* %".9")
  store i32 %".10", i32* %"m"
  %"i" = alloca i32
  store i32 0, i32* %"i"
  %"j" = alloca i32
  store i32 0, i32* %"j"
  %"found" = alloca i32
  store i32 0, i32* %"found"
  %"pos" = alloca i32
  %"idx" = alloca i32
  store i32 0, i32* %"idx"
  %"lps" = alloca i32
  %".16" = load i32, i32* %"pat_addr"
  %".17" = load i32, i32* %"m"
  %".18" = load i32, i32* %"lps"
  call void @"computeLPS"(i32 %".16", i32 %".17", i32 %".18")
  br label %"while_cond"
while_cond:
  %".21" = load i32, i32* %"i"
  %".22" = load i32, i32* %"n"
  %".23" = icmp slt i32 %".21", %".22"
  %".24" = zext i1 %".23" to i32
  %".25" = icmp ne i32 %".24", 0
  br i1 %".25", label %"while_body", label %"while_end"
while_body:
  %".27" = load i32, i32* %"pat_addr"
  %".28" = load i32, i32* %"txt_addr"
  %".29" = icmp eq i32 %".27", %".28"
  %".30" = zext i1 %".29" to i32
  %".31" = icmp ne i32 %".30", 0
  br i1 %".31", label %"if_then", label %"if_end"
while_end:
  %".76" = load i32, i32* %"found"
  %".77" = icmp ne i32 %".76", 0
  br i1 %".77", label %"if_then.4", label %"if_else.2"
if_then:
  %".33" = load i32, i32* %"i"
  %".34" = add i32 %".33", 1
  store i32 %".34", i32* %"i"
  %".36" = load i32, i32* %"j"
  %".37" = add i32 %".36", 1
  store i32 %".37", i32* %"j"
  br label %"if_end"
if_end:
  %".40" = load i32, i32* %"j"
  %".41" = load i32, i32* %"m"
  %".42" = icmp eq i32 %".40", %".41"
  %".43" = zext i1 %".42" to i32
  %".44" = icmp ne i32 %".43", 0
  br i1 %".44", label %"if_then.1", label %"if_else"
if_then.1:
  %".46" = load i32, i32* %"i"
  %".47" = load i32, i32* %"j"
  %".48" = sub i32 %".46", %".47"
  store i32 %".48", i32* %"pos"
  %".50" = load i32, i32* %"lps"
  store i32 %".50", i32* %"j"
  store i32 1, i32* %"found"
  br label %"if_merge.1"
if_else:
  %".53" = load i32, i32* %"i"
  %".54" = load i32, i32* %"n"
  %".55" = icmp slt i32 %".53", %".54"
  %".56" = zext i1 %".55" to i32
  %".57" = load i32, i32* %"pat_addr"
  %".58" = load i32, i32* %"txt_addr"
  %".59" = icmp ne i32 %".57", %".58"
  %".60" = zext i1 %".59" to i32
  %".61" = and i32 %".56", %".60"
  %".62" = icmp ne i32 %".61", 0
  br i1 %".62", label %"if_then.2", label %"if_end.1"
if_then.2:
  %".64" = load i32, i32* %"j"
  %".65" = icmp ne i32 %".64", 0
  br i1 %".65", label %"if_then.3", label %"if_else.1"
if_end.1:
if_then.3:
  %".67" = load i32, i32* %"lps"
  store i32 %".67", i32* %"j"
  br label %"if_merge"
if_else.1:
  %".69" = load i32, i32* %"i"
  %".70" = add i32 %".69", 1
  store i32 %".70", i32* %"i"
  br label %"if_merge"
if_merge:
if_merge.1:
  br label %"while_cond"
if_then.4:
  br label %"for_init"
if_else.2:
  %".103" = getelementptr inbounds [7 x i8], [7 x i8]* @".str.3", i32 0, i32 0
  %".104" = call i32 (i8*, ...) @"printf"(i8* %".103")
  br label %"if_merge.2"
for_init:
  br label %"for_cond"
for_cond:
  br label %"for_body"
for_body:
  %".82" = getelementptr inbounds [5 x i8], [5 x i8]* @".str", i32 0, i32 0
  %".83" = load i32, i32* %"pos"
  %".84" = load i32, i32* %"i"
  %".85" = load i32, i32* %"idx"
  %".86" = sub i32 %".85", 1
  %".87" = icmp eq i32 %".84", %".86"
  %".88" = zext i1 %".87" to i32
  %".89" = icmp ne i32 %".88", 0
  br i1 %".89", label %"then", label %"else"
for_inc:
  br label %"for_cond"
for_end:
then:
  %".91" = getelementptr inbounds [2 x i8], [2 x i8]* @".str.1", i32 0, i32 0
  %".92" = load i8, i8* %".91"
  %".93" = zext i8 %".92" to i32
  br label %"cond_merge"
else:
  %".95" = getelementptr inbounds [2 x i8], [2 x i8]* @".str.2", i32 0, i32 0
  %".96" = load i8, i8* %".95"
  %".97" = zext i8 %".96" to i32
  br label %"cond_merge"
cond_merge:
  %".99" = phi  i32 [%".93", %"then"], [%".97", %"else"]
  %".100" = call i32 (i8*, ...) @"printf"(i8* %".82", i32 %".99")
  br label %"for_inc"
if_merge.2:
  ret void
}

declare i32 @"strlen"(i8* %".1")

declare i32 @"printf"(i8* %".1", ...)

@".str" = private constant [5 x i8] c"%d%s\00", align 1
@".str.1" = private constant [2 x i8] c"\0a\00", align 1
@".str.2" = private constant [2 x i8] c",\00", align 1
@".str.3" = private constant [7 x i8] c"False\0a\00", align 1
define i32 @"main"()
{
entry:
  %".2" = getelementptr inbounds [13 x i8], [13 x i8]* @".str.4", i32 0, i32 0
  %".3" = load i8, i8* %".2"
  %".4" = zext i8 %".3" to i32
  %".5" = getelementptr inbounds [3 x i8], [3 x i8]* @".str.5", i32 0, i32 0
  %".6" = load i8, i8* %".5"
  %".7" = zext i8 %".6" to i32
  call void @"KMP"(i32 %".4", i32 %".7")
  %".9" = getelementptr inbounds [12 x i8], [12 x i8]* @".str.6", i32 0, i32 0
  %".10" = load i8, i8* %".9"
  %".11" = zext i8 %".10" to i32
  %".12" = getelementptr inbounds [4 x i8], [4 x i8]* @".str.7", i32 0, i32 0
  %".13" = load i8, i8* %".12"
  %".14" = zext i8 %".13" to i32
  call void @"KMP"(i32 %".11", i32 %".14")
  ret i32 0
}

@".str.4" = private constant [13 x i8] c"abcdefgabdef\00", align 1
@".str.5" = private constant [3 x i8] c"ab\00", align 1
@".str.6" = private constant [12 x i8] c"hello world\00", align 1
@".str.7" = private constant [4 x i8] c"xyz\00", align 1
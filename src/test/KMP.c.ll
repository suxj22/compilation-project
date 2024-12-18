; ModuleID = "my_module"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"

define i32 @"main"()
{
entry:
  %".2" = zext i8 97 to i32
  %".3" = zext i8 98 to i32
  %".4" = zext i8 99 to i32
  %".5" = zext i8 100 to i32
  %".6" = zext i8 101 to i32
  %".7" = zext i8 102 to i32
  %".8" = zext i8 103 to i32
  %".9" = zext i8 97 to i32
  %".10" = zext i8 98 to i32
  %".11" = zext i8 100 to i32
  %".12" = zext i8 101 to i32
  %".13" = zext i8 102 to i32
  %"s" = alloca [12 x i8]
  %".14" = getelementptr inbounds [12 x i8], [12 x i8]* %"s", i32 0, i32 0
  %".15" = trunc i32 %".2" to i8
  store i8 %".15", i8* %".14"
  %".17" = getelementptr inbounds [12 x i8], [12 x i8]* %"s", i32 0, i32 1
  %".18" = trunc i32 %".3" to i8
  store i8 %".18", i8* %".17"
  %".20" = getelementptr inbounds [12 x i8], [12 x i8]* %"s", i32 0, i32 2
  %".21" = trunc i32 %".4" to i8
  store i8 %".21", i8* %".20"
  %".23" = getelementptr inbounds [12 x i8], [12 x i8]* %"s", i32 0, i32 3
  %".24" = trunc i32 %".5" to i8
  store i8 %".24", i8* %".23"
  %".26" = getelementptr inbounds [12 x i8], [12 x i8]* %"s", i32 0, i32 4
  %".27" = trunc i32 %".6" to i8
  store i8 %".27", i8* %".26"
  %".29" = getelementptr inbounds [12 x i8], [12 x i8]* %"s", i32 0, i32 5
  %".30" = trunc i32 %".7" to i8
  store i8 %".30", i8* %".29"
  %".32" = getelementptr inbounds [12 x i8], [12 x i8]* %"s", i32 0, i32 6
  %".33" = trunc i32 %".8" to i8
  store i8 %".33", i8* %".32"
  %".35" = getelementptr inbounds [12 x i8], [12 x i8]* %"s", i32 0, i32 7
  %".36" = trunc i32 %".9" to i8
  store i8 %".36", i8* %".35"
  %".38" = getelementptr inbounds [12 x i8], [12 x i8]* %"s", i32 0, i32 8
  %".39" = trunc i32 %".10" to i8
  store i8 %".39", i8* %".38"
  %".41" = getelementptr inbounds [12 x i8], [12 x i8]* %"s", i32 0, i32 9
  %".42" = trunc i32 %".11" to i8
  store i8 %".42", i8* %".41"
  %".44" = getelementptr inbounds [12 x i8], [12 x i8]* %"s", i32 0, i32 10
  %".45" = trunc i32 %".12" to i8
  store i8 %".45", i8* %".44"
  %".47" = getelementptr inbounds [12 x i8], [12 x i8]* %"s", i32 0, i32 11
  %".48" = trunc i32 %".13" to i8
  store i8 %".48", i8* %".47"
  %"s_len" = alloca i32
  store i32 12, i32* %"s_len"
  %".51" = zext i8 97 to i32
  %".52" = zext i8 98 to i32
  %"t" = alloca [2 x i8]
  %".53" = getelementptr inbounds [2 x i8], [2 x i8]* %"t", i32 0, i32 0
  %".54" = trunc i32 %".51" to i8
  store i8 %".54", i8* %".53"
  %".56" = getelementptr inbounds [2 x i8], [2 x i8]* %"t", i32 0, i32 1
  %".57" = trunc i32 %".52" to i8
  store i8 %".57", i8* %".56"
  %"t_len" = alloca i32
  store i32 2, i32* %"t_len"
  %"next" = alloca [100 x i32]
  %"result" = alloca [100 x i32]
  %"result_count" = alloca i32
  store i32 0, i32* %"result_count"
  %"i" = alloca i32
  %"j" = alloca i32
  %".61" = getelementptr inbounds [100 x i32], [100 x i32]* %"next", i32 0, i32 0
  store i32 0, i32* %".61"
  store i32 1, i32* %"i"
  store i32 0, i32* %"j"
  br label %"while_cond"
while_cond:
  %".66" = load i32, i32* %"i"
  %".67" = load i32, i32* %"t_len"
  %".68" = icmp slt i32 %".66", %".67"
  %".69" = zext i1 %".68" to i32
  %".70" = icmp ne i32 %".69", 0
  br i1 %".70", label %"while_body", label %"while_end"
while_body:
  %".72" = load i32, i32* %"i"
  %".73" = getelementptr inbounds [2 x i8], [2 x i8]* %"t", i32 0, i32 %".72"
  %".74" = load i8, i8* %".73"
  %".75" = load i32, i32* %"j"
  %".76" = getelementptr inbounds [2 x i8], [2 x i8]* %"t", i32 0, i32 %".75"
  %".77" = load i8, i8* %".76"
  %".78" = icmp eq i8 %".74", %".77"
  %".79" = zext i1 %".78" to i32
  %".80" = icmp ne i32 %".79", 0
  br i1 %".80", label %"if_then", label %"if_end"
while_end:
  store i32 0, i32* %"i"
  store i32 0, i32* %"j"
  br label %"while_cond.1"
if_then:
  %".82" = load i32, i32* %"i"
  %".83" = getelementptr inbounds [100 x i32], [100 x i32]* %"next", i32 0, i32 %".82"
  %".84" = load i32, i32* %"j"
  %".85" = add i32 %".84", 1
  store i32 %".85", i32* %".83"
  %".87" = load i32, i32* %"i"
  %".88" = add i32 %".87", 1
  store i32 %".88", i32* %"i"
  %".90" = load i32, i32* %"j"
  %".91" = add i32 %".90", 1
  store i32 %".91", i32* %"j"
  br label %"while_cond"
if_end:
  %".94" = load i32, i32* %"j"
  %".95" = icmp eq i32 %".94", 0
  %".96" = zext i1 %".95" to i32
  %".97" = icmp ne i32 %".96", 0
  br i1 %".97", label %"if_then.1", label %"if_end.1"
if_then.1:
  %".99" = load i32, i32* %"i"
  %".100" = getelementptr inbounds [100 x i32], [100 x i32]* %"next", i32 0, i32 %".99"
  store i32 0, i32* %".100"
  %".102" = load i32, i32* %"i"
  %".103" = add i32 %".102", 1
  store i32 %".103", i32* %"i"
  br label %"while_cond"
if_end.1:
  %".106" = load i32, i32* %"j"
  %".107" = sub i32 %".106", 1
  %".108" = getelementptr inbounds [100 x i32], [100 x i32]* %"next", i32 0, i32 %".107"
  %".109" = load i32, i32* %".108"
  store i32 %".109", i32* %"j"
  br label %"while_cond"
while_cond.1:
  %".115" = load i32, i32* %"i"
  %".116" = load i32, i32* %"s_len"
  %".117" = icmp slt i32 %".115", %".116"
  %".118" = zext i1 %".117" to i32
  %".119" = icmp ne i32 %".118", 0
  br i1 %".119", label %"while_body.1", label %"while_end.1"
while_body.1:
  %".121" = load i32, i32* %"i"
  %".122" = getelementptr inbounds [12 x i8], [12 x i8]* %"s", i32 0, i32 %".121"
  %".123" = load i8, i8* %".122"
  %".124" = load i32, i32* %"j"
  %".125" = getelementptr inbounds [2 x i8], [2 x i8]* %"t", i32 0, i32 %".124"
  %".126" = load i8, i8* %".125"
  %".127" = icmp eq i8 %".123", %".126"
  %".128" = zext i1 %".127" to i32
  %".129" = icmp ne i32 %".128", 0
  br i1 %".129", label %"if_then.2", label %"if_end.2"
while_end.1:
  %".174" = load i32, i32* %"result_count"
  %".175" = icmp eq i32 %".174", 0
  %".176" = zext i1 %".175" to i32
  %".177" = icmp ne i32 %".176", 0
  br i1 %".177", label %"if_then.5", label %"if_end.5"
if_then.2:
  %".131" = load i32, i32* %"i"
  %".132" = add i32 %".131", 1
  store i32 %".132", i32* %"i"
  %".134" = load i32, i32* %"j"
  %".135" = add i32 %".134", 1
  store i32 %".135", i32* %"j"
  %".137" = load i32, i32* %"j"
  %".138" = load i32, i32* %"t_len"
  %".139" = icmp eq i32 %".137", %".138"
  %".140" = zext i1 %".139" to i32
  %".141" = icmp ne i32 %".140", 0
  br i1 %".141", label %"if_then.3", label %"if_end.3"
if_end.2:
  %".159" = load i32, i32* %"j"
  %".160" = icmp eq i32 %".159", 0
  %".161" = zext i1 %".160" to i32
  %".162" = icmp ne i32 %".161", 0
  br i1 %".162", label %"if_then.4", label %"if_end.4"
if_then.3:
  %".143" = load i32, i32* %"result_count"
  %".144" = getelementptr inbounds [100 x i32], [100 x i32]* %"result", i32 0, i32 %".143"
  %".145" = load i32, i32* %"i"
  %".146" = load i32, i32* %"t_len"
  %".147" = sub i32 %".145", %".146"
  store i32 %".147", i32* %".144"
  %".149" = load i32, i32* %"result_count"
  %".150" = add i32 %".149", 1
  store i32 %".150", i32* %"result_count"
  %".152" = load i32, i32* %"j"
  %".153" = sub i32 %".152", 1
  %".154" = getelementptr inbounds [100 x i32], [100 x i32]* %"next", i32 0, i32 %".153"
  %".155" = load i32, i32* %".154"
  store i32 %".155", i32* %"j"
  br label %"if_end.3"
if_end.3:
  br label %"while_cond.1"
if_then.4:
  %".164" = load i32, i32* %"i"
  %".165" = add i32 %".164", 1
  store i32 %".165", i32* %"i"
  br label %"while_cond.1"
if_end.4:
  %".168" = load i32, i32* %"j"
  %".169" = sub i32 %".168", 1
  %".170" = getelementptr inbounds [100 x i32], [100 x i32]* %"next", i32 0, i32 %".169"
  %".171" = load i32, i32* %".170"
  store i32 %".171", i32* %"j"
  br label %"while_cond.1"
if_then.5:
  %".179" = getelementptr inbounds [7 x i8], [7 x i8]* @".str", i32 0, i32 0
  %".180" = call i32 (i8*, ...) @"printf"(i8* %".179")
  ret i32 0
if_end.5:
  %".182" = getelementptr inbounds [3 x i8], [3 x i8]* @".str.1", i32 0, i32 0
  %".183" = getelementptr inbounds [100 x i32], [100 x i32]* %"result", i32 0, i32 0
  %".184" = load i32, i32* %".183"
  %".185" = call i32 (i8*, ...) @"printf"(i8* %".182", i32 %".184")
  store i32 1, i32* %"i"
  br label %"while_cond.2"
while_cond.2:
  %".188" = load i32, i32* %"i"
  %".189" = load i32, i32* %"result_count"
  %".190" = icmp slt i32 %".188", %".189"
  %".191" = zext i1 %".190" to i32
  %".192" = icmp ne i32 %".191", 0
  br i1 %".192", label %"while_body.2", label %"while_end.2"
while_body.2:
  %".194" = getelementptr inbounds [4 x i8], [4 x i8]* @".str.2", i32 0, i32 0
  %".195" = load i32, i32* %"i"
  %".196" = getelementptr inbounds [100 x i32], [100 x i32]* %"result", i32 0, i32 %".195"
  %".197" = load i32, i32* %".196"
  %".198" = call i32 (i8*, ...) @"printf"(i8* %".194", i32 %".197")
  %".199" = load i32, i32* %"i"
  %".200" = add i32 %".199", 1
  store i32 %".200", i32* %"i"
  br label %"while_cond.2"
while_end.2:
  %".203" = getelementptr inbounds [2 x i8], [2 x i8]* @".str.3", i32 0, i32 0
  %".204" = call i32 (i8*, ...) @"printf"(i8* %".203")
  ret i32 0
}

declare i32 @"printf"(i8* %".1", ...)

@".str" = private constant [7 x i8] c"False\0a\00", align 1
@".str.1" = private constant [3 x i8] c"%d\00", align 1
@".str.2" = private constant [4 x i8] c",%d\00", align 1
@".str.3" = private constant [2 x i8] c"\0a\00", align 1
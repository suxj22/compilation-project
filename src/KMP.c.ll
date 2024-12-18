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
  br label %"for_init"
for_init:
  br label %"for_cond"
for_cond:
  br label %"for_body"
for_body:
  br label %"while_cond"
for_inc:
  br label %"for_cond"
for_end:
  br label %"for_init.1"
while_cond:
  %".67" = load i32, i32* %"j"
  %".68" = icmp sgt i32 %".67", 0
  %".69" = zext i1 %".68" to i32
  %".70" = load i32, i32* %"i"
  %".71" = getelementptr inbounds [2 x i8], [2 x i8]* %"t", i32 0, i32 %".70"
  %".72" = load i8, i8* %".71"
  %".73" = load i32, i32* %"j"
  %".74" = getelementptr inbounds [2 x i8], [2 x i8]* %"t", i32 0, i32 %".73"
  %".75" = load i8, i8* %".74"
  %".76" = icmp ne i8 %".72", %".75"
  %".77" = zext i1 %".76" to i32
  %".78" = and i32 %".69", %".77"
  %".79" = icmp ne i32 %".78", 0
  br i1 %".79", label %"while_body", label %"while_end"
while_body:
  %".81" = load i32, i32* %"j"
  %".82" = sub i32 %".81", 1
  %".83" = getelementptr inbounds [100 x i32], [100 x i32]* %"next", i32 0, i32 %".82"
  %".84" = load i32, i32* %".83"
  store i32 %".84", i32* %"j"
  br label %"while_cond"
while_end:
  %".87" = load i32, i32* %"i"
  %".88" = getelementptr inbounds [2 x i8], [2 x i8]* %"t", i32 0, i32 %".87"
  %".89" = load i8, i8* %".88"
  %".90" = load i32, i32* %"j"
  %".91" = getelementptr inbounds [2 x i8], [2 x i8]* %"t", i32 0, i32 %".90"
  %".92" = load i8, i8* %".91"
  %".93" = icmp eq i8 %".89", %".92"
  %".94" = zext i1 %".93" to i32
  %".95" = icmp ne i32 %".94", 0
  br i1 %".95", label %"if_then", label %"if_end"
if_then:
  %".97" = load i32, i32* %"j"
  %".98" = add i32 %".97", 1
  store i32 %".98", i32* %"j"
  br label %"if_end"
if_end:
  %".101" = load i32, i32* %"i"
  %".102" = getelementptr inbounds [100 x i32], [100 x i32]* %"next", i32 0, i32 %".101"
  %".103" = load i32, i32* %"j"
  store i32 %".103", i32* %".102"
  br label %"for_inc"
for_init.1:
  br label %"for_cond.1"
for_cond.1:
  br label %"for_body.1"
for_body.1:
  br label %"while_cond.1"
for_inc.1:
  br label %"for_cond.1"
for_end.1:
  %".168" = load i32, i32* %"result_count"
  %".169" = icmp eq i32 %".168", 0
  %".170" = zext i1 %".169" to i32
  %".171" = icmp ne i32 %".170", 0
  br i1 %".171", label %"if_then.3", label %"if_else"
while_cond.1:
  %".111" = load i32, i32* %"j"
  %".112" = icmp sgt i32 %".111", 0
  %".113" = zext i1 %".112" to i32
  %".114" = load i32, i32* %"i"
  %".115" = getelementptr inbounds [12 x i8], [12 x i8]* %"s", i32 0, i32 %".114"
  %".116" = load i8, i8* %".115"
  %".117" = load i32, i32* %"j"
  %".118" = getelementptr inbounds [2 x i8], [2 x i8]* %"t", i32 0, i32 %".117"
  %".119" = load i8, i8* %".118"
  %".120" = icmp ne i8 %".116", %".119"
  %".121" = zext i1 %".120" to i32
  %".122" = and i32 %".113", %".121"
  %".123" = icmp ne i32 %".122", 0
  br i1 %".123", label %"while_body.1", label %"while_end.1"
while_body.1:
  %".125" = load i32, i32* %"j"
  %".126" = sub i32 %".125", 1
  %".127" = getelementptr inbounds [100 x i32], [100 x i32]* %"next", i32 0, i32 %".126"
  %".128" = load i32, i32* %".127"
  store i32 %".128", i32* %"j"
  br label %"while_cond.1"
while_end.1:
  %".131" = load i32, i32* %"i"
  %".132" = getelementptr inbounds [12 x i8], [12 x i8]* %"s", i32 0, i32 %".131"
  %".133" = load i8, i8* %".132"
  %".134" = load i32, i32* %"j"
  %".135" = getelementptr inbounds [2 x i8], [2 x i8]* %"t", i32 0, i32 %".134"
  %".136" = load i8, i8* %".135"
  %".137" = icmp eq i8 %".133", %".136"
  %".138" = zext i1 %".137" to i32
  %".139" = icmp ne i32 %".138", 0
  br i1 %".139", label %"if_then.1", label %"if_end.1"
if_then.1:
  %".141" = load i32, i32* %"j"
  %".142" = add i32 %".141", 1
  store i32 %".142", i32* %"j"
  br label %"if_end.1"
if_end.1:
  %".145" = load i32, i32* %"j"
  %".146" = load i32, i32* %"t_len"
  %".147" = icmp eq i32 %".145", %".146"
  %".148" = zext i1 %".147" to i32
  %".149" = icmp ne i32 %".148", 0
  br i1 %".149", label %"if_then.2", label %"if_end.2"
if_then.2:
  %".151" = load i32, i32* %"result_count"
  %".152" = add i32 %".151", 1
  store i32 %".152", i32* %"result_count"
  %".154" = getelementptr inbounds [100 x i32], [100 x i32]* %"result", i32 0, i32 %".151"
  %".155" = load i32, i32* %"i"
  %".156" = load i32, i32* %"t_len"
  %".157" = sub i32 %".155", %".156"
  %".158" = add i32 %".157", 1
  store i32 %".158", i32* %".154"
  %".160" = load i32, i32* %"j"
  %".161" = sub i32 %".160", 1
  %".162" = getelementptr inbounds [100 x i32], [100 x i32]* %"next", i32 0, i32 %".161"
  %".163" = load i32, i32* %".162"
  store i32 %".163", i32* %"j"
  br label %"if_end.2"
if_end.2:
  br label %"for_inc.1"
if_then.3:
  %".173" = getelementptr inbounds [7 x i8], [7 x i8]* @".str", i32 0, i32 0
  %".174" = call i32 (i8*, ...) @"printf"(i8* %".173")
  br label %"if_merge"
if_else:
  br label %"for_init.2"
for_init.2:
  br label %"for_cond.2"
for_cond.2:
  br label %"for_body.2"
for_body.2:
  %".178" = load i32, i32* %"i"
  %".179" = icmp sgt i32 %".178", 0
  %".180" = zext i1 %".179" to i32
  %".181" = icmp ne i32 %".180", 0
  br i1 %".181", label %"if_then.4", label %"if_end.3"
for_inc.2:
  br label %"for_cond.2"
for_end.2:
  %".193" = getelementptr inbounds [2 x i8], [2 x i8]* @".str.3", i32 0, i32 0
  %".194" = call i32 (i8*, ...) @"printf"(i8* %".193")
if_then.4:
  %".183" = getelementptr inbounds [2 x i8], [2 x i8]* @".str.1", i32 0, i32 0
  %".184" = call i32 (i8*, ...) @"printf"(i8* %".183")
  br label %"if_end.3"
if_end.3:
  %".186" = getelementptr inbounds [3 x i8], [3 x i8]* @".str.2", i32 0, i32 0
  %".187" = load i32, i32* %"i"
  %".188" = getelementptr inbounds [100 x i32], [100 x i32]* %"result", i32 0, i32 %".187"
  %".189" = load i32, i32* %".188"
  %".190" = call i32 (i8*, ...) @"printf"(i8* %".186", i32 %".189")
  br label %"for_inc.2"
if_merge:
  ret i32 0
}

declare i32 @"printf"(i8* %".1", ...)

@".str" = private constant [7 x i8] c"False\0a\00", align 1
@".str.1" = private constant [2 x i8] c",\00", align 1
@".str.2" = private constant [3 x i8] c"%d\00", align 1
@".str.3" = private constant [2 x i8] c"\0a\00", align 1
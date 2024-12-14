; ModuleID = "my_module"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define i32 @"compute_sum"(i32 %"a", i32 %"b")
{
entry:
  %"a_addr" = alloca i32
  store i32 %"a", i32* %"a_addr"
  %"b_addr" = alloca i32
  store i32 %"b", i32* %"b_addr"
  %".6" = load i32, i32* %"a_addr"
  %".7" = load i32, i32* %"b_addr"
  %".8" = add i32 %".6", %".7"
  %".9" = icmp ne i32 %".8", 0
  %".10" = zext i1 %".9" to i32
  %".11" = icmp ne i32 %".10", 0
  %".12" = zext i1 %".11" to i32
  %".13" = icmp ne i32 %".12", 0
  %".14" = zext i1 %".13" to i32
  ret i32 %".14"
}

define void @"test_all_loops"()
{
entry:
  %"i" = alloca i32
  %".2" = icmp ne i32 0, 0
  %".3" = zext i1 %".2" to i32
  %".4" = icmp ne i32 %".3", 0
  %".5" = zext i1 %".4" to i32
  store i32 %".5", i32* %"i"
  br label %"while_cond"
while_cond:
  %".8" = load i32, i32* %"i"
  %".9" = icmp slt i32 %".8", 5
  %".10" = zext i1 %".9" to i32
  %".11" = icmp ne i32 %".10", 0
  %".12" = zext i1 %".11" to i32
  %".13" = icmp ne i32 %".12", 0
  %".14" = zext i1 %".13" to i32
  %".15" = icmp ne i32 %".14", 0
  %".16" = zext i1 %".15" to i32
  %".17" = icmp ne i32 %".16", 0
  br i1 %".17", label %"while_body", label %"while_end"
while_body:
  %".19" = icmp ne i32 1, 0
  %".20" = zext i1 %".19" to i32
  %".21" = icmp ne i32 %".20", 0
  %".22" = zext i1 %".21" to i32
  %".23" = load i32, i32* %"i"
  %".24" = add i32 %".23", %".22"
  store i32 %".24", i32* %"i"
  %".26" = icmp ne i32 %".24", 0
  %".27" = zext i1 %".26" to i32
  br label %"while_cond"
while_end:
  %"j" = alloca i32
  %".29" = icmp ne i32 0, 0
  %".30" = zext i1 %".29" to i32
  %".31" = icmp ne i32 %".30", 0
  %".32" = zext i1 %".31" to i32
  store i32 %".32", i32* %"j"
  br label %"while_cond.1"
while_cond.1:
  %".35" = load i32, i32* %"j"
  %".36" = icmp slt i32 %".35", 10
  %".37" = zext i1 %".36" to i32
  %".38" = icmp ne i32 %".37", 0
  %".39" = zext i1 %".38" to i32
  %".40" = icmp ne i32 %".39", 0
  %".41" = zext i1 %".40" to i32
  %".42" = icmp ne i32 %".41", 0
  %".43" = zext i1 %".42" to i32
  %".44" = icmp ne i32 %".43", 0
  br i1 %".44", label %"while_body.1", label %"while_end.1"
while_body.1:
  %".46" = icmp ne i32 2, 0
  %".47" = zext i1 %".46" to i32
  %".48" = icmp ne i32 %".47", 0
  %".49" = zext i1 %".48" to i32
  %".50" = load i32, i32* %"j"
  %".51" = add i32 %".50", %".49"
  store i32 %".51", i32* %"j"
  %".53" = icmp ne i32 %".51", 0
  %".54" = zext i1 %".53" to i32
  br label %"while_cond.1"
while_end.1:
  %"k" = alloca i32
  %".56" = icmp ne i32 0, 0
  %".57" = zext i1 %".56" to i32
  %".58" = icmp ne i32 %".57", 0
  %".59" = zext i1 %".58" to i32
  store i32 %".59", i32* %"k"
  %".61" = load i32, i32* %"k"
  %".62" = icmp slt i32 %".61", 5
  %".63" = zext i1 %".62" to i32
  %".64" = icmp ne i32 %".63", 0
  %".65" = zext i1 %".64" to i32
  %".66" = icmp ne i32 %".65", 0
  %".67" = zext i1 %".66" to i32
  %".68" = icmp ne i32 %".67", 0
  %".69" = zext i1 %".68" to i32
  %".70" = icmp ne i32 1, 0
  %".71" = zext i1 %".70" to i32
  %".72" = icmp ne i32 %".71", 0
  %".73" = zext i1 %".72" to i32
  %".74" = load i32, i32* %"k"
  %".75" = add i32 %".74", %".73"
  store i32 %".75", i32* %"k"
  %".77" = icmp ne i32 %".75", 0
  %".78" = zext i1 %".77" to i32
  br label %"for_cond"
for_cond:
  %".80" = icmp ne i32 %".69", 0
  br i1 %".80", label %"for_body", label %"for_end"
for_body:
  %"sum" = alloca i32
  %".82" = load i32, i32* %"k"
  %".83" = icmp ne i32 %".82", 0
  %".84" = zext i1 %".83" to i32
  %".85" = icmp ne i32 %".84", 0
  %".86" = zext i1 %".85" to i32
  %".87" = load i32, i32* %"j"
  %".88" = icmp ne i32 %".87", 0
  %".89" = zext i1 %".88" to i32
  %".90" = icmp ne i32 %".89", 0
  %".91" = zext i1 %".90" to i32
  %".92" = call i32 @"compute_sum"(i32 %".86", i32 %".91")
  %".93" = icmp ne i32 %".92", 0
  %".94" = zext i1 %".93" to i32
  %".95" = icmp ne i32 %".94", 0
  %".96" = zext i1 %".95" to i32
  store i32 %".96", i32* %"sum"
  br label %"for_incr"
for_incr:
  br label %"for_cond"
for_end:
  %"m" = alloca i32
  %".100" = icmp ne i32 0, 0
  %".101" = zext i1 %".100" to i32
  %".102" = icmp ne i32 %".101", 0
  %".103" = zext i1 %".102" to i32
  store i32 %".103", i32* %"m"
  %".105" = load i32, i32* %"m"
  %".106" = icmp slt i32 %".105", 3
  %".107" = zext i1 %".106" to i32
  %".108" = icmp ne i32 %".107", 0
  %".109" = zext i1 %".108" to i32
  %".110" = icmp ne i32 %".109", 0
  %".111" = zext i1 %".110" to i32
  %".112" = icmp ne i32 %".111", 0
  %".113" = zext i1 %".112" to i32
  %".114" = icmp ne i32 1, 0
  %".115" = zext i1 %".114" to i32
  %".116" = icmp ne i32 %".115", 0
  %".117" = zext i1 %".116" to i32
  %".118" = load i32, i32* %"m"
  %".119" = add i32 %".118", %".117"
  store i32 %".119", i32* %"m"
  %".121" = icmp ne i32 %".119", 0
  %".122" = zext i1 %".121" to i32
  br label %"for_cond.1"
for_cond.1:
  %".124" = icmp ne i32 %".113", 0
  br i1 %".124", label %"for_body.1", label %"for_end.1"
for_body.1:
  br label %"while_cond.2"
for_incr.1:
  br label %"for_cond.1"
for_end.1:
  ret void
while_cond.2:
  %".127" = load i32, i32* %"i"
  %".128" = icmp slt i32 %".127", 10
  %".129" = zext i1 %".128" to i32
  %".130" = icmp ne i32 %".129", 0
  %".131" = zext i1 %".130" to i32
  %".132" = icmp ne i32 %".131", 0
  %".133" = zext i1 %".132" to i32
  %".134" = icmp ne i32 %".133", 0
  %".135" = zext i1 %".134" to i32
  %".136" = icmp ne i32 %".135", 0
  br i1 %".136", label %"while_body.2", label %"while_end.2"
while_body.2:
  br label %"while_cond.3"
while_end.2:
  br label %"for_incr.1"
while_cond.3:
  %".139" = load i32, i32* %"i"
  %".140" = icmp slt i32 %".139", 8
  %".141" = zext i1 %".140" to i32
  %".142" = icmp ne i32 %".141", 0
  %".143" = zext i1 %".142" to i32
  %".144" = icmp ne i32 %".143", 0
  %".145" = zext i1 %".144" to i32
  %".146" = icmp ne i32 %".145", 0
  %".147" = zext i1 %".146" to i32
  %".148" = icmp ne i32 %".147", 0
  br i1 %".148", label %"while_body.3", label %"while_end.3"
while_body.3:
  %".150" = icmp ne i32 1, 0
  %".151" = zext i1 %".150" to i32
  %".152" = icmp ne i32 %".151", 0
  %".153" = zext i1 %".152" to i32
  %".154" = load i32, i32* %"i"
  %".155" = add i32 %".154", %".153"
  store i32 %".155", i32* %"i"
  %".157" = icmp ne i32 %".155", 0
  %".158" = zext i1 %".157" to i32
  %".159" = load i32, i32* %"i"
  %".160" = icmp eq i32 %".159", 7
  %".161" = zext i1 %".160" to i32
  %".162" = icmp ne i32 %".161", 0
  %".163" = zext i1 %".162" to i32
  %".164" = icmp ne i32 %".163", 0
  %".165" = zext i1 %".164" to i32
  %".166" = icmp ne i32 %".165", 0
  %".167" = zext i1 %".166" to i32
  %".168" = icmp ne i32 %".167", 0
  %".169" = zext i1 %".168" to i32
  br i32 %".169", label %"if_then", label %"if_merge"
while_end.3:
  br label %"while_cond.2"
if_then:
  br label %"while_end.3"
if_else:
  br label %"if_merge"
if_merge:
}

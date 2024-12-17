; ModuleID = "my_module"
<<<<<<< HEAD
target triple = "aarch64-apple-macosx14.0.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
=======
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
>>>>>>> f10575594f2a1f0700797d063f1ce60cf78a70cf

define i32 @"factorial"(i32 %"n")
{
entry:
  %"n_addr" = alloca i32
  store i32 %"n", i32* %"n_addr"
  %".4" = load i32, i32* %"n_addr"
  %".5" = icmp sle i32 %".4", 1
  %".6" = zext i1 %".5" to i32
  %".7" = icmp ne i32 %".6", 0
<<<<<<< HEAD
  br i1 %".7", label %"if_then", label %"if_else"
if_then:
  ret i32 1
if_else:
  %".10" = load i32, i32* %"n_addr"
  %".11" = load i32, i32* %"n_addr"
  %".12" = sub i32 %".11", 1
  %".13" = call i32 @"factorial"(i32 %".12")
  %".14" = mul i32 %".10", %".13"
  ret i32 %".14"
=======
  %".8" = zext i1 %".7" to i32
  %".9" = icmp ne i32 %".8", 0
  %".10" = zext i1 %".9" to i32
  %".11" = icmp ne i32 %".10", 0
  %".12" = zext i1 %".11" to i32
  %".13" = icmp ne i32 %".12", 0
  %".14" = zext i1 %".13" to i32
  br i32 %".14", label %"if_then", label %"if_else"
if_then:
  br label %"if_merge"
if_else:
  br label %"if_merge"
if_merge:
>>>>>>> f10575594f2a1f0700797d063f1ce60cf78a70cf
}

define i32 @"add"(i32 %"a", i32 %"b")
{
entry:
  %"a_addr" = alloca i32
  store i32 %"a", i32* %"a_addr"
  %"b_addr" = alloca i32
  store i32 %"b", i32* %"b_addr"
  %".6" = load i32, i32* %"a_addr"
  %".7" = load i32, i32* %"b_addr"
  %".8" = add i32 %".6", %".7"
<<<<<<< HEAD
  ret i32 %".8"
=======
  %".9" = icmp ne i32 %".8", 0
  %".10" = zext i1 %".9" to i32
  %".11" = icmp ne i32 %".10", 0
  %".12" = zext i1 %".11" to i32
  %".13" = icmp ne i32 %".12", 0
  %".14" = zext i1 %".13" to i32
  ret i32 %".14"
>>>>>>> f10575594f2a1f0700797d063f1ce60cf78a70cf
}

define i32 @"main"()
{
entry:
  %"x" = alloca i32
<<<<<<< HEAD
  store i32 10, i32* %"x"
  %"y" = alloca i32
  store i32 20, i32* %"y"
  %"result" = alloca i32
  %".4" = load i32, i32* %"x"
  %".5" = load i32, i32* %"y"
  %".6" = mul i32 %".5", 2
  %".7" = add i32 %".4", %".6"
  store i32 %".7", i32* %"result"
  %".9" = load i32, i32* %"x"
  %".10" = load i32, i32* %"y"
  %".11" = add i32 %".9", %".10"
  %".12" = mul i32 %".11", 2
  store i32 %".12", i32* %"result"
  %".14" = load i32, i32* %"x"
  store i32 %".14", i32* %"result"
  %".16" = load i32, i32* %"result"
  %".17" = add i32 %".16", 5
  store i32 %".17", i32* %"result"
  %".19" = load i32, i32* %"result"
  %".20" = sub i32 %".19", 3
  store i32 %".20", i32* %"result"
  %".22" = load i32, i32* %"result"
  %".23" = mul i32 %".22", 2
  store i32 %".23", i32* %"result"
  %".25" = load i32, i32* %"result"
  %".26" = sdiv i32 %".25", 4
  store i32 %".26", i32* %"result"
  %".28" = load i32, i32* %"result"
  %".29" = srem i32 %".28", 3
  store i32 %".29", i32* %"result"
  %"isGreater" = alloca i32
  %".31" = load i32, i32* %"x"
  %".32" = load i32, i32* %"y"
  %".33" = icmp sgt i32 %".31", %".32"
  %".34" = zext i1 %".33" to i32
  store i32 %".34", i32* %"isGreater"
  %"isEqual" = alloca i32
  %".36" = load i32, i32* %"x"
  %".37" = load i32, i32* %"y"
  %".38" = icmp eq i32 %".36", %".37"
  %".39" = zext i1 %".38" to i32
  store i32 %".39", i32* %"isEqual"
  %"logicalAnd" = alloca i32
  %".41" = load i32, i32* %"x"
  %".42" = icmp sgt i32 %".41", 0
  %".43" = zext i1 %".42" to i32
  %".44" = load i32, i32* %"y"
  %".45" = icmp sgt i32 %".44", 0
  %".46" = zext i1 %".45" to i32
  %".47" = and i32 %".43", %".46"
  store i32 %".47", i32* %"logicalAnd"
  %"logicalOr" = alloca i32
  %".49" = load i32, i32* %"x"
  %".50" = icmp sgt i32 %".49", 0
  %".51" = zext i1 %".50" to i32
  %".52" = load i32, i32* %"y"
  %".53" = icmp sgt i32 %".52", 0
  %".54" = zext i1 %".53" to i32
  %".55" = or i32 %".51", %".54"
  store i32 %".55", i32* %"logicalOr"
  %"z" = alloca i32
  %".57" = load i32, i32* %"x"
  %".58" = sub i32 0, %".57"
  store i32 %".58", i32* %"z"
  %"notZ" = alloca i32
  %".60" = load i32, i32* %"z"
  store i32 %".60", i32* %"notZ"
  %"a" = alloca i32
  store i32 5, i32* %"a"
  %".63" = load i32, i32* %"a"
  %".64" = add i32 %".63", 1
  store i32 %".64", i32* %"a"
  %".66" = load i32, i32* %"a"
  %".67" = sub i32 %".66", 1
  store i32 %".67", i32* %"a"
  %".69" = load i32, i32* %"a"
  %".70" = add i32 %".69", 1
  store i32 %".70", i32* %"a"
  %".72" = load i32, i32* %"a"
  %".73" = sub i32 %".72", 1
  store i32 %".73", i32* %"a"
  %"sum" = alloca i32
  %".75" = load i32, i32* %"x"
  %".76" = load i32, i32* %"y"
  %".77" = call i32 @"add"(i32 %".75", i32 %".76")
  store i32 %".77", i32* %"sum"
  %"max" = alloca i32
  %".79" = load i32, i32* %"x"
  %".80" = load i32, i32* %"y"
  %".81" = icmp sgt i32 %".79", %".80"
  %".82" = zext i1 %".81" to i32
  %".83" = icmp ne i32 %".82", 0
  br i1 %".83", label %"then", label %"else"
then:
  %".85" = load i32, i32* %"x"
  br label %"cond_merge"
else:
  %".87" = load i32, i32* %"y"
  br label %"cond_merge"
cond_merge:
  %".89" = phi  i32 [%".85", %"then"], [%".87", %"else"]
  store i32 %".89", i32* %"max"
  %"localVar" = alloca i32
  store i32 100, i32* %"localVar"
  %".92" = load i32, i32* %"localVar"
  %".93" = load i32, i32* %"x"
  %".94" = add i32 %".92", %".93"
  store i32 %".94", i32* %"result"
  %".96" = call i32 @"add"(i32 1, i32 2)
  %".97" = load i32, i32* %"x"
  %".98" = load i32, i32* %"y"
  %".99" = add i32 %".97", %".98"
  %"chr" = alloca i32
  %".100" = zext i8 97 to i32
  store i32 %".100", i32* %"chr"
  %"str" = alloca i32
  %".102" = getelementptr inbounds [14 x i8], [14 x i8]* @".str", i32 0, i32 0
  %".103" = load i8, i8* %".102"
  %".104" = zext i8 %".103" to i32
  store i32 %".104", i32* %"str"
  %"len" = alloca i32
  %".106" = bitcast i32* %"str" to i8*
  %".107" = call i32 @"strlen"(i8* %".106")
  store i32 %".107", i32* %"len"
  %"in" = alloca i32
  %".109" = bitcast i32* %"str" to i8*
  %".110" = call i32 @"atoi"(i8* %".109")
  store i32 %".110", i32* %"in"
  %".112" = getelementptr inbounds [4 x i8], [4 x i8]* @".str.1", i32 0, i32 0
  %".113" = load i32, i32* %"str"
  %".114" = call i32 (i8*, ...) @"printf"(i8* %".112", i32 %".113")
  %".115" = getelementptr inbounds [4 x i8], [4 x i8]* @".str.2", i32 0, i32 0
  %".116" = call i32 (i8*, ...) @"printf"(i8* %".115")
  %".117" = getelementptr inbounds [3 x i8], [3 x i8]* @".str.3", i32 0, i32 0
  %".118" = call i32 (i8*, ...) @"scanf"(i8* %".117", i32* %"in")
  %".119" = bitcast i32* %"str" to i8*
  %".120" = call i8* @"gets"(i8* %".119")
  %".121" = load i8, i8* %".120"
  %".122" = zext i8 %".121" to i32
  ret i32 0
}

@".str" = private constant [14 x i8] c"Hello, world!\00", align 1
declare i32 @"strlen"(i8* %".1")

declare i32 @"atoi"(i8* %".1")

declare i32 @"printf"(i8* %".1", ...)

@".str.1" = private constant [4 x i8] c"%s\0a\00", align 1
@".str.2" = private constant [4 x i8] c"aaa\00", align 1
declare i32 @"scanf"(i8* %".1", ...)

@".str.3" = private constant [3 x i8] c"%d\00", align 1
declare i8* @"gets"(i8* %".1")
=======
  %".2" = icmp ne i32 10, 0
  %".3" = zext i1 %".2" to i32
  %".4" = icmp ne i32 %".3", 0
  %".5" = zext i1 %".4" to i32
  store i32 %".5", i32* %"x"
  %"y" = alloca i32
  %".7" = icmp ne i32 20, 0
  %".8" = zext i1 %".7" to i32
  %".9" = icmp ne i32 %".8", 0
  %".10" = zext i1 %".9" to i32
  store i32 %".10", i32* %"y"
  %"result" = alloca i32
  %".12" = load i32, i32* %"x"
  %".13" = load i32, i32* %"y"
  %".14" = mul i32 %".13", 2
  %".15" = add i32 %".12", %".14"
  %".16" = icmp ne i32 %".15", 0
  %".17" = zext i1 %".16" to i32
  %".18" = icmp ne i32 %".17", 0
  %".19" = zext i1 %".18" to i32
  store i32 %".19", i32* %"result"
  %".21" = icmp ne i32 %".19", 0
  %".22" = zext i1 %".21" to i32
  %".23" = load i32, i32* %"x"
  %".24" = load i32, i32* %"y"
  %".25" = add i32 %".23", %".24"
  %".26" = icmp ne i32 %".25", 0
  %".27" = zext i1 %".26" to i32
  %".28" = icmp ne i32 %".27", 0
  %".29" = zext i1 %".28" to i32
  %".30" = icmp ne i32 %".29", 0
  %".31" = zext i1 %".30" to i32
  %".32" = mul i32 %".31", 2
  %".33" = icmp ne i32 %".32", 0
  %".34" = zext i1 %".33" to i32
  %".35" = icmp ne i32 %".34", 0
  %".36" = zext i1 %".35" to i32
  store i32 %".36", i32* %"result"
  %".38" = icmp ne i32 %".36", 0
  %".39" = zext i1 %".38" to i32
  %".40" = load i32, i32* %"x"
  %".41" = icmp ne i32 %".40", 0
  %".42" = zext i1 %".41" to i32
  %".43" = icmp ne i32 %".42", 0
  %".44" = zext i1 %".43" to i32
  store i32 %".44", i32* %"result"
  %".46" = icmp ne i32 %".44", 0
  %".47" = zext i1 %".46" to i32
  %".48" = icmp ne i32 5, 0
  %".49" = zext i1 %".48" to i32
  %".50" = icmp ne i32 %".49", 0
  %".51" = zext i1 %".50" to i32
  %".52" = load i32, i32* %"result"
  %".53" = add i32 %".52", %".51"
  store i32 %".53", i32* %"result"
  %".55" = icmp ne i32 %".53", 0
  %".56" = zext i1 %".55" to i32
  %".57" = icmp ne i32 3, 0
  %".58" = zext i1 %".57" to i32
  %".59" = icmp ne i32 %".58", 0
  %".60" = zext i1 %".59" to i32
  %".61" = load i32, i32* %"result"
  %".62" = sub i32 %".61", %".60"
  store i32 %".62", i32* %"result"
  %".64" = icmp ne i32 %".62", 0
  %".65" = zext i1 %".64" to i32
  %".66" = icmp ne i32 2, 0
  %".67" = zext i1 %".66" to i32
  %".68" = icmp ne i32 %".67", 0
  %".69" = zext i1 %".68" to i32
  %".70" = load i32, i32* %"result"
  %".71" = mul i32 %".70", %".69"
  store i32 %".71", i32* %"result"
  %".73" = icmp ne i32 %".71", 0
  %".74" = zext i1 %".73" to i32
  %".75" = icmp ne i32 4, 0
  %".76" = zext i1 %".75" to i32
  %".77" = icmp ne i32 %".76", 0
  %".78" = zext i1 %".77" to i32
  %".79" = load i32, i32* %"result"
  %".80" = sdiv i32 %".79", %".78"
  store i32 %".80", i32* %"result"
  %".82" = icmp ne i32 %".80", 0
  %".83" = zext i1 %".82" to i32
  %".84" = icmp ne i32 3, 0
  %".85" = zext i1 %".84" to i32
  %".86" = icmp ne i32 %".85", 0
  %".87" = zext i1 %".86" to i32
  %".88" = load i32, i32* %"result"
  %".89" = srem i32 %".88", %".87"
  store i32 %".89", i32* %"result"
  %".91" = icmp ne i32 %".89", 0
  %".92" = zext i1 %".91" to i32
  %"isGreater" = alloca i32
  %".93" = load i32, i32* %"x"
  %".94" = load i32, i32* %"y"
  %".95" = icmp sgt i32 %".93", %".94"
  %".96" = zext i1 %".95" to i32
  %".97" = icmp ne i32 %".96", 0
  %".98" = zext i1 %".97" to i32
  %".99" = icmp ne i32 %".98", 0
  %".100" = zext i1 %".99" to i32
  store i32 %".100", i32* %"isGreater"
  %"isEqual" = alloca i32
  %".102" = load i32, i32* %"x"
  %".103" = load i32, i32* %"y"
  %".104" = icmp eq i32 %".102", %".103"
  %".105" = zext i1 %".104" to i32
  %".106" = icmp ne i32 %".105", 0
  %".107" = zext i1 %".106" to i32
  %".108" = icmp ne i32 %".107", 0
  %".109" = zext i1 %".108" to i32
  store i32 %".109", i32* %"isEqual"
  %"logicalAnd" = alloca i32
  %".111" = load i32, i32* %"x"
  %".112" = icmp sgt i32 %".111", 0
  %".113" = zext i1 %".112" to i32
  %".114" = icmp ne i32 %".113", 0
  %".115" = zext i1 %".114" to i32
  %".116" = icmp ne i32 %".115", 0
  %".117" = zext i1 %".116" to i32
  %".118" = icmp ne i32 %".117", 0
  %".119" = zext i1 %".118" to i32
  %".120" = load i32, i32* %"y"
  %".121" = icmp sgt i32 %".120", 0
  %".122" = zext i1 %".121" to i32
  %".123" = icmp ne i32 %".122", 0
  %".124" = zext i1 %".123" to i32
  %".125" = icmp ne i32 %".124", 0
  %".126" = zext i1 %".125" to i32
  %".127" = icmp ne i32 %".126", 0
  %".128" = zext i1 %".127" to i32
  %".129" = icmp ne i32 %".119", 0
  %".130" = zext i1 %".129" to i32
  %".131" = icmp ne i32 %".128", 0
  %".132" = zext i1 %".131" to i32
  %".133" = and i32 %".130", %".132"
  %".134" = icmp ne i32 %".133", 0
  %".135" = zext i1 %".134" to i32
  %".136" = icmp ne i32 %".135", 0
  %".137" = zext i1 %".136" to i32
  store i32 %".137", i32* %"logicalAnd"
  %"logicalOr" = alloca i32
  %".139" = load i32, i32* %"x"
  %".140" = icmp sgt i32 %".139", 0
  %".141" = zext i1 %".140" to i32
  %".142" = icmp ne i32 %".141", 0
  %".143" = zext i1 %".142" to i32
  %".144" = icmp ne i32 %".143", 0
  %".145" = zext i1 %".144" to i32
  %".146" = icmp ne i32 %".145", 0
  %".147" = zext i1 %".146" to i32
  %".148" = load i32, i32* %"y"
  %".149" = icmp sgt i32 %".148", 0
  %".150" = zext i1 %".149" to i32
  %".151" = icmp ne i32 %".150", 0
  %".152" = zext i1 %".151" to i32
  %".153" = icmp ne i32 %".152", 0
  %".154" = zext i1 %".153" to i32
  %".155" = icmp ne i32 %".154", 0
  %".156" = zext i1 %".155" to i32
  %".157" = icmp ne i32 %".147", 0
  %".158" = zext i1 %".157" to i32
  %".159" = icmp ne i32 %".156", 0
  %".160" = zext i1 %".159" to i32
  %".161" = or i32 %".158", %".160"
  %".162" = icmp ne i32 %".161", 0
  %".163" = zext i1 %".162" to i32
  %".164" = icmp ne i32 %".163", 0
  %".165" = zext i1 %".164" to i32
  store i32 %".165", i32* %"logicalOr"
  %"z" = alloca i32
  %".167" = load i32, i32* %"x"
  %".168" = sub i32 0, %".167"
  %".169" = icmp ne i32 %".168", 0
  %".170" = zext i1 %".169" to i32
  %".171" = icmp ne i32 %".170", 0
  %".172" = zext i1 %".171" to i32
  store i32 %".172", i32* %"z"
  %"notZ" = alloca i32
  %".174" = load i32, i32* %"z"
  %".175" = icmp ne i32 %".174", 0
  %".176" = zext i1 %".175" to i32
  %".177" = icmp ne i32 %".176", 0
  %".178" = zext i1 %".177" to i32
  %".179" = icmp ne i32 %".178", 0
  %".180" = zext i1 %".179" to i32
  store i32 %".180", i32* %"notZ"
  %"a" = alloca i32
  %".182" = icmp ne i32 5, 0
  %".183" = zext i1 %".182" to i32
  %".184" = icmp ne i32 %".183", 0
  %".185" = zext i1 %".184" to i32
  store i32 %".185", i32* %"a"
  %".187" = load i32, i32* %"a"
  %".188" = add i32 %".187", 1
  store i32 %".188", i32* %"a"
  %".190" = icmp ne i32 %".188", 0
  %".191" = zext i1 %".190" to i32
  %".192" = icmp ne i32 %".191", 0
  %".193" = zext i1 %".192" to i32
  %".194" = icmp ne i32 %".193", 0
  %".195" = zext i1 %".194" to i32
  %".196" = load i32, i32* %"a"
  %".197" = sub i32 %".196", 1
  store i32 %".197", i32* %"a"
  %".199" = icmp ne i32 %".197", 0
  %".200" = zext i1 %".199" to i32
  %".201" = icmp ne i32 %".200", 0
  %".202" = zext i1 %".201" to i32
  %".203" = icmp ne i32 %".202", 0
  %".204" = zext i1 %".203" to i32
  %".205" = load i32, i32* %"a"
  %".206" = add i32 %".205", 1
  store i32 %".206", i32* %"a"
  %".208" = icmp ne i32 %".205", 0
  %".209" = zext i1 %".208" to i32
  %".210" = icmp ne i32 %".209", 0
  %".211" = zext i1 %".210" to i32
  %".212" = icmp ne i32 %".211", 0
  %".213" = zext i1 %".212" to i32
  %".214" = load i32, i32* %"a"
  %".215" = sub i32 %".214", 1
  store i32 %".215", i32* %"a"
  %".217" = icmp ne i32 %".214", 0
  %".218" = zext i1 %".217" to i32
  %".219" = icmp ne i32 %".218", 0
  %".220" = zext i1 %".219" to i32
  %".221" = icmp ne i32 %".220", 0
  %".222" = zext i1 %".221" to i32
  %"sum" = alloca i32
  %".223" = load i32, i32* %"x"
  %".224" = icmp ne i32 %".223", 0
  %".225" = zext i1 %".224" to i32
  %".226" = icmp ne i32 %".225", 0
  %".227" = zext i1 %".226" to i32
  %".228" = load i32, i32* %"y"
  %".229" = icmp ne i32 %".228", 0
  %".230" = zext i1 %".229" to i32
  %".231" = icmp ne i32 %".230", 0
  %".232" = zext i1 %".231" to i32
  %".233" = call i32 @"add"(i32 %".227", i32 %".232")
  %".234" = icmp ne i32 %".233", 0
  %".235" = zext i1 %".234" to i32
  %".236" = icmp ne i32 %".235", 0
  %".237" = zext i1 %".236" to i32
  store i32 %".237", i32* %"sum"
  %"max" = alloca i32
  %".239" = load i32, i32* %"x"
  %".240" = load i32, i32* %"y"
  %".241" = icmp sgt i32 %".239", %".240"
  %".242" = zext i1 %".241" to i32
  %".243" = icmp ne i32 %".242", 0
  br i1 %".243", label %"then", label %"else"
then:
  %".245" = load i32, i32* %"x"
  %".246" = icmp ne i32 %".245", 0
  %".247" = zext i1 %".246" to i32
  %".248" = icmp ne i32 %".247", 0
  %".249" = zext i1 %".248" to i32
  %".250" = icmp ne i32 %".249", 0
  %".251" = zext i1 %".250" to i32
  br label %"cond_merge"
else:
  %".253" = load i32, i32* %"y"
  %".254" = icmp ne i32 %".253", 0
  %".255" = zext i1 %".254" to i32
  br label %"cond_merge"
cond_merge:
  %".257" = phi  i32 [%".251", %"then"], [%".255", %"else"]
  %".258" = icmp ne i32 %".257", 0
  %".259" = zext i1 %".258" to i32
  store i32 %".259", i32* %"max"
  %".261" = icmp ne i32 1, 0
  %".262" = zext i1 %".261" to i32
  %".263" = icmp ne i32 %".262", 0
  %".264" = zext i1 %".263" to i32
  %".265" = icmp ne i32 2, 0
  %".266" = zext i1 %".265" to i32
  %".267" = icmp ne i32 %".266", 0
  %".268" = zext i1 %".267" to i32
  %".269" = call i32 @"add"(i32 %".264", i32 %".268")
  %".270" = icmp ne i32 %".269", 0
  %".271" = zext i1 %".270" to i32
  %".272" = icmp ne i32 %".271", 0
  %".273" = zext i1 %".272" to i32
  %".274" = icmp ne i32 %".273", 0
  %".275" = zext i1 %".274" to i32
  %".276" = load i32, i32* %"x"
  %".277" = load i32, i32* %"y"
  %".278" = add i32 %".276", %".277"
  %".279" = icmp ne i32 %".278", 0
  %".280" = zext i1 %".279" to i32
  %".281" = icmp ne i32 %".280", 0
  %".282" = zext i1 %".281" to i32
  %".283" = icmp ne i32 %".282", 0
  %".284" = zext i1 %".283" to i32
  %".285" = icmp ne i32 0, 0
  %".286" = zext i1 %".285" to i32
  %".287" = icmp ne i32 %".286", 0
  %".288" = zext i1 %".287" to i32
  %".289" = icmp ne i32 %".288", 0
  %".290" = zext i1 %".289" to i32
  ret i32 %".290"
}
>>>>>>> f10575594f2a1f0700797d063f1ce60cf78a70cf

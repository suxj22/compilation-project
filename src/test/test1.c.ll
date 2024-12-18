; ModuleID = "my_module"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"

define i32 @"factorial"(i32 %"n")
{
entry:
  %"n_addr" = alloca i32
  store i32 %"n", i32* %"n_addr"
  %".4" = load i32, i32* %"n_addr"
  %".5" = icmp sle i32 %".4", 1
  %".6" = zext i1 %".5" to i32
  %".7" = icmp ne i32 %".6", 0
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
  ret i32 %".8"
}

define i32 @"main"()
{
entry:
  %"x" = alloca i32
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
  %".31" = load i32, i32* %"x"
  %".32" = load i32, i32* %"y"
  %".33" = icmp sgt i32 %".31", %".32"
  %".34" = zext i1 %".33" to i32
  %"isGreater" = alloca i32
  store i32 %".34", i32* %"isGreater"
  %".36" = load i32, i32* %"x"
  %".37" = load i32, i32* %"y"
  %".38" = icmp eq i32 %".36", %".37"
  %".39" = zext i1 %".38" to i32
  %"isEqual" = alloca i32
  store i32 %".39", i32* %"isEqual"
  %".41" = load i32, i32* %"x"
  %".42" = icmp sgt i32 %".41", 0
  %".43" = zext i1 %".42" to i32
  %".44" = load i32, i32* %"y"
  %".45" = icmp sgt i32 %".44", 0
  %".46" = zext i1 %".45" to i32
  %".47" = and i32 %".43", %".46"
  %"logicalAnd" = alloca i32
  store i32 %".47", i32* %"logicalAnd"
  %".49" = load i32, i32* %"x"
  %".50" = icmp sgt i32 %".49", 0
  %".51" = zext i1 %".50" to i32
  %".52" = load i32, i32* %"y"
  %".53" = icmp sgt i32 %".52", 0
  %".54" = zext i1 %".53" to i32
  %".55" = or i32 %".51", %".54"
  %"logicalOr" = alloca i32
  store i32 %".55", i32* %"logicalOr"
  %".57" = load i32, i32* %"x"
  %".58" = sub i32 0, %".57"
  %"z" = alloca i32
  store i32 %".58", i32* %"z"
  %".60" = load i32, i32* %"z"
  %"notZ" = alloca i32
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
  %".75" = load i32, i32* %"x"
  %".76" = load i32, i32* %"y"
  %".77" = call i32 @"add"(i32 %".75", i32 %".76")
  %"sum" = alloca i32
  store i32 %".77", i32* %"sum"
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
  %"max" = alloca i32
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
  %"sum_xy" = alloca i32
  store i32 %".99", i32* %"sum_xy"
  %".101" = getelementptr inbounds [12 x i8], [12 x i8]* @".str", i32 0, i32 0
  %".102" = load i32, i32* %"sum_xy"
  %".103" = call i32 (i8*, ...) @"printf"(i8* %".101", i32 %".102")
  %".104" = zext i8 97 to i32
  %"chr" = alloca i32
  store i32 %".104", i32* %"chr"
  %".106" = getelementptr inbounds [9 x i8], [9 x i8]* @".str.1", i32 0, i32 0
  %".107" = load i32, i32* %"chr"
  %".108" = call i32 (i8*, ...) @"printf"(i8* %".106", i32 %".107")
  %".109" = getelementptr inbounds [4 x i8], [4 x i8]* @".str.2", i32 0, i32 0
  %".110" = call i32 (i8*, ...) @"printf"(i8* %".109")
  ret i32 0
}

declare i32 @"printf"(i8* %".1", ...)

@".str" = private constant [12 x i8] c"sum_xy: %d\0a\00", align 1
@".str.1" = private constant [9 x i8] c"chr: %c\0a\00", align 1
@".str.2" = private constant [4 x i8] c"aaa\00", align 1
; ModuleID = "my_module"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"

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
  ret i32 %".8"
}

define void @"test_all_loops"()
{
entry:
  %"i" = alloca i32
  store i32 0, i32* %"i"
  %"while_sum" = alloca i32
  store i32 0, i32* %"while_sum"
  br label %"while_cond"
while_cond:
  %".5" = load i32, i32* %"i"
  %".6" = icmp slt i32 %".5", 5
  %".7" = zext i1 %".6" to i32
  %".8" = icmp ne i32 %".7", 0
  br i1 %".8", label %"while_body", label %"while_end"
while_body:
  %".10" = load i32, i32* %"i"
  %".11" = add i32 %".10", 1
  store i32 %".11", i32* %"i"
  %".13" = load i32, i32* %"i"
  %".14" = load i32, i32* %"while_sum"
  %".15" = add i32 %".14", %".13"
  store i32 %".15", i32* %"while_sum"
  br label %"while_cond"
while_end:
  %".18" = getelementptr inbounds [20 x i8], [20 x i8]* @".str", i32 0, i32 0
  %".19" = load i32, i32* %"while_sum"
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".18", i32 %".19")
  %"j" = alloca i32
  store i32 0, i32* %"j"
  %"do_while_sum" = alloca i32
  store i32 0, i32* %"do_while_sum"
  br label %"while_cond.1"
while_cond.1:
  %".24" = load i32, i32* %"j"
  %".25" = icmp slt i32 %".24", 10
  %".26" = zext i1 %".25" to i32
  %".27" = icmp ne i32 %".26", 0
  br i1 %".27", label %"while_body.1", label %"while_end.1"
while_body.1:
  %".29" = load i32, i32* %"j"
  %".30" = add i32 %".29", 2
  store i32 %".30", i32* %"j"
  %".32" = load i32, i32* %"j"
  %".33" = load i32, i32* %"do_while_sum"
  %".34" = add i32 %".33", %".32"
  store i32 %".34", i32* %"do_while_sum"
  br label %"while_cond.1"
while_end.1:
  %".37" = getelementptr inbounds [23 x i8], [23 x i8]* @".str.1", i32 0, i32 0
  %".38" = load i32, i32* %"do_while_sum"
  %".39" = call i32 (i8*, ...) @"printf"(i8* %".37", i32 %".38")
  %"for_sum" = alloca i32
  store i32 0, i32* %"for_sum"
  br label %"for_init"
for_init:
  %"k" = alloca i32
  store i32 0, i32* %"k"
  br label %"for_cond"
for_cond:
  %".44" = load i32, i32* %"k"
  %".45" = icmp slt i32 %".44", 5
  %".46" = zext i1 %".45" to i32
  %".47" = icmp ne i32 %".46", 0
  br i1 %".47", label %"for_body", label %"for_end"
for_body:
  %".49" = load i32, i32* %"k"
  %".50" = load i32, i32* %"j"
  %".51" = call i32 @"compute_sum"(i32 %".49", i32 %".50")
  %".52" = load i32, i32* %"for_sum"
  %".53" = add i32 %".52", %".51"
  store i32 %".53", i32* %"for_sum"
  br label %"for_inc"
for_inc:
  %".56" = load i32, i32* %"k"
  %".57" = add i32 %".56", 1
  store i32 %".57", i32* %"k"
  br label %"for_cond"
for_end:
  %".60" = getelementptr inbounds [18 x i8], [18 x i8]* @".str.2", i32 0, i32 0
  %".61" = load i32, i32* %"for_sum"
  %".62" = call i32 (i8*, ...) @"printf"(i8* %".60", i32 %".61")
  %"nested_sum" = alloca i32
  store i32 0, i32* %"nested_sum"
  br label %"for_init.1"
for_init.1:
  %"m" = alloca i32
  store i32 0, i32* %"m"
  br label %"for_cond.1"
for_cond.1:
  %".67" = load i32, i32* %"m"
  %".68" = icmp slt i32 %".67", 3
  %".69" = zext i1 %".68" to i32
  %".70" = icmp ne i32 %".69", 0
  br i1 %".70", label %"for_body.1", label %"for_end.1"
for_body.1:
  br label %"while_cond.2"
for_inc.1:
  %".87" = load i32, i32* %"m"
  %".88" = add i32 %".87", 1
  store i32 %".88", i32* %"m"
  br label %"for_cond.1"
for_end.1:
  %".91" = getelementptr inbounds [21 x i8], [21 x i8]* @".str.3", i32 0, i32 0
  %".92" = load i32, i32* %"nested_sum"
  %".93" = call i32 (i8*, ...) @"printf"(i8* %".91", i32 %".92")
  %".94" = load i32, i32* %"while_sum"
  %".95" = icmp eq i32 %".94", 15
  %".96" = zext i1 %".95" to i32
  %".97" = load i32, i32* %"do_while_sum"
  %".98" = icmp eq i32 %".97", 30
  %".99" = zext i1 %".98" to i32
  %".100" = and i32 %".96", %".99"
  %".101" = load i32, i32* %"for_sum"
  %".102" = icmp eq i32 %".101", 90
  %".103" = zext i1 %".102" to i32
  %".104" = and i32 %".100", %".103"
  %".105" = load i32, i32* %"nested_sum"
  %".106" = icmp eq i32 %".105", 45
  %".107" = zext i1 %".106" to i32
  %".108" = and i32 %".104", %".107"
  %".109" = icmp ne i32 %".108", 0
  br i1 %".109", label %"if_then", label %"if_else"
while_cond.2:
  %".73" = load i32, i32* %"i"
  %".74" = icmp slt i32 %".73", 10
  %".75" = zext i1 %".74" to i32
  %".76" = icmp ne i32 %".75", 0
  br i1 %".76", label %"while_body.2", label %"while_end.2"
while_body.2:
  %".78" = load i32, i32* %"i"
  %".79" = add i32 %".78", 1
  store i32 %".79", i32* %"i"
  %".81" = load i32, i32* %"i"
  %".82" = load i32, i32* %"nested_sum"
  %".83" = add i32 %".82", %".81"
  store i32 %".83", i32* %"nested_sum"
  br label %"while_cond.2"
while_end.2:
  br label %"for_inc.1"
if_then:
  %".111" = getelementptr inbounds [36 x i8], [36 x i8]* @".str.4", i32 0, i32 0
  %".112" = call i32 (i8*, ...) @"printf"(i8* %".111")
  br label %"if_merge"
if_else:
  %".113" = getelementptr inbounds [39 x i8], [39 x i8]* @".str.5", i32 0, i32 0
  %".114" = call i32 (i8*, ...) @"printf"(i8* %".113")
  br label %"if_merge"
if_merge:
  ret void
}

declare i32 @"printf"(i8* %".1", ...)

@".str" = private constant [20 x i8] c"While loop sum: %d\0a\00", align 1
@".str.1" = private constant [23 x i8] c"Do-while loop sum: %d\0a\00", align 1
@".str.2" = private constant [18 x i8] c"For loop sum: %d\0a\00", align 1
@".str.3" = private constant [21 x i8] c"Nested loop sum: %d\0a\00", align 1
@".str.4" = private constant [36 x i8] c"All loop calculations are correct!\0a\00", align 1
@".str.5" = private constant [39 x i8] c"Some loop calculations are incorrect!\0a\00", align 1
define i32 @"main"()
{
entry:
  call void @"test_all_loops"()
  ret i32 0
}

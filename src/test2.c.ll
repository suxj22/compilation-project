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
  br label %"while_cond"
while_cond:
  %".4" = load i32, i32* %"i"
  %".5" = icmp slt i32 %".4", 5
  %".6" = zext i1 %".5" to i32
  %".7" = icmp ne i32 %".6", 0
  br i1 %".7", label %"while_body", label %"while_end"
while_body:
  %".9" = load i32, i32* %"i"
  %".10" = add i32 %".9", 1
  store i32 %".10", i32* %"i"
  br label %"while_cond"
while_end:
  %"j" = alloca i32
  store i32 0, i32* %"j"
  br label %"while_cond.1"
while_cond.1:
  %".15" = load i32, i32* %"j"
  %".16" = icmp slt i32 %".15", 10
  %".17" = zext i1 %".16" to i32
  %".18" = icmp ne i32 %".17", 0
  br i1 %".18", label %"while_body.1", label %"while_end.1"
while_body.1:
  %".20" = load i32, i32* %"j"
  %".21" = add i32 %".20", 2
  store i32 %".21", i32* %"j"
  br label %"while_cond.1"
while_end.1:
  br label %"for_init"
for_init:
  %"k" = alloca i32
  store i32 0, i32* %"k"
  br label %"for_cond"
for_cond:
  %".27" = load i32, i32* %"k"
  %".28" = icmp slt i32 %".27", 5
  %".29" = zext i1 %".28" to i32
  %".30" = icmp ne i32 %".29", 0
  br i1 %".30", label %"for_body", label %"for_end"
for_body:
  %"sum" = alloca i32
  %".32" = load i32, i32* %"k"
  %".33" = load i32, i32* %"j"
  %".34" = call i32 @"compute_sum"(i32 %".32", i32 %".33")
  store i32 %".34", i32* %"sum"
  br label %"for_inc"
for_inc:
  %".37" = load i32, i32* %"k"
  %".38" = add i32 %".37", 1
  store i32 %".38", i32* %"k"
  br label %"for_cond"
for_end:
  br label %"for_init.1"
for_init.1:
  %"m" = alloca i32
  store i32 0, i32* %"m"
  br label %"for_cond.1"
for_cond.1:
  %".44" = load i32, i32* %"m"
  %".45" = icmp slt i32 %".44", 3
  %".46" = zext i1 %".45" to i32
  %".47" = icmp ne i32 %".46", 0
  br i1 %".47", label %"for_body.1", label %"for_end.1"
for_body.1:
  br label %"while_cond.2"
for_inc.1:
  %".60" = load i32, i32* %"m"
  %".61" = add i32 %".60", 1
  store i32 %".61", i32* %"m"
  br label %"for_cond.1"
for_end.1:
  ret void
while_cond.2:
  %".50" = load i32, i32* %"i"
  %".51" = icmp slt i32 %".50", 10
  %".52" = zext i1 %".51" to i32
  %".53" = icmp ne i32 %".52", 0
  br i1 %".53", label %"while_body.2", label %"while_end.2"
while_body.2:
  %".55" = load i32, i32* %"i"
  %".56" = add i32 %".55", 1
  store i32 %".56", i32* %"i"
  br label %"while_cond.2"
while_end.2:
  br label %"for_inc.1"
}

define i32 @"main"()
{
entry:
  call void @"test_all_loops"()
  ret i32 0
}

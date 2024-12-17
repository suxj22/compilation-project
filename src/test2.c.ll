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

define void @"test_while_loop"()
{
entry:
  %".2" = getelementptr inbounds [25 x i8], [25 x i8]* @".str", i32 0, i32 0
  %".3" = call i32 (i8*, ...) @"printf"(i8* %".2")
  %"expected_i" = alloca i32
  store i32 5, i32* %"expected_i"
  %"i" = alloca i32
  store i32 0, i32* %"i"
  br label %"while_cond"
while_cond:
  %".7" = load i32, i32* %"i"
  %".8" = icmp slt i32 %".7", 5
  %".9" = zext i1 %".8" to i32
  %".10" = icmp ne i32 %".9", 0
  br i1 %".10", label %"while_body", label %"while_end"
while_body:
  %".12" = load i32, i32* %"i"
  %".13" = add i32 %".12", 1
  store i32 %".13", i32* %"i"
  br label %"while_cond"
while_end:
  %".16" = getelementptr inbounds [17 x i8], [17 x i8]* @".str.1", i32 0, i32 0
  %".17" = load i32, i32* %"expected_i"
  %".18" = call i32 (i8*, ...) @"printf"(i8* %".16", i32 %".17")
  %".19" = getelementptr inbounds [15 x i8], [15 x i8]* @".str.2", i32 0, i32 0
  %".20" = load i32, i32* %"i"
  %".21" = call i32 (i8*, ...) @"printf"(i8* %".19", i32 %".20")
  %".22" = load i32, i32* %"i"
  %".23" = load i32, i32* %"expected_i"
  %".24" = icmp eq i32 %".22", %".23"
  %".25" = zext i1 %".24" to i32
  %".26" = icmp ne i32 %".25", 0
  br i1 %".26", label %"if_then", label %"if_else"
if_then:
  %".28" = getelementptr inbounds [17 x i8], [17 x i8]* @".str.3", i32 0, i32 0
  %".29" = call i32 (i8*, ...) @"printf"(i8* %".28")
  br label %"if_merge"
if_else:
  %".30" = getelementptr inbounds [17 x i8], [17 x i8]* @".str.4", i32 0, i32 0
  %".31" = call i32 (i8*, ...) @"printf"(i8* %".30")
  br label %"if_merge"
if_merge:
  ret void
}

declare i32 @"printf"(i8* %".1", ...)

@".str" = private constant [25 x i8] c"=== Test while loop ===\0a\00", align 1
@".str.1" = private constant [17 x i8] c"Expected i = %d\0a\00", align 1
@".str.2" = private constant [15 x i8] c"Actual i = %d\0a\00", align 1
@".str.3" = private constant [17 x i8] c"Result: Passed\0a\0a\00", align 1
@".str.4" = private constant [17 x i8] c"Result: Failed\0a\0a\00", align 1
define void @"test_do_while_loop"()
{
entry:
  %".2" = getelementptr inbounds [28 x i8], [28 x i8]* @".str.5", i32 0, i32 0
  %".3" = call i32 (i8*, ...) @"printf"(i8* %".2")
  %"expected_j" = alloca i32
  store i32 10, i32* %"expected_j"
  %"j" = alloca i32
  store i32 0, i32* %"j"
  br label %"while_cond"
while_cond:
  %".7" = load i32, i32* %"j"
  %".8" = icmp slt i32 %".7", 10
  %".9" = zext i1 %".8" to i32
  %".10" = icmp ne i32 %".9", 0
  br i1 %".10", label %"while_body", label %"while_end"
while_body:
  %".12" = load i32, i32* %"j"
  %".13" = add i32 %".12", 2
  store i32 %".13", i32* %"j"
  br label %"while_cond"
while_end:
  %".16" = getelementptr inbounds [17 x i8], [17 x i8]* @".str.6", i32 0, i32 0
  %".17" = load i32, i32* %"expected_j"
  %".18" = call i32 (i8*, ...) @"printf"(i8* %".16", i32 %".17")
  %".19" = getelementptr inbounds [15 x i8], [15 x i8]* @".str.7", i32 0, i32 0
  %".20" = load i32, i32* %"j"
  %".21" = call i32 (i8*, ...) @"printf"(i8* %".19", i32 %".20")
  %".22" = load i32, i32* %"j"
  %".23" = load i32, i32* %"expected_j"
  %".24" = icmp eq i32 %".22", %".23"
  %".25" = zext i1 %".24" to i32
  %".26" = icmp ne i32 %".25", 0
  br i1 %".26", label %"if_then", label %"if_else"
if_then:
  %".28" = getelementptr inbounds [17 x i8], [17 x i8]* @".str.8", i32 0, i32 0
  %".29" = call i32 (i8*, ...) @"printf"(i8* %".28")
  br label %"if_merge"
if_else:
  %".30" = getelementptr inbounds [17 x i8], [17 x i8]* @".str.9", i32 0, i32 0
  %".31" = call i32 (i8*, ...) @"printf"(i8* %".30")
  br label %"if_merge"
if_merge:
  ret void
}

@".str.5" = private constant [28 x i8] c"=== Test do-while loop ===\0a\00", align 1
@".str.6" = private constant [17 x i8] c"Expected j = %d\0a\00", align 1
@".str.7" = private constant [15 x i8] c"Actual j = %d\0a\00", align 1
@".str.8" = private constant [17 x i8] c"Result: Passed\0a\0a\00", align 1
@".str.9" = private constant [17 x i8] c"Result: Failed\0a\0a\00", align 1
define void @"test_for_loop"()
{
entry:
  %".2" = getelementptr inbounds [23 x i8], [23 x i8]* @".str.10", i32 0, i32 0
  %".3" = call i32 (i8*, ...) @"printf"(i8* %".2")
  %"expected_iterations" = alloca i32
  store i32 5, i32* %"expected_iterations"
  %"actual_iterations" = alloca i32
  store i32 0, i32* %"actual_iterations"
  %"j" = alloca i32
  store i32 10, i32* %"j"
  br label %"for_init"
for_init:
  %"k" = alloca i32
  store i32 0, i32* %"k"
  br label %"for_cond"
for_cond:
  %".10" = load i32, i32* %"k"
  %".11" = icmp slt i32 %".10", 5
  %".12" = zext i1 %".11" to i32
  %".13" = icmp ne i32 %".12", 0
  br i1 %".13", label %"for_body", label %"for_end"
for_body:
  %"sum" = alloca i32
  %".15" = load i32, i32* %"k"
  %".16" = load i32, i32* %"j"
  %".17" = call i32 @"compute_sum"(i32 %".15", i32 %".16")
  store i32 %".17", i32* %"sum"
  %".19" = getelementptr inbounds [26 x i8], [26 x i8]* @".str.11", i32 0, i32 0
  %".20" = load i32, i32* %"k"
  %".21" = load i32, i32* %"j"
  %".22" = load i32, i32* %"sum"
  %".23" = call i32 (i8*, ...) @"printf"(i8* %".19", i32 %".22")
  %".24" = load i32, i32* %"actual_iterations"
  %".25" = add i32 %".24", 1
  store i32 %".25", i32* %"actual_iterations"
  br label %"for_inc"
for_inc:
  %".28" = load i32, i32* %"k"
  %".29" = add i32 %".28", 1
  store i32 %".29", i32* %"k"
  br label %"for_cond"
for_end:
  %".32" = getelementptr inbounds [26 x i8], [26 x i8]* @".str.12", i32 0, i32 0
  %".33" = load i32, i32* %"expected_iterations"
  %".34" = call i32 (i8*, ...) @"printf"(i8* %".32", i32 %".33")
  %".35" = getelementptr inbounds [24 x i8], [24 x i8]* @".str.13", i32 0, i32 0
  %".36" = load i32, i32* %"actual_iterations"
  %".37" = call i32 (i8*, ...) @"printf"(i8* %".35", i32 %".36")
  %".38" = load i32, i32* %"actual_iterations"
  %".39" = load i32, i32* %"expected_iterations"
  %".40" = icmp eq i32 %".38", %".39"
  %".41" = zext i1 %".40" to i32
  %".42" = icmp ne i32 %".41", 0
  br i1 %".42", label %"if_then", label %"if_else"
if_then:
  %".44" = getelementptr inbounds [17 x i8], [17 x i8]* @".str.14", i32 0, i32 0
  %".45" = call i32 (i8*, ...) @"printf"(i8* %".44")
  br label %"if_merge"
if_else:
  %".46" = getelementptr inbounds [17 x i8], [17 x i8]* @".str.15", i32 0, i32 0
  %".47" = call i32 (i8*, ...) @"printf"(i8* %".46")
  br label %"if_merge"
if_merge:
  ret void
}

@".str.10" = private constant [23 x i8] c"=== Test for loop ===\0a\00", align 1
@".str.11" = private constant [26 x i8] c"k = %d, j = %d, sum = %d\0a\00", align 1
@".str.12" = private constant [26 x i8] c"Expected iterations = %d\0a\00", align 1
@".str.13" = private constant [24 x i8] c"Actual iterations = %d\0a\00", align 1
@".str.14" = private constant [17 x i8] c"Result: Passed\0a\0a\00", align 1
@".str.15" = private constant [17 x i8] c"Result: Failed\0a\0a\00", align 1
define void @"test_nested_loops"()
{
entry:
  %".2" = getelementptr inbounds [27 x i8], [27 x i8]* @".str.16", i32 0, i32 0
  %".3" = call i32 (i8*, ...) @"printf"(i8* %".2")
  %"expected_i" = alloca i32
  store i32 10, i32* %"expected_i"
  %"i" = alloca i32
  store i32 5, i32* %"i"
  br label %"for_init"
for_init:
  %"m" = alloca i32
  store i32 0, i32* %"m"
  br label %"for_cond"
for_cond:
  %".9" = load i32, i32* %"m"
  %".10" = icmp slt i32 %".9", 3
  %".11" = zext i1 %".10" to i32
  %".12" = icmp ne i32 %".11", 0
  br i1 %".12", label %"for_body", label %"for_end"
for_body:
  br label %"while_cond"
for_inc:
  %".25" = load i32, i32* %"m"
  %".26" = add i32 %".25", 1
  store i32 %".26", i32* %"m"
  br label %"for_cond"
for_end:
  %".29" = getelementptr inbounds [17 x i8], [17 x i8]* @".str.17", i32 0, i32 0
  %".30" = load i32, i32* %"expected_i"
  %".31" = call i32 (i8*, ...) @"printf"(i8* %".29", i32 %".30")
  %".32" = getelementptr inbounds [15 x i8], [15 x i8]* @".str.18", i32 0, i32 0
  %".33" = load i32, i32* %"i"
  %".34" = call i32 (i8*, ...) @"printf"(i8* %".32", i32 %".33")
  %".35" = load i32, i32* %"i"
  %".36" = load i32, i32* %"expected_i"
  %".37" = icmp eq i32 %".35", %".36"
  %".38" = zext i1 %".37" to i32
  %".39" = icmp ne i32 %".38", 0
  br i1 %".39", label %"if_then", label %"if_else"
while_cond:
  %".15" = load i32, i32* %"i"
  %".16" = icmp slt i32 %".15", 10
  %".17" = zext i1 %".16" to i32
  %".18" = icmp ne i32 %".17", 0
  br i1 %".18", label %"while_body", label %"while_end"
while_body:
  %".20" = load i32, i32* %"i"
  %".21" = add i32 %".20", 1
  store i32 %".21", i32* %"i"
  br label %"while_cond"
while_end:
  br label %"for_inc"
if_then:
  %".41" = getelementptr inbounds [17 x i8], [17 x i8]* @".str.19", i32 0, i32 0
  %".42" = call i32 (i8*, ...) @"printf"(i8* %".41")
  br label %"if_merge"
if_else:
  %".43" = getelementptr inbounds [17 x i8], [17 x i8]* @".str.20", i32 0, i32 0
  %".44" = call i32 (i8*, ...) @"printf"(i8* %".43")
  br label %"if_merge"
if_merge:
  ret void
}

@".str.16" = private constant [27 x i8] c"=== Test nested loops ===\0a\00", align 1
@".str.17" = private constant [17 x i8] c"Expected i = %d\0a\00", align 1
@".str.18" = private constant [15 x i8] c"Actual i = %d\0a\00", align 1
@".str.19" = private constant [17 x i8] c"Result: Passed\0a\0a\00", align 1
@".str.20" = private constant [17 x i8] c"Result: Failed\0a\0a\00", align 1
define i32 @"main"()
{
entry:
  %".2" = getelementptr inbounds [28 x i8], [28 x i8]* @".str.21", i32 0, i32 0
  %".3" = call i32 (i8*, ...) @"printf"(i8* %".2")
  %"res" = alloca i32
  %".4" = call i32 @"compute_sum"(i32 1, i32 2)
  store i32 %".4", i32* %"res"
  %"expected_res" = alloca i32
  store i32 3, i32* %"expected_res"
  %".7" = getelementptr inbounds [19 x i8], [19 x i8]* @".str.22", i32 0, i32 0
  %".8" = load i32, i32* %"expected_res"
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".7", i32 %".8")
  %".10" = getelementptr inbounds [17 x i8], [17 x i8]* @".str.23", i32 0, i32 0
  %".11" = load i32, i32* %"res"
  %".12" = call i32 (i8*, ...) @"printf"(i8* %".10", i32 %".11")
  %".13" = load i32, i32* %"res"
  %".14" = load i32, i32* %"expected_res"
  %".15" = icmp eq i32 %".13", %".14"
  %".16" = zext i1 %".15" to i32
  %".17" = icmp ne i32 %".16", 0
  br i1 %".17", label %"if_then", label %"if_else"
if_then:
  %".19" = getelementptr inbounds [17 x i8], [17 x i8]* @".str.24", i32 0, i32 0
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19")
  br label %"if_merge"
if_else:
  %".21" = getelementptr inbounds [17 x i8], [17 x i8]* @".str.25", i32 0, i32 0
  %".22" = call i32 (i8*, ...) @"printf"(i8* %".21")
  br label %"if_merge"
if_merge:
  call void @"test_while_loop"()
  call void @"test_do_while_loop"()
  call void @"test_for_loop"()
  call void @"test_nested_loops"()
  ret i32 0
}

@".str.21" = private constant [28 x i8] c"=== Test main function ===\0a\00", align 1
@".str.22" = private constant [19 x i8] c"Expected res = %d\0a\00", align 1
@".str.23" = private constant [17 x i8] c"Actual res = %d\0a\00", align 1
@".str.24" = private constant [17 x i8] c"Result: Passed\0a\0a\00", align 1
@".str.25" = private constant [17 x i8] c"Result: Failed\0a\0a\00", align 1
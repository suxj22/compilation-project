; ModuleID = "my_module"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"

define i32 @"main"()
{
entry:
  %"nums" = alloca [8 x i32]
  %".2" = getelementptr inbounds [8 x i32], [8 x i32]* %"nums", i32 0, i32 0
  store i32 5, i32* %".2"
  %".4" = getelementptr inbounds [8 x i32], [8 x i32]* %"nums", i32 0, i32 1
  store i32 8, i32* %".4"
  %".6" = getelementptr inbounds [8 x i32], [8 x i32]* %"nums", i32 0, i32 2
  store i32 4, i32* %".6"
  %".8" = getelementptr inbounds [8 x i32], [8 x i32]* %"nums", i32 0, i32 3
  store i32 9, i32* %".8"
  %".10" = getelementptr inbounds [8 x i32], [8 x i32]* %"nums", i32 0, i32 4
  store i32 7, i32* %".10"
  %".12" = getelementptr inbounds [8 x i32], [8 x i32]* %"nums", i32 0, i32 5
  store i32 3, i32* %".12"
  %".14" = getelementptr inbounds [8 x i32], [8 x i32]* %"nums", i32 0, i32 6
  store i32 1, i32* %".14"
  %".16" = getelementptr inbounds [8 x i32], [8 x i32]* %"nums", i32 0, i32 7
  store i32 10, i32* %".16"
  %"n" = alloca i32
  store i32 8, i32* %"n"
  %"sorted" = alloca i32
  store i32 0, i32* %"sorted"
  br label %"for_init"
for_init:
  %"i" = alloca i32
  store i32 1, i32* %"i"
  br label %"for_cond"
for_cond:
  %".23" = load i32, i32* %"i"
  %".24" = load i32, i32* %"n"
  %".25" = icmp slt i32 %".23", %".24"
  %".26" = zext i1 %".25" to i32
  %".27" = icmp ne i32 %".26", 0
  br i1 %".27", label %"for_body", label %"for_end"
for_body:
  %".29" = load i32, i32* %"i"
  %".30" = getelementptr inbounds [8 x i32], [8 x i32]* %"nums", i32 0, i32 %".29"
  %".31" = load i32, i32* %".30"
  %"temp" = alloca i32
  store i32 %".31", i32* %"temp"
  %".33" = load i32, i32* %"i"
  %".34" = sub i32 %".33", 1
  %"j" = alloca i32
  store i32 %".34", i32* %"j"
  br label %"while_cond"
for_inc:
  %".77" = load i32, i32* %"i"
  %".78" = add i32 %".77", 1
  store i32 %".78", i32* %"i"
  br label %"for_cond"
for_end:
  br label %"for_init.1"
while_cond:
  %".37" = load i32, i32* %"j"
  %".38" = icmp sge i32 %".37", 0
  %".39" = zext i1 %".38" to i32
  %".40" = load i32, i32* %"j"
  %".41" = getelementptr inbounds [8 x i32], [8 x i32]* %"nums", i32 0, i32 %".40"
  %".42" = load i32, i32* %".41"
  %".43" = load i32, i32* %"temp"
  %".44" = icmp sgt i32 %".42", %".43"
  %".45" = zext i1 %".44" to i32
  %".46" = and i32 %".39", %".45"
  %".47" = icmp ne i32 %".46", 0
  br i1 %".47", label %"while_body", label %"while_end"
while_body:
  %".49" = load i32, i32* %"j"
  %".50" = add i32 %".49", 1
  %".51" = getelementptr inbounds [8 x i32], [8 x i32]* %"nums", i32 0, i32 %".50"
  %".52" = load i32, i32* %".51"
  %"temp2" = alloca i32
  store i32 %".52", i32* %"temp2"
  %".54" = load i32, i32* %"j"
  %".55" = getelementptr inbounds [8 x i32], [8 x i32]* %"nums", i32 0, i32 %".54"
  %".56" = load i32, i32* %".55"
  %"temp3" = alloca i32
  store i32 %".56", i32* %"temp3"
  %".58" = load i32, i32* %"j"
  %".59" = add i32 %".58", 1
  %".60" = getelementptr inbounds [8 x i32], [8 x i32]* %"nums", i32 0, i32 %".59"
  %".61" = load i32, i32* %"temp3"
  store i32 %".61", i32* %".60"
  %".63" = load i32, i32* %"j"
  %".64" = getelementptr inbounds [8 x i32], [8 x i32]* %"nums", i32 0, i32 %".63"
  %".65" = load i32, i32* %"temp2"
  store i32 %".65", i32* %".64"
  %".67" = load i32, i32* %"j"
  %".68" = sub i32 %".67", 1
  store i32 %".68", i32* %"j"
  br label %"while_cond"
while_end:
  %".71" = load i32, i32* %"j"
  %".72" = add i32 %".71", 1
  %".73" = getelementptr inbounds [8 x i32], [8 x i32]* %"nums", i32 0, i32 %".72"
  %".74" = load i32, i32* %"temp"
  store i32 %".74", i32* %".73"
  br label %"for_inc"
for_init.1:
  %"i.1" = alloca i32
  store i32 0, i32* %"i.1"
  br label %"for_cond.1"
for_cond.1:
  %".84" = load i32, i32* %"i.1"
  %".85" = load i32, i32* %"n"
  %".86" = icmp slt i32 %".84", %".85"
  %".87" = zext i1 %".86" to i32
  %".88" = icmp ne i32 %".87", 0
  br i1 %".88", label %"for_body.1", label %"for_end.1"
for_body.1:
  %".90" = getelementptr inbounds [3 x i8], [3 x i8]* @".str", i32 0, i32 0
  %".91" = load i32, i32* %"i.1"
  %".92" = getelementptr inbounds [8 x i32], [8 x i32]* %"nums", i32 0, i32 %".91"
  %".93" = load i32, i32* %".92"
  %".94" = call i32 (i8*, ...) @"printf"(i8* %".90", i32 %".93")
  br label %"for_inc.1"
for_inc.1:
  %".96" = load i32, i32* %"i.1"
  %".97" = add i32 %".96", 1
  store i32 %".97", i32* %"i.1"
  br label %"for_cond.1"
for_end.1:
  ret i32 0
}

declare i32 @"printf"(i8* %".1", ...)

@".str" = private constant [3 x i8] c"%d\00", align 1
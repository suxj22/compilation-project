; ModuleID = "my_module"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"

define i32 @"main"()
{
entry:
  %"x" = alloca i32
  store i32 10, i32* %"x"
  %".3" = getelementptr inbounds [6 x i8], [6 x i8]* @".str", i32 0, i32 0
  %".4" = load i32, i32* %"x"
  %".5" = call i32 (i8*, ...) @"printf"(i8* %".3", i32 %".4")
  %"a" = alloca [5 x i32]
  %".6" = getelementptr inbounds [5 x i32], [5 x i32]* %"a", i32 0, i32 0
  store i32 10, i32* %".6"
  %".8" = getelementptr inbounds [5 x i32], [5 x i32]* %"a", i32 0, i32 0
  %".9" = load i32, i32* %".8"
  %"b" = alloca i32
  store i32 %".9", i32* %"b"
  %".11" = getelementptr inbounds [9 x i8], [9 x i8]* @".str.1", i32 0, i32 0
  %".12" = getelementptr inbounds [5 x i32], [5 x i32]* %"a", i32 0, i32 0
  %".13" = load i32, i32* %".12"
  %".14" = call i32 (i8*, ...) @"printf"(i8* %".11", i32 %".13")
  %".15" = getelementptr inbounds [6 x i8], [6 x i8]* @".str.2", i32 0, i32 0
  %".16" = load i32, i32* %"b"
  %".17" = call i32 (i8*, ...) @"printf"(i8* %".15", i32 %".16")
  %"c" = alloca [3 x i32]
  %".18" = getelementptr inbounds [3 x i32], [3 x i32]* %"c", i32 0, i32 0
  store i32 1, i32* %".18"
  %".20" = getelementptr inbounds [3 x i32], [3 x i32]* %"c", i32 0, i32 1
  store i32 2, i32* %".20"
  %".22" = getelementptr inbounds [3 x i32], [3 x i32]* %"c", i32 0, i32 2
  store i32 3, i32* %".22"
  %".24" = getelementptr inbounds [9 x i8], [9 x i8]* @".str.3", i32 0, i32 0
  %".25" = getelementptr inbounds [3 x i32], [3 x i32]* %"c", i32 0, i32 0
  %".26" = load i32, i32* %".25"
  %".27" = call i32 (i8*, ...) @"printf"(i8* %".24", i32 %".26")
  %".28" = getelementptr inbounds [9 x i8], [9 x i8]* @".str.4", i32 0, i32 0
  %".29" = getelementptr inbounds [3 x i32], [3 x i32]* %"c", i32 0, i32 1
  %".30" = load i32, i32* %".29"
  %".31" = call i32 (i8*, ...) @"printf"(i8* %".28", i32 %".30")
  %".32" = getelementptr inbounds [9 x i8], [9 x i8]* @".str.5", i32 0, i32 0
  %".33" = getelementptr inbounds [3 x i32], [3 x i32]* %"c", i32 0, i32 2
  %".34" = load i32, i32* %".33"
  %".35" = call i32 (i8*, ...) @"printf"(i8* %".32", i32 %".34")
  %".36" = zext i8 97 to i32
  %".37" = zext i8 98 to i32
  %".38" = zext i8 99 to i32
  %"d" = alloca [3 x i8]
  %".39" = getelementptr inbounds [3 x i8], [3 x i8]* %"d", i32 0, i32 0
  %".40" = trunc i32 %".36" to i8
  store i8 %".40", i8* %".39"
  %".42" = getelementptr inbounds [3 x i8], [3 x i8]* %"d", i32 0, i32 1
  %".43" = trunc i32 %".37" to i8
  store i8 %".43", i8* %".42"
  %".45" = getelementptr inbounds [3 x i8], [3 x i8]* %"d", i32 0, i32 2
  %".46" = trunc i32 %".38" to i8
  store i8 %".46", i8* %".45"
  %".48" = getelementptr inbounds [9 x i8], [9 x i8]* @".str.6", i32 0, i32 0
  %".49" = getelementptr inbounds [3 x i8], [3 x i8]* %"d", i32 0, i32 0
  %".50" = load i8, i8* %".49"
  %".51" = zext i8 %".50" to i32
  %".52" = call i32 (i8*, ...) @"printf"(i8* %".48", i32 %".51")
  %".53" = getelementptr inbounds [9 x i8], [9 x i8]* @".str.7", i32 0, i32 0
  %".54" = getelementptr inbounds [3 x i8], [3 x i8]* %"d", i32 0, i32 1
  %".55" = load i8, i8* %".54"
  %".56" = zext i8 %".55" to i32
  %".57" = call i32 (i8*, ...) @"printf"(i8* %".53", i32 %".56")
  %".58" = getelementptr inbounds [9 x i8], [9 x i8]* @".str.8", i32 0, i32 0
  %".59" = getelementptr inbounds [3 x i8], [3 x i8]* %"d", i32 0, i32 2
  %".60" = load i8, i8* %".59"
  %".61" = zext i8 %".60" to i32
  %".62" = call i32 (i8*, ...) @"printf"(i8* %".58", i32 %".61")
  ret i32 0
}

declare i32 @"printf"(i8* %".1", ...)

@".str" = private constant [6 x i8] c"x:%d\0a\00", align 1
@".str.1" = private constant [9 x i8] c"a[0]:%d\0a\00", align 1
@".str.2" = private constant [6 x i8] c"b:%d\0a\00", align 1
@".str.3" = private constant [9 x i8] c"c[0]:%d\0a\00", align 1
@".str.4" = private constant [9 x i8] c"c[1]:%d\0a\00", align 1
@".str.5" = private constant [9 x i8] c"c[2]:%d\0a\00", align 1
@".str.6" = private constant [9 x i8] c"d[0]:%c\0a\00", align 1
@".str.7" = private constant [9 x i8] c"d[1]:%c\0a\00", align 1
@".str.8" = private constant [9 x i8] c"d[2]:%c\0a\00", align 1
; ModuleID = "my_module"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"

define i32 @"main"()
{
entry:
  %".2" = zext i8 49 to i32
  %".3" = zext i8 43 to i32
  %".4" = zext i8 40 to i32
  %".5" = zext i8 45 to i32
  %".6" = zext i8 53 to i32
  %".7" = zext i8 45 to i32
  %".8" = zext i8 50 to i32
  %".9" = zext i8 50 to i32
  %".10" = zext i8 41 to i32
  %".11" = zext i8 42 to i32
  %".12" = zext i8 52 to i32
  %".13" = zext i8 47 to i32
  %".14" = zext i8 40 to i32
  %".15" = zext i8 49 to i32
  %".16" = zext i8 43 to i32
  %".17" = zext i8 50 to i32
  %".18" = zext i8 41 to i32
  %".19" = zext i8 35 to i32
  %"expr" = alloca [100 x i8]
  %".20" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 0
  %".21" = trunc i32 %".2" to i8
  store i8 %".21", i8* %".20"
  %".23" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 1
  %".24" = trunc i32 %".3" to i8
  store i8 %".24", i8* %".23"
  %".26" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 2
  %".27" = trunc i32 %".4" to i8
  store i8 %".27", i8* %".26"
  %".29" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 3
  %".30" = trunc i32 %".5" to i8
  store i8 %".30", i8* %".29"
  %".32" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 4
  %".33" = trunc i32 %".6" to i8
  store i8 %".33", i8* %".32"
  %".35" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 5
  %".36" = trunc i32 %".7" to i8
  store i8 %".36", i8* %".35"
  %".38" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 6
  %".39" = trunc i32 %".8" to i8
  store i8 %".39", i8* %".38"
  %".41" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 7
  %".42" = trunc i32 %".9" to i8
  store i8 %".42", i8* %".41"
  %".44" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 8
  %".45" = trunc i32 %".10" to i8
  store i8 %".45", i8* %".44"
  %".47" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 9
  %".48" = trunc i32 %".11" to i8
  store i8 %".48", i8* %".47"
  %".50" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 10
  %".51" = trunc i32 %".12" to i8
  store i8 %".51", i8* %".50"
  %".53" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 11
  %".54" = trunc i32 %".13" to i8
  store i8 %".54", i8* %".53"
  %".56" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 12
  %".57" = trunc i32 %".14" to i8
  store i8 %".57", i8* %".56"
  %".59" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 13
  %".60" = trunc i32 %".15" to i8
  store i8 %".60", i8* %".59"
  %".62" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 14
  %".63" = trunc i32 %".16" to i8
  store i8 %".63", i8* %".62"
  %".65" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 15
  %".66" = trunc i32 %".17" to i8
  store i8 %".66", i8* %".65"
  %".68" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 16
  %".69" = trunc i32 %".18" to i8
  store i8 %".69", i8* %".68"
  %".71" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 17
  %".72" = trunc i32 %".19" to i8
  store i8 %".72", i8* %".71"
  %".74" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 18
  store i8 0, i8* %".74"
  %".76" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 19
  store i8 0, i8* %".76"
  %".78" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 20
  store i8 0, i8* %".78"
  %".80" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 21
  store i8 0, i8* %".80"
  %".82" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 22
  store i8 0, i8* %".82"
  %".84" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 23
  store i8 0, i8* %".84"
  %".86" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 24
  store i8 0, i8* %".86"
  %".88" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 25
  store i8 0, i8* %".88"
  %".90" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 26
  store i8 0, i8* %".90"
  %".92" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 27
  store i8 0, i8* %".92"
  %".94" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 28
  store i8 0, i8* %".94"
  %".96" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 29
  store i8 0, i8* %".96"
  %".98" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 30
  store i8 0, i8* %".98"
  %".100" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 31
  store i8 0, i8* %".100"
  %".102" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 32
  store i8 0, i8* %".102"
  %".104" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 33
  store i8 0, i8* %".104"
  %".106" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 34
  store i8 0, i8* %".106"
  %".108" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 35
  store i8 0, i8* %".108"
  %".110" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 36
  store i8 0, i8* %".110"
  %".112" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 37
  store i8 0, i8* %".112"
  %".114" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 38
  store i8 0, i8* %".114"
  %".116" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 39
  store i8 0, i8* %".116"
  %".118" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 40
  store i8 0, i8* %".118"
  %".120" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 41
  store i8 0, i8* %".120"
  %".122" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 42
  store i8 0, i8* %".122"
  %".124" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 43
  store i8 0, i8* %".124"
  %".126" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 44
  store i8 0, i8* %".126"
  %".128" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 45
  store i8 0, i8* %".128"
  %".130" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 46
  store i8 0, i8* %".130"
  %".132" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 47
  store i8 0, i8* %".132"
  %".134" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 48
  store i8 0, i8* %".134"
  %".136" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 49
  store i8 0, i8* %".136"
  %".138" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 50
  store i8 0, i8* %".138"
  %".140" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 51
  store i8 0, i8* %".140"
  %".142" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 52
  store i8 0, i8* %".142"
  %".144" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 53
  store i8 0, i8* %".144"
  %".146" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 54
  store i8 0, i8* %".146"
  %".148" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 55
  store i8 0, i8* %".148"
  %".150" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 56
  store i8 0, i8* %".150"
  %".152" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 57
  store i8 0, i8* %".152"
  %".154" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 58
  store i8 0, i8* %".154"
  %".156" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 59
  store i8 0, i8* %".156"
  %".158" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 60
  store i8 0, i8* %".158"
  %".160" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 61
  store i8 0, i8* %".160"
  %".162" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 62
  store i8 0, i8* %".162"
  %".164" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 63
  store i8 0, i8* %".164"
  %".166" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 64
  store i8 0, i8* %".166"
  %".168" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 65
  store i8 0, i8* %".168"
  %".170" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 66
  store i8 0, i8* %".170"
  %".172" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 67
  store i8 0, i8* %".172"
  %".174" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 68
  store i8 0, i8* %".174"
  %".176" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 69
  store i8 0, i8* %".176"
  %".178" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 70
  store i8 0, i8* %".178"
  %".180" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 71
  store i8 0, i8* %".180"
  %".182" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 72
  store i8 0, i8* %".182"
  %".184" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 73
  store i8 0, i8* %".184"
  %".186" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 74
  store i8 0, i8* %".186"
  %".188" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 75
  store i8 0, i8* %".188"
  %".190" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 76
  store i8 0, i8* %".190"
  %".192" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 77
  store i8 0, i8* %".192"
  %".194" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 78
  store i8 0, i8* %".194"
  %".196" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 79
  store i8 0, i8* %".196"
  %".198" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 80
  store i8 0, i8* %".198"
  %".200" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 81
  store i8 0, i8* %".200"
  %".202" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 82
  store i8 0, i8* %".202"
  %".204" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 83
  store i8 0, i8* %".204"
  %".206" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 84
  store i8 0, i8* %".206"
  %".208" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 85
  store i8 0, i8* %".208"
  %".210" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 86
  store i8 0, i8* %".210"
  %".212" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 87
  store i8 0, i8* %".212"
  %".214" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 88
  store i8 0, i8* %".214"
  %".216" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 89
  store i8 0, i8* %".216"
  %".218" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 90
  store i8 0, i8* %".218"
  %".220" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 91
  store i8 0, i8* %".220"
  %".222" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 92
  store i8 0, i8* %".222"
  %".224" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 93
  store i8 0, i8* %".224"
  %".226" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 94
  store i8 0, i8* %".226"
  %".228" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 95
  store i8 0, i8* %".228"
  %".230" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 96
  store i8 0, i8* %".230"
  %".232" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 97
  store i8 0, i8* %".232"
  %".234" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 98
  store i8 0, i8* %".234"
  %".236" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 99
  store i8 0, i8* %".236"
  %".238" = getelementptr inbounds [57 x i8], [57 x i8]* @".str", i32 0, i32 0
  %".239" = call i32 (i8*, ...) @"printf"(i8* %".238")
  %".240" = getelementptr inbounds [3 x i8], [3 x i8]* @".str.1", i32 0, i32 0
  %".241" = call i32 (i8*, ...) @"scanf"(i8* %".240", [100 x i8]* %"expr")
  %"op_stack" = alloca [100 x i8]
  %"num_stack" = alloca [100 x i32]
  %".242" = sub i32 0, 1
  %"op_top" = alloca i32
  store i32 %".242", i32* %"op_top"
  %".244" = sub i32 0, 1
  %"num_top" = alloca i32
  store i32 %".244", i32* %"num_top"
  %"precedence" = alloca [128 x i8]
  %".246" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 0
  store i8 0, i8* %".246"
  %".248" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 1
  store i8 0, i8* %".248"
  %".250" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 2
  store i8 0, i8* %".250"
  %".252" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 3
  store i8 0, i8* %".252"
  %".254" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 4
  store i8 0, i8* %".254"
  %".256" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 5
  store i8 0, i8* %".256"
  %".258" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 6
  store i8 0, i8* %".258"
  %".260" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 7
  store i8 0, i8* %".260"
  %".262" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 8
  store i8 0, i8* %".262"
  %".264" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 9
  store i8 0, i8* %".264"
  %".266" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 10
  store i8 0, i8* %".266"
  %".268" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 11
  store i8 0, i8* %".268"
  %".270" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 12
  store i8 0, i8* %".270"
  %".272" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 13
  store i8 0, i8* %".272"
  %".274" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 14
  store i8 0, i8* %".274"
  %".276" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 15
  store i8 0, i8* %".276"
  %".278" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 16
  store i8 0, i8* %".278"
  %".280" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 17
  store i8 0, i8* %".280"
  %".282" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 18
  store i8 0, i8* %".282"
  %".284" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 19
  store i8 0, i8* %".284"
  %".286" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 20
  store i8 0, i8* %".286"
  %".288" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 21
  store i8 0, i8* %".288"
  %".290" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 22
  store i8 0, i8* %".290"
  %".292" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 23
  store i8 0, i8* %".292"
  %".294" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 24
  store i8 0, i8* %".294"
  %".296" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 25
  store i8 0, i8* %".296"
  %".298" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 26
  store i8 0, i8* %".298"
  %".300" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 27
  store i8 0, i8* %".300"
  %".302" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 28
  store i8 0, i8* %".302"
  %".304" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 29
  store i8 0, i8* %".304"
  %".306" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 30
  store i8 0, i8* %".306"
  %".308" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 31
  store i8 0, i8* %".308"
  %".310" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 32
  store i8 0, i8* %".310"
  %".312" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 33
  store i8 0, i8* %".312"
  %".314" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 34
  store i8 0, i8* %".314"
  %".316" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 35
  store i8 0, i8* %".316"
  %".318" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 36
  store i8 0, i8* %".318"
  %".320" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 37
  store i8 0, i8* %".320"
  %".322" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 38
  store i8 0, i8* %".322"
  %".324" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 39
  store i8 0, i8* %".324"
  %".326" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 40
  store i8 0, i8* %".326"
  %".328" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 41
  store i8 0, i8* %".328"
  %".330" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 42
  store i8 0, i8* %".330"
  %".332" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 43
  store i8 0, i8* %".332"
  %".334" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 44
  store i8 0, i8* %".334"
  %".336" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 45
  store i8 0, i8* %".336"
  %".338" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 46
  store i8 0, i8* %".338"
  %".340" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 47
  store i8 0, i8* %".340"
  %".342" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 48
  store i8 0, i8* %".342"
  %".344" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 49
  store i8 0, i8* %".344"
  %".346" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 50
  store i8 0, i8* %".346"
  %".348" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 51
  store i8 0, i8* %".348"
  %".350" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 52
  store i8 0, i8* %".350"
  %".352" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 53
  store i8 0, i8* %".352"
  %".354" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 54
  store i8 0, i8* %".354"
  %".356" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 55
  store i8 0, i8* %".356"
  %".358" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 56
  store i8 0, i8* %".358"
  %".360" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 57
  store i8 0, i8* %".360"
  %".362" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 58
  store i8 0, i8* %".362"
  %".364" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 59
  store i8 0, i8* %".364"
  %".366" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 60
  store i8 0, i8* %".366"
  %".368" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 61
  store i8 0, i8* %".368"
  %".370" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 62
  store i8 0, i8* %".370"
  %".372" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 63
  store i8 0, i8* %".372"
  %".374" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 64
  store i8 0, i8* %".374"
  %".376" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 65
  store i8 0, i8* %".376"
  %".378" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 66
  store i8 0, i8* %".378"
  %".380" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 67
  store i8 0, i8* %".380"
  %".382" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 68
  store i8 0, i8* %".382"
  %".384" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 69
  store i8 0, i8* %".384"
  %".386" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 70
  store i8 0, i8* %".386"
  %".388" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 71
  store i8 0, i8* %".388"
  %".390" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 72
  store i8 0, i8* %".390"
  %".392" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 73
  store i8 0, i8* %".392"
  %".394" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 74
  store i8 0, i8* %".394"
  %".396" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 75
  store i8 0, i8* %".396"
  %".398" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 76
  store i8 0, i8* %".398"
  %".400" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 77
  store i8 0, i8* %".400"
  %".402" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 78
  store i8 0, i8* %".402"
  %".404" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 79
  store i8 0, i8* %".404"
  %".406" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 80
  store i8 0, i8* %".406"
  %".408" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 81
  store i8 0, i8* %".408"
  %".410" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 82
  store i8 0, i8* %".410"
  %".412" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 83
  store i8 0, i8* %".412"
  %".414" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 84
  store i8 0, i8* %".414"
  %".416" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 85
  store i8 0, i8* %".416"
  %".418" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 86
  store i8 0, i8* %".418"
  %".420" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 87
  store i8 0, i8* %".420"
  %".422" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 88
  store i8 0, i8* %".422"
  %".424" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 89
  store i8 0, i8* %".424"
  %".426" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 90
  store i8 0, i8* %".426"
  %".428" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 91
  store i8 0, i8* %".428"
  %".430" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 92
  store i8 0, i8* %".430"
  %".432" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 93
  store i8 0, i8* %".432"
  %".434" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 94
  store i8 0, i8* %".434"
  %".436" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 95
  store i8 0, i8* %".436"
  %".438" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 96
  store i8 0, i8* %".438"
  %".440" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 97
  store i8 0, i8* %".440"
  %".442" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 98
  store i8 0, i8* %".442"
  %".444" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 99
  store i8 0, i8* %".444"
  %".446" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 100
  store i8 0, i8* %".446"
  %".448" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 101
  store i8 0, i8* %".448"
  %".450" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 102
  store i8 0, i8* %".450"
  %".452" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 103
  store i8 0, i8* %".452"
  %".454" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 104
  store i8 0, i8* %".454"
  %".456" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 105
  store i8 0, i8* %".456"
  %".458" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 106
  store i8 0, i8* %".458"
  %".460" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 107
  store i8 0, i8* %".460"
  %".462" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 108
  store i8 0, i8* %".462"
  %".464" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 109
  store i8 0, i8* %".464"
  %".466" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 110
  store i8 0, i8* %".466"
  %".468" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 111
  store i8 0, i8* %".468"
  %".470" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 112
  store i8 0, i8* %".470"
  %".472" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 113
  store i8 0, i8* %".472"
  %".474" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 114
  store i8 0, i8* %".474"
  %".476" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 115
  store i8 0, i8* %".476"
  %".478" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 116
  store i8 0, i8* %".478"
  %".480" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 117
  store i8 0, i8* %".480"
  %".482" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 118
  store i8 0, i8* %".482"
  %".484" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 119
  store i8 0, i8* %".484"
  %".486" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 120
  store i8 0, i8* %".486"
  %".488" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 121
  store i8 0, i8* %".488"
  %".490" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 122
  store i8 0, i8* %".490"
  %".492" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 123
  store i8 0, i8* %".492"
  %".494" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 124
  store i8 0, i8* %".494"
  %".496" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 125
  store i8 0, i8* %".496"
  %".498" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 126
  store i8 0, i8* %".498"
  %".500" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 127
  store i8 0, i8* %".500"
  %".502" = zext i8 43 to i32
  %".503" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 %".502"
  %".504" = trunc i32 1 to i8
  store i8 %".504", i8* %".503"
  %".506" = zext i8 %".504" to i32
  %".507" = zext i8 45 to i32
  %".508" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 %".507"
  %".509" = trunc i32 1 to i8
  store i8 %".509", i8* %".508"
  %".511" = zext i8 %".509" to i32
  %".512" = zext i8 42 to i32
  %".513" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 %".512"
  %".514" = trunc i32 2 to i8
  store i8 %".514", i8* %".513"
  %".516" = zext i8 %".514" to i32
  %".517" = zext i8 47 to i32
  %".518" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 %".517"
  %".519" = trunc i32 2 to i8
  store i8 %".519", i8* %".518"
  %".521" = zext i8 %".519" to i32
  %".522" = zext i8 40 to i32
  %".523" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 %".522"
  %".524" = trunc i32 0 to i8
  store i8 %".524", i8* %".523"
  %".526" = zext i8 %".524" to i32
  %"is_negative" = alloca i32
  store i32 0, i32* %"is_negative"
  %"i" = alloca i32
  store i32 0, i32* %"i"
  br label %"while_cond"
while_cond:
  %".530" = load i32, i32* %"i"
  %".531" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 %".530"
  %".532" = load i8, i8* %".531"
  %".533" = icmp ne i8 %".532", 35
  %".534" = zext i1 %".533" to i32
  %".535" = icmp ne i32 %".534", 0
  br i1 %".535", label %"while_body", label %"while_end"
while_body:
  %"c" = alloca i8
  %".537" = load i32, i32* %"i"
  %".538" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 %".537"
  %".539" = load i8, i8* %".538"
  %".540" = zext i8 %".539" to i32
  %".541" = trunc i32 %".540" to i8
  store i8 %".541", i8* %"c"
  %".543" = zext i8 %".541" to i32
  %".544" = load i8, i8* %"c"
  %".545" = icmp eq i8 %".544", 45
  %".546" = zext i1 %".545" to i32
  %".547" = load i32, i32* %"i"
  %".548" = icmp eq i32 %".547", 0
  %".549" = zext i1 %".548" to i32
  %".550" = load i32, i32* %"i"
  %".551" = sub i32 %".550", 1
  %".552" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 %".551"
  %".553" = load i8, i8* %".552"
  %".554" = icmp eq i8 %".553", 40
  %".555" = zext i1 %".554" to i32
  %".556" = or i32 %".549", %".555"
  %".557" = and i32 %".546", %".556"
  %".558" = icmp ne i32 %".557", 0
  br i1 %".558", label %"if_then", label %"if_end"
while_end:
  br label %"while_cond.4"
if_then:
  store i32 1, i32* %"is_negative"
  %".561" = load i32, i32* %"i"
  %".562" = add i32 %".561", 1
  store i32 %".562", i32* %"i"
  br label %"while_cond"
if_end:
  %".565" = load i8, i8* %"c"
  %".566" = icmp sge i8 %".565", 48
  %".567" = zext i1 %".566" to i32
  %".568" = load i8, i8* %"c"
  %".569" = icmp sle i8 %".568", 57
  %".570" = zext i1 %".569" to i32
  %".571" = and i32 %".567", %".570"
  %".572" = icmp ne i32 %".571", 0
  br i1 %".572", label %"if_then.1", label %"if_end.1"
if_then.1:
  %"num" = alloca i32
  store i32 0, i32* %"num"
  br label %"while_cond.1"
if_end.1:
  %".620" = load i8, i8* %"c"
  %".621" = icmp eq i8 %".620", 40
  %".622" = zext i1 %".621" to i32
  %".623" = icmp ne i32 %".622", 0
  br i1 %".623", label %"if_then.3", label %"if_end.3"
while_cond.1:
  %".576" = load i32, i32* %"i"
  %".577" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 %".576"
  %".578" = load i8, i8* %".577"
  %".579" = icmp sge i8 %".578", 48
  %".580" = zext i1 %".579" to i32
  %".581" = load i32, i32* %"i"
  %".582" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 %".581"
  %".583" = load i8, i8* %".582"
  %".584" = icmp sle i8 %".583", 57
  %".585" = zext i1 %".584" to i32
  %".586" = and i32 %".580", %".585"
  %".587" = icmp ne i32 %".586", 0
  br i1 %".587", label %"while_body.1", label %"while_end.1"
while_body.1:
  %".589" = load i32, i32* %"num"
  %".590" = mul i32 %".589", 10
  %".591" = load i32, i32* %"i"
  %".592" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 %".591"
  %".593" = load i8, i8* %".592"
  %".594" = sub i8 %".593", 48
  %".595" = zext i8 %".594" to i32
  %".596" = add i32 %".590", %".595"
  store i32 %".596", i32* %"num"
  %".598" = load i32, i32* %"i"
  %".599" = add i32 %".598", 1
  store i32 %".599", i32* %"i"
  br label %"while_cond.1"
while_end.1:
  %".602" = load i32, i32* %"is_negative"
  %".603" = icmp eq i32 %".602", 1
  %".604" = zext i1 %".603" to i32
  %".605" = icmp ne i32 %".604", 0
  br i1 %".605", label %"if_then.2", label %"if_end.2"
if_then.2:
  %".607" = load i32, i32* %"num"
  %".608" = sub i32 0, %".607"
  store i32 %".608", i32* %"num"
  store i32 0, i32* %"is_negative"
  br label %"if_end.2"
if_end.2:
  %".612" = load i32, i32* %"num_top"
  %".613" = add i32 %".612", 1
  store i32 %".613", i32* %"num_top"
  %".615" = load i32, i32* %"num_top"
  %".616" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".615"
  %".617" = load i32, i32* %"num"
  store i32 %".617", i32* %".616"
  br label %"while_cond"
if_then.3:
  %".625" = load i32, i32* %"op_top"
  %".626" = add i32 %".625", 1
  store i32 %".626", i32* %"op_top"
  %".628" = load i32, i32* %"op_top"
  %".629" = getelementptr inbounds [100 x i8], [100 x i8]* %"op_stack", i32 0, i32 %".628"
  %".630" = load i8, i8* %"c"
  %".631" = zext i8 %".630" to i32
  %".632" = trunc i32 %".631" to i8
  store i8 %".632", i8* %".629"
  %".634" = zext i8 %".632" to i32
  %".635" = load i32, i32* %"i"
  %".636" = add i32 %".635", 1
  store i32 %".636", i32* %"i"
  br label %"while_cond"
if_end.3:
  %".639" = load i8, i8* %"c"
  %".640" = icmp eq i8 %".639", 41
  %".641" = zext i1 %".640" to i32
  %".642" = icmp ne i32 %".641", 0
  br i1 %".642", label %"if_then.4", label %"if_end.4"
if_then.4:
  br label %"while_cond.2"
if_end.4:
  %".738" = load i8, i8* %"c"
  %".739" = icmp eq i8 %".738", 43
  %".740" = zext i1 %".739" to i32
  %".741" = load i8, i8* %"c"
  %".742" = icmp eq i8 %".741", 45
  %".743" = zext i1 %".742" to i32
  %".744" = or i32 %".740", %".743"
  %".745" = load i8, i8* %"c"
  %".746" = icmp eq i8 %".745", 42
  %".747" = zext i1 %".746" to i32
  %".748" = or i32 %".744", %".747"
  %".749" = load i8, i8* %"c"
  %".750" = icmp eq i8 %".749", 47
  %".751" = zext i1 %".750" to i32
  %".752" = or i32 %".748", %".751"
  %".753" = icmp ne i32 %".752", 0
  br i1 %".753", label %"if_then.10", label %"if_end.10"
while_cond.2:
  %".645" = load i32, i32* %"op_top"
  %".646" = icmp sge i32 %".645", 0
  %".647" = zext i1 %".646" to i32
  %".648" = icmp ne i32 %".647", 0
  br i1 %".648", label %"while_body.2", label %"while_end.2"
while_body.2:
  %".650" = load i32, i32* %"op_top"
  %".651" = getelementptr inbounds [100 x i8], [100 x i8]* %"op_stack", i32 0, i32 %".650"
  %".652" = load i8, i8* %".651"
  %".653" = icmp eq i8 %".652", 40
  %".654" = zext i1 %".653" to i32
  %".655" = icmp ne i32 %".654", 0
  br i1 %".655", label %"if_then.5", label %"if_end.5"
while_end.2:
  %".731" = load i32, i32* %"op_top"
  %".732" = sub i32 %".731", 1
  store i32 %".732", i32* %"op_top"
  %".734" = load i32, i32* %"i"
  %".735" = add i32 %".734", 1
  store i32 %".735", i32* %"i"
  br label %"while_cond"
if_then.5:
  br label %"while_end.2"
if_end.5:
  %"op" = alloca i8
  %".658" = load i32, i32* %"op_top"
  %".659" = getelementptr inbounds [100 x i8], [100 x i8]* %"op_stack", i32 0, i32 %".658"
  %".660" = load i8, i8* %".659"
  %".661" = zext i8 %".660" to i32
  %".662" = trunc i32 %".661" to i8
  store i8 %".662", i8* %"op"
  %".664" = zext i8 %".662" to i32
  %".665" = load i32, i32* %"op_top"
  %".666" = sub i32 %".665", 1
  store i32 %".666", i32* %"op_top"
  %".668" = load i32, i32* %"num_top"
  %".669" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".668"
  %".670" = load i32, i32* %".669"
  %"b" = alloca i32
  store i32 %".670", i32* %"b"
  %".672" = load i32, i32* %"num_top"
  %".673" = sub i32 %".672", 1
  store i32 %".673", i32* %"num_top"
  %".675" = load i32, i32* %"num_top"
  %".676" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".675"
  %".677" = load i32, i32* %".676"
  %"a" = alloca i32
  store i32 %".677", i32* %"a"
  %".679" = load i32, i32* %"num_top"
  %".680" = sub i32 %".679", 1
  store i32 %".680", i32* %"num_top"
  %"res" = alloca i32
  store i32 0, i32* %"res"
  %".683" = load i8, i8* %"op"
  %".684" = icmp eq i8 %".683", 43
  %".685" = zext i1 %".684" to i32
  %".686" = icmp ne i32 %".685", 0
  br i1 %".686", label %"if_then.6", label %"if_end.6"
if_then.6:
  %".688" = load i32, i32* %"a"
  %".689" = load i32, i32* %"b"
  %".690" = add i32 %".688", %".689"
  store i32 %".690", i32* %"res"
  br label %"if_end.6"
if_end.6:
  %".693" = load i8, i8* %"op"
  %".694" = icmp eq i8 %".693", 45
  %".695" = zext i1 %".694" to i32
  %".696" = icmp ne i32 %".695", 0
  br i1 %".696", label %"if_then.7", label %"if_end.7"
if_then.7:
  %".698" = load i32, i32* %"a"
  %".699" = load i32, i32* %"b"
  %".700" = sub i32 %".698", %".699"
  store i32 %".700", i32* %"res"
  br label %"if_end.7"
if_end.7:
  %".703" = load i8, i8* %"op"
  %".704" = icmp eq i8 %".703", 42
  %".705" = zext i1 %".704" to i32
  %".706" = icmp ne i32 %".705", 0
  br i1 %".706", label %"if_then.8", label %"if_end.8"
if_then.8:
  %".708" = load i32, i32* %"a"
  %".709" = load i32, i32* %"b"
  %".710" = mul i32 %".708", %".709"
  store i32 %".710", i32* %"res"
  br label %"if_end.8"
if_end.8:
  %".713" = load i8, i8* %"op"
  %".714" = icmp eq i8 %".713", 47
  %".715" = zext i1 %".714" to i32
  %".716" = icmp ne i32 %".715", 0
  br i1 %".716", label %"if_then.9", label %"if_end.9"
if_then.9:
  %".718" = load i32, i32* %"a"
  %".719" = load i32, i32* %"b"
  %".720" = sdiv i32 %".718", %".719"
  store i32 %".720", i32* %"res"
  br label %"if_end.9"
if_end.9:
  %".723" = load i32, i32* %"num_top"
  %".724" = add i32 %".723", 1
  store i32 %".724", i32* %"num_top"
  %".726" = load i32, i32* %"num_top"
  %".727" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".726"
  %".728" = load i32, i32* %"res"
  store i32 %".728", i32* %".727"
  br label %"while_cond.2"
if_then.10:
  br label %"while_cond.3"
if_end.10:
  %".863" = load i32, i32* %"i"
  %".864" = add i32 %".863", 1
  store i32 %".864", i32* %"i"
  br label %"while_cond"
while_cond.3:
  %".756" = load i32, i32* %"op_top"
  %".757" = icmp sge i32 %".756", 0
  %".758" = zext i1 %".757" to i32
  %".759" = icmp ne i32 %".758", 0
  br i1 %".759", label %"while_body.3", label %"while_end.3"
while_body.3:
  %".761" = load i32, i32* %"op_top"
  %".762" = getelementptr inbounds [100 x i8], [100 x i8]* %"op_stack", i32 0, i32 %".761"
  %".763" = load i8, i8* %".762"
  %".764" = zext i8 %".763" to i32
  %".765" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 %".764"
  %".766" = load i8, i8* %".765"
  %".767" = load i8, i8* %"c"
  %".768" = zext i8 %".767" to i32
  %".769" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 %".768"
  %".770" = load i8, i8* %".769"
  %".771" = icmp slt i8 %".766", %".770"
  %".772" = zext i1 %".771" to i32
  %".773" = icmp ne i32 %".772", 0
  br i1 %".773", label %"if_then.11", label %"if_end.11"
while_end.3:
  %".849" = load i32, i32* %"op_top"
  %".850" = add i32 %".849", 1
  store i32 %".850", i32* %"op_top"
  %".852" = load i32, i32* %"op_top"
  %".853" = getelementptr inbounds [100 x i8], [100 x i8]* %"op_stack", i32 0, i32 %".852"
  %".854" = load i8, i8* %"c"
  %".855" = zext i8 %".854" to i32
  %".856" = trunc i32 %".855" to i8
  store i8 %".856", i8* %".853"
  %".858" = zext i8 %".856" to i32
  %".859" = load i32, i32* %"i"
  %".860" = add i32 %".859", 1
  store i32 %".860", i32* %"i"
  br label %"while_cond"
if_then.11:
  br label %"while_end.3"
if_end.11:
  %"op.1" = alloca i8
  %".776" = load i32, i32* %"op_top"
  %".777" = getelementptr inbounds [100 x i8], [100 x i8]* %"op_stack", i32 0, i32 %".776"
  %".778" = load i8, i8* %".777"
  %".779" = zext i8 %".778" to i32
  %".780" = trunc i32 %".779" to i8
  store i8 %".780", i8* %"op.1"
  %".782" = zext i8 %".780" to i32
  %".783" = load i32, i32* %"op_top"
  %".784" = sub i32 %".783", 1
  store i32 %".784", i32* %"op_top"
  %".786" = load i32, i32* %"num_top"
  %".787" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".786"
  %".788" = load i32, i32* %".787"
  %"b.1" = alloca i32
  store i32 %".788", i32* %"b.1"
  %".790" = load i32, i32* %"num_top"
  %".791" = sub i32 %".790", 1
  store i32 %".791", i32* %"num_top"
  %".793" = load i32, i32* %"num_top"
  %".794" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".793"
  %".795" = load i32, i32* %".794"
  %"a.1" = alloca i32
  store i32 %".795", i32* %"a.1"
  %".797" = load i32, i32* %"num_top"
  %".798" = sub i32 %".797", 1
  store i32 %".798", i32* %"num_top"
  %"res.1" = alloca i32
  store i32 0, i32* %"res.1"
  %".801" = load i8, i8* %"op.1"
  %".802" = icmp eq i8 %".801", 43
  %".803" = zext i1 %".802" to i32
  %".804" = icmp ne i32 %".803", 0
  br i1 %".804", label %"if_then.12", label %"if_end.12"
if_then.12:
  %".806" = load i32, i32* %"a.1"
  %".807" = load i32, i32* %"b.1"
  %".808" = add i32 %".806", %".807"
  store i32 %".808", i32* %"res.1"
  br label %"if_end.12"
if_end.12:
  %".811" = load i8, i8* %"op.1"
  %".812" = icmp eq i8 %".811", 45
  %".813" = zext i1 %".812" to i32
  %".814" = icmp ne i32 %".813", 0
  br i1 %".814", label %"if_then.13", label %"if_end.13"
if_then.13:
  %".816" = load i32, i32* %"a.1"
  %".817" = load i32, i32* %"b.1"
  %".818" = sub i32 %".816", %".817"
  store i32 %".818", i32* %"res.1"
  br label %"if_end.13"
if_end.13:
  %".821" = load i8, i8* %"op.1"
  %".822" = icmp eq i8 %".821", 42
  %".823" = zext i1 %".822" to i32
  %".824" = icmp ne i32 %".823", 0
  br i1 %".824", label %"if_then.14", label %"if_end.14"
if_then.14:
  %".826" = load i32, i32* %"a.1"
  %".827" = load i32, i32* %"b.1"
  %".828" = mul i32 %".826", %".827"
  store i32 %".828", i32* %"res.1"
  br label %"if_end.14"
if_end.14:
  %".831" = load i8, i8* %"op.1"
  %".832" = icmp eq i8 %".831", 47
  %".833" = zext i1 %".832" to i32
  %".834" = icmp ne i32 %".833", 0
  br i1 %".834", label %"if_then.15", label %"if_end.15"
if_then.15:
  %".836" = load i32, i32* %"a.1"
  %".837" = load i32, i32* %"b.1"
  %".838" = sdiv i32 %".836", %".837"
  store i32 %".838", i32* %"res.1"
  br label %"if_end.15"
if_end.15:
  %".841" = load i32, i32* %"num_top"
  %".842" = add i32 %".841", 1
  store i32 %".842", i32* %"num_top"
  %".844" = load i32, i32* %"num_top"
  %".845" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".844"
  %".846" = load i32, i32* %"res.1"
  store i32 %".846", i32* %".845"
  br label %"while_cond.3"
while_cond.4:
  %".868" = load i32, i32* %"op_top"
  %".869" = icmp sge i32 %".868", 0
  %".870" = zext i1 %".869" to i32
  %".871" = icmp ne i32 %".870", 0
  br i1 %".871", label %"while_body.4", label %"while_end.4"
while_body.4:
  %"op.2" = alloca i8
  %".873" = load i32, i32* %"op_top"
  %".874" = getelementptr inbounds [100 x i8], [100 x i8]* %"op_stack", i32 0, i32 %".873"
  %".875" = load i8, i8* %".874"
  %".876" = zext i8 %".875" to i32
  %".877" = trunc i32 %".876" to i8
  store i8 %".877", i8* %"op.2"
  %".879" = zext i8 %".877" to i32
  %".880" = load i32, i32* %"op_top"
  %".881" = sub i32 %".880", 1
  store i32 %".881", i32* %"op_top"
  %".883" = load i32, i32* %"num_top"
  %".884" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".883"
  %".885" = load i32, i32* %".884"
  %"b.2" = alloca i32
  store i32 %".885", i32* %"b.2"
  %".887" = load i32, i32* %"num_top"
  %".888" = sub i32 %".887", 1
  store i32 %".888", i32* %"num_top"
  %".890" = load i32, i32* %"num_top"
  %".891" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".890"
  %".892" = load i32, i32* %".891"
  %"a.2" = alloca i32
  store i32 %".892", i32* %"a.2"
  %".894" = load i32, i32* %"num_top"
  %".895" = sub i32 %".894", 1
  store i32 %".895", i32* %"num_top"
  %"res.2" = alloca i32
  store i32 0, i32* %"res.2"
  %".898" = load i8, i8* %"op.2"
  %".899" = icmp eq i8 %".898", 43
  %".900" = zext i1 %".899" to i32
  %".901" = icmp ne i32 %".900", 0
  br i1 %".901", label %"if_then.16", label %"if_end.16"
while_end.4:
  %".946" = getelementptr inbounds [29 x i8], [29 x i8]* @".str.2", i32 0, i32 0
  %".947" = call i32 (i8*, ...) @"printf"(i8* %".946")
  %".948" = getelementptr inbounds [4 x i8], [4 x i8]* @".str.3", i32 0, i32 0
  %".949" = load i32, i32* %"num_top"
  %".950" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".949"
  %".951" = load i32, i32* %".950"
  %".952" = call i32 (i8*, ...) @"printf"(i8* %".948", i32 %".951")
  ret i32 0
if_then.16:
  %".903" = load i32, i32* %"a.2"
  %".904" = load i32, i32* %"b.2"
  %".905" = add i32 %".903", %".904"
  store i32 %".905", i32* %"res.2"
  br label %"if_end.16"
if_end.16:
  %".908" = load i8, i8* %"op.2"
  %".909" = icmp eq i8 %".908", 45
  %".910" = zext i1 %".909" to i32
  %".911" = icmp ne i32 %".910", 0
  br i1 %".911", label %"if_then.17", label %"if_end.17"
if_then.17:
  %".913" = load i32, i32* %"a.2"
  %".914" = load i32, i32* %"b.2"
  %".915" = sub i32 %".913", %".914"
  store i32 %".915", i32* %"res.2"
  br label %"if_end.17"
if_end.17:
  %".918" = load i8, i8* %"op.2"
  %".919" = icmp eq i8 %".918", 42
  %".920" = zext i1 %".919" to i32
  %".921" = icmp ne i32 %".920", 0
  br i1 %".921", label %"if_then.18", label %"if_end.18"
if_then.18:
  %".923" = load i32, i32* %"a.2"
  %".924" = load i32, i32* %"b.2"
  %".925" = mul i32 %".923", %".924"
  store i32 %".925", i32* %"res.2"
  br label %"if_end.18"
if_end.18:
  %".928" = load i8, i8* %"op.2"
  %".929" = icmp eq i8 %".928", 47
  %".930" = zext i1 %".929" to i32
  %".931" = icmp ne i32 %".930", 0
  br i1 %".931", label %"if_then.19", label %"if_end.19"
if_then.19:
  %".933" = load i32, i32* %"a.2"
  %".934" = load i32, i32* %"b.2"
  %".935" = sdiv i32 %".933", %".934"
  store i32 %".935", i32* %"res.2"
  br label %"if_end.19"
if_end.19:
  %".938" = load i32, i32* %"num_top"
  %".939" = add i32 %".938", 1
  store i32 %".939", i32* %"num_top"
  %".941" = load i32, i32* %"num_top"
  %".942" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".941"
  %".943" = load i32, i32* %"res.2"
  store i32 %".943", i32* %".942"
  br label %"while_cond.4"
}

declare i32 @"printf"(i8* %".1", ...)

@".str" = private constant [57 x i8] c"Please type in the expression and finish typing with #: \00", align 1
declare i32 @"scanf"(i8* %".1", ...)

@".str.1" = private constant [3 x i8] c"%s\00", align 1
@".str.2" = private constant [29 x i8] c"The calculation result is : \00", align 1
@".str.3" = private constant [4 x i8] c"%d\0a\00", align 1
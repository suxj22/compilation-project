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
  %"op_stack" = alloca [100 x i8]
  %"num_stack" = alloca [100 x i32]
  %".238" = sub i32 0, 1
  %"op_top" = alloca i32
  store i32 %".238", i32* %"op_top"
  %".240" = sub i32 0, 1
  %"num_top" = alloca i32
  store i32 %".240", i32* %"num_top"
  %"precedence" = alloca [128 x i8]
  %".242" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 0
  store i8 0, i8* %".242"
  %".244" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 1
  store i8 0, i8* %".244"
  %".246" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 2
  store i8 0, i8* %".246"
  %".248" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 3
  store i8 0, i8* %".248"
  %".250" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 4
  store i8 0, i8* %".250"
  %".252" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 5
  store i8 0, i8* %".252"
  %".254" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 6
  store i8 0, i8* %".254"
  %".256" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 7
  store i8 0, i8* %".256"
  %".258" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 8
  store i8 0, i8* %".258"
  %".260" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 9
  store i8 0, i8* %".260"
  %".262" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 10
  store i8 0, i8* %".262"
  %".264" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 11
  store i8 0, i8* %".264"
  %".266" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 12
  store i8 0, i8* %".266"
  %".268" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 13
  store i8 0, i8* %".268"
  %".270" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 14
  store i8 0, i8* %".270"
  %".272" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 15
  store i8 0, i8* %".272"
  %".274" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 16
  store i8 0, i8* %".274"
  %".276" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 17
  store i8 0, i8* %".276"
  %".278" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 18
  store i8 0, i8* %".278"
  %".280" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 19
  store i8 0, i8* %".280"
  %".282" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 20
  store i8 0, i8* %".282"
  %".284" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 21
  store i8 0, i8* %".284"
  %".286" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 22
  store i8 0, i8* %".286"
  %".288" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 23
  store i8 0, i8* %".288"
  %".290" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 24
  store i8 0, i8* %".290"
  %".292" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 25
  store i8 0, i8* %".292"
  %".294" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 26
  store i8 0, i8* %".294"
  %".296" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 27
  store i8 0, i8* %".296"
  %".298" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 28
  store i8 0, i8* %".298"
  %".300" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 29
  store i8 0, i8* %".300"
  %".302" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 30
  store i8 0, i8* %".302"
  %".304" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 31
  store i8 0, i8* %".304"
  %".306" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 32
  store i8 0, i8* %".306"
  %".308" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 33
  store i8 0, i8* %".308"
  %".310" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 34
  store i8 0, i8* %".310"
  %".312" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 35
  store i8 0, i8* %".312"
  %".314" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 36
  store i8 0, i8* %".314"
  %".316" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 37
  store i8 0, i8* %".316"
  %".318" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 38
  store i8 0, i8* %".318"
  %".320" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 39
  store i8 0, i8* %".320"
  %".322" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 40
  store i8 0, i8* %".322"
  %".324" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 41
  store i8 0, i8* %".324"
  %".326" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 42
  store i8 0, i8* %".326"
  %".328" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 43
  store i8 0, i8* %".328"
  %".330" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 44
  store i8 0, i8* %".330"
  %".332" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 45
  store i8 0, i8* %".332"
  %".334" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 46
  store i8 0, i8* %".334"
  %".336" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 47
  store i8 0, i8* %".336"
  %".338" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 48
  store i8 0, i8* %".338"
  %".340" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 49
  store i8 0, i8* %".340"
  %".342" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 50
  store i8 0, i8* %".342"
  %".344" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 51
  store i8 0, i8* %".344"
  %".346" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 52
  store i8 0, i8* %".346"
  %".348" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 53
  store i8 0, i8* %".348"
  %".350" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 54
  store i8 0, i8* %".350"
  %".352" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 55
  store i8 0, i8* %".352"
  %".354" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 56
  store i8 0, i8* %".354"
  %".356" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 57
  store i8 0, i8* %".356"
  %".358" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 58
  store i8 0, i8* %".358"
  %".360" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 59
  store i8 0, i8* %".360"
  %".362" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 60
  store i8 0, i8* %".362"
  %".364" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 61
  store i8 0, i8* %".364"
  %".366" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 62
  store i8 0, i8* %".366"
  %".368" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 63
  store i8 0, i8* %".368"
  %".370" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 64
  store i8 0, i8* %".370"
  %".372" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 65
  store i8 0, i8* %".372"
  %".374" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 66
  store i8 0, i8* %".374"
  %".376" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 67
  store i8 0, i8* %".376"
  %".378" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 68
  store i8 0, i8* %".378"
  %".380" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 69
  store i8 0, i8* %".380"
  %".382" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 70
  store i8 0, i8* %".382"
  %".384" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 71
  store i8 0, i8* %".384"
  %".386" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 72
  store i8 0, i8* %".386"
  %".388" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 73
  store i8 0, i8* %".388"
  %".390" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 74
  store i8 0, i8* %".390"
  %".392" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 75
  store i8 0, i8* %".392"
  %".394" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 76
  store i8 0, i8* %".394"
  %".396" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 77
  store i8 0, i8* %".396"
  %".398" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 78
  store i8 0, i8* %".398"
  %".400" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 79
  store i8 0, i8* %".400"
  %".402" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 80
  store i8 0, i8* %".402"
  %".404" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 81
  store i8 0, i8* %".404"
  %".406" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 82
  store i8 0, i8* %".406"
  %".408" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 83
  store i8 0, i8* %".408"
  %".410" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 84
  store i8 0, i8* %".410"
  %".412" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 85
  store i8 0, i8* %".412"
  %".414" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 86
  store i8 0, i8* %".414"
  %".416" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 87
  store i8 0, i8* %".416"
  %".418" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 88
  store i8 0, i8* %".418"
  %".420" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 89
  store i8 0, i8* %".420"
  %".422" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 90
  store i8 0, i8* %".422"
  %".424" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 91
  store i8 0, i8* %".424"
  %".426" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 92
  store i8 0, i8* %".426"
  %".428" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 93
  store i8 0, i8* %".428"
  %".430" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 94
  store i8 0, i8* %".430"
  %".432" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 95
  store i8 0, i8* %".432"
  %".434" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 96
  store i8 0, i8* %".434"
  %".436" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 97
  store i8 0, i8* %".436"
  %".438" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 98
  store i8 0, i8* %".438"
  %".440" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 99
  store i8 0, i8* %".440"
  %".442" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 100
  store i8 0, i8* %".442"
  %".444" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 101
  store i8 0, i8* %".444"
  %".446" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 102
  store i8 0, i8* %".446"
  %".448" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 103
  store i8 0, i8* %".448"
  %".450" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 104
  store i8 0, i8* %".450"
  %".452" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 105
  store i8 0, i8* %".452"
  %".454" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 106
  store i8 0, i8* %".454"
  %".456" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 107
  store i8 0, i8* %".456"
  %".458" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 108
  store i8 0, i8* %".458"
  %".460" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 109
  store i8 0, i8* %".460"
  %".462" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 110
  store i8 0, i8* %".462"
  %".464" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 111
  store i8 0, i8* %".464"
  %".466" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 112
  store i8 0, i8* %".466"
  %".468" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 113
  store i8 0, i8* %".468"
  %".470" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 114
  store i8 0, i8* %".470"
  %".472" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 115
  store i8 0, i8* %".472"
  %".474" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 116
  store i8 0, i8* %".474"
  %".476" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 117
  store i8 0, i8* %".476"
  %".478" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 118
  store i8 0, i8* %".478"
  %".480" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 119
  store i8 0, i8* %".480"
  %".482" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 120
  store i8 0, i8* %".482"
  %".484" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 121
  store i8 0, i8* %".484"
  %".486" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 122
  store i8 0, i8* %".486"
  %".488" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 123
  store i8 0, i8* %".488"
  %".490" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 124
  store i8 0, i8* %".490"
  %".492" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 125
  store i8 0, i8* %".492"
  %".494" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 126
  store i8 0, i8* %".494"
  %".496" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 127
  store i8 0, i8* %".496"
  %".498" = zext i8 43 to i32
  %".499" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 %".498"
  %".500" = trunc i32 1 to i8
  store i8 %".500", i8* %".499"
  %".502" = zext i8 %".500" to i32
  %".503" = zext i8 45 to i32
  %".504" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 %".503"
  %".505" = trunc i32 1 to i8
  store i8 %".505", i8* %".504"
  %".507" = zext i8 %".505" to i32
  %".508" = zext i8 42 to i32
  %".509" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 %".508"
  %".510" = trunc i32 2 to i8
  store i8 %".510", i8* %".509"
  %".512" = zext i8 %".510" to i32
  %".513" = zext i8 47 to i32
  %".514" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 %".513"
  %".515" = trunc i32 2 to i8
  store i8 %".515", i8* %".514"
  %".517" = zext i8 %".515" to i32
  %".518" = zext i8 40 to i32
  %".519" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 %".518"
  %".520" = trunc i32 0 to i8
  store i8 %".520", i8* %".519"
  %".522" = zext i8 %".520" to i32
  %"is_negative" = alloca i32
  store i32 0, i32* %"is_negative"
  %"i" = alloca i32
  store i32 0, i32* %"i"
  br label %"while_cond"
while_cond:
  %".526" = load i32, i32* %"i"
  %".527" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 %".526"
  %".528" = load i8, i8* %".527"
  %".529" = icmp ne i8 %".528", 35
  %".530" = zext i1 %".529" to i32
  %".531" = icmp ne i32 %".530", 0
  br i1 %".531", label %"while_body", label %"while_end"
while_body:
  %"c" = alloca i8
  %".533" = load i32, i32* %"i"
  %".534" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 %".533"
  %".535" = load i8, i8* %".534"
  %".536" = zext i8 %".535" to i32
  %".537" = trunc i32 %".536" to i8
  store i8 %".537", i8* %"c"
  %".539" = zext i8 %".537" to i32
  %".540" = load i8, i8* %"c"
  %".541" = icmp eq i8 %".540", 45
  %".542" = zext i1 %".541" to i32
  %".543" = load i32, i32* %"i"
  %".544" = icmp eq i32 %".543", 0
  %".545" = zext i1 %".544" to i32
  %".546" = load i32, i32* %"i"
  %".547" = sub i32 %".546", 1
  %".548" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 %".547"
  %".549" = load i8, i8* %".548"
  %".550" = icmp eq i8 %".549", 40
  %".551" = zext i1 %".550" to i32
  %".552" = or i32 %".545", %".551"
  %".553" = and i32 %".542", %".552"
  %".554" = icmp ne i32 %".553", 0
  br i1 %".554", label %"if_then", label %"if_end"
while_end:
  br label %"while_cond.4"
if_then:
  store i32 1, i32* %"is_negative"
  %".557" = load i32, i32* %"i"
  %".558" = add i32 %".557", 1
  store i32 %".558", i32* %"i"
  br label %"while_cond"
if_end:
  %".561" = load i8, i8* %"c"
  %".562" = icmp sge i8 %".561", 48
  %".563" = zext i1 %".562" to i32
  %".564" = load i8, i8* %"c"
  %".565" = icmp sle i8 %".564", 57
  %".566" = zext i1 %".565" to i32
  %".567" = and i32 %".563", %".566"
  %".568" = icmp ne i32 %".567", 0
  br i1 %".568", label %"if_then.1", label %"if_end.1"
if_then.1:
  %"num" = alloca i32
  store i32 0, i32* %"num"
  br label %"while_cond.1"
if_end.1:
  %".616" = load i8, i8* %"c"
  %".617" = icmp eq i8 %".616", 40
  %".618" = zext i1 %".617" to i32
  %".619" = icmp ne i32 %".618", 0
  br i1 %".619", label %"if_then.3", label %"if_end.3"
while_cond.1:
  %".572" = load i32, i32* %"i"
  %".573" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 %".572"
  %".574" = load i8, i8* %".573"
  %".575" = icmp sge i8 %".574", 48
  %".576" = zext i1 %".575" to i32
  %".577" = load i32, i32* %"i"
  %".578" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 %".577"
  %".579" = load i8, i8* %".578"
  %".580" = icmp sle i8 %".579", 57
  %".581" = zext i1 %".580" to i32
  %".582" = and i32 %".576", %".581"
  %".583" = icmp ne i32 %".582", 0
  br i1 %".583", label %"while_body.1", label %"while_end.1"
while_body.1:
  %".585" = load i32, i32* %"num"
  %".586" = mul i32 %".585", 10
  %".587" = load i32, i32* %"i"
  %".588" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 %".587"
  %".589" = load i8, i8* %".588"
  %".590" = sub i8 %".589", 48
  %".591" = zext i8 %".590" to i32
  %".592" = add i32 %".586", %".591"
  store i32 %".592", i32* %"num"
  %".594" = load i32, i32* %"i"
  %".595" = add i32 %".594", 1
  store i32 %".595", i32* %"i"
  br label %"while_cond.1"
while_end.1:
  %".598" = load i32, i32* %"is_negative"
  %".599" = icmp eq i32 %".598", 1
  %".600" = zext i1 %".599" to i32
  %".601" = icmp ne i32 %".600", 0
  br i1 %".601", label %"if_then.2", label %"if_end.2"
if_then.2:
  %".603" = load i32, i32* %"num"
  %".604" = sub i32 0, %".603"
  store i32 %".604", i32* %"num"
  store i32 0, i32* %"is_negative"
  br label %"if_end.2"
if_end.2:
  %".608" = load i32, i32* %"num_top"
  %".609" = add i32 %".608", 1
  store i32 %".609", i32* %"num_top"
  %".611" = load i32, i32* %"num_top"
  %".612" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".611"
  %".613" = load i32, i32* %"num"
  store i32 %".613", i32* %".612"
  br label %"while_cond"
if_then.3:
  %".621" = load i32, i32* %"op_top"
  %".622" = add i32 %".621", 1
  store i32 %".622", i32* %"op_top"
  %".624" = load i32, i32* %"op_top"
  %".625" = getelementptr inbounds [100 x i8], [100 x i8]* %"op_stack", i32 0, i32 %".624"
  %".626" = load i8, i8* %"c"
  %".627" = zext i8 %".626" to i32
  %".628" = trunc i32 %".627" to i8
  store i8 %".628", i8* %".625"
  %".630" = zext i8 %".628" to i32
  %".631" = load i32, i32* %"i"
  %".632" = add i32 %".631", 1
  store i32 %".632", i32* %"i"
  br label %"while_cond"
if_end.3:
  %".635" = load i8, i8* %"c"
  %".636" = icmp eq i8 %".635", 41
  %".637" = zext i1 %".636" to i32
  %".638" = icmp ne i32 %".637", 0
  br i1 %".638", label %"if_then.4", label %"if_end.4"
if_then.4:
  br label %"while_cond.2"
if_end.4:
  %".734" = load i8, i8* %"c"
  %".735" = icmp eq i8 %".734", 43
  %".736" = zext i1 %".735" to i32
  %".737" = load i8, i8* %"c"
  %".738" = icmp eq i8 %".737", 45
  %".739" = zext i1 %".738" to i32
  %".740" = or i32 %".736", %".739"
  %".741" = load i8, i8* %"c"
  %".742" = icmp eq i8 %".741", 42
  %".743" = zext i1 %".742" to i32
  %".744" = or i32 %".740", %".743"
  %".745" = load i8, i8* %"c"
  %".746" = icmp eq i8 %".745", 47
  %".747" = zext i1 %".746" to i32
  %".748" = or i32 %".744", %".747"
  %".749" = icmp ne i32 %".748", 0
  br i1 %".749", label %"if_then.10", label %"if_end.10"
while_cond.2:
  %".641" = load i32, i32* %"op_top"
  %".642" = icmp sge i32 %".641", 0
  %".643" = zext i1 %".642" to i32
  %".644" = icmp ne i32 %".643", 0
  br i1 %".644", label %"while_body.2", label %"while_end.2"
while_body.2:
  %".646" = load i32, i32* %"op_top"
  %".647" = getelementptr inbounds [100 x i8], [100 x i8]* %"op_stack", i32 0, i32 %".646"
  %".648" = load i8, i8* %".647"
  %".649" = icmp eq i8 %".648", 40
  %".650" = zext i1 %".649" to i32
  %".651" = icmp ne i32 %".650", 0
  br i1 %".651", label %"if_then.5", label %"if_end.5"
while_end.2:
  %".727" = load i32, i32* %"op_top"
  %".728" = sub i32 %".727", 1
  store i32 %".728", i32* %"op_top"
  %".730" = load i32, i32* %"i"
  %".731" = add i32 %".730", 1
  store i32 %".731", i32* %"i"
  br label %"while_cond"
if_then.5:
  br label %"while_end.2"
if_end.5:
  %"op" = alloca i8
  %".654" = load i32, i32* %"op_top"
  %".655" = getelementptr inbounds [100 x i8], [100 x i8]* %"op_stack", i32 0, i32 %".654"
  %".656" = load i8, i8* %".655"
  %".657" = zext i8 %".656" to i32
  %".658" = trunc i32 %".657" to i8
  store i8 %".658", i8* %"op"
  %".660" = zext i8 %".658" to i32
  %".661" = load i32, i32* %"op_top"
  %".662" = sub i32 %".661", 1
  store i32 %".662", i32* %"op_top"
  %".664" = load i32, i32* %"num_top"
  %".665" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".664"
  %".666" = load i32, i32* %".665"
  %"b" = alloca i32
  store i32 %".666", i32* %"b"
  %".668" = load i32, i32* %"num_top"
  %".669" = sub i32 %".668", 1
  store i32 %".669", i32* %"num_top"
  %".671" = load i32, i32* %"num_top"
  %".672" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".671"
  %".673" = load i32, i32* %".672"
  %"a" = alloca i32
  store i32 %".673", i32* %"a"
  %".675" = load i32, i32* %"num_top"
  %".676" = sub i32 %".675", 1
  store i32 %".676", i32* %"num_top"
  %"res" = alloca i32
  store i32 0, i32* %"res"
  %".679" = load i8, i8* %"op"
  %".680" = icmp eq i8 %".679", 43
  %".681" = zext i1 %".680" to i32
  %".682" = icmp ne i32 %".681", 0
  br i1 %".682", label %"if_then.6", label %"if_end.6"
if_then.6:
  %".684" = load i32, i32* %"a"
  %".685" = load i32, i32* %"b"
  %".686" = add i32 %".684", %".685"
  store i32 %".686", i32* %"res"
  br label %"if_end.6"
if_end.6:
  %".689" = load i8, i8* %"op"
  %".690" = icmp eq i8 %".689", 45
  %".691" = zext i1 %".690" to i32
  %".692" = icmp ne i32 %".691", 0
  br i1 %".692", label %"if_then.7", label %"if_end.7"
if_then.7:
  %".694" = load i32, i32* %"a"
  %".695" = load i32, i32* %"b"
  %".696" = sub i32 %".694", %".695"
  store i32 %".696", i32* %"res"
  br label %"if_end.7"
if_end.7:
  %".699" = load i8, i8* %"op"
  %".700" = icmp eq i8 %".699", 42
  %".701" = zext i1 %".700" to i32
  %".702" = icmp ne i32 %".701", 0
  br i1 %".702", label %"if_then.8", label %"if_end.8"
if_then.8:
  %".704" = load i32, i32* %"a"
  %".705" = load i32, i32* %"b"
  %".706" = mul i32 %".704", %".705"
  store i32 %".706", i32* %"res"
  br label %"if_end.8"
if_end.8:
  %".709" = load i8, i8* %"op"
  %".710" = icmp eq i8 %".709", 47
  %".711" = zext i1 %".710" to i32
  %".712" = icmp ne i32 %".711", 0
  br i1 %".712", label %"if_then.9", label %"if_end.9"
if_then.9:
  %".714" = load i32, i32* %"a"
  %".715" = load i32, i32* %"b"
  %".716" = sdiv i32 %".714", %".715"
  store i32 %".716", i32* %"res"
  br label %"if_end.9"
if_end.9:
  %".719" = load i32, i32* %"num_top"
  %".720" = add i32 %".719", 1
  store i32 %".720", i32* %"num_top"
  %".722" = load i32, i32* %"num_top"
  %".723" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".722"
  %".724" = load i32, i32* %"res"
  store i32 %".724", i32* %".723"
  br label %"while_cond.2"
if_then.10:
  br label %"while_cond.3"
if_end.10:
  %".859" = load i32, i32* %"i"
  %".860" = add i32 %".859", 1
  store i32 %".860", i32* %"i"
  br label %"while_cond"
while_cond.3:
  %".752" = load i32, i32* %"op_top"
  %".753" = icmp sge i32 %".752", 0
  %".754" = zext i1 %".753" to i32
  %".755" = icmp ne i32 %".754", 0
  br i1 %".755", label %"while_body.3", label %"while_end.3"
while_body.3:
  %".757" = load i32, i32* %"op_top"
  %".758" = getelementptr inbounds [100 x i8], [100 x i8]* %"op_stack", i32 0, i32 %".757"
  %".759" = load i8, i8* %".758"
  %".760" = zext i8 %".759" to i32
  %".761" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 %".760"
  %".762" = load i8, i8* %".761"
  %".763" = load i8, i8* %"c"
  %".764" = zext i8 %".763" to i32
  %".765" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 %".764"
  %".766" = load i8, i8* %".765"
  %".767" = icmp slt i8 %".762", %".766"
  %".768" = zext i1 %".767" to i32
  %".769" = icmp ne i32 %".768", 0
  br i1 %".769", label %"if_then.11", label %"if_end.11"
while_end.3:
  %".845" = load i32, i32* %"op_top"
  %".846" = add i32 %".845", 1
  store i32 %".846", i32* %"op_top"
  %".848" = load i32, i32* %"op_top"
  %".849" = getelementptr inbounds [100 x i8], [100 x i8]* %"op_stack", i32 0, i32 %".848"
  %".850" = load i8, i8* %"c"
  %".851" = zext i8 %".850" to i32
  %".852" = trunc i32 %".851" to i8
  store i8 %".852", i8* %".849"
  %".854" = zext i8 %".852" to i32
  %".855" = load i32, i32* %"i"
  %".856" = add i32 %".855", 1
  store i32 %".856", i32* %"i"
  br label %"while_cond"
if_then.11:
  br label %"while_end.3"
if_end.11:
  %"op.1" = alloca i8
  %".772" = load i32, i32* %"op_top"
  %".773" = getelementptr inbounds [100 x i8], [100 x i8]* %"op_stack", i32 0, i32 %".772"
  %".774" = load i8, i8* %".773"
  %".775" = zext i8 %".774" to i32
  %".776" = trunc i32 %".775" to i8
  store i8 %".776", i8* %"op.1"
  %".778" = zext i8 %".776" to i32
  %".779" = load i32, i32* %"op_top"
  %".780" = sub i32 %".779", 1
  store i32 %".780", i32* %"op_top"
  %".782" = load i32, i32* %"num_top"
  %".783" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".782"
  %".784" = load i32, i32* %".783"
  %"b.1" = alloca i32
  store i32 %".784", i32* %"b.1"
  %".786" = load i32, i32* %"num_top"
  %".787" = sub i32 %".786", 1
  store i32 %".787", i32* %"num_top"
  %".789" = load i32, i32* %"num_top"
  %".790" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".789"
  %".791" = load i32, i32* %".790"
  %"a.1" = alloca i32
  store i32 %".791", i32* %"a.1"
  %".793" = load i32, i32* %"num_top"
  %".794" = sub i32 %".793", 1
  store i32 %".794", i32* %"num_top"
  %"res.1" = alloca i32
  store i32 0, i32* %"res.1"
  %".797" = load i8, i8* %"op.1"
  %".798" = icmp eq i8 %".797", 43
  %".799" = zext i1 %".798" to i32
  %".800" = icmp ne i32 %".799", 0
  br i1 %".800", label %"if_then.12", label %"if_end.12"
if_then.12:
  %".802" = load i32, i32* %"a.1"
  %".803" = load i32, i32* %"b.1"
  %".804" = add i32 %".802", %".803"
  store i32 %".804", i32* %"res.1"
  br label %"if_end.12"
if_end.12:
  %".807" = load i8, i8* %"op.1"
  %".808" = icmp eq i8 %".807", 45
  %".809" = zext i1 %".808" to i32
  %".810" = icmp ne i32 %".809", 0
  br i1 %".810", label %"if_then.13", label %"if_end.13"
if_then.13:
  %".812" = load i32, i32* %"a.1"
  %".813" = load i32, i32* %"b.1"
  %".814" = sub i32 %".812", %".813"
  store i32 %".814", i32* %"res.1"
  br label %"if_end.13"
if_end.13:
  %".817" = load i8, i8* %"op.1"
  %".818" = icmp eq i8 %".817", 42
  %".819" = zext i1 %".818" to i32
  %".820" = icmp ne i32 %".819", 0
  br i1 %".820", label %"if_then.14", label %"if_end.14"
if_then.14:
  %".822" = load i32, i32* %"a.1"
  %".823" = load i32, i32* %"b.1"
  %".824" = mul i32 %".822", %".823"
  store i32 %".824", i32* %"res.1"
  br label %"if_end.14"
if_end.14:
  %".827" = load i8, i8* %"op.1"
  %".828" = icmp eq i8 %".827", 47
  %".829" = zext i1 %".828" to i32
  %".830" = icmp ne i32 %".829", 0
  br i1 %".830", label %"if_then.15", label %"if_end.15"
if_then.15:
  %".832" = load i32, i32* %"a.1"
  %".833" = load i32, i32* %"b.1"
  %".834" = sdiv i32 %".832", %".833"
  store i32 %".834", i32* %"res.1"
  br label %"if_end.15"
if_end.15:
  %".837" = load i32, i32* %"num_top"
  %".838" = add i32 %".837", 1
  store i32 %".838", i32* %"num_top"
  %".840" = load i32, i32* %"num_top"
  %".841" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".840"
  %".842" = load i32, i32* %"res.1"
  store i32 %".842", i32* %".841"
  br label %"while_cond.3"
while_cond.4:
  %".864" = load i32, i32* %"op_top"
  %".865" = icmp sge i32 %".864", 0
  %".866" = zext i1 %".865" to i32
  %".867" = icmp ne i32 %".866", 0
  br i1 %".867", label %"while_body.4", label %"while_end.4"
while_body.4:
  %"op.2" = alloca i8
  %".869" = load i32, i32* %"op_top"
  %".870" = getelementptr inbounds [100 x i8], [100 x i8]* %"op_stack", i32 0, i32 %".869"
  %".871" = load i8, i8* %".870"
  %".872" = zext i8 %".871" to i32
  %".873" = trunc i32 %".872" to i8
  store i8 %".873", i8* %"op.2"
  %".875" = zext i8 %".873" to i32
  %".876" = load i32, i32* %"op_top"
  %".877" = sub i32 %".876", 1
  store i32 %".877", i32* %"op_top"
  %".879" = load i32, i32* %"num_top"
  %".880" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".879"
  %".881" = load i32, i32* %".880"
  %"b.2" = alloca i32
  store i32 %".881", i32* %"b.2"
  %".883" = load i32, i32* %"num_top"
  %".884" = sub i32 %".883", 1
  store i32 %".884", i32* %"num_top"
  %".886" = load i32, i32* %"num_top"
  %".887" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".886"
  %".888" = load i32, i32* %".887"
  %"a.2" = alloca i32
  store i32 %".888", i32* %"a.2"
  %".890" = load i32, i32* %"num_top"
  %".891" = sub i32 %".890", 1
  store i32 %".891", i32* %"num_top"
  %"res.2" = alloca i32
  store i32 0, i32* %"res.2"
  %".894" = load i8, i8* %"op.2"
  %".895" = icmp eq i8 %".894", 43
  %".896" = zext i1 %".895" to i32
  %".897" = icmp ne i32 %".896", 0
  br i1 %".897", label %"if_then.16", label %"if_end.16"
while_end.4:
  %".942" = getelementptr inbounds [4 x i8], [4 x i8]* @".str", i32 0, i32 0
  %".943" = load i32, i32* %"num_top"
  %".944" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".943"
  %".945" = load i32, i32* %".944"
  %".946" = call i32 (i8*, ...) @"printf"(i8* %".942", i32 %".945")
  ret i32 0
if_then.16:
  %".899" = load i32, i32* %"a.2"
  %".900" = load i32, i32* %"b.2"
  %".901" = add i32 %".899", %".900"
  store i32 %".901", i32* %"res.2"
  br label %"if_end.16"
if_end.16:
  %".904" = load i8, i8* %"op.2"
  %".905" = icmp eq i8 %".904", 45
  %".906" = zext i1 %".905" to i32
  %".907" = icmp ne i32 %".906", 0
  br i1 %".907", label %"if_then.17", label %"if_end.17"
if_then.17:
  %".909" = load i32, i32* %"a.2"
  %".910" = load i32, i32* %"b.2"
  %".911" = sub i32 %".909", %".910"
  store i32 %".911", i32* %"res.2"
  br label %"if_end.17"
if_end.17:
  %".914" = load i8, i8* %"op.2"
  %".915" = icmp eq i8 %".914", 42
  %".916" = zext i1 %".915" to i32
  %".917" = icmp ne i32 %".916", 0
  br i1 %".917", label %"if_then.18", label %"if_end.18"
if_then.18:
  %".919" = load i32, i32* %"a.2"
  %".920" = load i32, i32* %"b.2"
  %".921" = mul i32 %".919", %".920"
  store i32 %".921", i32* %"res.2"
  br label %"if_end.18"
if_end.18:
  %".924" = load i8, i8* %"op.2"
  %".925" = icmp eq i8 %".924", 47
  %".926" = zext i1 %".925" to i32
  %".927" = icmp ne i32 %".926", 0
  br i1 %".927", label %"if_then.19", label %"if_end.19"
if_then.19:
  %".929" = load i32, i32* %"a.2"
  %".930" = load i32, i32* %"b.2"
  %".931" = sdiv i32 %".929", %".930"
  store i32 %".931", i32* %"res.2"
  br label %"if_end.19"
if_end.19:
  %".934" = load i32, i32* %"num_top"
  %".935" = add i32 %".934", 1
  store i32 %".935", i32* %"num_top"
  %".937" = load i32, i32* %"num_top"
  %".938" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".937"
  %".939" = load i32, i32* %"res.2"
  store i32 %".939", i32* %".938"
  br label %"while_cond.4"
}

declare i32 @"printf"(i8* %".1", ...)

@".str" = private constant [4 x i8] c"%d\0a\00", align 1
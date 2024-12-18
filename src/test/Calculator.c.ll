; ModuleID = "my_module"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"

define i32 @"main"()
{
entry:
  %".2" = zext i8 51 to i32
  %".3" = zext i8 43 to i32
  %".4" = zext i8 40 to i32
  %".5" = zext i8 50 to i32
  %".6" = zext i8 42 to i32
  %".7" = zext i8 50 to i32
  %".8" = zext i8 41 to i32
  %".9" = zext i8 45 to i32
  %".10" = zext i8 49 to i32
  %".11" = zext i8 47 to i32
  %".12" = zext i8 49 to i32
  %".13" = zext i8 35 to i32
  %"expr" = alloca [100 x i8]
  %".14" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 0
  %".15" = trunc i32 %".2" to i8
  store i8 %".15", i8* %".14"
  %".17" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 1
  %".18" = trunc i32 %".3" to i8
  store i8 %".18", i8* %".17"
  %".20" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 2
  %".21" = trunc i32 %".4" to i8
  store i8 %".21", i8* %".20"
  %".23" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 3
  %".24" = trunc i32 %".5" to i8
  store i8 %".24", i8* %".23"
  %".26" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 4
  %".27" = trunc i32 %".6" to i8
  store i8 %".27", i8* %".26"
  %".29" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 5
  %".30" = trunc i32 %".7" to i8
  store i8 %".30", i8* %".29"
  %".32" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 6
  %".33" = trunc i32 %".8" to i8
  store i8 %".33", i8* %".32"
  %".35" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 7
  %".36" = trunc i32 %".9" to i8
  store i8 %".36", i8* %".35"
  %".38" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 8
  %".39" = trunc i32 %".10" to i8
  store i8 %".39", i8* %".38"
  %".41" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 9
  %".42" = trunc i32 %".11" to i8
  store i8 %".42", i8* %".41"
  %".44" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 10
  %".45" = trunc i32 %".12" to i8
  store i8 %".45", i8* %".44"
  %".47" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 11
  %".48" = trunc i32 %".13" to i8
  store i8 %".48", i8* %".47"
  %".50" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 12
  store i8 0, i8* %".50"
  %".52" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 13
  store i8 0, i8* %".52"
  %".54" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 14
  store i8 0, i8* %".54"
  %".56" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 15
  store i8 0, i8* %".56"
  %".58" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 16
  store i8 0, i8* %".58"
  %".60" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 17
  store i8 0, i8* %".60"
  %".62" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 18
  store i8 0, i8* %".62"
  %".64" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 19
  store i8 0, i8* %".64"
  %".66" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 20
  store i8 0, i8* %".66"
  %".68" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 21
  store i8 0, i8* %".68"
  %".70" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 22
  store i8 0, i8* %".70"
  %".72" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 23
  store i8 0, i8* %".72"
  %".74" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 24
  store i8 0, i8* %".74"
  %".76" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 25
  store i8 0, i8* %".76"
  %".78" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 26
  store i8 0, i8* %".78"
  %".80" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 27
  store i8 0, i8* %".80"
  %".82" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 28
  store i8 0, i8* %".82"
  %".84" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 29
  store i8 0, i8* %".84"
  %".86" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 30
  store i8 0, i8* %".86"
  %".88" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 31
  store i8 0, i8* %".88"
  %".90" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 32
  store i8 0, i8* %".90"
  %".92" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 33
  store i8 0, i8* %".92"
  %".94" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 34
  store i8 0, i8* %".94"
  %".96" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 35
  store i8 0, i8* %".96"
  %".98" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 36
  store i8 0, i8* %".98"
  %".100" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 37
  store i8 0, i8* %".100"
  %".102" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 38
  store i8 0, i8* %".102"
  %".104" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 39
  store i8 0, i8* %".104"
  %".106" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 40
  store i8 0, i8* %".106"
  %".108" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 41
  store i8 0, i8* %".108"
  %".110" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 42
  store i8 0, i8* %".110"
  %".112" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 43
  store i8 0, i8* %".112"
  %".114" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 44
  store i8 0, i8* %".114"
  %".116" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 45
  store i8 0, i8* %".116"
  %".118" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 46
  store i8 0, i8* %".118"
  %".120" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 47
  store i8 0, i8* %".120"
  %".122" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 48
  store i8 0, i8* %".122"
  %".124" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 49
  store i8 0, i8* %".124"
  %".126" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 50
  store i8 0, i8* %".126"
  %".128" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 51
  store i8 0, i8* %".128"
  %".130" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 52
  store i8 0, i8* %".130"
  %".132" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 53
  store i8 0, i8* %".132"
  %".134" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 54
  store i8 0, i8* %".134"
  %".136" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 55
  store i8 0, i8* %".136"
  %".138" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 56
  store i8 0, i8* %".138"
  %".140" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 57
  store i8 0, i8* %".140"
  %".142" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 58
  store i8 0, i8* %".142"
  %".144" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 59
  store i8 0, i8* %".144"
  %".146" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 60
  store i8 0, i8* %".146"
  %".148" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 61
  store i8 0, i8* %".148"
  %".150" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 62
  store i8 0, i8* %".150"
  %".152" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 63
  store i8 0, i8* %".152"
  %".154" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 64
  store i8 0, i8* %".154"
  %".156" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 65
  store i8 0, i8* %".156"
  %".158" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 66
  store i8 0, i8* %".158"
  %".160" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 67
  store i8 0, i8* %".160"
  %".162" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 68
  store i8 0, i8* %".162"
  %".164" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 69
  store i8 0, i8* %".164"
  %".166" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 70
  store i8 0, i8* %".166"
  %".168" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 71
  store i8 0, i8* %".168"
  %".170" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 72
  store i8 0, i8* %".170"
  %".172" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 73
  store i8 0, i8* %".172"
  %".174" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 74
  store i8 0, i8* %".174"
  %".176" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 75
  store i8 0, i8* %".176"
  %".178" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 76
  store i8 0, i8* %".178"
  %".180" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 77
  store i8 0, i8* %".180"
  %".182" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 78
  store i8 0, i8* %".182"
  %".184" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 79
  store i8 0, i8* %".184"
  %".186" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 80
  store i8 0, i8* %".186"
  %".188" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 81
  store i8 0, i8* %".188"
  %".190" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 82
  store i8 0, i8* %".190"
  %".192" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 83
  store i8 0, i8* %".192"
  %".194" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 84
  store i8 0, i8* %".194"
  %".196" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 85
  store i8 0, i8* %".196"
  %".198" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 86
  store i8 0, i8* %".198"
  %".200" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 87
  store i8 0, i8* %".200"
  %".202" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 88
  store i8 0, i8* %".202"
  %".204" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 89
  store i8 0, i8* %".204"
  %".206" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 90
  store i8 0, i8* %".206"
  %".208" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 91
  store i8 0, i8* %".208"
  %".210" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 92
  store i8 0, i8* %".210"
  %".212" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 93
  store i8 0, i8* %".212"
  %".214" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 94
  store i8 0, i8* %".214"
  %".216" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 95
  store i8 0, i8* %".216"
  %".218" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 96
  store i8 0, i8* %".218"
  %".220" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 97
  store i8 0, i8* %".220"
  %".222" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 98
  store i8 0, i8* %".222"
  %".224" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 99
  store i8 0, i8* %".224"
  %"op_stack" = alloca [100 x i8]
  %"num_stack" = alloca [100 x i32]
  %".226" = sub i32 0, 1
  %"op_top" = alloca i32
  store i32 %".226", i32* %"op_top"
  %".228" = sub i32 0, 1
  %"num_top" = alloca i32
  store i32 %".228", i32* %"num_top"
  %"precedence" = alloca [128 x i8]
  %".230" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 0
  store i8 0, i8* %".230"
  %".232" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 1
  store i8 0, i8* %".232"
  %".234" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 2
  store i8 0, i8* %".234"
  %".236" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 3
  store i8 0, i8* %".236"
  %".238" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 4
  store i8 0, i8* %".238"
  %".240" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 5
  store i8 0, i8* %".240"
  %".242" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 6
  store i8 0, i8* %".242"
  %".244" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 7
  store i8 0, i8* %".244"
  %".246" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 8
  store i8 0, i8* %".246"
  %".248" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 9
  store i8 0, i8* %".248"
  %".250" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 10
  store i8 0, i8* %".250"
  %".252" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 11
  store i8 0, i8* %".252"
  %".254" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 12
  store i8 0, i8* %".254"
  %".256" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 13
  store i8 0, i8* %".256"
  %".258" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 14
  store i8 0, i8* %".258"
  %".260" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 15
  store i8 0, i8* %".260"
  %".262" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 16
  store i8 0, i8* %".262"
  %".264" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 17
  store i8 0, i8* %".264"
  %".266" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 18
  store i8 0, i8* %".266"
  %".268" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 19
  store i8 0, i8* %".268"
  %".270" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 20
  store i8 0, i8* %".270"
  %".272" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 21
  store i8 0, i8* %".272"
  %".274" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 22
  store i8 0, i8* %".274"
  %".276" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 23
  store i8 0, i8* %".276"
  %".278" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 24
  store i8 0, i8* %".278"
  %".280" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 25
  store i8 0, i8* %".280"
  %".282" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 26
  store i8 0, i8* %".282"
  %".284" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 27
  store i8 0, i8* %".284"
  %".286" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 28
  store i8 0, i8* %".286"
  %".288" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 29
  store i8 0, i8* %".288"
  %".290" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 30
  store i8 0, i8* %".290"
  %".292" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 31
  store i8 0, i8* %".292"
  %".294" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 32
  store i8 0, i8* %".294"
  %".296" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 33
  store i8 0, i8* %".296"
  %".298" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 34
  store i8 0, i8* %".298"
  %".300" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 35
  store i8 0, i8* %".300"
  %".302" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 36
  store i8 0, i8* %".302"
  %".304" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 37
  store i8 0, i8* %".304"
  %".306" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 38
  store i8 0, i8* %".306"
  %".308" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 39
  store i8 0, i8* %".308"
  %".310" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 40
  store i8 0, i8* %".310"
  %".312" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 41
  store i8 0, i8* %".312"
  %".314" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 42
  store i8 0, i8* %".314"
  %".316" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 43
  store i8 0, i8* %".316"
  %".318" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 44
  store i8 0, i8* %".318"
  %".320" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 45
  store i8 0, i8* %".320"
  %".322" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 46
  store i8 0, i8* %".322"
  %".324" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 47
  store i8 0, i8* %".324"
  %".326" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 48
  store i8 0, i8* %".326"
  %".328" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 49
  store i8 0, i8* %".328"
  %".330" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 50
  store i8 0, i8* %".330"
  %".332" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 51
  store i8 0, i8* %".332"
  %".334" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 52
  store i8 0, i8* %".334"
  %".336" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 53
  store i8 0, i8* %".336"
  %".338" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 54
  store i8 0, i8* %".338"
  %".340" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 55
  store i8 0, i8* %".340"
  %".342" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 56
  store i8 0, i8* %".342"
  %".344" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 57
  store i8 0, i8* %".344"
  %".346" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 58
  store i8 0, i8* %".346"
  %".348" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 59
  store i8 0, i8* %".348"
  %".350" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 60
  store i8 0, i8* %".350"
  %".352" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 61
  store i8 0, i8* %".352"
  %".354" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 62
  store i8 0, i8* %".354"
  %".356" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 63
  store i8 0, i8* %".356"
  %".358" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 64
  store i8 0, i8* %".358"
  %".360" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 65
  store i8 0, i8* %".360"
  %".362" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 66
  store i8 0, i8* %".362"
  %".364" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 67
  store i8 0, i8* %".364"
  %".366" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 68
  store i8 0, i8* %".366"
  %".368" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 69
  store i8 0, i8* %".368"
  %".370" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 70
  store i8 0, i8* %".370"
  %".372" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 71
  store i8 0, i8* %".372"
  %".374" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 72
  store i8 0, i8* %".374"
  %".376" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 73
  store i8 0, i8* %".376"
  %".378" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 74
  store i8 0, i8* %".378"
  %".380" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 75
  store i8 0, i8* %".380"
  %".382" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 76
  store i8 0, i8* %".382"
  %".384" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 77
  store i8 0, i8* %".384"
  %".386" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 78
  store i8 0, i8* %".386"
  %".388" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 79
  store i8 0, i8* %".388"
  %".390" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 80
  store i8 0, i8* %".390"
  %".392" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 81
  store i8 0, i8* %".392"
  %".394" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 82
  store i8 0, i8* %".394"
  %".396" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 83
  store i8 0, i8* %".396"
  %".398" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 84
  store i8 0, i8* %".398"
  %".400" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 85
  store i8 0, i8* %".400"
  %".402" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 86
  store i8 0, i8* %".402"
  %".404" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 87
  store i8 0, i8* %".404"
  %".406" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 88
  store i8 0, i8* %".406"
  %".408" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 89
  store i8 0, i8* %".408"
  %".410" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 90
  store i8 0, i8* %".410"
  %".412" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 91
  store i8 0, i8* %".412"
  %".414" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 92
  store i8 0, i8* %".414"
  %".416" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 93
  store i8 0, i8* %".416"
  %".418" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 94
  store i8 0, i8* %".418"
  %".420" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 95
  store i8 0, i8* %".420"
  %".422" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 96
  store i8 0, i8* %".422"
  %".424" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 97
  store i8 0, i8* %".424"
  %".426" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 98
  store i8 0, i8* %".426"
  %".428" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 99
  store i8 0, i8* %".428"
  %".430" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 100
  store i8 0, i8* %".430"
  %".432" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 101
  store i8 0, i8* %".432"
  %".434" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 102
  store i8 0, i8* %".434"
  %".436" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 103
  store i8 0, i8* %".436"
  %".438" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 104
  store i8 0, i8* %".438"
  %".440" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 105
  store i8 0, i8* %".440"
  %".442" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 106
  store i8 0, i8* %".442"
  %".444" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 107
  store i8 0, i8* %".444"
  %".446" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 108
  store i8 0, i8* %".446"
  %".448" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 109
  store i8 0, i8* %".448"
  %".450" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 110
  store i8 0, i8* %".450"
  %".452" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 111
  store i8 0, i8* %".452"
  %".454" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 112
  store i8 0, i8* %".454"
  %".456" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 113
  store i8 0, i8* %".456"
  %".458" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 114
  store i8 0, i8* %".458"
  %".460" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 115
  store i8 0, i8* %".460"
  %".462" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 116
  store i8 0, i8* %".462"
  %".464" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 117
  store i8 0, i8* %".464"
  %".466" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 118
  store i8 0, i8* %".466"
  %".468" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 119
  store i8 0, i8* %".468"
  %".470" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 120
  store i8 0, i8* %".470"
  %".472" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 121
  store i8 0, i8* %".472"
  %".474" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 122
  store i8 0, i8* %".474"
  %".476" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 123
  store i8 0, i8* %".476"
  %".478" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 124
  store i8 0, i8* %".478"
  %".480" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 125
  store i8 0, i8* %".480"
  %".482" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 126
  store i8 0, i8* %".482"
  %".484" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 127
  store i8 0, i8* %".484"
  %".486" = zext i8 43 to i32
  %".487" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 %".486"
  %".488" = trunc i32 1 to i8
  store i8 %".488", i8* %".487"
  %".490" = zext i8 %".488" to i32
  %".491" = zext i8 45 to i32
  %".492" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 %".491"
  %".493" = trunc i32 1 to i8
  store i8 %".493", i8* %".492"
  %".495" = zext i8 %".493" to i32
  %".496" = zext i8 42 to i32
  %".497" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 %".496"
  %".498" = trunc i32 2 to i8
  store i8 %".498", i8* %".497"
  %".500" = zext i8 %".498" to i32
  %".501" = zext i8 47 to i32
  %".502" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 %".501"
  %".503" = trunc i32 2 to i8
  store i8 %".503", i8* %".502"
  %".505" = zext i8 %".503" to i32
  %".506" = zext i8 40 to i32
  %".507" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 %".506"
  %".508" = trunc i32 0 to i8
  store i8 %".508", i8* %".507"
  %".510" = zext i8 %".508" to i32
  %"i" = alloca i32
  store i32 0, i32* %"i"
  br label %"while_cond"
while_cond:
  %".513" = load i32, i32* %"i"
  %".514" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 %".513"
  %".515" = load i8, i8* %".514"
  %".516" = icmp ne i8 %".515", 35
  %".517" = zext i1 %".516" to i32
  %".518" = icmp ne i32 %".517", 0
  br i1 %".518", label %"while_body", label %"while_end"
while_body:
  %"c" = alloca i8
  %".520" = load i32, i32* %"i"
  %".521" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 %".520"
  %".522" = load i8, i8* %".521"
  %".523" = zext i8 %".522" to i32
  %".524" = trunc i32 %".523" to i8
  store i8 %".524", i8* %"c"
  %".526" = zext i8 %".524" to i32
  %".527" = load i8, i8* %"c"
  %".528" = icmp sge i8 %".527", 48
  %".529" = zext i1 %".528" to i32
  %".530" = load i8, i8* %"c"
  %".531" = icmp sle i8 %".530", 57
  %".532" = zext i1 %".531" to i32
  %".533" = and i32 %".529", %".532"
  %".534" = icmp ne i32 %".533", 0
  br i1 %".534", label %"if_then", label %"if_else"
while_end:
  br label %"while_cond.4"
if_then:
  %"num" = alloca i32
  store i32 0, i32* %"num"
  br label %"while_cond.1"
if_else:
  %".572" = load i8, i8* %"c"
  %".573" = icmp eq i8 %".572", 40
  %".574" = zext i1 %".573" to i32
  %".575" = icmp ne i32 %".574", 0
  br i1 %".575", label %"if_then.1", label %"if_else.1"
while_cond.1:
  %".538" = load i32, i32* %"i"
  %".539" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 %".538"
  %".540" = load i8, i8* %".539"
  %".541" = icmp sge i8 %".540", 48
  %".542" = zext i1 %".541" to i32
  %".543" = load i32, i32* %"i"
  %".544" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 %".543"
  %".545" = load i8, i8* %".544"
  %".546" = icmp sle i8 %".545", 57
  %".547" = zext i1 %".546" to i32
  %".548" = and i32 %".542", %".547"
  %".549" = icmp ne i32 %".548", 0
  br i1 %".549", label %"while_body.1", label %"while_end.1"
while_body.1:
  %".551" = load i32, i32* %"num"
  %".552" = mul i32 %".551", 10
  %".553" = load i32, i32* %"i"
  %".554" = getelementptr inbounds [100 x i8], [100 x i8]* %"expr", i32 0, i32 %".553"
  %".555" = load i8, i8* %".554"
  %".556" = sub i8 %".555", 48
  %".557" = zext i8 %".556" to i32
  %".558" = add i32 %".552", %".557"
  store i32 %".558", i32* %"num"
  %".560" = load i32, i32* %"i"
  %".561" = add i32 %".560", 1
  store i32 %".561", i32* %"i"
  br label %"while_cond.1"
while_end.1:
  %".564" = load i32, i32* %"num_top"
  %".565" = add i32 %".564", 1
  store i32 %".565", i32* %"num_top"
  %".567" = load i32, i32* %"num_top"
  %".568" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".567"
  %".569" = load i32, i32* %"num"
  store i32 %".569", i32* %".568"
  br label %"while_cond"
if_then.1:
  %".577" = load i32, i32* %"op_top"
  %".578" = add i32 %".577", 1
  store i32 %".578", i32* %"op_top"
  %".580" = load i32, i32* %"op_top"
  %".581" = getelementptr inbounds [100 x i8], [100 x i8]* %"op_stack", i32 0, i32 %".580"
  %".582" = load i8, i8* %"c"
  %".583" = zext i8 %".582" to i32
  %".584" = trunc i32 %".583" to i8
  store i8 %".584", i8* %".581"
  %".586" = zext i8 %".584" to i32
  br label %"if_merge.4"
if_else.1:
  %".587" = load i8, i8* %"c"
  %".588" = icmp eq i8 %".587", 41
  %".589" = zext i1 %".588" to i32
  %".590" = icmp ne i32 %".589", 0
  br i1 %".590", label %"if_then.2", label %"if_else.2"
if_then.2:
  %"m" = alloca i32
  store i32 0, i32* %"m"
  br label %"while_cond.2"
if_else.2:
  %".678" = load i8, i8* %"c"
  %".679" = icmp eq i8 %".678", 43
  %".680" = zext i1 %".679" to i32
  %".681" = load i8, i8* %"c"
  %".682" = icmp eq i8 %".681", 45
  %".683" = zext i1 %".682" to i32
  %".684" = or i32 %".680", %".683"
  %".685" = load i8, i8* %"c"
  %".686" = icmp eq i8 %".685", 42
  %".687" = zext i1 %".686" to i32
  %".688" = or i32 %".684", %".687"
  %".689" = load i8, i8* %"c"
  %".690" = icmp eq i8 %".689", 47
  %".691" = zext i1 %".690" to i32
  %".692" = or i32 %".688", %".691"
  %".693" = icmp ne i32 %".692", 0
  br i1 %".693", label %"if_then.7", label %"if_end.1"
while_cond.2:
  %".594" = load i32, i32* %"op_top"
  %".595" = icmp sge i32 %".594", 0
  %".596" = zext i1 %".595" to i32
  %".597" = load i32, i32* %"op_top"
  %".598" = getelementptr inbounds [100 x i8], [100 x i8]* %"op_stack", i32 0, i32 %".597"
  %".599" = load i8, i8* %".598"
  %".600" = icmp ne i8 %".599", 40
  %".601" = zext i1 %".600" to i32
  %".602" = and i32 %".596", %".601"
  %".603" = icmp ne i32 %".602", 0
  br i1 %".603", label %"while_body.2", label %"while_end.2"
while_body.2:
  %"op" = alloca i8
  %".605" = load i32, i32* %"op_top"
  %".606" = getelementptr inbounds [100 x i8], [100 x i8]* %"op_stack", i32 0, i32 %".605"
  %".607" = load i8, i8* %".606"
  %".608" = zext i8 %".607" to i32
  %".609" = trunc i32 %".608" to i8
  store i8 %".609", i8* %"op"
  %".611" = zext i8 %".609" to i32
  %".612" = load i32, i32* %"op_top"
  %".613" = sub i32 %".612", 1
  store i32 %".613", i32* %"op_top"
  %".615" = load i32, i32* %"num_top"
  %".616" = sub i32 %".615", 1
  store i32 %".616", i32* %"num_top"
  %".618" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".615"
  %".619" = load i32, i32* %".618"
  %"b" = alloca i32
  store i32 %".619", i32* %"b"
  %".621" = load i32, i32* %"num_top"
  %".622" = sub i32 %".621", 1
  store i32 %".622", i32* %"num_top"
  %".624" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".621"
  %".625" = load i32, i32* %".624"
  %"a" = alloca i32
  store i32 %".625", i32* %"a"
  %"res" = alloca i32
  %".627" = load i8, i8* %"op"
  %".628" = icmp eq i8 %".627", 43
  %".629" = zext i1 %".628" to i32
  %".630" = icmp ne i32 %".629", 0
  br i1 %".630", label %"if_then.3", label %"if_else.3"
while_end.2:
  %".675" = load i32, i32* %"op_top"
  %".676" = sub i32 %".675", 1
  store i32 %".676", i32* %"op_top"
if_then.3:
  %".632" = load i32, i32* %"a"
  %".633" = load i32, i32* %"b"
  %".634" = add i32 %".632", %".633"
  store i32 %".634", i32* %"res"
  br label %"if_merge.2"
if_else.3:
  %".636" = load i8, i8* %"op"
  %".637" = icmp eq i8 %".636", 45
  %".638" = zext i1 %".637" to i32
  %".639" = icmp ne i32 %".638", 0
  br i1 %".639", label %"if_then.4", label %"if_else.4"
if_then.4:
  %".641" = load i32, i32* %"a"
  %".642" = load i32, i32* %"b"
  %".643" = sub i32 %".641", %".642"
  store i32 %".643", i32* %"res"
  br label %"if_merge.1"
if_else.4:
  %".645" = load i8, i8* %"op"
  %".646" = icmp eq i8 %".645", 42
  %".647" = zext i1 %".646" to i32
  %".648" = icmp ne i32 %".647", 0
  br i1 %".648", label %"if_then.5", label %"if_else.5"
if_then.5:
  %".650" = load i32, i32* %"a"
  %".651" = load i32, i32* %"b"
  %".652" = mul i32 %".650", %".651"
  store i32 %".652", i32* %"res"
  br label %"if_merge"
if_else.5:
  %".654" = load i8, i8* %"op"
  %".655" = icmp eq i8 %".654", 47
  %".656" = zext i1 %".655" to i32
  %".657" = icmp ne i32 %".656", 0
  br i1 %".657", label %"if_then.6", label %"if_end"
if_then.6:
  %".659" = load i32, i32* %"a"
  %".660" = load i32, i32* %"b"
  %".661" = sdiv i32 %".659", %".660"
  store i32 %".661", i32* %"res"
  br label %"if_end"
if_end:
if_merge:
if_merge.1:
if_merge.2:
  %".667" = load i32, i32* %"num_top"
  %".668" = add i32 %".667", 1
  store i32 %".668", i32* %"num_top"
  %".670" = load i32, i32* %"num_top"
  %".671" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".670"
  %".672" = load i32, i32* %"res"
  store i32 %".672", i32* %".671"
  br label %"while_cond.2"
if_then.7:
  %"m.1" = alloca i32
  store i32 0, i32* %"m.1"
  br label %"while_cond.3"
if_end.1:
while_cond.3:
  %".697" = load i32, i32* %"op_top"
  %".698" = icmp sge i32 %".697", 0
  %".699" = zext i1 %".698" to i32
  %".700" = load i32, i32* %"op_top"
  %".701" = getelementptr inbounds [100 x i8], [100 x i8]* %"op_stack", i32 0, i32 %".700"
  %".702" = load i8, i8* %".701"
  %".703" = zext i8 %".702" to i32
  %".704" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 %".703"
  %".705" = load i8, i8* %".704"
  %".706" = load i8, i8* %"c"
  %".707" = zext i8 %".706" to i32
  %".708" = getelementptr inbounds [128 x i8], [128 x i8]* %"precedence", i32 0, i32 %".707"
  %".709" = load i8, i8* %".708"
  %".710" = icmp sge i8 %".705", %".709"
  %".711" = zext i1 %".710" to i32
  %".712" = and i32 %".699", %".711"
  %".713" = icmp ne i32 %".712", 0
  br i1 %".713", label %"while_body.3", label %"while_end.3"
while_body.3:
  %"op.1" = alloca i8
  %".715" = load i32, i32* %"op_top"
  %".716" = getelementptr inbounds [100 x i8], [100 x i8]* %"op_stack", i32 0, i32 %".715"
  %".717" = load i8, i8* %".716"
  %".718" = zext i8 %".717" to i32
  %".719" = trunc i32 %".718" to i8
  store i8 %".719", i8* %"op.1"
  %".721" = zext i8 %".719" to i32
  %".722" = load i32, i32* %"num_top"
  %".723" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".722"
  %".724" = load i32, i32* %".723"
  %"b.1" = alloca i32
  store i32 %".724", i32* %"b.1"
  %".726" = load i32, i32* %"num_top"
  %".727" = sub i32 %".726", 1
  store i32 %".727", i32* %"num_top"
  %".729" = load i32, i32* %"num_top"
  %".730" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".729"
  %".731" = load i32, i32* %".730"
  %"a.1" = alloca i32
  store i32 %".731", i32* %"a.1"
  %".733" = load i32, i32* %"num_top"
  %".734" = sub i32 %".733", 1
  store i32 %".734", i32* %"num_top"
  %"res.1" = alloca i32
  %".736" = load i8, i8* %"op.1"
  %".737" = icmp eq i8 %".736", 43
  %".738" = zext i1 %".737" to i32
  %".739" = icmp ne i32 %".738", 0
  br i1 %".739", label %"if_then.8", label %"if_end.2"
while_end.3:
  %".784" = load i32, i32* %"op_top"
  %".785" = add i32 %".784", 1
  store i32 %".785", i32* %"op_top"
  %".787" = load i32, i32* %"op_top"
  %".788" = getelementptr inbounds [100 x i8], [100 x i8]* %"op_stack", i32 0, i32 %".787"
  %".789" = load i8, i8* %"c"
  %".790" = zext i8 %".789" to i32
  %".791" = trunc i32 %".790" to i8
  store i8 %".791", i8* %".788"
  %".793" = zext i8 %".791" to i32
if_then.8:
  %".741" = load i32, i32* %"a.1"
  %".742" = load i32, i32* %"b.1"
  %".743" = add i32 %".741", %".742"
  store i32 %".743", i32* %"res.1"
  br label %"if_end.2"
if_end.2:
  %".746" = load i8, i8* %"op.1"
  %".747" = icmp eq i8 %".746", 45
  %".748" = zext i1 %".747" to i32
  %".749" = icmp ne i32 %".748", 0
  br i1 %".749", label %"if_then.9", label %"if_end.3"
if_then.9:
  %".751" = load i32, i32* %"a.1"
  %".752" = load i32, i32* %"b.1"
  %".753" = sub i32 %".751", %".752"
  store i32 %".753", i32* %"res.1"
  br label %"if_end.3"
if_end.3:
  %".756" = load i8, i8* %"op.1"
  %".757" = icmp eq i8 %".756", 42
  %".758" = zext i1 %".757" to i32
  %".759" = icmp ne i32 %".758", 0
  br i1 %".759", label %"if_then.10", label %"if_end.4"
if_then.10:
  %".761" = load i32, i32* %"a.1"
  %".762" = load i32, i32* %"b.1"
  %".763" = mul i32 %".761", %".762"
  store i32 %".763", i32* %"res.1"
  br label %"if_end.4"
if_end.4:
  %".766" = load i8, i8* %"op.1"
  %".767" = icmp eq i8 %".766", 47
  %".768" = zext i1 %".767" to i32
  %".769" = icmp ne i32 %".768", 0
  br i1 %".769", label %"if_then.11", label %"if_end.5"
if_then.11:
  %".771" = load i32, i32* %"a.1"
  %".772" = load i32, i32* %"b.1"
  %".773" = sdiv i32 %".771", %".772"
  store i32 %".773", i32* %"res.1"
  br label %"if_end.5"
if_end.5:
  %".776" = load i32, i32* %"num_top"
  %".777" = add i32 %".776", 1
  store i32 %".777", i32* %"num_top"
  %".779" = load i32, i32* %"num_top"
  %".780" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".779"
  %".781" = load i32, i32* %"res.1"
  store i32 %".781", i32* %".780"
  br label %"while_cond.3"
if_merge.3:
if_merge.4:
if_merge.5:
  %".795" = load i32, i32* %"i"
  %".796" = add i32 %".795", 1
  store i32 %".796", i32* %"i"
  br label %"while_cond"
while_cond.4:
  %".800" = load i32, i32* %"op_top"
  %".801" = icmp sge i32 %".800", 0
  %".802" = zext i1 %".801" to i32
  %".803" = icmp ne i32 %".802", 0
  br i1 %".803", label %"while_body.4", label %"while_end.4"
while_body.4:
  %"op.2" = alloca i8
  %".805" = load i32, i32* %"op_top"
  %".806" = sub i32 %".805", 1
  store i32 %".806", i32* %"op_top"
  %".808" = getelementptr inbounds [100 x i8], [100 x i8]* %"op_stack", i32 0, i32 %".805"
  %".809" = load i8, i8* %".808"
  %".810" = zext i8 %".809" to i32
  %".811" = trunc i32 %".810" to i8
  store i8 %".811", i8* %"op.2"
  %".813" = zext i8 %".811" to i32
  %".814" = load i32, i32* %"num_top"
  %".815" = sub i32 %".814", 1
  store i32 %".815", i32* %"num_top"
  %".817" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".814"
  %".818" = load i32, i32* %".817"
  %"b.2" = alloca i32
  store i32 %".818", i32* %"b.2"
  %".820" = load i32, i32* %"num_top"
  %".821" = sub i32 %".820", 1
  store i32 %".821", i32* %"num_top"
  %".823" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".820"
  %".824" = load i32, i32* %".823"
  %"a.2" = alloca i32
  store i32 %".824", i32* %"a.2"
  %".826" = load i8, i8* %"op.2"
  %".827" = icmp eq i8 %".826", 43
  %".828" = zext i1 %".827" to i32
  %".829" = icmp ne i32 %".828", 0
  br i1 %".829", label %"then", label %"else"
while_end.4:
  %".871" = getelementptr inbounds [12 x i8], [12 x i8]* @".str", i32 0, i32 0
  %".872" = load i32, i32* %"num_top"
  %".873" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".872"
  %".874" = load i32, i32* %".873"
  %".875" = call i32 (i8*, ...) @"printf"(i8* %".871", i32 %".874")
  ret i32 0
then:
  %".831" = load i32, i32* %"a.2"
  %".832" = load i32, i32* %"b.2"
  %".833" = add i32 %".831", %".832"
  br label %"cond_merge"
else:
  %".835" = load i8, i8* %"op.2"
  %".836" = icmp eq i8 %".835", 45
  %".837" = zext i1 %".836" to i32
  %".838" = icmp ne i32 %".837", 0
  br i1 %".838", label %"then.1", label %"else.1"
cond_merge:
  %".861" = phi  i32 [%".833", %"then"], [%".859", %"else"]
  %"res.2" = alloca i32
  store i32 %".861", i32* %"res.2"
  %".863" = load i32, i32* %"num_top"
  %".864" = add i32 %".863", 1
  store i32 %".864", i32* %"num_top"
  %".866" = load i32, i32* %"num_top"
  %".867" = getelementptr inbounds [100 x i32], [100 x i32]* %"num_stack", i32 0, i32 %".866"
  %".868" = load i32, i32* %"res.2"
  store i32 %".868", i32* %".867"
  br label %"while_cond.4"
then.1:
  %".840" = load i32, i32* %"a.2"
  %".841" = load i32, i32* %"b.2"
  %".842" = sub i32 %".840", %".841"
  br label %"cond_merge.1"
else.1:
  %".844" = load i8, i8* %"op.2"
  %".845" = icmp eq i8 %".844", 42
  %".846" = zext i1 %".845" to i32
  %".847" = icmp ne i32 %".846", 0
  br i1 %".847", label %"then.2", label %"else.2"
cond_merge.1:
  %".859" = phi  i32 [%".842", %"then.1"], [%".857", %"else.1"]
  br label %"cond_merge"
then.2:
  %".849" = load i32, i32* %"a.2"
  %".850" = load i32, i32* %"b.2"
  %".851" = mul i32 %".849", %".850"
  br label %"cond_merge.2"
else.2:
  %".853" = load i32, i32* %"a.2"
  %".854" = load i32, i32* %"b.2"
  %".855" = sdiv i32 %".853", %".854"
  br label %"cond_merge.2"
cond_merge.2:
  %".857" = phi  i32 [%".851", %"then.2"], [%".855", %"else.2"]
  br label %"cond_merge.1"
}

declare i32 @"printf"(i8* %".1", ...)

@".str" = private constant [12 x i8] c"Result: %d\0a\00", align 1
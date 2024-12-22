; ModuleID = "my_module"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"

define i32 @"main"()
{
entry:
  %".2" = zext i8 97 to i32
  %".3" = zext i8 98 to i32
  %".4" = zext i8 99 to i32
  %".5" = zext i8 100 to i32
  %".6" = zext i8 101 to i32
  %".7" = zext i8 102 to i32
  %".8" = zext i8 103 to i32
  %".9" = zext i8 97 to i32
  %".10" = zext i8 98 to i32
  %".11" = zext i8 100 to i32
  %".12" = zext i8 101 to i32
  %".13" = zext i8 102 to i32
  %"s" = alloca [100 x i8]
  %".14" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 0
  %".15" = trunc i32 %".2" to i8
  store i8 %".15", i8* %".14"
  %".17" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 1
  %".18" = trunc i32 %".3" to i8
  store i8 %".18", i8* %".17"
  %".20" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 2
  %".21" = trunc i32 %".4" to i8
  store i8 %".21", i8* %".20"
  %".23" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 3
  %".24" = trunc i32 %".5" to i8
  store i8 %".24", i8* %".23"
  %".26" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 4
  %".27" = trunc i32 %".6" to i8
  store i8 %".27", i8* %".26"
  %".29" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 5
  %".30" = trunc i32 %".7" to i8
  store i8 %".30", i8* %".29"
  %".32" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 6
  %".33" = trunc i32 %".8" to i8
  store i8 %".33", i8* %".32"
  %".35" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 7
  %".36" = trunc i32 %".9" to i8
  store i8 %".36", i8* %".35"
  %".38" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 8
  %".39" = trunc i32 %".10" to i8
  store i8 %".39", i8* %".38"
  %".41" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 9
  %".42" = trunc i32 %".11" to i8
  store i8 %".42", i8* %".41"
  %".44" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 10
  %".45" = trunc i32 %".12" to i8
  store i8 %".45", i8* %".44"
  %".47" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 11
  %".48" = trunc i32 %".13" to i8
  store i8 %".48", i8* %".47"
  %".50" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 12
  store i8 0, i8* %".50"
  %".52" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 13
  store i8 0, i8* %".52"
  %".54" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 14
  store i8 0, i8* %".54"
  %".56" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 15
  store i8 0, i8* %".56"
  %".58" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 16
  store i8 0, i8* %".58"
  %".60" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 17
  store i8 0, i8* %".60"
  %".62" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 18
  store i8 0, i8* %".62"
  %".64" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 19
  store i8 0, i8* %".64"
  %".66" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 20
  store i8 0, i8* %".66"
  %".68" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 21
  store i8 0, i8* %".68"
  %".70" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 22
  store i8 0, i8* %".70"
  %".72" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 23
  store i8 0, i8* %".72"
  %".74" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 24
  store i8 0, i8* %".74"
  %".76" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 25
  store i8 0, i8* %".76"
  %".78" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 26
  store i8 0, i8* %".78"
  %".80" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 27
  store i8 0, i8* %".80"
  %".82" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 28
  store i8 0, i8* %".82"
  %".84" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 29
  store i8 0, i8* %".84"
  %".86" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 30
  store i8 0, i8* %".86"
  %".88" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 31
  store i8 0, i8* %".88"
  %".90" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 32
  store i8 0, i8* %".90"
  %".92" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 33
  store i8 0, i8* %".92"
  %".94" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 34
  store i8 0, i8* %".94"
  %".96" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 35
  store i8 0, i8* %".96"
  %".98" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 36
  store i8 0, i8* %".98"
  %".100" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 37
  store i8 0, i8* %".100"
  %".102" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 38
  store i8 0, i8* %".102"
  %".104" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 39
  store i8 0, i8* %".104"
  %".106" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 40
  store i8 0, i8* %".106"
  %".108" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 41
  store i8 0, i8* %".108"
  %".110" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 42
  store i8 0, i8* %".110"
  %".112" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 43
  store i8 0, i8* %".112"
  %".114" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 44
  store i8 0, i8* %".114"
  %".116" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 45
  store i8 0, i8* %".116"
  %".118" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 46
  store i8 0, i8* %".118"
  %".120" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 47
  store i8 0, i8* %".120"
  %".122" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 48
  store i8 0, i8* %".122"
  %".124" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 49
  store i8 0, i8* %".124"
  %".126" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 50
  store i8 0, i8* %".126"
  %".128" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 51
  store i8 0, i8* %".128"
  %".130" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 52
  store i8 0, i8* %".130"
  %".132" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 53
  store i8 0, i8* %".132"
  %".134" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 54
  store i8 0, i8* %".134"
  %".136" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 55
  store i8 0, i8* %".136"
  %".138" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 56
  store i8 0, i8* %".138"
  %".140" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 57
  store i8 0, i8* %".140"
  %".142" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 58
  store i8 0, i8* %".142"
  %".144" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 59
  store i8 0, i8* %".144"
  %".146" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 60
  store i8 0, i8* %".146"
  %".148" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 61
  store i8 0, i8* %".148"
  %".150" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 62
  store i8 0, i8* %".150"
  %".152" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 63
  store i8 0, i8* %".152"
  %".154" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 64
  store i8 0, i8* %".154"
  %".156" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 65
  store i8 0, i8* %".156"
  %".158" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 66
  store i8 0, i8* %".158"
  %".160" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 67
  store i8 0, i8* %".160"
  %".162" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 68
  store i8 0, i8* %".162"
  %".164" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 69
  store i8 0, i8* %".164"
  %".166" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 70
  store i8 0, i8* %".166"
  %".168" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 71
  store i8 0, i8* %".168"
  %".170" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 72
  store i8 0, i8* %".170"
  %".172" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 73
  store i8 0, i8* %".172"
  %".174" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 74
  store i8 0, i8* %".174"
  %".176" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 75
  store i8 0, i8* %".176"
  %".178" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 76
  store i8 0, i8* %".178"
  %".180" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 77
  store i8 0, i8* %".180"
  %".182" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 78
  store i8 0, i8* %".182"
  %".184" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 79
  store i8 0, i8* %".184"
  %".186" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 80
  store i8 0, i8* %".186"
  %".188" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 81
  store i8 0, i8* %".188"
  %".190" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 82
  store i8 0, i8* %".190"
  %".192" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 83
  store i8 0, i8* %".192"
  %".194" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 84
  store i8 0, i8* %".194"
  %".196" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 85
  store i8 0, i8* %".196"
  %".198" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 86
  store i8 0, i8* %".198"
  %".200" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 87
  store i8 0, i8* %".200"
  %".202" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 88
  store i8 0, i8* %".202"
  %".204" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 89
  store i8 0, i8* %".204"
  %".206" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 90
  store i8 0, i8* %".206"
  %".208" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 91
  store i8 0, i8* %".208"
  %".210" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 92
  store i8 0, i8* %".210"
  %".212" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 93
  store i8 0, i8* %".212"
  %".214" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 94
  store i8 0, i8* %".214"
  %".216" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 95
  store i8 0, i8* %".216"
  %".218" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 96
  store i8 0, i8* %".218"
  %".220" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 97
  store i8 0, i8* %".220"
  %".222" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 98
  store i8 0, i8* %".222"
  %".224" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 99
  store i8 0, i8* %".224"
  %".226" = getelementptr inbounds [58 x i8], [58 x i8]* @".str", i32 0, i32 0
  %".227" = call i32 (i8*, ...) @"printf"(i8* %".226")
  %".228" = getelementptr inbounds [3 x i8], [3 x i8]* @".str.1", i32 0, i32 0
  %".229" = call i32 (i8*, ...) @"scanf"(i8* %".228", [100 x i8]* %"s")
  %".230" = zext i8 97 to i32
  %".231" = zext i8 98 to i32
  %"t" = alloca [100 x i8]
  %".232" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 0
  %".233" = trunc i32 %".230" to i8
  store i8 %".233", i8* %".232"
  %".235" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 1
  %".236" = trunc i32 %".231" to i8
  store i8 %".236", i8* %".235"
  %".238" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 2
  store i8 0, i8* %".238"
  %".240" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 3
  store i8 0, i8* %".240"
  %".242" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 4
  store i8 0, i8* %".242"
  %".244" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 5
  store i8 0, i8* %".244"
  %".246" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 6
  store i8 0, i8* %".246"
  %".248" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 7
  store i8 0, i8* %".248"
  %".250" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 8
  store i8 0, i8* %".250"
  %".252" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 9
  store i8 0, i8* %".252"
  %".254" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 10
  store i8 0, i8* %".254"
  %".256" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 11
  store i8 0, i8* %".256"
  %".258" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 12
  store i8 0, i8* %".258"
  %".260" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 13
  store i8 0, i8* %".260"
  %".262" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 14
  store i8 0, i8* %".262"
  %".264" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 15
  store i8 0, i8* %".264"
  %".266" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 16
  store i8 0, i8* %".266"
  %".268" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 17
  store i8 0, i8* %".268"
  %".270" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 18
  store i8 0, i8* %".270"
  %".272" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 19
  store i8 0, i8* %".272"
  %".274" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 20
  store i8 0, i8* %".274"
  %".276" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 21
  store i8 0, i8* %".276"
  %".278" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 22
  store i8 0, i8* %".278"
  %".280" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 23
  store i8 0, i8* %".280"
  %".282" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 24
  store i8 0, i8* %".282"
  %".284" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 25
  store i8 0, i8* %".284"
  %".286" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 26
  store i8 0, i8* %".286"
  %".288" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 27
  store i8 0, i8* %".288"
  %".290" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 28
  store i8 0, i8* %".290"
  %".292" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 29
  store i8 0, i8* %".292"
  %".294" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 30
  store i8 0, i8* %".294"
  %".296" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 31
  store i8 0, i8* %".296"
  %".298" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 32
  store i8 0, i8* %".298"
  %".300" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 33
  store i8 0, i8* %".300"
  %".302" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 34
  store i8 0, i8* %".302"
  %".304" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 35
  store i8 0, i8* %".304"
  %".306" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 36
  store i8 0, i8* %".306"
  %".308" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 37
  store i8 0, i8* %".308"
  %".310" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 38
  store i8 0, i8* %".310"
  %".312" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 39
  store i8 0, i8* %".312"
  %".314" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 40
  store i8 0, i8* %".314"
  %".316" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 41
  store i8 0, i8* %".316"
  %".318" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 42
  store i8 0, i8* %".318"
  %".320" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 43
  store i8 0, i8* %".320"
  %".322" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 44
  store i8 0, i8* %".322"
  %".324" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 45
  store i8 0, i8* %".324"
  %".326" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 46
  store i8 0, i8* %".326"
  %".328" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 47
  store i8 0, i8* %".328"
  %".330" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 48
  store i8 0, i8* %".330"
  %".332" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 49
  store i8 0, i8* %".332"
  %".334" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 50
  store i8 0, i8* %".334"
  %".336" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 51
  store i8 0, i8* %".336"
  %".338" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 52
  store i8 0, i8* %".338"
  %".340" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 53
  store i8 0, i8* %".340"
  %".342" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 54
  store i8 0, i8* %".342"
  %".344" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 55
  store i8 0, i8* %".344"
  %".346" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 56
  store i8 0, i8* %".346"
  %".348" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 57
  store i8 0, i8* %".348"
  %".350" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 58
  store i8 0, i8* %".350"
  %".352" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 59
  store i8 0, i8* %".352"
  %".354" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 60
  store i8 0, i8* %".354"
  %".356" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 61
  store i8 0, i8* %".356"
  %".358" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 62
  store i8 0, i8* %".358"
  %".360" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 63
  store i8 0, i8* %".360"
  %".362" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 64
  store i8 0, i8* %".362"
  %".364" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 65
  store i8 0, i8* %".364"
  %".366" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 66
  store i8 0, i8* %".366"
  %".368" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 67
  store i8 0, i8* %".368"
  %".370" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 68
  store i8 0, i8* %".370"
  %".372" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 69
  store i8 0, i8* %".372"
  %".374" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 70
  store i8 0, i8* %".374"
  %".376" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 71
  store i8 0, i8* %".376"
  %".378" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 72
  store i8 0, i8* %".378"
  %".380" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 73
  store i8 0, i8* %".380"
  %".382" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 74
  store i8 0, i8* %".382"
  %".384" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 75
  store i8 0, i8* %".384"
  %".386" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 76
  store i8 0, i8* %".386"
  %".388" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 77
  store i8 0, i8* %".388"
  %".390" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 78
  store i8 0, i8* %".390"
  %".392" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 79
  store i8 0, i8* %".392"
  %".394" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 80
  store i8 0, i8* %".394"
  %".396" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 81
  store i8 0, i8* %".396"
  %".398" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 82
  store i8 0, i8* %".398"
  %".400" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 83
  store i8 0, i8* %".400"
  %".402" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 84
  store i8 0, i8* %".402"
  %".404" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 85
  store i8 0, i8* %".404"
  %".406" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 86
  store i8 0, i8* %".406"
  %".408" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 87
  store i8 0, i8* %".408"
  %".410" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 88
  store i8 0, i8* %".410"
  %".412" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 89
  store i8 0, i8* %".412"
  %".414" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 90
  store i8 0, i8* %".414"
  %".416" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 91
  store i8 0, i8* %".416"
  %".418" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 92
  store i8 0, i8* %".418"
  %".420" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 93
  store i8 0, i8* %".420"
  %".422" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 94
  store i8 0, i8* %".422"
  %".424" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 95
  store i8 0, i8* %".424"
  %".426" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 96
  store i8 0, i8* %".426"
  %".428" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 97
  store i8 0, i8* %".428"
  %".430" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 98
  store i8 0, i8* %".430"
  %".432" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 99
  store i8 0, i8* %".432"
  %".434" = getelementptr inbounds [61 x i8], [61 x i8]* @".str.2", i32 0, i32 0
  %".435" = call i32 (i8*, ...) @"printf"(i8* %".434")
  %".436" = getelementptr inbounds [3 x i8], [3 x i8]* @".str.3", i32 0, i32 0
  %".437" = call i32 (i8*, ...) @"scanf"(i8* %".436", [100 x i8]* %"t")
  %"next" = alloca [100 x i32]
  %"result" = alloca [100 x i32]
  %"result_count" = alloca i32
  store i32 0, i32* %"result_count"
  %"i" = alloca i32
  %"j" = alloca i32
  %"s_len" = alloca i32
  store i32 0, i32* %"s_len"
  br label %"while_cond"
while_cond:
  %".441" = load i32, i32* %"s_len"
  %".442" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 %".441"
  %".443" = load i8, i8* %".442"
  %".444" = icmp ne i8 %".443", 35
  %".445" = zext i1 %".444" to i32
  %".446" = icmp ne i32 %".445", 0
  br i1 %".446", label %"while_body", label %"while_end"
while_body:
  %".448" = load i32, i32* %"s_len"
  %".449" = add i32 %".448", 1
  store i32 %".449", i32* %"s_len"
  br label %"while_cond"
while_end:
  %"t_len" = alloca i32
  store i32 0, i32* %"t_len"
  br label %"while_cond.1"
while_cond.1:
  %".454" = load i32, i32* %"t_len"
  %".455" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 %".454"
  %".456" = load i8, i8* %".455"
  %".457" = icmp ne i8 %".456", 35
  %".458" = zext i1 %".457" to i32
  %".459" = icmp ne i32 %".458", 0
  br i1 %".459", label %"while_body.1", label %"while_end.1"
while_body.1:
  %".461" = load i32, i32* %"t_len"
  %".462" = add i32 %".461", 1
  store i32 %".462", i32* %"t_len"
  br label %"while_cond.1"
while_end.1:
  %".465" = getelementptr inbounds [100 x i32], [100 x i32]* %"next", i32 0, i32 0
  store i32 0, i32* %".465"
  store i32 1, i32* %"i"
  store i32 0, i32* %"j"
  br label %"while_cond.2"
while_cond.2:
  %".470" = load i32, i32* %"i"
  %".471" = load i32, i32* %"t_len"
  %".472" = icmp slt i32 %".470", %".471"
  %".473" = zext i1 %".472" to i32
  %".474" = icmp ne i32 %".473", 0
  br i1 %".474", label %"while_body.2", label %"while_end.2"
while_body.2:
  %".476" = load i32, i32* %"i"
  %".477" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 %".476"
  %".478" = load i8, i8* %".477"
  %".479" = load i32, i32* %"j"
  %".480" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 %".479"
  %".481" = load i8, i8* %".480"
  %".482" = icmp eq i8 %".478", %".481"
  %".483" = zext i1 %".482" to i32
  %".484" = icmp ne i32 %".483", 0
  br i1 %".484", label %"if_then", label %"if_end"
while_end.2:
  store i32 0, i32* %"i"
  store i32 0, i32* %"j"
  br label %"while_cond.3"
if_then:
  %".486" = load i32, i32* %"i"
  %".487" = getelementptr inbounds [100 x i32], [100 x i32]* %"next", i32 0, i32 %".486"
  %".488" = load i32, i32* %"j"
  %".489" = add i32 %".488", 1
  store i32 %".489", i32* %".487"
  %".491" = load i32, i32* %"i"
  %".492" = add i32 %".491", 1
  store i32 %".492", i32* %"i"
  %".494" = load i32, i32* %"j"
  %".495" = add i32 %".494", 1
  store i32 %".495", i32* %"j"
  br label %"while_cond.2"
if_end:
  %".498" = load i32, i32* %"j"
  %".499" = icmp eq i32 %".498", 0
  %".500" = zext i1 %".499" to i32
  %".501" = icmp ne i32 %".500", 0
  br i1 %".501", label %"if_then.1", label %"if_end.1"
if_then.1:
  %".503" = load i32, i32* %"i"
  %".504" = getelementptr inbounds [100 x i32], [100 x i32]* %"next", i32 0, i32 %".503"
  store i32 0, i32* %".504"
  %".506" = load i32, i32* %"i"
  %".507" = add i32 %".506", 1
  store i32 %".507", i32* %"i"
  br label %"while_cond.2"
if_end.1:
  %".510" = load i32, i32* %"j"
  %".511" = sub i32 %".510", 1
  %".512" = getelementptr inbounds [100 x i32], [100 x i32]* %"next", i32 0, i32 %".511"
  %".513" = load i32, i32* %".512"
  store i32 %".513", i32* %"j"
  br label %"while_cond.2"
while_cond.3:
  %".519" = load i32, i32* %"i"
  %".520" = load i32, i32* %"s_len"
  %".521" = icmp slt i32 %".519", %".520"
  %".522" = zext i1 %".521" to i32
  %".523" = icmp ne i32 %".522", 0
  br i1 %".523", label %"while_body.3", label %"while_end.3"
while_body.3:
  %".525" = load i32, i32* %"i"
  %".526" = getelementptr inbounds [100 x i8], [100 x i8]* %"s", i32 0, i32 %".525"
  %".527" = load i8, i8* %".526"
  %".528" = load i32, i32* %"j"
  %".529" = getelementptr inbounds [100 x i8], [100 x i8]* %"t", i32 0, i32 %".528"
  %".530" = load i8, i8* %".529"
  %".531" = icmp eq i8 %".527", %".530"
  %".532" = zext i1 %".531" to i32
  %".533" = icmp ne i32 %".532", 0
  br i1 %".533", label %"if_then.2", label %"if_end.2"
while_end.3:
  %".578" = load i32, i32* %"result_count"
  %".579" = icmp eq i32 %".578", 0
  %".580" = zext i1 %".579" to i32
  %".581" = icmp ne i32 %".580", 0
  br i1 %".581", label %"if_then.5", label %"if_end.5"
if_then.2:
  %".535" = load i32, i32* %"i"
  %".536" = add i32 %".535", 1
  store i32 %".536", i32* %"i"
  %".538" = load i32, i32* %"j"
  %".539" = add i32 %".538", 1
  store i32 %".539", i32* %"j"
  %".541" = load i32, i32* %"j"
  %".542" = load i32, i32* %"t_len"
  %".543" = icmp eq i32 %".541", %".542"
  %".544" = zext i1 %".543" to i32
  %".545" = icmp ne i32 %".544", 0
  br i1 %".545", label %"if_then.3", label %"if_end.3"
if_end.2:
  %".563" = load i32, i32* %"j"
  %".564" = icmp eq i32 %".563", 0
  %".565" = zext i1 %".564" to i32
  %".566" = icmp ne i32 %".565", 0
  br i1 %".566", label %"if_then.4", label %"if_end.4"
if_then.3:
  %".547" = load i32, i32* %"result_count"
  %".548" = getelementptr inbounds [100 x i32], [100 x i32]* %"result", i32 0, i32 %".547"
  %".549" = load i32, i32* %"i"
  %".550" = load i32, i32* %"t_len"
  %".551" = sub i32 %".549", %".550"
  store i32 %".551", i32* %".548"
  %".553" = load i32, i32* %"result_count"
  %".554" = add i32 %".553", 1
  store i32 %".554", i32* %"result_count"
  %".556" = load i32, i32* %"j"
  %".557" = sub i32 %".556", 1
  %".558" = getelementptr inbounds [100 x i32], [100 x i32]* %"next", i32 0, i32 %".557"
  %".559" = load i32, i32* %".558"
  store i32 %".559", i32* %"j"
  br label %"if_end.3"
if_end.3:
  br label %"while_cond.3"
if_then.4:
  %".568" = load i32, i32* %"i"
  %".569" = add i32 %".568", 1
  store i32 %".569", i32* %"i"
  br label %"while_cond.3"
if_end.4:
  %".572" = load i32, i32* %"j"
  %".573" = sub i32 %".572", 1
  %".574" = getelementptr inbounds [100 x i32], [100 x i32]* %"next", i32 0, i32 %".573"
  %".575" = load i32, i32* %".574"
  store i32 %".575", i32* %"j"
  br label %"while_cond.3"
if_then.5:
  %".583" = getelementptr inbounds [7 x i8], [7 x i8]* @".str.4", i32 0, i32 0
  %".584" = call i32 (i8*, ...) @"printf"(i8* %".583")
  ret i32 0
if_end.5:
  %".586" = getelementptr inbounds [6 x i8], [6 x i8]* @".str.5", i32 0, i32 0
  %".587" = call i32 (i8*, ...) @"printf"(i8* %".586")
  %".588" = getelementptr inbounds [42 x i8], [42 x i8]* @".str.6", i32 0, i32 0
  %".589" = call i32 (i8*, ...) @"printf"(i8* %".588")
  %".590" = getelementptr inbounds [3 x i8], [3 x i8]* @".str.7", i32 0, i32 0
  %".591" = getelementptr inbounds [100 x i32], [100 x i32]* %"result", i32 0, i32 0
  %".592" = load i32, i32* %".591"
  %".593" = call i32 (i8*, ...) @"printf"(i8* %".590", i32 %".592")
  store i32 1, i32* %"i"
  br label %"while_cond.4"
while_cond.4:
  %".596" = load i32, i32* %"i"
  %".597" = load i32, i32* %"result_count"
  %".598" = icmp slt i32 %".596", %".597"
  %".599" = zext i1 %".598" to i32
  %".600" = icmp ne i32 %".599", 0
  br i1 %".600", label %"while_body.4", label %"while_end.4"
while_body.4:
  %".602" = getelementptr inbounds [4 x i8], [4 x i8]* @".str.8", i32 0, i32 0
  %".603" = load i32, i32* %"i"
  %".604" = getelementptr inbounds [100 x i32], [100 x i32]* %"result", i32 0, i32 %".603"
  %".605" = load i32, i32* %".604"
  %".606" = call i32 (i8*, ...) @"printf"(i8* %".602", i32 %".605")
  %".607" = load i32, i32* %"i"
  %".608" = add i32 %".607", 1
  store i32 %".608", i32* %"i"
  br label %"while_cond.4"
while_end.4:
  %".611" = getelementptr inbounds [2 x i8], [2 x i8]* @".str.9", i32 0, i32 0
  %".612" = call i32 (i8*, ...) @"printf"(i8* %".611")
  ret i32 0
}

declare i32 @"printf"(i8* %".1", ...)

@".str" = private constant [58 x i8] c"Please type in the main string and finish typing with #: \00", align 1
declare i32 @"scanf"(i8* %".1", ...)

@".str.1" = private constant [3 x i8] c"%s\00", align 1
@".str.2" = private constant [61 x i8] c"Please type in the pattern string and finish typing with #: \00", align 1
@".str.3" = private constant [3 x i8] c"%s\00", align 1
@".str.4" = private constant [7 x i8] c"False\0a\00", align 1
@".str.5" = private constant [6 x i8] c"True\0a\00", align 1
@".str.6" = private constant [42 x i8] c"The pattern string is found at position: \00", align 1
@".str.7" = private constant [3 x i8] c"%d\00", align 1
@".str.8" = private constant [4 x i8] c",%d\00", align 1
@".str.9" = private constant [2 x i8] c"\0a\00", align 1
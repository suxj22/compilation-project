; ModuleID = "my_module"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"

define i32 @"main"()
{
entry:
  %"nums" = alloca [1000 x i32]
  %".2" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 0
  store i32 5, i32* %".2"
  %".4" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 1
  store i32 8, i32* %".4"
  %".6" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 2
  store i32 4, i32* %".6"
  %".8" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 3
  store i32 9, i32* %".8"
  %".10" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 4
  store i32 7, i32* %".10"
  %".12" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 5
  store i32 3, i32* %".12"
  %".14" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 6
  store i32 1, i32* %".14"
  %".16" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 7
  store i32 10, i32* %".16"
  %".18" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 8
  store i32 0, i32* %".18"
  %".20" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 9
  store i32 0, i32* %".20"
  %".22" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 10
  store i32 0, i32* %".22"
  %".24" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 11
  store i32 0, i32* %".24"
  %".26" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 12
  store i32 0, i32* %".26"
  %".28" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 13
  store i32 0, i32* %".28"
  %".30" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 14
  store i32 0, i32* %".30"
  %".32" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 15
  store i32 0, i32* %".32"
  %".34" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 16
  store i32 0, i32* %".34"
  %".36" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 17
  store i32 0, i32* %".36"
  %".38" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 18
  store i32 0, i32* %".38"
  %".40" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 19
  store i32 0, i32* %".40"
  %".42" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 20
  store i32 0, i32* %".42"
  %".44" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 21
  store i32 0, i32* %".44"
  %".46" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 22
  store i32 0, i32* %".46"
  %".48" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 23
  store i32 0, i32* %".48"
  %".50" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 24
  store i32 0, i32* %".50"
  %".52" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 25
  store i32 0, i32* %".52"
  %".54" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 26
  store i32 0, i32* %".54"
  %".56" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 27
  store i32 0, i32* %".56"
  %".58" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 28
  store i32 0, i32* %".58"
  %".60" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 29
  store i32 0, i32* %".60"
  %".62" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 30
  store i32 0, i32* %".62"
  %".64" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 31
  store i32 0, i32* %".64"
  %".66" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 32
  store i32 0, i32* %".66"
  %".68" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 33
  store i32 0, i32* %".68"
  %".70" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 34
  store i32 0, i32* %".70"
  %".72" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 35
  store i32 0, i32* %".72"
  %".74" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 36
  store i32 0, i32* %".74"
  %".76" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 37
  store i32 0, i32* %".76"
  %".78" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 38
  store i32 0, i32* %".78"
  %".80" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 39
  store i32 0, i32* %".80"
  %".82" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 40
  store i32 0, i32* %".82"
  %".84" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 41
  store i32 0, i32* %".84"
  %".86" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 42
  store i32 0, i32* %".86"
  %".88" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 43
  store i32 0, i32* %".88"
  %".90" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 44
  store i32 0, i32* %".90"
  %".92" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 45
  store i32 0, i32* %".92"
  %".94" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 46
  store i32 0, i32* %".94"
  %".96" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 47
  store i32 0, i32* %".96"
  %".98" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 48
  store i32 0, i32* %".98"
  %".100" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 49
  store i32 0, i32* %".100"
  %".102" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 50
  store i32 0, i32* %".102"
  %".104" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 51
  store i32 0, i32* %".104"
  %".106" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 52
  store i32 0, i32* %".106"
  %".108" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 53
  store i32 0, i32* %".108"
  %".110" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 54
  store i32 0, i32* %".110"
  %".112" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 55
  store i32 0, i32* %".112"
  %".114" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 56
  store i32 0, i32* %".114"
  %".116" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 57
  store i32 0, i32* %".116"
  %".118" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 58
  store i32 0, i32* %".118"
  %".120" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 59
  store i32 0, i32* %".120"
  %".122" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 60
  store i32 0, i32* %".122"
  %".124" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 61
  store i32 0, i32* %".124"
  %".126" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 62
  store i32 0, i32* %".126"
  %".128" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 63
  store i32 0, i32* %".128"
  %".130" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 64
  store i32 0, i32* %".130"
  %".132" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 65
  store i32 0, i32* %".132"
  %".134" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 66
  store i32 0, i32* %".134"
  %".136" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 67
  store i32 0, i32* %".136"
  %".138" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 68
  store i32 0, i32* %".138"
  %".140" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 69
  store i32 0, i32* %".140"
  %".142" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 70
  store i32 0, i32* %".142"
  %".144" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 71
  store i32 0, i32* %".144"
  %".146" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 72
  store i32 0, i32* %".146"
  %".148" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 73
  store i32 0, i32* %".148"
  %".150" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 74
  store i32 0, i32* %".150"
  %".152" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 75
  store i32 0, i32* %".152"
  %".154" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 76
  store i32 0, i32* %".154"
  %".156" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 77
  store i32 0, i32* %".156"
  %".158" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 78
  store i32 0, i32* %".158"
  %".160" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 79
  store i32 0, i32* %".160"
  %".162" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 80
  store i32 0, i32* %".162"
  %".164" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 81
  store i32 0, i32* %".164"
  %".166" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 82
  store i32 0, i32* %".166"
  %".168" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 83
  store i32 0, i32* %".168"
  %".170" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 84
  store i32 0, i32* %".170"
  %".172" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 85
  store i32 0, i32* %".172"
  %".174" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 86
  store i32 0, i32* %".174"
  %".176" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 87
  store i32 0, i32* %".176"
  %".178" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 88
  store i32 0, i32* %".178"
  %".180" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 89
  store i32 0, i32* %".180"
  %".182" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 90
  store i32 0, i32* %".182"
  %".184" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 91
  store i32 0, i32* %".184"
  %".186" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 92
  store i32 0, i32* %".186"
  %".188" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 93
  store i32 0, i32* %".188"
  %".190" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 94
  store i32 0, i32* %".190"
  %".192" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 95
  store i32 0, i32* %".192"
  %".194" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 96
  store i32 0, i32* %".194"
  %".196" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 97
  store i32 0, i32* %".196"
  %".198" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 98
  store i32 0, i32* %".198"
  %".200" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 99
  store i32 0, i32* %".200"
  %".202" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 100
  store i32 0, i32* %".202"
  %".204" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 101
  store i32 0, i32* %".204"
  %".206" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 102
  store i32 0, i32* %".206"
  %".208" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 103
  store i32 0, i32* %".208"
  %".210" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 104
  store i32 0, i32* %".210"
  %".212" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 105
  store i32 0, i32* %".212"
  %".214" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 106
  store i32 0, i32* %".214"
  %".216" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 107
  store i32 0, i32* %".216"
  %".218" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 108
  store i32 0, i32* %".218"
  %".220" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 109
  store i32 0, i32* %".220"
  %".222" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 110
  store i32 0, i32* %".222"
  %".224" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 111
  store i32 0, i32* %".224"
  %".226" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 112
  store i32 0, i32* %".226"
  %".228" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 113
  store i32 0, i32* %".228"
  %".230" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 114
  store i32 0, i32* %".230"
  %".232" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 115
  store i32 0, i32* %".232"
  %".234" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 116
  store i32 0, i32* %".234"
  %".236" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 117
  store i32 0, i32* %".236"
  %".238" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 118
  store i32 0, i32* %".238"
  %".240" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 119
  store i32 0, i32* %".240"
  %".242" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 120
  store i32 0, i32* %".242"
  %".244" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 121
  store i32 0, i32* %".244"
  %".246" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 122
  store i32 0, i32* %".246"
  %".248" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 123
  store i32 0, i32* %".248"
  %".250" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 124
  store i32 0, i32* %".250"
  %".252" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 125
  store i32 0, i32* %".252"
  %".254" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 126
  store i32 0, i32* %".254"
  %".256" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 127
  store i32 0, i32* %".256"
  %".258" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 128
  store i32 0, i32* %".258"
  %".260" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 129
  store i32 0, i32* %".260"
  %".262" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 130
  store i32 0, i32* %".262"
  %".264" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 131
  store i32 0, i32* %".264"
  %".266" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 132
  store i32 0, i32* %".266"
  %".268" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 133
  store i32 0, i32* %".268"
  %".270" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 134
  store i32 0, i32* %".270"
  %".272" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 135
  store i32 0, i32* %".272"
  %".274" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 136
  store i32 0, i32* %".274"
  %".276" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 137
  store i32 0, i32* %".276"
  %".278" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 138
  store i32 0, i32* %".278"
  %".280" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 139
  store i32 0, i32* %".280"
  %".282" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 140
  store i32 0, i32* %".282"
  %".284" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 141
  store i32 0, i32* %".284"
  %".286" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 142
  store i32 0, i32* %".286"
  %".288" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 143
  store i32 0, i32* %".288"
  %".290" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 144
  store i32 0, i32* %".290"
  %".292" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 145
  store i32 0, i32* %".292"
  %".294" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 146
  store i32 0, i32* %".294"
  %".296" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 147
  store i32 0, i32* %".296"
  %".298" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 148
  store i32 0, i32* %".298"
  %".300" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 149
  store i32 0, i32* %".300"
  %".302" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 150
  store i32 0, i32* %".302"
  %".304" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 151
  store i32 0, i32* %".304"
  %".306" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 152
  store i32 0, i32* %".306"
  %".308" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 153
  store i32 0, i32* %".308"
  %".310" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 154
  store i32 0, i32* %".310"
  %".312" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 155
  store i32 0, i32* %".312"
  %".314" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 156
  store i32 0, i32* %".314"
  %".316" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 157
  store i32 0, i32* %".316"
  %".318" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 158
  store i32 0, i32* %".318"
  %".320" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 159
  store i32 0, i32* %".320"
  %".322" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 160
  store i32 0, i32* %".322"
  %".324" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 161
  store i32 0, i32* %".324"
  %".326" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 162
  store i32 0, i32* %".326"
  %".328" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 163
  store i32 0, i32* %".328"
  %".330" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 164
  store i32 0, i32* %".330"
  %".332" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 165
  store i32 0, i32* %".332"
  %".334" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 166
  store i32 0, i32* %".334"
  %".336" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 167
  store i32 0, i32* %".336"
  %".338" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 168
  store i32 0, i32* %".338"
  %".340" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 169
  store i32 0, i32* %".340"
  %".342" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 170
  store i32 0, i32* %".342"
  %".344" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 171
  store i32 0, i32* %".344"
  %".346" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 172
  store i32 0, i32* %".346"
  %".348" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 173
  store i32 0, i32* %".348"
  %".350" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 174
  store i32 0, i32* %".350"
  %".352" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 175
  store i32 0, i32* %".352"
  %".354" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 176
  store i32 0, i32* %".354"
  %".356" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 177
  store i32 0, i32* %".356"
  %".358" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 178
  store i32 0, i32* %".358"
  %".360" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 179
  store i32 0, i32* %".360"
  %".362" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 180
  store i32 0, i32* %".362"
  %".364" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 181
  store i32 0, i32* %".364"
  %".366" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 182
  store i32 0, i32* %".366"
  %".368" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 183
  store i32 0, i32* %".368"
  %".370" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 184
  store i32 0, i32* %".370"
  %".372" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 185
  store i32 0, i32* %".372"
  %".374" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 186
  store i32 0, i32* %".374"
  %".376" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 187
  store i32 0, i32* %".376"
  %".378" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 188
  store i32 0, i32* %".378"
  %".380" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 189
  store i32 0, i32* %".380"
  %".382" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 190
  store i32 0, i32* %".382"
  %".384" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 191
  store i32 0, i32* %".384"
  %".386" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 192
  store i32 0, i32* %".386"
  %".388" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 193
  store i32 0, i32* %".388"
  %".390" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 194
  store i32 0, i32* %".390"
  %".392" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 195
  store i32 0, i32* %".392"
  %".394" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 196
  store i32 0, i32* %".394"
  %".396" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 197
  store i32 0, i32* %".396"
  %".398" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 198
  store i32 0, i32* %".398"
  %".400" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 199
  store i32 0, i32* %".400"
  %".402" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 200
  store i32 0, i32* %".402"
  %".404" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 201
  store i32 0, i32* %".404"
  %".406" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 202
  store i32 0, i32* %".406"
  %".408" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 203
  store i32 0, i32* %".408"
  %".410" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 204
  store i32 0, i32* %".410"
  %".412" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 205
  store i32 0, i32* %".412"
  %".414" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 206
  store i32 0, i32* %".414"
  %".416" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 207
  store i32 0, i32* %".416"
  %".418" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 208
  store i32 0, i32* %".418"
  %".420" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 209
  store i32 0, i32* %".420"
  %".422" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 210
  store i32 0, i32* %".422"
  %".424" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 211
  store i32 0, i32* %".424"
  %".426" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 212
  store i32 0, i32* %".426"
  %".428" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 213
  store i32 0, i32* %".428"
  %".430" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 214
  store i32 0, i32* %".430"
  %".432" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 215
  store i32 0, i32* %".432"
  %".434" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 216
  store i32 0, i32* %".434"
  %".436" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 217
  store i32 0, i32* %".436"
  %".438" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 218
  store i32 0, i32* %".438"
  %".440" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 219
  store i32 0, i32* %".440"
  %".442" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 220
  store i32 0, i32* %".442"
  %".444" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 221
  store i32 0, i32* %".444"
  %".446" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 222
  store i32 0, i32* %".446"
  %".448" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 223
  store i32 0, i32* %".448"
  %".450" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 224
  store i32 0, i32* %".450"
  %".452" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 225
  store i32 0, i32* %".452"
  %".454" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 226
  store i32 0, i32* %".454"
  %".456" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 227
  store i32 0, i32* %".456"
  %".458" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 228
  store i32 0, i32* %".458"
  %".460" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 229
  store i32 0, i32* %".460"
  %".462" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 230
  store i32 0, i32* %".462"
  %".464" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 231
  store i32 0, i32* %".464"
  %".466" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 232
  store i32 0, i32* %".466"
  %".468" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 233
  store i32 0, i32* %".468"
  %".470" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 234
  store i32 0, i32* %".470"
  %".472" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 235
  store i32 0, i32* %".472"
  %".474" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 236
  store i32 0, i32* %".474"
  %".476" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 237
  store i32 0, i32* %".476"
  %".478" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 238
  store i32 0, i32* %".478"
  %".480" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 239
  store i32 0, i32* %".480"
  %".482" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 240
  store i32 0, i32* %".482"
  %".484" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 241
  store i32 0, i32* %".484"
  %".486" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 242
  store i32 0, i32* %".486"
  %".488" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 243
  store i32 0, i32* %".488"
  %".490" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 244
  store i32 0, i32* %".490"
  %".492" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 245
  store i32 0, i32* %".492"
  %".494" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 246
  store i32 0, i32* %".494"
  %".496" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 247
  store i32 0, i32* %".496"
  %".498" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 248
  store i32 0, i32* %".498"
  %".500" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 249
  store i32 0, i32* %".500"
  %".502" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 250
  store i32 0, i32* %".502"
  %".504" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 251
  store i32 0, i32* %".504"
  %".506" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 252
  store i32 0, i32* %".506"
  %".508" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 253
  store i32 0, i32* %".508"
  %".510" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 254
  store i32 0, i32* %".510"
  %".512" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 255
  store i32 0, i32* %".512"
  %".514" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 256
  store i32 0, i32* %".514"
  %".516" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 257
  store i32 0, i32* %".516"
  %".518" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 258
  store i32 0, i32* %".518"
  %".520" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 259
  store i32 0, i32* %".520"
  %".522" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 260
  store i32 0, i32* %".522"
  %".524" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 261
  store i32 0, i32* %".524"
  %".526" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 262
  store i32 0, i32* %".526"
  %".528" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 263
  store i32 0, i32* %".528"
  %".530" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 264
  store i32 0, i32* %".530"
  %".532" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 265
  store i32 0, i32* %".532"
  %".534" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 266
  store i32 0, i32* %".534"
  %".536" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 267
  store i32 0, i32* %".536"
  %".538" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 268
  store i32 0, i32* %".538"
  %".540" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 269
  store i32 0, i32* %".540"
  %".542" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 270
  store i32 0, i32* %".542"
  %".544" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 271
  store i32 0, i32* %".544"
  %".546" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 272
  store i32 0, i32* %".546"
  %".548" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 273
  store i32 0, i32* %".548"
  %".550" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 274
  store i32 0, i32* %".550"
  %".552" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 275
  store i32 0, i32* %".552"
  %".554" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 276
  store i32 0, i32* %".554"
  %".556" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 277
  store i32 0, i32* %".556"
  %".558" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 278
  store i32 0, i32* %".558"
  %".560" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 279
  store i32 0, i32* %".560"
  %".562" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 280
  store i32 0, i32* %".562"
  %".564" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 281
  store i32 0, i32* %".564"
  %".566" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 282
  store i32 0, i32* %".566"
  %".568" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 283
  store i32 0, i32* %".568"
  %".570" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 284
  store i32 0, i32* %".570"
  %".572" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 285
  store i32 0, i32* %".572"
  %".574" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 286
  store i32 0, i32* %".574"
  %".576" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 287
  store i32 0, i32* %".576"
  %".578" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 288
  store i32 0, i32* %".578"
  %".580" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 289
  store i32 0, i32* %".580"
  %".582" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 290
  store i32 0, i32* %".582"
  %".584" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 291
  store i32 0, i32* %".584"
  %".586" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 292
  store i32 0, i32* %".586"
  %".588" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 293
  store i32 0, i32* %".588"
  %".590" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 294
  store i32 0, i32* %".590"
  %".592" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 295
  store i32 0, i32* %".592"
  %".594" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 296
  store i32 0, i32* %".594"
  %".596" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 297
  store i32 0, i32* %".596"
  %".598" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 298
  store i32 0, i32* %".598"
  %".600" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 299
  store i32 0, i32* %".600"
  %".602" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 300
  store i32 0, i32* %".602"
  %".604" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 301
  store i32 0, i32* %".604"
  %".606" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 302
  store i32 0, i32* %".606"
  %".608" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 303
  store i32 0, i32* %".608"
  %".610" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 304
  store i32 0, i32* %".610"
  %".612" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 305
  store i32 0, i32* %".612"
  %".614" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 306
  store i32 0, i32* %".614"
  %".616" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 307
  store i32 0, i32* %".616"
  %".618" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 308
  store i32 0, i32* %".618"
  %".620" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 309
  store i32 0, i32* %".620"
  %".622" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 310
  store i32 0, i32* %".622"
  %".624" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 311
  store i32 0, i32* %".624"
  %".626" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 312
  store i32 0, i32* %".626"
  %".628" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 313
  store i32 0, i32* %".628"
  %".630" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 314
  store i32 0, i32* %".630"
  %".632" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 315
  store i32 0, i32* %".632"
  %".634" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 316
  store i32 0, i32* %".634"
  %".636" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 317
  store i32 0, i32* %".636"
  %".638" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 318
  store i32 0, i32* %".638"
  %".640" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 319
  store i32 0, i32* %".640"
  %".642" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 320
  store i32 0, i32* %".642"
  %".644" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 321
  store i32 0, i32* %".644"
  %".646" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 322
  store i32 0, i32* %".646"
  %".648" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 323
  store i32 0, i32* %".648"
  %".650" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 324
  store i32 0, i32* %".650"
  %".652" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 325
  store i32 0, i32* %".652"
  %".654" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 326
  store i32 0, i32* %".654"
  %".656" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 327
  store i32 0, i32* %".656"
  %".658" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 328
  store i32 0, i32* %".658"
  %".660" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 329
  store i32 0, i32* %".660"
  %".662" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 330
  store i32 0, i32* %".662"
  %".664" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 331
  store i32 0, i32* %".664"
  %".666" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 332
  store i32 0, i32* %".666"
  %".668" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 333
  store i32 0, i32* %".668"
  %".670" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 334
  store i32 0, i32* %".670"
  %".672" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 335
  store i32 0, i32* %".672"
  %".674" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 336
  store i32 0, i32* %".674"
  %".676" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 337
  store i32 0, i32* %".676"
  %".678" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 338
  store i32 0, i32* %".678"
  %".680" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 339
  store i32 0, i32* %".680"
  %".682" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 340
  store i32 0, i32* %".682"
  %".684" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 341
  store i32 0, i32* %".684"
  %".686" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 342
  store i32 0, i32* %".686"
  %".688" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 343
  store i32 0, i32* %".688"
  %".690" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 344
  store i32 0, i32* %".690"
  %".692" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 345
  store i32 0, i32* %".692"
  %".694" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 346
  store i32 0, i32* %".694"
  %".696" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 347
  store i32 0, i32* %".696"
  %".698" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 348
  store i32 0, i32* %".698"
  %".700" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 349
  store i32 0, i32* %".700"
  %".702" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 350
  store i32 0, i32* %".702"
  %".704" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 351
  store i32 0, i32* %".704"
  %".706" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 352
  store i32 0, i32* %".706"
  %".708" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 353
  store i32 0, i32* %".708"
  %".710" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 354
  store i32 0, i32* %".710"
  %".712" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 355
  store i32 0, i32* %".712"
  %".714" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 356
  store i32 0, i32* %".714"
  %".716" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 357
  store i32 0, i32* %".716"
  %".718" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 358
  store i32 0, i32* %".718"
  %".720" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 359
  store i32 0, i32* %".720"
  %".722" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 360
  store i32 0, i32* %".722"
  %".724" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 361
  store i32 0, i32* %".724"
  %".726" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 362
  store i32 0, i32* %".726"
  %".728" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 363
  store i32 0, i32* %".728"
  %".730" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 364
  store i32 0, i32* %".730"
  %".732" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 365
  store i32 0, i32* %".732"
  %".734" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 366
  store i32 0, i32* %".734"
  %".736" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 367
  store i32 0, i32* %".736"
  %".738" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 368
  store i32 0, i32* %".738"
  %".740" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 369
  store i32 0, i32* %".740"
  %".742" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 370
  store i32 0, i32* %".742"
  %".744" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 371
  store i32 0, i32* %".744"
  %".746" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 372
  store i32 0, i32* %".746"
  %".748" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 373
  store i32 0, i32* %".748"
  %".750" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 374
  store i32 0, i32* %".750"
  %".752" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 375
  store i32 0, i32* %".752"
  %".754" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 376
  store i32 0, i32* %".754"
  %".756" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 377
  store i32 0, i32* %".756"
  %".758" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 378
  store i32 0, i32* %".758"
  %".760" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 379
  store i32 0, i32* %".760"
  %".762" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 380
  store i32 0, i32* %".762"
  %".764" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 381
  store i32 0, i32* %".764"
  %".766" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 382
  store i32 0, i32* %".766"
  %".768" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 383
  store i32 0, i32* %".768"
  %".770" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 384
  store i32 0, i32* %".770"
  %".772" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 385
  store i32 0, i32* %".772"
  %".774" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 386
  store i32 0, i32* %".774"
  %".776" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 387
  store i32 0, i32* %".776"
  %".778" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 388
  store i32 0, i32* %".778"
  %".780" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 389
  store i32 0, i32* %".780"
  %".782" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 390
  store i32 0, i32* %".782"
  %".784" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 391
  store i32 0, i32* %".784"
  %".786" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 392
  store i32 0, i32* %".786"
  %".788" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 393
  store i32 0, i32* %".788"
  %".790" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 394
  store i32 0, i32* %".790"
  %".792" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 395
  store i32 0, i32* %".792"
  %".794" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 396
  store i32 0, i32* %".794"
  %".796" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 397
  store i32 0, i32* %".796"
  %".798" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 398
  store i32 0, i32* %".798"
  %".800" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 399
  store i32 0, i32* %".800"
  %".802" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 400
  store i32 0, i32* %".802"
  %".804" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 401
  store i32 0, i32* %".804"
  %".806" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 402
  store i32 0, i32* %".806"
  %".808" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 403
  store i32 0, i32* %".808"
  %".810" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 404
  store i32 0, i32* %".810"
  %".812" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 405
  store i32 0, i32* %".812"
  %".814" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 406
  store i32 0, i32* %".814"
  %".816" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 407
  store i32 0, i32* %".816"
  %".818" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 408
  store i32 0, i32* %".818"
  %".820" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 409
  store i32 0, i32* %".820"
  %".822" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 410
  store i32 0, i32* %".822"
  %".824" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 411
  store i32 0, i32* %".824"
  %".826" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 412
  store i32 0, i32* %".826"
  %".828" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 413
  store i32 0, i32* %".828"
  %".830" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 414
  store i32 0, i32* %".830"
  %".832" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 415
  store i32 0, i32* %".832"
  %".834" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 416
  store i32 0, i32* %".834"
  %".836" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 417
  store i32 0, i32* %".836"
  %".838" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 418
  store i32 0, i32* %".838"
  %".840" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 419
  store i32 0, i32* %".840"
  %".842" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 420
  store i32 0, i32* %".842"
  %".844" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 421
  store i32 0, i32* %".844"
  %".846" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 422
  store i32 0, i32* %".846"
  %".848" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 423
  store i32 0, i32* %".848"
  %".850" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 424
  store i32 0, i32* %".850"
  %".852" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 425
  store i32 0, i32* %".852"
  %".854" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 426
  store i32 0, i32* %".854"
  %".856" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 427
  store i32 0, i32* %".856"
  %".858" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 428
  store i32 0, i32* %".858"
  %".860" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 429
  store i32 0, i32* %".860"
  %".862" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 430
  store i32 0, i32* %".862"
  %".864" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 431
  store i32 0, i32* %".864"
  %".866" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 432
  store i32 0, i32* %".866"
  %".868" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 433
  store i32 0, i32* %".868"
  %".870" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 434
  store i32 0, i32* %".870"
  %".872" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 435
  store i32 0, i32* %".872"
  %".874" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 436
  store i32 0, i32* %".874"
  %".876" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 437
  store i32 0, i32* %".876"
  %".878" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 438
  store i32 0, i32* %".878"
  %".880" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 439
  store i32 0, i32* %".880"
  %".882" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 440
  store i32 0, i32* %".882"
  %".884" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 441
  store i32 0, i32* %".884"
  %".886" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 442
  store i32 0, i32* %".886"
  %".888" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 443
  store i32 0, i32* %".888"
  %".890" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 444
  store i32 0, i32* %".890"
  %".892" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 445
  store i32 0, i32* %".892"
  %".894" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 446
  store i32 0, i32* %".894"
  %".896" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 447
  store i32 0, i32* %".896"
  %".898" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 448
  store i32 0, i32* %".898"
  %".900" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 449
  store i32 0, i32* %".900"
  %".902" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 450
  store i32 0, i32* %".902"
  %".904" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 451
  store i32 0, i32* %".904"
  %".906" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 452
  store i32 0, i32* %".906"
  %".908" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 453
  store i32 0, i32* %".908"
  %".910" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 454
  store i32 0, i32* %".910"
  %".912" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 455
  store i32 0, i32* %".912"
  %".914" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 456
  store i32 0, i32* %".914"
  %".916" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 457
  store i32 0, i32* %".916"
  %".918" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 458
  store i32 0, i32* %".918"
  %".920" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 459
  store i32 0, i32* %".920"
  %".922" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 460
  store i32 0, i32* %".922"
  %".924" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 461
  store i32 0, i32* %".924"
  %".926" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 462
  store i32 0, i32* %".926"
  %".928" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 463
  store i32 0, i32* %".928"
  %".930" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 464
  store i32 0, i32* %".930"
  %".932" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 465
  store i32 0, i32* %".932"
  %".934" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 466
  store i32 0, i32* %".934"
  %".936" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 467
  store i32 0, i32* %".936"
  %".938" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 468
  store i32 0, i32* %".938"
  %".940" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 469
  store i32 0, i32* %".940"
  %".942" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 470
  store i32 0, i32* %".942"
  %".944" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 471
  store i32 0, i32* %".944"
  %".946" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 472
  store i32 0, i32* %".946"
  %".948" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 473
  store i32 0, i32* %".948"
  %".950" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 474
  store i32 0, i32* %".950"
  %".952" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 475
  store i32 0, i32* %".952"
  %".954" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 476
  store i32 0, i32* %".954"
  %".956" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 477
  store i32 0, i32* %".956"
  %".958" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 478
  store i32 0, i32* %".958"
  %".960" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 479
  store i32 0, i32* %".960"
  %".962" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 480
  store i32 0, i32* %".962"
  %".964" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 481
  store i32 0, i32* %".964"
  %".966" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 482
  store i32 0, i32* %".966"
  %".968" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 483
  store i32 0, i32* %".968"
  %".970" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 484
  store i32 0, i32* %".970"
  %".972" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 485
  store i32 0, i32* %".972"
  %".974" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 486
  store i32 0, i32* %".974"
  %".976" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 487
  store i32 0, i32* %".976"
  %".978" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 488
  store i32 0, i32* %".978"
  %".980" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 489
  store i32 0, i32* %".980"
  %".982" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 490
  store i32 0, i32* %".982"
  %".984" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 491
  store i32 0, i32* %".984"
  %".986" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 492
  store i32 0, i32* %".986"
  %".988" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 493
  store i32 0, i32* %".988"
  %".990" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 494
  store i32 0, i32* %".990"
  %".992" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 495
  store i32 0, i32* %".992"
  %".994" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 496
  store i32 0, i32* %".994"
  %".996" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 497
  store i32 0, i32* %".996"
  %".998" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 498
  store i32 0, i32* %".998"
  %".1000" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 499
  store i32 0, i32* %".1000"
  %".1002" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 500
  store i32 0, i32* %".1002"
  %".1004" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 501
  store i32 0, i32* %".1004"
  %".1006" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 502
  store i32 0, i32* %".1006"
  %".1008" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 503
  store i32 0, i32* %".1008"
  %".1010" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 504
  store i32 0, i32* %".1010"
  %".1012" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 505
  store i32 0, i32* %".1012"
  %".1014" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 506
  store i32 0, i32* %".1014"
  %".1016" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 507
  store i32 0, i32* %".1016"
  %".1018" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 508
  store i32 0, i32* %".1018"
  %".1020" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 509
  store i32 0, i32* %".1020"
  %".1022" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 510
  store i32 0, i32* %".1022"
  %".1024" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 511
  store i32 0, i32* %".1024"
  %".1026" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 512
  store i32 0, i32* %".1026"
  %".1028" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 513
  store i32 0, i32* %".1028"
  %".1030" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 514
  store i32 0, i32* %".1030"
  %".1032" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 515
  store i32 0, i32* %".1032"
  %".1034" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 516
  store i32 0, i32* %".1034"
  %".1036" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 517
  store i32 0, i32* %".1036"
  %".1038" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 518
  store i32 0, i32* %".1038"
  %".1040" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 519
  store i32 0, i32* %".1040"
  %".1042" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 520
  store i32 0, i32* %".1042"
  %".1044" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 521
  store i32 0, i32* %".1044"
  %".1046" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 522
  store i32 0, i32* %".1046"
  %".1048" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 523
  store i32 0, i32* %".1048"
  %".1050" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 524
  store i32 0, i32* %".1050"
  %".1052" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 525
  store i32 0, i32* %".1052"
  %".1054" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 526
  store i32 0, i32* %".1054"
  %".1056" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 527
  store i32 0, i32* %".1056"
  %".1058" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 528
  store i32 0, i32* %".1058"
  %".1060" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 529
  store i32 0, i32* %".1060"
  %".1062" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 530
  store i32 0, i32* %".1062"
  %".1064" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 531
  store i32 0, i32* %".1064"
  %".1066" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 532
  store i32 0, i32* %".1066"
  %".1068" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 533
  store i32 0, i32* %".1068"
  %".1070" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 534
  store i32 0, i32* %".1070"
  %".1072" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 535
  store i32 0, i32* %".1072"
  %".1074" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 536
  store i32 0, i32* %".1074"
  %".1076" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 537
  store i32 0, i32* %".1076"
  %".1078" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 538
  store i32 0, i32* %".1078"
  %".1080" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 539
  store i32 0, i32* %".1080"
  %".1082" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 540
  store i32 0, i32* %".1082"
  %".1084" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 541
  store i32 0, i32* %".1084"
  %".1086" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 542
  store i32 0, i32* %".1086"
  %".1088" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 543
  store i32 0, i32* %".1088"
  %".1090" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 544
  store i32 0, i32* %".1090"
  %".1092" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 545
  store i32 0, i32* %".1092"
  %".1094" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 546
  store i32 0, i32* %".1094"
  %".1096" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 547
  store i32 0, i32* %".1096"
  %".1098" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 548
  store i32 0, i32* %".1098"
  %".1100" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 549
  store i32 0, i32* %".1100"
  %".1102" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 550
  store i32 0, i32* %".1102"
  %".1104" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 551
  store i32 0, i32* %".1104"
  %".1106" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 552
  store i32 0, i32* %".1106"
  %".1108" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 553
  store i32 0, i32* %".1108"
  %".1110" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 554
  store i32 0, i32* %".1110"
  %".1112" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 555
  store i32 0, i32* %".1112"
  %".1114" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 556
  store i32 0, i32* %".1114"
  %".1116" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 557
  store i32 0, i32* %".1116"
  %".1118" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 558
  store i32 0, i32* %".1118"
  %".1120" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 559
  store i32 0, i32* %".1120"
  %".1122" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 560
  store i32 0, i32* %".1122"
  %".1124" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 561
  store i32 0, i32* %".1124"
  %".1126" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 562
  store i32 0, i32* %".1126"
  %".1128" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 563
  store i32 0, i32* %".1128"
  %".1130" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 564
  store i32 0, i32* %".1130"
  %".1132" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 565
  store i32 0, i32* %".1132"
  %".1134" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 566
  store i32 0, i32* %".1134"
  %".1136" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 567
  store i32 0, i32* %".1136"
  %".1138" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 568
  store i32 0, i32* %".1138"
  %".1140" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 569
  store i32 0, i32* %".1140"
  %".1142" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 570
  store i32 0, i32* %".1142"
  %".1144" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 571
  store i32 0, i32* %".1144"
  %".1146" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 572
  store i32 0, i32* %".1146"
  %".1148" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 573
  store i32 0, i32* %".1148"
  %".1150" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 574
  store i32 0, i32* %".1150"
  %".1152" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 575
  store i32 0, i32* %".1152"
  %".1154" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 576
  store i32 0, i32* %".1154"
  %".1156" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 577
  store i32 0, i32* %".1156"
  %".1158" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 578
  store i32 0, i32* %".1158"
  %".1160" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 579
  store i32 0, i32* %".1160"
  %".1162" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 580
  store i32 0, i32* %".1162"
  %".1164" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 581
  store i32 0, i32* %".1164"
  %".1166" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 582
  store i32 0, i32* %".1166"
  %".1168" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 583
  store i32 0, i32* %".1168"
  %".1170" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 584
  store i32 0, i32* %".1170"
  %".1172" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 585
  store i32 0, i32* %".1172"
  %".1174" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 586
  store i32 0, i32* %".1174"
  %".1176" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 587
  store i32 0, i32* %".1176"
  %".1178" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 588
  store i32 0, i32* %".1178"
  %".1180" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 589
  store i32 0, i32* %".1180"
  %".1182" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 590
  store i32 0, i32* %".1182"
  %".1184" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 591
  store i32 0, i32* %".1184"
  %".1186" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 592
  store i32 0, i32* %".1186"
  %".1188" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 593
  store i32 0, i32* %".1188"
  %".1190" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 594
  store i32 0, i32* %".1190"
  %".1192" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 595
  store i32 0, i32* %".1192"
  %".1194" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 596
  store i32 0, i32* %".1194"
  %".1196" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 597
  store i32 0, i32* %".1196"
  %".1198" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 598
  store i32 0, i32* %".1198"
  %".1200" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 599
  store i32 0, i32* %".1200"
  %".1202" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 600
  store i32 0, i32* %".1202"
  %".1204" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 601
  store i32 0, i32* %".1204"
  %".1206" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 602
  store i32 0, i32* %".1206"
  %".1208" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 603
  store i32 0, i32* %".1208"
  %".1210" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 604
  store i32 0, i32* %".1210"
  %".1212" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 605
  store i32 0, i32* %".1212"
  %".1214" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 606
  store i32 0, i32* %".1214"
  %".1216" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 607
  store i32 0, i32* %".1216"
  %".1218" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 608
  store i32 0, i32* %".1218"
  %".1220" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 609
  store i32 0, i32* %".1220"
  %".1222" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 610
  store i32 0, i32* %".1222"
  %".1224" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 611
  store i32 0, i32* %".1224"
  %".1226" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 612
  store i32 0, i32* %".1226"
  %".1228" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 613
  store i32 0, i32* %".1228"
  %".1230" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 614
  store i32 0, i32* %".1230"
  %".1232" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 615
  store i32 0, i32* %".1232"
  %".1234" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 616
  store i32 0, i32* %".1234"
  %".1236" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 617
  store i32 0, i32* %".1236"
  %".1238" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 618
  store i32 0, i32* %".1238"
  %".1240" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 619
  store i32 0, i32* %".1240"
  %".1242" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 620
  store i32 0, i32* %".1242"
  %".1244" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 621
  store i32 0, i32* %".1244"
  %".1246" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 622
  store i32 0, i32* %".1246"
  %".1248" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 623
  store i32 0, i32* %".1248"
  %".1250" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 624
  store i32 0, i32* %".1250"
  %".1252" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 625
  store i32 0, i32* %".1252"
  %".1254" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 626
  store i32 0, i32* %".1254"
  %".1256" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 627
  store i32 0, i32* %".1256"
  %".1258" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 628
  store i32 0, i32* %".1258"
  %".1260" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 629
  store i32 0, i32* %".1260"
  %".1262" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 630
  store i32 0, i32* %".1262"
  %".1264" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 631
  store i32 0, i32* %".1264"
  %".1266" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 632
  store i32 0, i32* %".1266"
  %".1268" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 633
  store i32 0, i32* %".1268"
  %".1270" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 634
  store i32 0, i32* %".1270"
  %".1272" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 635
  store i32 0, i32* %".1272"
  %".1274" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 636
  store i32 0, i32* %".1274"
  %".1276" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 637
  store i32 0, i32* %".1276"
  %".1278" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 638
  store i32 0, i32* %".1278"
  %".1280" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 639
  store i32 0, i32* %".1280"
  %".1282" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 640
  store i32 0, i32* %".1282"
  %".1284" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 641
  store i32 0, i32* %".1284"
  %".1286" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 642
  store i32 0, i32* %".1286"
  %".1288" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 643
  store i32 0, i32* %".1288"
  %".1290" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 644
  store i32 0, i32* %".1290"
  %".1292" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 645
  store i32 0, i32* %".1292"
  %".1294" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 646
  store i32 0, i32* %".1294"
  %".1296" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 647
  store i32 0, i32* %".1296"
  %".1298" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 648
  store i32 0, i32* %".1298"
  %".1300" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 649
  store i32 0, i32* %".1300"
  %".1302" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 650
  store i32 0, i32* %".1302"
  %".1304" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 651
  store i32 0, i32* %".1304"
  %".1306" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 652
  store i32 0, i32* %".1306"
  %".1308" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 653
  store i32 0, i32* %".1308"
  %".1310" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 654
  store i32 0, i32* %".1310"
  %".1312" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 655
  store i32 0, i32* %".1312"
  %".1314" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 656
  store i32 0, i32* %".1314"
  %".1316" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 657
  store i32 0, i32* %".1316"
  %".1318" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 658
  store i32 0, i32* %".1318"
  %".1320" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 659
  store i32 0, i32* %".1320"
  %".1322" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 660
  store i32 0, i32* %".1322"
  %".1324" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 661
  store i32 0, i32* %".1324"
  %".1326" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 662
  store i32 0, i32* %".1326"
  %".1328" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 663
  store i32 0, i32* %".1328"
  %".1330" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 664
  store i32 0, i32* %".1330"
  %".1332" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 665
  store i32 0, i32* %".1332"
  %".1334" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 666
  store i32 0, i32* %".1334"
  %".1336" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 667
  store i32 0, i32* %".1336"
  %".1338" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 668
  store i32 0, i32* %".1338"
  %".1340" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 669
  store i32 0, i32* %".1340"
  %".1342" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 670
  store i32 0, i32* %".1342"
  %".1344" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 671
  store i32 0, i32* %".1344"
  %".1346" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 672
  store i32 0, i32* %".1346"
  %".1348" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 673
  store i32 0, i32* %".1348"
  %".1350" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 674
  store i32 0, i32* %".1350"
  %".1352" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 675
  store i32 0, i32* %".1352"
  %".1354" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 676
  store i32 0, i32* %".1354"
  %".1356" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 677
  store i32 0, i32* %".1356"
  %".1358" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 678
  store i32 0, i32* %".1358"
  %".1360" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 679
  store i32 0, i32* %".1360"
  %".1362" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 680
  store i32 0, i32* %".1362"
  %".1364" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 681
  store i32 0, i32* %".1364"
  %".1366" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 682
  store i32 0, i32* %".1366"
  %".1368" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 683
  store i32 0, i32* %".1368"
  %".1370" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 684
  store i32 0, i32* %".1370"
  %".1372" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 685
  store i32 0, i32* %".1372"
  %".1374" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 686
  store i32 0, i32* %".1374"
  %".1376" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 687
  store i32 0, i32* %".1376"
  %".1378" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 688
  store i32 0, i32* %".1378"
  %".1380" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 689
  store i32 0, i32* %".1380"
  %".1382" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 690
  store i32 0, i32* %".1382"
  %".1384" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 691
  store i32 0, i32* %".1384"
  %".1386" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 692
  store i32 0, i32* %".1386"
  %".1388" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 693
  store i32 0, i32* %".1388"
  %".1390" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 694
  store i32 0, i32* %".1390"
  %".1392" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 695
  store i32 0, i32* %".1392"
  %".1394" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 696
  store i32 0, i32* %".1394"
  %".1396" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 697
  store i32 0, i32* %".1396"
  %".1398" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 698
  store i32 0, i32* %".1398"
  %".1400" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 699
  store i32 0, i32* %".1400"
  %".1402" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 700
  store i32 0, i32* %".1402"
  %".1404" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 701
  store i32 0, i32* %".1404"
  %".1406" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 702
  store i32 0, i32* %".1406"
  %".1408" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 703
  store i32 0, i32* %".1408"
  %".1410" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 704
  store i32 0, i32* %".1410"
  %".1412" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 705
  store i32 0, i32* %".1412"
  %".1414" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 706
  store i32 0, i32* %".1414"
  %".1416" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 707
  store i32 0, i32* %".1416"
  %".1418" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 708
  store i32 0, i32* %".1418"
  %".1420" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 709
  store i32 0, i32* %".1420"
  %".1422" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 710
  store i32 0, i32* %".1422"
  %".1424" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 711
  store i32 0, i32* %".1424"
  %".1426" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 712
  store i32 0, i32* %".1426"
  %".1428" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 713
  store i32 0, i32* %".1428"
  %".1430" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 714
  store i32 0, i32* %".1430"
  %".1432" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 715
  store i32 0, i32* %".1432"
  %".1434" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 716
  store i32 0, i32* %".1434"
  %".1436" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 717
  store i32 0, i32* %".1436"
  %".1438" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 718
  store i32 0, i32* %".1438"
  %".1440" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 719
  store i32 0, i32* %".1440"
  %".1442" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 720
  store i32 0, i32* %".1442"
  %".1444" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 721
  store i32 0, i32* %".1444"
  %".1446" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 722
  store i32 0, i32* %".1446"
  %".1448" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 723
  store i32 0, i32* %".1448"
  %".1450" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 724
  store i32 0, i32* %".1450"
  %".1452" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 725
  store i32 0, i32* %".1452"
  %".1454" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 726
  store i32 0, i32* %".1454"
  %".1456" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 727
  store i32 0, i32* %".1456"
  %".1458" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 728
  store i32 0, i32* %".1458"
  %".1460" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 729
  store i32 0, i32* %".1460"
  %".1462" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 730
  store i32 0, i32* %".1462"
  %".1464" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 731
  store i32 0, i32* %".1464"
  %".1466" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 732
  store i32 0, i32* %".1466"
  %".1468" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 733
  store i32 0, i32* %".1468"
  %".1470" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 734
  store i32 0, i32* %".1470"
  %".1472" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 735
  store i32 0, i32* %".1472"
  %".1474" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 736
  store i32 0, i32* %".1474"
  %".1476" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 737
  store i32 0, i32* %".1476"
  %".1478" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 738
  store i32 0, i32* %".1478"
  %".1480" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 739
  store i32 0, i32* %".1480"
  %".1482" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 740
  store i32 0, i32* %".1482"
  %".1484" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 741
  store i32 0, i32* %".1484"
  %".1486" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 742
  store i32 0, i32* %".1486"
  %".1488" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 743
  store i32 0, i32* %".1488"
  %".1490" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 744
  store i32 0, i32* %".1490"
  %".1492" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 745
  store i32 0, i32* %".1492"
  %".1494" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 746
  store i32 0, i32* %".1494"
  %".1496" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 747
  store i32 0, i32* %".1496"
  %".1498" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 748
  store i32 0, i32* %".1498"
  %".1500" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 749
  store i32 0, i32* %".1500"
  %".1502" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 750
  store i32 0, i32* %".1502"
  %".1504" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 751
  store i32 0, i32* %".1504"
  %".1506" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 752
  store i32 0, i32* %".1506"
  %".1508" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 753
  store i32 0, i32* %".1508"
  %".1510" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 754
  store i32 0, i32* %".1510"
  %".1512" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 755
  store i32 0, i32* %".1512"
  %".1514" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 756
  store i32 0, i32* %".1514"
  %".1516" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 757
  store i32 0, i32* %".1516"
  %".1518" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 758
  store i32 0, i32* %".1518"
  %".1520" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 759
  store i32 0, i32* %".1520"
  %".1522" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 760
  store i32 0, i32* %".1522"
  %".1524" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 761
  store i32 0, i32* %".1524"
  %".1526" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 762
  store i32 0, i32* %".1526"
  %".1528" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 763
  store i32 0, i32* %".1528"
  %".1530" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 764
  store i32 0, i32* %".1530"
  %".1532" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 765
  store i32 0, i32* %".1532"
  %".1534" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 766
  store i32 0, i32* %".1534"
  %".1536" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 767
  store i32 0, i32* %".1536"
  %".1538" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 768
  store i32 0, i32* %".1538"
  %".1540" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 769
  store i32 0, i32* %".1540"
  %".1542" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 770
  store i32 0, i32* %".1542"
  %".1544" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 771
  store i32 0, i32* %".1544"
  %".1546" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 772
  store i32 0, i32* %".1546"
  %".1548" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 773
  store i32 0, i32* %".1548"
  %".1550" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 774
  store i32 0, i32* %".1550"
  %".1552" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 775
  store i32 0, i32* %".1552"
  %".1554" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 776
  store i32 0, i32* %".1554"
  %".1556" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 777
  store i32 0, i32* %".1556"
  %".1558" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 778
  store i32 0, i32* %".1558"
  %".1560" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 779
  store i32 0, i32* %".1560"
  %".1562" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 780
  store i32 0, i32* %".1562"
  %".1564" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 781
  store i32 0, i32* %".1564"
  %".1566" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 782
  store i32 0, i32* %".1566"
  %".1568" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 783
  store i32 0, i32* %".1568"
  %".1570" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 784
  store i32 0, i32* %".1570"
  %".1572" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 785
  store i32 0, i32* %".1572"
  %".1574" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 786
  store i32 0, i32* %".1574"
  %".1576" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 787
  store i32 0, i32* %".1576"
  %".1578" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 788
  store i32 0, i32* %".1578"
  %".1580" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 789
  store i32 0, i32* %".1580"
  %".1582" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 790
  store i32 0, i32* %".1582"
  %".1584" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 791
  store i32 0, i32* %".1584"
  %".1586" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 792
  store i32 0, i32* %".1586"
  %".1588" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 793
  store i32 0, i32* %".1588"
  %".1590" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 794
  store i32 0, i32* %".1590"
  %".1592" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 795
  store i32 0, i32* %".1592"
  %".1594" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 796
  store i32 0, i32* %".1594"
  %".1596" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 797
  store i32 0, i32* %".1596"
  %".1598" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 798
  store i32 0, i32* %".1598"
  %".1600" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 799
  store i32 0, i32* %".1600"
  %".1602" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 800
  store i32 0, i32* %".1602"
  %".1604" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 801
  store i32 0, i32* %".1604"
  %".1606" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 802
  store i32 0, i32* %".1606"
  %".1608" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 803
  store i32 0, i32* %".1608"
  %".1610" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 804
  store i32 0, i32* %".1610"
  %".1612" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 805
  store i32 0, i32* %".1612"
  %".1614" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 806
  store i32 0, i32* %".1614"
  %".1616" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 807
  store i32 0, i32* %".1616"
  %".1618" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 808
  store i32 0, i32* %".1618"
  %".1620" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 809
  store i32 0, i32* %".1620"
  %".1622" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 810
  store i32 0, i32* %".1622"
  %".1624" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 811
  store i32 0, i32* %".1624"
  %".1626" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 812
  store i32 0, i32* %".1626"
  %".1628" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 813
  store i32 0, i32* %".1628"
  %".1630" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 814
  store i32 0, i32* %".1630"
  %".1632" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 815
  store i32 0, i32* %".1632"
  %".1634" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 816
  store i32 0, i32* %".1634"
  %".1636" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 817
  store i32 0, i32* %".1636"
  %".1638" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 818
  store i32 0, i32* %".1638"
  %".1640" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 819
  store i32 0, i32* %".1640"
  %".1642" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 820
  store i32 0, i32* %".1642"
  %".1644" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 821
  store i32 0, i32* %".1644"
  %".1646" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 822
  store i32 0, i32* %".1646"
  %".1648" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 823
  store i32 0, i32* %".1648"
  %".1650" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 824
  store i32 0, i32* %".1650"
  %".1652" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 825
  store i32 0, i32* %".1652"
  %".1654" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 826
  store i32 0, i32* %".1654"
  %".1656" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 827
  store i32 0, i32* %".1656"
  %".1658" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 828
  store i32 0, i32* %".1658"
  %".1660" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 829
  store i32 0, i32* %".1660"
  %".1662" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 830
  store i32 0, i32* %".1662"
  %".1664" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 831
  store i32 0, i32* %".1664"
  %".1666" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 832
  store i32 0, i32* %".1666"
  %".1668" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 833
  store i32 0, i32* %".1668"
  %".1670" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 834
  store i32 0, i32* %".1670"
  %".1672" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 835
  store i32 0, i32* %".1672"
  %".1674" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 836
  store i32 0, i32* %".1674"
  %".1676" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 837
  store i32 0, i32* %".1676"
  %".1678" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 838
  store i32 0, i32* %".1678"
  %".1680" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 839
  store i32 0, i32* %".1680"
  %".1682" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 840
  store i32 0, i32* %".1682"
  %".1684" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 841
  store i32 0, i32* %".1684"
  %".1686" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 842
  store i32 0, i32* %".1686"
  %".1688" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 843
  store i32 0, i32* %".1688"
  %".1690" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 844
  store i32 0, i32* %".1690"
  %".1692" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 845
  store i32 0, i32* %".1692"
  %".1694" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 846
  store i32 0, i32* %".1694"
  %".1696" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 847
  store i32 0, i32* %".1696"
  %".1698" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 848
  store i32 0, i32* %".1698"
  %".1700" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 849
  store i32 0, i32* %".1700"
  %".1702" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 850
  store i32 0, i32* %".1702"
  %".1704" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 851
  store i32 0, i32* %".1704"
  %".1706" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 852
  store i32 0, i32* %".1706"
  %".1708" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 853
  store i32 0, i32* %".1708"
  %".1710" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 854
  store i32 0, i32* %".1710"
  %".1712" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 855
  store i32 0, i32* %".1712"
  %".1714" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 856
  store i32 0, i32* %".1714"
  %".1716" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 857
  store i32 0, i32* %".1716"
  %".1718" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 858
  store i32 0, i32* %".1718"
  %".1720" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 859
  store i32 0, i32* %".1720"
  %".1722" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 860
  store i32 0, i32* %".1722"
  %".1724" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 861
  store i32 0, i32* %".1724"
  %".1726" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 862
  store i32 0, i32* %".1726"
  %".1728" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 863
  store i32 0, i32* %".1728"
  %".1730" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 864
  store i32 0, i32* %".1730"
  %".1732" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 865
  store i32 0, i32* %".1732"
  %".1734" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 866
  store i32 0, i32* %".1734"
  %".1736" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 867
  store i32 0, i32* %".1736"
  %".1738" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 868
  store i32 0, i32* %".1738"
  %".1740" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 869
  store i32 0, i32* %".1740"
  %".1742" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 870
  store i32 0, i32* %".1742"
  %".1744" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 871
  store i32 0, i32* %".1744"
  %".1746" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 872
  store i32 0, i32* %".1746"
  %".1748" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 873
  store i32 0, i32* %".1748"
  %".1750" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 874
  store i32 0, i32* %".1750"
  %".1752" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 875
  store i32 0, i32* %".1752"
  %".1754" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 876
  store i32 0, i32* %".1754"
  %".1756" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 877
  store i32 0, i32* %".1756"
  %".1758" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 878
  store i32 0, i32* %".1758"
  %".1760" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 879
  store i32 0, i32* %".1760"
  %".1762" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 880
  store i32 0, i32* %".1762"
  %".1764" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 881
  store i32 0, i32* %".1764"
  %".1766" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 882
  store i32 0, i32* %".1766"
  %".1768" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 883
  store i32 0, i32* %".1768"
  %".1770" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 884
  store i32 0, i32* %".1770"
  %".1772" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 885
  store i32 0, i32* %".1772"
  %".1774" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 886
  store i32 0, i32* %".1774"
  %".1776" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 887
  store i32 0, i32* %".1776"
  %".1778" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 888
  store i32 0, i32* %".1778"
  %".1780" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 889
  store i32 0, i32* %".1780"
  %".1782" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 890
  store i32 0, i32* %".1782"
  %".1784" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 891
  store i32 0, i32* %".1784"
  %".1786" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 892
  store i32 0, i32* %".1786"
  %".1788" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 893
  store i32 0, i32* %".1788"
  %".1790" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 894
  store i32 0, i32* %".1790"
  %".1792" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 895
  store i32 0, i32* %".1792"
  %".1794" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 896
  store i32 0, i32* %".1794"
  %".1796" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 897
  store i32 0, i32* %".1796"
  %".1798" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 898
  store i32 0, i32* %".1798"
  %".1800" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 899
  store i32 0, i32* %".1800"
  %".1802" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 900
  store i32 0, i32* %".1802"
  %".1804" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 901
  store i32 0, i32* %".1804"
  %".1806" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 902
  store i32 0, i32* %".1806"
  %".1808" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 903
  store i32 0, i32* %".1808"
  %".1810" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 904
  store i32 0, i32* %".1810"
  %".1812" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 905
  store i32 0, i32* %".1812"
  %".1814" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 906
  store i32 0, i32* %".1814"
  %".1816" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 907
  store i32 0, i32* %".1816"
  %".1818" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 908
  store i32 0, i32* %".1818"
  %".1820" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 909
  store i32 0, i32* %".1820"
  %".1822" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 910
  store i32 0, i32* %".1822"
  %".1824" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 911
  store i32 0, i32* %".1824"
  %".1826" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 912
  store i32 0, i32* %".1826"
  %".1828" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 913
  store i32 0, i32* %".1828"
  %".1830" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 914
  store i32 0, i32* %".1830"
  %".1832" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 915
  store i32 0, i32* %".1832"
  %".1834" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 916
  store i32 0, i32* %".1834"
  %".1836" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 917
  store i32 0, i32* %".1836"
  %".1838" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 918
  store i32 0, i32* %".1838"
  %".1840" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 919
  store i32 0, i32* %".1840"
  %".1842" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 920
  store i32 0, i32* %".1842"
  %".1844" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 921
  store i32 0, i32* %".1844"
  %".1846" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 922
  store i32 0, i32* %".1846"
  %".1848" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 923
  store i32 0, i32* %".1848"
  %".1850" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 924
  store i32 0, i32* %".1850"
  %".1852" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 925
  store i32 0, i32* %".1852"
  %".1854" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 926
  store i32 0, i32* %".1854"
  %".1856" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 927
  store i32 0, i32* %".1856"
  %".1858" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 928
  store i32 0, i32* %".1858"
  %".1860" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 929
  store i32 0, i32* %".1860"
  %".1862" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 930
  store i32 0, i32* %".1862"
  %".1864" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 931
  store i32 0, i32* %".1864"
  %".1866" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 932
  store i32 0, i32* %".1866"
  %".1868" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 933
  store i32 0, i32* %".1868"
  %".1870" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 934
  store i32 0, i32* %".1870"
  %".1872" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 935
  store i32 0, i32* %".1872"
  %".1874" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 936
  store i32 0, i32* %".1874"
  %".1876" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 937
  store i32 0, i32* %".1876"
  %".1878" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 938
  store i32 0, i32* %".1878"
  %".1880" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 939
  store i32 0, i32* %".1880"
  %".1882" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 940
  store i32 0, i32* %".1882"
  %".1884" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 941
  store i32 0, i32* %".1884"
  %".1886" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 942
  store i32 0, i32* %".1886"
  %".1888" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 943
  store i32 0, i32* %".1888"
  %".1890" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 944
  store i32 0, i32* %".1890"
  %".1892" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 945
  store i32 0, i32* %".1892"
  %".1894" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 946
  store i32 0, i32* %".1894"
  %".1896" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 947
  store i32 0, i32* %".1896"
  %".1898" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 948
  store i32 0, i32* %".1898"
  %".1900" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 949
  store i32 0, i32* %".1900"
  %".1902" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 950
  store i32 0, i32* %".1902"
  %".1904" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 951
  store i32 0, i32* %".1904"
  %".1906" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 952
  store i32 0, i32* %".1906"
  %".1908" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 953
  store i32 0, i32* %".1908"
  %".1910" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 954
  store i32 0, i32* %".1910"
  %".1912" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 955
  store i32 0, i32* %".1912"
  %".1914" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 956
  store i32 0, i32* %".1914"
  %".1916" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 957
  store i32 0, i32* %".1916"
  %".1918" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 958
  store i32 0, i32* %".1918"
  %".1920" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 959
  store i32 0, i32* %".1920"
  %".1922" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 960
  store i32 0, i32* %".1922"
  %".1924" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 961
  store i32 0, i32* %".1924"
  %".1926" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 962
  store i32 0, i32* %".1926"
  %".1928" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 963
  store i32 0, i32* %".1928"
  %".1930" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 964
  store i32 0, i32* %".1930"
  %".1932" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 965
  store i32 0, i32* %".1932"
  %".1934" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 966
  store i32 0, i32* %".1934"
  %".1936" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 967
  store i32 0, i32* %".1936"
  %".1938" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 968
  store i32 0, i32* %".1938"
  %".1940" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 969
  store i32 0, i32* %".1940"
  %".1942" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 970
  store i32 0, i32* %".1942"
  %".1944" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 971
  store i32 0, i32* %".1944"
  %".1946" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 972
  store i32 0, i32* %".1946"
  %".1948" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 973
  store i32 0, i32* %".1948"
  %".1950" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 974
  store i32 0, i32* %".1950"
  %".1952" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 975
  store i32 0, i32* %".1952"
  %".1954" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 976
  store i32 0, i32* %".1954"
  %".1956" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 977
  store i32 0, i32* %".1956"
  %".1958" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 978
  store i32 0, i32* %".1958"
  %".1960" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 979
  store i32 0, i32* %".1960"
  %".1962" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 980
  store i32 0, i32* %".1962"
  %".1964" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 981
  store i32 0, i32* %".1964"
  %".1966" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 982
  store i32 0, i32* %".1966"
  %".1968" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 983
  store i32 0, i32* %".1968"
  %".1970" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 984
  store i32 0, i32* %".1970"
  %".1972" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 985
  store i32 0, i32* %".1972"
  %".1974" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 986
  store i32 0, i32* %".1974"
  %".1976" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 987
  store i32 0, i32* %".1976"
  %".1978" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 988
  store i32 0, i32* %".1978"
  %".1980" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 989
  store i32 0, i32* %".1980"
  %".1982" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 990
  store i32 0, i32* %".1982"
  %".1984" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 991
  store i32 0, i32* %".1984"
  %".1986" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 992
  store i32 0, i32* %".1986"
  %".1988" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 993
  store i32 0, i32* %".1988"
  %".1990" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 994
  store i32 0, i32* %".1990"
  %".1992" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 995
  store i32 0, i32* %".1992"
  %".1994" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 996
  store i32 0, i32* %".1994"
  %".1996" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 997
  store i32 0, i32* %".1996"
  %".1998" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 998
  store i32 0, i32* %".1998"
  %".2000" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 999
  store i32 0, i32* %".2000"
  %"n" = alloca i32
  store i32 0, i32* %"n"
  br label %"while_cond"
while_cond:
  %".2004" = load i32, i32* %"n"
  %".2005" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 %".2004"
  %".2006" = load i32, i32* %".2005"
  %".2007" = icmp ne i32 %".2006", 0
  %".2008" = zext i1 %".2007" to i32
  %".2009" = icmp ne i32 %".2008", 0
  br i1 %".2009", label %"while_body", label %"while_end"
while_body:
  %".2011" = load i32, i32* %"n"
  %".2012" = add i32 %".2011", 1
  store i32 %".2012", i32* %"n"
  br label %"while_cond"
while_end:
  %"sorted" = alloca i32
  store i32 0, i32* %"sorted"
  br label %"for_init"
for_init:
  %"i" = alloca i32
  store i32 1, i32* %"i"
  br label %"for_cond"
for_cond:
  %".2019" = load i32, i32* %"i"
  %".2020" = load i32, i32* %"n"
  %".2021" = icmp slt i32 %".2019", %".2020"
  %".2022" = zext i1 %".2021" to i32
  %".2023" = icmp ne i32 %".2022", 0
  br i1 %".2023", label %"for_body", label %"for_end"
for_body:
  %".2025" = load i32, i32* %"i"
  %".2026" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 %".2025"
  %".2027" = load i32, i32* %".2026"
  %"temp" = alloca i32
  store i32 %".2027", i32* %"temp"
  %".2029" = load i32, i32* %"i"
  %".2030" = sub i32 %".2029", 1
  %"j" = alloca i32
  store i32 %".2030", i32* %"j"
  br label %"while_cond.1"
for_inc:
  %".2073" = load i32, i32* %"i"
  %".2074" = add i32 %".2073", 1
  store i32 %".2074", i32* %"i"
  br label %"for_cond"
for_end:
  %".2077" = getelementptr inbounds [22 x i8], [22 x i8]* @".str", i32 0, i32 0
  %".2078" = call i32 (i8*, ...) @"printf"(i8* %".2077")
  br label %"for_init.1"
while_cond.1:
  %".2033" = load i32, i32* %"j"
  %".2034" = icmp sge i32 %".2033", 0
  %".2035" = zext i1 %".2034" to i32
  %".2036" = load i32, i32* %"j"
  %".2037" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 %".2036"
  %".2038" = load i32, i32* %".2037"
  %".2039" = load i32, i32* %"temp"
  %".2040" = icmp sgt i32 %".2038", %".2039"
  %".2041" = zext i1 %".2040" to i32
  %".2042" = and i32 %".2035", %".2041"
  %".2043" = icmp ne i32 %".2042", 0
  br i1 %".2043", label %"while_body.1", label %"while_end.1"
while_body.1:
  %".2045" = load i32, i32* %"j"
  %".2046" = add i32 %".2045", 1
  %".2047" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 %".2046"
  %".2048" = load i32, i32* %".2047"
  %"temp2" = alloca i32
  store i32 %".2048", i32* %"temp2"
  %".2050" = load i32, i32* %"j"
  %".2051" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 %".2050"
  %".2052" = load i32, i32* %".2051"
  %"temp3" = alloca i32
  store i32 %".2052", i32* %"temp3"
  %".2054" = load i32, i32* %"j"
  %".2055" = add i32 %".2054", 1
  %".2056" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 %".2055"
  %".2057" = load i32, i32* %"temp3"
  store i32 %".2057", i32* %".2056"
  %".2059" = load i32, i32* %"j"
  %".2060" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 %".2059"
  %".2061" = load i32, i32* %"temp2"
  store i32 %".2061", i32* %".2060"
  %".2063" = load i32, i32* %"j"
  %".2064" = sub i32 %".2063", 1
  store i32 %".2064", i32* %"j"
  br label %"while_cond.1"
while_end.1:
  %".2067" = load i32, i32* %"j"
  %".2068" = add i32 %".2067", 1
  %".2069" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 %".2068"
  %".2070" = load i32, i32* %"temp"
  store i32 %".2070", i32* %".2069"
  br label %"for_inc"
for_init.1:
  %"i.1" = alloca i32
  store i32 0, i32* %"i.1"
  br label %"for_cond.1"
for_cond.1:
  %".2082" = load i32, i32* %"i.1"
  %".2083" = load i32, i32* %"n"
  %".2084" = icmp slt i32 %".2082", %".2083"
  %".2085" = zext i1 %".2084" to i32
  %".2086" = icmp ne i32 %".2085", 0
  br i1 %".2086", label %"for_body.1", label %"for_end.1"
for_body.1:
  %".2088" = getelementptr inbounds [4 x i8], [4 x i8]* @".str.1", i32 0, i32 0
  %".2089" = load i32, i32* %"i.1"
  %".2090" = getelementptr inbounds [1000 x i32], [1000 x i32]* %"nums", i32 0, i32 %".2089"
  %".2091" = load i32, i32* %".2090"
  %".2092" = call i32 (i8*, ...) @"printf"(i8* %".2088", i32 %".2091")
  br label %"for_inc.1"
for_inc.1:
  %".2094" = load i32, i32* %"i.1"
  %".2095" = add i32 %".2094", 1
  store i32 %".2095", i32* %"i.1"
  br label %"for_cond.1"
for_end.1:
  ret i32 0
}

declare i32 @"printf"(i8* %".1", ...)

@".str" = private constant [22 x i8] c"The sorted array is: \00", align 1
@".str.1" = private constant [4 x i8] c"%d \00", align 1
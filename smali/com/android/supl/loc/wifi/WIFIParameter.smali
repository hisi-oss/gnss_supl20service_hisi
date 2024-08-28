.class public Lcom/android/supl/loc/wifi/WIFIParameter;
.super Ljava/lang/Object;
.source "WIFIParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/loc/wifi/WIFIParameter$LocationData;,
        Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;,
        Lcom/android/supl/loc/wifi/WIFIParameter$RTD;
    }
.end annotation


# static fields
.field private static final WLAN802_11A:I = 0x0

.field private static final WLAN802_11B:I = 0x1

.field private static final WLAN802_11G:I = 0x2


# instance fields
.field public bIsAPAGInfoPresent:Z

.field public bIsAPCFreqInfpPresent:Z

.field public bIsAPDeviceTypeInfoPresent:Z

.field public bIsAPRTDInfoPresent:Z

.field public bIsAPReportedLocationPresent:Z

.field public bIsAPSSInfoPresent:Z

.field public bIsAPStoNInfoPresent:Z

.field public bIsAPTPInfoPresent:Z

.field public bIsSetAGInfoPresent:Z

.field public bIsSetSigStrengthInfoPresent:Z

.field public bIsSetStoNInfoPresent:Z

.field public bIsSetTranPowerInfoPresent:Z

.field public eAPDeviceType:S

.field public sAPAG:S

.field public sAPSS:S

.field public sAPStoN:S

.field public sAPTP:S

.field public sSetAG:S

.field public sSetSigStrength:S

.field public sSetStoN:S

.field public sSetTransPower:S

.field public stAPMACadd:Lcom/android/supl/loc/BitString;

.field public stAPRTD:Lcom/android/supl/loc/wifi/WIFIParameter$RTD;

.field public stReportedLocation:Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;

.field public ucAPCFreq:S


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "stMACAddress"    # Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPTPInfoPresent:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPAGInfoPresent:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPStoNInfoPresent:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPDeviceTypeInfoPresent:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPSSInfoPresent:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPCFreqInfpPresent:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPRTDInfoPresent:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetTranPowerInfoPresent:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetAGInfoPresent:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetStoNInfoPresent:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetSigStrengthInfoPresent:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPReportedLocationPresent:Z

    .line 101
    new-instance v0, Lcom/android/supl/loc/BitString;

    invoke-direct {v0, p1}, Lcom/android/supl/loc/BitString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stAPMACadd:Lcom/android/supl/loc/BitString;

    .line 102
    return-void
.end method


# virtual methods
.method public getScanWIFIParameterInfo(Z)[B
    .locals 9
    .param p1, "isServer"    # Z

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "iOffset":I
    const/4 v1, 0x0

    .line 235
    .local v1, "iSize":I
    const/16 v2, 0x7d5

    new-array v2, v2, [B

    .line 236
    .local v2, "bData":[B
    iget-object v3, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stAPMACadd:Lcom/android/supl/loc/BitString;

    invoke-virtual {v3}, Lcom/android/supl/loc/BitString;->getBitStringInfo()[B

    move-result-object v3

    .line 238
    .local v3, "bAPMACadd":[B
    invoke-static {v2, v0, p1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 239
    const/4 v4, 0x4

    add-int/2addr v1, v4

    .line 241
    array-length v5, v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v2, v0, v5}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 242
    array-length v5, v3

    add-int/2addr v0, v5

    .line 243
    array-length v5, v3

    add-int/2addr v1, v5

    .line 244
    iget-boolean v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPTPInfoPresent:Z

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    .line 245
    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 246
    iget-short v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sAPTP:S

    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 247
    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 249
    :cond_0
    invoke-static {v2, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 250
    add-int/2addr v1, v4

    .line 252
    :goto_0
    iget-boolean v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPAGInfoPresent:Z

    if-eqz v5, :cond_1

    .line 253
    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 254
    iget-short v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sAPAG:S

    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 255
    add-int/lit8 v1, v1, 0x6

    goto :goto_1

    .line 257
    :cond_1
    invoke-static {v2, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 258
    add-int/2addr v1, v4

    .line 260
    :goto_1
    iget-boolean v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPStoNInfoPresent:Z

    if-eqz v5, :cond_2

    .line 261
    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 262
    iget-short v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sAPStoN:S

    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 263
    add-int/lit8 v1, v1, 0x6

    goto :goto_2

    .line 265
    :cond_2
    invoke-static {v2, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 266
    add-int/2addr v1, v4

    .line 268
    :goto_2
    iget-boolean v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPDeviceTypeInfoPresent:Z

    if-eqz v5, :cond_3

    .line 269
    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 270
    iget-short v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->eAPDeviceType:S

    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 271
    add-int/lit8 v1, v1, 0x8

    goto :goto_3

    .line 273
    :cond_3
    invoke-static {v2, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 274
    add-int/2addr v1, v4

    .line 276
    :goto_3
    iget-boolean v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPSSInfoPresent:Z

    if-eqz v5, :cond_4

    .line 277
    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 278
    iget-short v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sAPSS:S

    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 279
    add-int/lit8 v1, v1, 0x6

    goto :goto_4

    .line 281
    :cond_4
    invoke-static {v2, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 282
    add-int/2addr v1, v4

    .line 284
    :goto_4
    iget-boolean v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPCFreqInfpPresent:Z

    if-eqz v5, :cond_5

    .line 285
    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 286
    iget-short v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->ucAPCFreq:S

    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 287
    add-int/lit8 v1, v1, 0x5

    goto :goto_5

    .line 289
    :cond_5
    invoke-static {v2, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 290
    add-int/2addr v1, v4

    .line 292
    :goto_5
    iget-boolean v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPRTDInfoPresent:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stAPRTD:Lcom/android/supl/loc/wifi/WIFIParameter$RTD;

    if-eqz v5, :cond_6

    .line 293
    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 294
    iget-object v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stAPRTD:Lcom/android/supl/loc/wifi/WIFIParameter$RTD;

    invoke-virtual {v5}, Lcom/android/supl/loc/wifi/WIFIParameter$RTD;->getRTDInfo()[B

    move-result-object v5

    .line 295
    .local v5, "bstAPRTD":[B
    array-length v8, v5

    invoke-static {v5, v6, v2, v0, v8}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 296
    array-length v8, v5

    add-int/2addr v0, v8

    .line 297
    array-length v8, v5

    add-int/2addr v8, v4

    add-int/2addr v1, v8

    .line 298
    .end local v5    # "bstAPRTD":[B
    goto :goto_6

    .line 299
    :cond_6
    invoke-static {v2, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 300
    add-int/2addr v1, v4

    .line 302
    :goto_6
    iget-boolean v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetTranPowerInfoPresent:Z

    if-eqz v5, :cond_7

    .line 303
    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 304
    iget-short v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sSetTransPower:S

    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 305
    add-int/lit8 v1, v1, 0x6

    goto :goto_7

    .line 307
    :cond_7
    invoke-static {v2, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 308
    add-int/2addr v1, v4

    .line 310
    :goto_7
    iget-boolean v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetAGInfoPresent:Z

    if-eqz v5, :cond_8

    .line 311
    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 312
    iget-short v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sSetAG:S

    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 313
    add-int/lit8 v1, v1, 0x6

    goto :goto_8

    .line 315
    :cond_8
    invoke-static {v2, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 316
    add-int/2addr v1, v4

    .line 318
    :goto_8
    iget-boolean v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetStoNInfoPresent:Z

    if-eqz v5, :cond_9

    .line 319
    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 320
    iget-short v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sSetStoN:S

    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 321
    add-int/lit8 v1, v1, 0x6

    goto :goto_9

    .line 323
    :cond_9
    invoke-static {v2, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 324
    add-int/2addr v1, v4

    .line 326
    :goto_9
    iget-boolean v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetSigStrengthInfoPresent:Z

    if-eqz v5, :cond_a

    .line 327
    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 328
    iget-short v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sSetSigStrength:S

    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 329
    add-int/lit8 v1, v1, 0x6

    goto :goto_a

    .line 331
    :cond_a
    invoke-static {v2, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 332
    add-int/2addr v1, v4

    .line 335
    :goto_a
    iget-boolean v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPReportedLocationPresent:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stReportedLocation:Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;

    if-eqz v5, :cond_b

    .line 336
    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 337
    iget-object v5, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stReportedLocation:Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;

    invoke-virtual {v5}, Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;->getReportedLocationInfo()[B

    move-result-object v5

    .line 338
    .local v5, "bstReportedLoc":[B
    array-length v7, v5

    invoke-static {v5, v6, v2, v0, v7}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 339
    array-length v7, v5

    add-int/2addr v0, v7

    .line 340
    array-length v7, v5

    add-int/2addr v4, v7

    add-int/2addr v1, v4

    .line 341
    .end local v5    # "bstReportedLoc":[B
    goto :goto_b

    .line 342
    :cond_b
    invoke-static {v2, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 343
    add-int/2addr v1, v4

    .line 346
    :goto_b
    if-eq v0, v1, :cond_c

    .line 347
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "WIFIParameter length error"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 349
    :cond_c
    new-array v4, v1, [B

    .line 350
    .local v4, "bTemp":[B
    invoke-static {v2, v6, v4, v6, v1}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 351
    move-object v2, v4

    .line 353
    .end local v4    # "bTemp":[B
    :goto_c
    return-object v2
.end method

.method public getWIFIParameterInfo()[B
    .locals 9

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "iOffset":I
    const/4 v1, 0x0

    .line 107
    .local v1, "iSize":I
    const/16 v2, 0x7d5

    new-array v2, v2, [B

    .line 108
    .local v2, "bData":[B
    iget-object v3, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stAPMACadd:Lcom/android/supl/loc/BitString;

    invoke-virtual {v3}, Lcom/android/supl/loc/BitString;->getBitStringInfo()[B

    move-result-object v3

    .line 111
    .local v3, "bAPMACadd":[B
    const/4 v4, 0x1

    invoke-static {v2, v0, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 112
    add-int/2addr v1, v4

    .line 113
    const/4 v5, 0x0

    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 114
    const/4 v6, 0x4

    add-int/2addr v1, v6

    .line 116
    array-length v7, v3

    invoke-static {v3, v5, v2, v0, v7}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 117
    array-length v7, v3

    add-int/2addr v0, v7

    .line 118
    array-length v7, v3

    add-int/2addr v1, v7

    .line 119
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPTPInfoPresent:Z

    if-eqz v7, :cond_0

    .line 120
    invoke-static {v2, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 121
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sAPTP:S

    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 122
    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 125
    add-int/2addr v1, v6

    .line 127
    :goto_0
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPAGInfoPresent:Z

    if-eqz v7, :cond_1

    .line 128
    invoke-static {v2, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 129
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sAPAG:S

    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 130
    add-int/lit8 v1, v1, 0x6

    goto :goto_1

    .line 132
    :cond_1
    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 133
    add-int/2addr v1, v6

    .line 135
    :goto_1
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPStoNInfoPresent:Z

    if-eqz v7, :cond_2

    .line 136
    invoke-static {v2, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 137
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sAPStoN:S

    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 138
    add-int/lit8 v1, v1, 0x6

    goto :goto_2

    .line 140
    :cond_2
    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 141
    add-int/2addr v1, v6

    .line 143
    :goto_2
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPDeviceTypeInfoPresent:Z

    if-eqz v7, :cond_3

    .line 144
    invoke-static {v2, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 145
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->eAPDeviceType:S

    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 146
    add-int/lit8 v1, v1, 0x8

    goto :goto_3

    .line 148
    :cond_3
    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 149
    add-int/2addr v1, v6

    .line 151
    :goto_3
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPSSInfoPresent:Z

    if-eqz v7, :cond_4

    .line 152
    invoke-static {v2, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 153
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sAPSS:S

    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 154
    add-int/lit8 v1, v1, 0x6

    goto :goto_4

    .line 156
    :cond_4
    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 157
    add-int/2addr v1, v6

    .line 159
    :goto_4
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPCFreqInfpPresent:Z

    if-eqz v7, :cond_5

    .line 160
    invoke-static {v2, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 161
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->ucAPCFreq:S

    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 162
    add-int/lit8 v1, v1, 0x5

    goto :goto_5

    .line 164
    :cond_5
    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 165
    add-int/2addr v1, v6

    .line 167
    :goto_5
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPRTDInfoPresent:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stAPRTD:Lcom/android/supl/loc/wifi/WIFIParameter$RTD;

    if-eqz v7, :cond_6

    .line 168
    invoke-static {v2, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 169
    iget-object v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stAPRTD:Lcom/android/supl/loc/wifi/WIFIParameter$RTD;

    invoke-virtual {v7}, Lcom/android/supl/loc/wifi/WIFIParameter$RTD;->getRTDInfo()[B

    move-result-object v7

    .line 170
    .local v7, "bstAPRTD":[B
    array-length v8, v7

    invoke-static {v7, v5, v2, v0, v8}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 171
    array-length v8, v7

    add-int/2addr v0, v8

    .line 172
    array-length v8, v7

    add-int/2addr v8, v6

    add-int/2addr v1, v8

    .line 173
    .end local v7    # "bstAPRTD":[B
    goto :goto_6

    .line 174
    :cond_6
    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 175
    add-int/2addr v1, v6

    .line 177
    :goto_6
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetTranPowerInfoPresent:Z

    if-eqz v7, :cond_7

    .line 178
    invoke-static {v2, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 179
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sSetTransPower:S

    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 180
    add-int/lit8 v1, v1, 0x6

    goto :goto_7

    .line 183
    :cond_7
    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 184
    add-int/2addr v1, v6

    .line 186
    :goto_7
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetAGInfoPresent:Z

    if-eqz v7, :cond_8

    .line 187
    invoke-static {v2, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 188
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sSetAG:S

    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 189
    add-int/lit8 v1, v1, 0x6

    goto :goto_8

    .line 191
    :cond_8
    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 192
    add-int/2addr v1, v6

    .line 194
    :goto_8
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetStoNInfoPresent:Z

    if-eqz v7, :cond_9

    .line 195
    invoke-static {v2, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 196
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sSetStoN:S

    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 197
    add-int/lit8 v1, v1, 0x6

    goto :goto_9

    .line 199
    :cond_9
    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 200
    add-int/2addr v1, v6

    .line 202
    :goto_9
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetSigStrengthInfoPresent:Z

    if-eqz v7, :cond_a

    .line 203
    invoke-static {v2, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 204
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sSetSigStrength:S

    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 205
    add-int/lit8 v1, v1, 0x6

    goto :goto_a

    .line 207
    :cond_a
    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 208
    add-int/2addr v1, v6

    .line 211
    :goto_a
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPReportedLocationPresent:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stReportedLocation:Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;

    if-eqz v7, :cond_b

    .line 212
    invoke-static {v2, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 213
    iget-object v4, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stReportedLocation:Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;

    invoke-virtual {v4}, Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;->getReportedLocationInfo()[B

    move-result-object v4

    .line 214
    .local v4, "bstReportedLoc":[B
    array-length v7, v4

    invoke-static {v4, v5, v2, v0, v7}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 215
    array-length v7, v4

    add-int/2addr v0, v7

    .line 216
    array-length v7, v4

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 217
    .end local v4    # "bstReportedLoc":[B
    goto :goto_b

    .line 218
    :cond_b
    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 219
    add-int/2addr v1, v6

    .line 222
    :goto_b
    if-eq v0, v1, :cond_c

    .line 223
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "WIFIParameter length error"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 225
    :cond_c
    new-array v4, v1, [B

    .line 226
    .local v4, "bTemp":[B
    invoke-static {v2, v5, v4, v5, v1}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 227
    move-object v2, v4

    .line 229
    .end local v4    # "bTemp":[B
    :goto_c
    return-object v2
.end method

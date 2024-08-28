.class public Lcom/android/supl/loc/WcdmaCellInfo;
.super Ljava/lang/Object;
.source "WcdmaCellInfo.java"


# instance fields
.field public IsMeasuredResultsListPresent:Z

.field public bIsCellParametersIdPresent:Z

.field public isFrequencyInfoPresent:Z

.field public isPrimaryScramblingCodePresent:Z

.field public isTimingAdvancePresent:Z

.field public mFrequencyInfo:Lcom/android/supl/loc/measure/FrequencyInfo;

.field public m_sLAC:S

.field public m_sMCC:S

.field public m_sMNC:S

.field public stMeasuredResultsList:Lcom/android/supl/loc/measure/MeasuredResultsList;

.field public stTimingAdvance:Lcom/android/supl/loc/measure/TimingAdvance;

.field public ucCellParametersId:S

.field public uiRefUC:I

.field public usPrimaryScramblingCode:S


# direct methods
.method public constructor <init>(Landroid/telephony/CellLocation;II)V
    .locals 2
    .param p1, "cellLoc"    # Landroid/telephony/CellLocation;
    .param p2, "m_iMnc"    # I
    .param p3, "m_iMcc"    # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/android/supl/loc/WcdmaCellInfo;->m_sMCC:S

    .line 57
    iput-short v0, p0, Lcom/android/supl/loc/WcdmaCellInfo;->m_sMNC:S

    .line 62
    iput-short v0, p0, Lcom/android/supl/loc/WcdmaCellInfo;->m_sLAC:S

    .line 67
    iput v0, p0, Lcom/android/supl/loc/WcdmaCellInfo;->uiRefUC:I

    .line 72
    iput-boolean v0, p0, Lcom/android/supl/loc/WcdmaCellInfo;->isFrequencyInfoPresent:Z

    .line 74
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/supl/loc/WcdmaCellInfo;->mFrequencyInfo:Lcom/android/supl/loc/measure/FrequencyInfo;

    .line 76
    iput-boolean v0, p0, Lcom/android/supl/loc/WcdmaCellInfo;->isPrimaryScramblingCodePresent:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/supl/loc/WcdmaCellInfo;->IsMeasuredResultsListPresent:Z

    .line 95
    move-object v0, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 98
    .local v0, "gsmCell":Landroid/telephony/gsm/GsmCellLocation;
    int-to-short v1, p2

    iput-short v1, p0, Lcom/android/supl/loc/WcdmaCellInfo;->m_sMNC:S

    .line 99
    int-to-short v1, p3

    iput-short v1, p0, Lcom/android/supl/loc/WcdmaCellInfo;->m_sMCC:S

    .line 100
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/android/supl/loc/WcdmaCellInfo;->m_sLAC:S

    .line 101
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    iput v1, p0, Lcom/android/supl/loc/WcdmaCellInfo;->uiRefUC:I

    .line 103
    return-void
.end method


# virtual methods
.method public getWCDMAInfo()[B
    .locals 9

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 110
    .local v1, "iOffset":I
    add-int/lit8 v0, v0, 0x1e

    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, "bFrequency":[B
    iget-boolean v3, p0, Lcom/android/supl/loc/WcdmaCellInfo;->isFrequencyInfoPresent:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/supl/loc/WcdmaCellInfo;->mFrequencyInfo:Lcom/android/supl/loc/measure/FrequencyInfo;

    if-eqz v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/android/supl/loc/WcdmaCellInfo;->mFrequencyInfo:Lcom/android/supl/loc/measure/FrequencyInfo;

    invoke-virtual {v3}, Lcom/android/supl/loc/measure/FrequencyInfo;->getFrequencyInfo()[B

    move-result-object v2

    .line 114
    if-eqz v2, :cond_0

    .line 115
    array-length v3, v2

    add-int/2addr v0, v3

    .line 118
    :cond_0
    iget-boolean v3, p0, Lcom/android/supl/loc/WcdmaCellInfo;->isPrimaryScramblingCodePresent:Z

    if-eqz v3, :cond_1

    .line 119
    add-int/lit8 v0, v0, 0x2

    .line 121
    :cond_1
    const/4 v3, 0x0

    .line 122
    .local v3, "bMeasure":[B
    iget-boolean v4, p0, Lcom/android/supl/loc/WcdmaCellInfo;->IsMeasuredResultsListPresent:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/supl/loc/WcdmaCellInfo;->stMeasuredResultsList:Lcom/android/supl/loc/measure/MeasuredResultsList;

    if-eqz v4, :cond_2

    .line 123
    iget-object v4, p0, Lcom/android/supl/loc/WcdmaCellInfo;->stMeasuredResultsList:Lcom/android/supl/loc/measure/MeasuredResultsList;

    invoke-virtual {v4}, Lcom/android/supl/loc/measure/MeasuredResultsList;->getMeasuredResultsListInfo()[B

    move-result-object v3

    .line 124
    array-length v4, v3

    add-int/2addr v0, v4

    .line 126
    :cond_2
    iget-boolean v4, p0, Lcom/android/supl/loc/WcdmaCellInfo;->bIsCellParametersIdPresent:Z

    if-eqz v4, :cond_3

    .line 127
    add-int/lit8 v0, v0, 0x1

    .line 129
    :cond_3
    const/4 v4, 0x0

    .line 130
    .local v4, "bTimeAd":[B
    iget-boolean v5, p0, Lcom/android/supl/loc/WcdmaCellInfo;->isTimingAdvancePresent:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/supl/loc/WcdmaCellInfo;->stTimingAdvance:Lcom/android/supl/loc/measure/TimingAdvance;

    if-eqz v5, :cond_4

    .line 131
    iget-object v5, p0, Lcom/android/supl/loc/WcdmaCellInfo;->stTimingAdvance:Lcom/android/supl/loc/measure/TimingAdvance;

    invoke-virtual {v5}, Lcom/android/supl/loc/measure/TimingAdvance;->getTimingAdvanceInfo()[B

    move-result-object v4

    .line 132
    array-length v5, v4

    add-int/2addr v0, v5

    .line 134
    :cond_4
    new-array v5, v0, [B

    .line 135
    .local v5, "bData":[B
    iget-short v6, p0, Lcom/android/supl/loc/WcdmaCellInfo;->m_sMCC:S

    invoke-static {v5, v1, v6}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 136
    iget-short v6, p0, Lcom/android/supl/loc/WcdmaCellInfo;->m_sMNC:S

    invoke-static {v5, v1, v6}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 137
    iget-short v6, p0, Lcom/android/supl/loc/WcdmaCellInfo;->m_sLAC:S

    invoke-static {v5, v1, v6}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 138
    iget v6, p0, Lcom/android/supl/loc/WcdmaCellInfo;->uiRefUC:I

    invoke-static {v5, v1, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 139
    iget-boolean v6, p0, Lcom/android/supl/loc/WcdmaCellInfo;->isFrequencyInfoPresent:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_5

    if-eqz v2, :cond_5

    .line 140
    invoke-static {v5, v1, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 141
    array-length v6, v2

    invoke-static {v2, v8, v5, v1, v6}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 142
    array-length v6, v2

    add-int/2addr v1, v6

    goto :goto_0

    .line 145
    :cond_5
    invoke-static {v5, v1, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 148
    :goto_0
    iget-boolean v6, p0, Lcom/android/supl/loc/WcdmaCellInfo;->isPrimaryScramblingCodePresent:Z

    if-eqz v6, :cond_6

    .line 149
    invoke-static {v5, v1, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 150
    iget-short v6, p0, Lcom/android/supl/loc/WcdmaCellInfo;->usPrimaryScramblingCode:S

    invoke-static {v5, v1, v6}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 151
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 154
    :cond_6
    invoke-static {v5, v1, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 157
    :goto_1
    iget-boolean v6, p0, Lcom/android/supl/loc/WcdmaCellInfo;->IsMeasuredResultsListPresent:Z

    if-eqz v6, :cond_7

    if-eqz v3, :cond_7

    .line 158
    invoke-static {v5, v1, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 159
    array-length v6, v3

    invoke-static {v3, v8, v5, v1, v6}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 160
    array-length v6, v3

    add-int/2addr v1, v6

    goto :goto_2

    .line 163
    :cond_7
    invoke-static {v5, v1, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 166
    :goto_2
    iget-boolean v6, p0, Lcom/android/supl/loc/WcdmaCellInfo;->bIsCellParametersIdPresent:Z

    if-eqz v6, :cond_8

    .line 167
    invoke-static {v5, v1, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 168
    iget-short v6, p0, Lcom/android/supl/loc/WcdmaCellInfo;->ucCellParametersId:S

    invoke-static {v5, v1, v6}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 169
    add-int/2addr v1, v7

    goto :goto_3

    .line 172
    :cond_8
    invoke-static {v5, v1, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 175
    :goto_3
    iget-boolean v6, p0, Lcom/android/supl/loc/WcdmaCellInfo;->isTimingAdvancePresent:Z

    if-eqz v6, :cond_9

    if-eqz v4, :cond_9

    .line 176
    invoke-static {v5, v1, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 177
    array-length v6, v4

    invoke-static {v4, v8, v5, v1, v6}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 178
    array-length v6, v4

    add-int/2addr v1, v6

    goto :goto_4

    .line 181
    :cond_9
    invoke-static {v5, v1, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 184
    :goto_4
    if-eq v1, v0, :cond_a

    .line 185
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "getWCDMAInfo invalid length"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    :cond_a
    return-object v5
.end method

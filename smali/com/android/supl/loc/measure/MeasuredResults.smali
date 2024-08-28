.class public Lcom/android/supl/loc/measure/MeasuredResults;
.super Ljava/lang/Object;
.source "MeasuredResults.java"


# instance fields
.field private bIsCellMeasuredResultsListPresent:Z

.field private bIsFrequencyInfoPresent:Z

.field private bIsUtra_CarrierRSSIPresent:Z

.field private mFrequencyInfo:Lcom/android/supl/loc/measure/FrequencyInfo;

.field private stCellMeasuredResultsList:Lcom/android/supl/loc/measure/CellMeasuredResultsList;

.field private ucUtra_CarrierRSSI:S


# direct methods
.method public constructor <init>(Lcom/android/supl/loc/measure/FrequencyInfo;SLcom/android/supl/loc/measure/CellMeasuredResultsList;)V
    .locals 3
    .param p1, "mFrequencyInfo"    # Lcom/android/supl/loc/measure/FrequencyInfo;
    .param p2, "ucUtra_CarrierRSSI"    # S
    .param p3, "stCellMeasuredResultsList"    # Lcom/android/supl/loc/measure/CellMeasuredResultsList;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/MeasuredResults;->mFrequencyInfo:Lcom/android/supl/loc/measure/FrequencyInfo;

    .line 51
    iput-object v0, p0, Lcom/android/supl/loc/measure/MeasuredResults;->stCellMeasuredResultsList:Lcom/android/supl/loc/measure/CellMeasuredResultsList;

    .line 55
    iput-object p1, p0, Lcom/android/supl/loc/measure/MeasuredResults;->mFrequencyInfo:Lcom/android/supl/loc/measure/FrequencyInfo;

    .line 56
    iput-short p2, p0, Lcom/android/supl/loc/measure/MeasuredResults;->ucUtra_CarrierRSSI:S

    .line 57
    iput-object p3, p0, Lcom/android/supl/loc/measure/MeasuredResults;->stCellMeasuredResultsList:Lcom/android/supl/loc/measure/CellMeasuredResultsList;

    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/MeasuredResults;->bIsFrequencyInfoPresent:Z

    .line 59
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/MeasuredResults;->bIsUtra_CarrierRSSIPresent:Z

    .line 60
    if-eqz p3, :cond_2

    move v0, v1

    nop

    :cond_2
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/MeasuredResults;->bIsCellMeasuredResultsListPresent:Z

    .line 61
    return-void
.end method


# virtual methods
.method public getMeasuredResultsInfo()[B
    .locals 8

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "iOffset":I
    const/16 v1, 0xc

    .line 66
    .local v1, "iSize":I
    const/4 v2, 0x0

    .line 67
    .local v2, "bFrequData":[B
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/MeasuredResults;->bIsFrequencyInfoPresent:Z

    if-eqz v3, :cond_0

    .line 68
    iget-object v3, p0, Lcom/android/supl/loc/measure/MeasuredResults;->mFrequencyInfo:Lcom/android/supl/loc/measure/FrequencyInfo;

    invoke-virtual {v3}, Lcom/android/supl/loc/measure/FrequencyInfo;->getFrequencyInfo()[B

    move-result-object v2

    .line 69
    if-eqz v2, :cond_0

    .line 70
    array-length v3, v2

    add-int/2addr v1, v3

    .line 73
    :cond_0
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/MeasuredResults;->bIsUtra_CarrierRSSIPresent:Z

    if-eqz v3, :cond_1

    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 76
    :cond_1
    const/4 v3, 0x0

    .line 77
    .local v3, "bCellMeasuredData":[B
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/MeasuredResults;->bIsCellMeasuredResultsListPresent:Z

    if-eqz v4, :cond_2

    .line 78
    iget-object v4, p0, Lcom/android/supl/loc/measure/MeasuredResults;->stCellMeasuredResultsList:Lcom/android/supl/loc/measure/CellMeasuredResultsList;

    invoke-virtual {v4}, Lcom/android/supl/loc/measure/CellMeasuredResultsList;->getCellMeasuredResultList()[B

    move-result-object v3

    .line 79
    array-length v4, v3

    add-int/2addr v1, v4

    .line 82
    :cond_2
    new-array v4, v1, [B

    .line 83
    .local v4, "bData":[B
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/MeasuredResults;->bIsFrequencyInfoPresent:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    .line 84
    invoke-static {v4, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 85
    if-eqz v2, :cond_4

    .line 86
    array-length v5, v2

    invoke-static {v2, v7, v4, v0, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 87
    array-length v5, v2

    add-int/2addr v0, v5

    goto :goto_0

    .line 91
    :cond_3
    invoke-static {v4, v0, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 93
    :cond_4
    :goto_0
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/MeasuredResults;->bIsUtra_CarrierRSSIPresent:Z

    if-eqz v5, :cond_5

    .line 94
    invoke-static {v4, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 95
    iget-short v5, p0, Lcom/android/supl/loc/measure/MeasuredResults;->ucUtra_CarrierRSSI:S

    invoke-static {v4, v0, v5}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    goto :goto_1

    .line 97
    :cond_5
    invoke-static {v4, v0, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 99
    :goto_1
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/MeasuredResults;->bIsCellMeasuredResultsListPresent:Z

    if-eqz v5, :cond_6

    .line 100
    invoke-static {v4, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 101
    array-length v5, v3

    invoke-static {v3, v7, v4, v0, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 102
    array-length v5, v3

    add-int/2addr v0, v5

    goto :goto_2

    .line 104
    :cond_6
    invoke-static {v4, v0, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 106
    :goto_2
    if-eq v0, v1, :cond_7

    .line 107
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "MeasuredResultsInfo length error"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    :cond_7
    return-object v4
.end method

.class public Lcom/android/supl/loc/measure/FrequencyInfo;
.super Ljava/lang/Object;
.source "FrequencyInfo.java"


# static fields
.field public static final MODE_SPECIFIC_INFO_TYPE_FDD:I = 0x1

.field public static final MODE_SPECIFIC_INFO_TYPE_TDD:I = 0x2


# instance fields
.field private ienModeSpecificInfoType:I

.field private mFdd:Lcom/android/supl/loc/measure/FrequencyInfoFdd;

.field private mFrequencyInfoTdd:Lcom/android/supl/loc/measure/FrequencyInfoTdd;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 2
    .param p1, "ienModeSpecificInfoType"    # I
    .param p2, "frequceObject"    # Ljava/lang/Object;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->ienModeSpecificInfoType:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->mFdd:Lcom/android/supl/loc/measure/FrequencyInfoFdd;

    .line 50
    iput-object v0, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->mFrequencyInfoTdd:Lcom/android/supl/loc/measure/FrequencyInfoTdd;

    .line 53
    iput p1, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->ienModeSpecificInfoType:I

    .line 54
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 55
    move-object v0, p2

    check-cast v0, Lcom/android/supl/loc/measure/FrequencyInfoFdd;

    iput-object v0, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->mFdd:Lcom/android/supl/loc/measure/FrequencyInfoFdd;

    goto :goto_0

    .line 56
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 57
    move-object v0, p2

    check-cast v0, Lcom/android/supl/loc/measure/FrequencyInfoTdd;

    iput-object v0, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->mFrequencyInfoTdd:Lcom/android/supl/loc/measure/FrequencyInfoTdd;

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FrequencyInfo mode value is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFrequencyInfo()[B
    .locals 6

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "iOffset":I
    const/4 v1, 0x4

    .line 66
    .local v1, "iSize":I
    const/4 v2, 0x0

    .line 67
    .local v2, "bFrqequencyData":[B
    iget v3, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->ienModeSpecificInfoType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 68
    iget-object v3, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->mFdd:Lcom/android/supl/loc/measure/FrequencyInfoFdd;

    invoke-virtual {v3}, Lcom/android/supl/loc/measure/FrequencyInfoFdd;->getFrequencyInfoFdd()[B

    move-result-object v2

    goto :goto_0

    .line 69
    :cond_0
    iget v3, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->ienModeSpecificInfoType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 70
    iget-object v3, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->mFrequencyInfoTdd:Lcom/android/supl/loc/measure/FrequencyInfoTdd;

    invoke-virtual {v3}, Lcom/android/supl/loc/measure/FrequencyInfoTdd;->getFrequencyInfoTdd()[B

    move-result-object v2

    .line 72
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 73
    .local v3, "bData":[B
    if-eqz v2, :cond_2

    .line 74
    array-length v4, v2

    add-int/2addr v1, v4

    .line 75
    new-array v3, v1, [B

    .line 77
    iget v4, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->ienModeSpecificInfoType:I

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 78
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 79
    array-length v4, v2

    add-int/2addr v0, v4

    .line 81
    :cond_2
    if-eq v0, v1, :cond_3

    .line 82
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "FrequencyInfo length error"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    :cond_3
    return-object v3
.end method

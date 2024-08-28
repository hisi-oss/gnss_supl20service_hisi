.class public Lcom/android/supl/loc/measure/ModeSpecificInfo;
.super Ljava/lang/Object;
.source "ModeSpecificInfo.java"


# static fields
.field public static final MODE_SPECIFIC_INFO_TYPE_FDD:I = 0x1

.field public static final MODE_SPECIFIC_INFO_TYPE_TDD:I = 0x2


# instance fields
.field private ienModeSpecificInfoType:I

.field private mFdd:Lcom/android/supl/loc/measure/ModeFDD;

.field private mModeTDD:Lcom/android/supl/loc/measure/ModeTDD;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 2
    .param p1, "ienModeSpecificInfoType"    # I
    .param p2, "objMode"    # Ljava/lang/Object;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/ModeSpecificInfo;->mFdd:Lcom/android/supl/loc/measure/ModeFDD;

    .line 47
    iput-object v0, p0, Lcom/android/supl/loc/measure/ModeSpecificInfo;->mModeTDD:Lcom/android/supl/loc/measure/ModeTDD;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/loc/measure/ModeSpecificInfo;->ienModeSpecificInfoType:I

    .line 52
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 53
    move-object v0, p2

    check-cast v0, Lcom/android/supl/loc/measure/ModeFDD;

    iput-object v0, p0, Lcom/android/supl/loc/measure/ModeSpecificInfo;->mFdd:Lcom/android/supl/loc/measure/ModeFDD;

    goto :goto_0

    .line 54
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 55
    move-object v0, p2

    check-cast v0, Lcom/android/supl/loc/measure/ModeTDD;

    iput-object v0, p0, Lcom/android/supl/loc/measure/ModeSpecificInfo;->mModeTDD:Lcom/android/supl/loc/measure/ModeTDD;

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ModeSpecificInfo type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getModeSpecificInfo()[B
    .locals 6

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "iOffset":I
    const/4 v1, 0x4

    .line 64
    .local v1, "iSize":I
    const/4 v2, 0x0

    .line 65
    .local v2, "bModeData":[B
    iget v3, p0, Lcom/android/supl/loc/measure/ModeSpecificInfo;->ienModeSpecificInfoType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 66
    iget-object v3, p0, Lcom/android/supl/loc/measure/ModeSpecificInfo;->mFdd:Lcom/android/supl/loc/measure/ModeFDD;

    invoke-virtual {v3}, Lcom/android/supl/loc/measure/ModeFDD;->getModeFDDInfo()[B

    move-result-object v2

    .line 67
    array-length v3, v2

    add-int/2addr v1, v3

    goto :goto_0

    .line 68
    :cond_0
    iget v3, p0, Lcom/android/supl/loc/measure/ModeSpecificInfo;->ienModeSpecificInfoType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 69
    iget-object v3, p0, Lcom/android/supl/loc/measure/ModeSpecificInfo;->mModeTDD:Lcom/android/supl/loc/measure/ModeTDD;

    invoke-virtual {v3}, Lcom/android/supl/loc/measure/ModeTDD;->getModeTDDInfo()[B

    move-result-object v2

    .line 70
    array-length v3, v2

    add-int/2addr v1, v3

    .line 73
    :cond_1
    :goto_0
    new-array v3, v1, [B

    .line 74
    .local v3, "bData":[B
    iget v4, p0, Lcom/android/supl/loc/measure/ModeSpecificInfo;->ienModeSpecificInfoType:I

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 75
    if-eqz v2, :cond_2

    .line 76
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v3, v0, v5}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 77
    array-length v4, v2

    add-int/2addr v0, v4

    .line 79
    :cond_2
    if-eq v0, v1, :cond_3

    .line 80
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "ModeSpecificInfo length error"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    :cond_3
    return-object v3
.end method

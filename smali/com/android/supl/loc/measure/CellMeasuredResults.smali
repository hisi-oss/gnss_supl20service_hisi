.class public Lcom/android/supl/loc/measure/CellMeasuredResults;
.super Ljava/lang/Object;
.source "CellMeasuredResults.java"


# instance fields
.field private bIsCellIdentityPresent:Z

.field private mModeSpecificInfo:Lcom/android/supl/loc/measure/ModeSpecificInfo;

.field private unCellIdentity:I


# direct methods
.method public constructor <init>(ILcom/android/supl/loc/measure/ModeSpecificInfo;)V
    .locals 2
    .param p1, "unCellIdentity"    # I
    .param p2, "mModeSpecificInfo"    # Lcom/android/supl/loc/measure/ModeSpecificInfo;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/CellMeasuredResults;->mModeSpecificInfo:Lcom/android/supl/loc/measure/ModeSpecificInfo;

    .line 48
    if-eqz p2, :cond_1

    .line 51
    iput p1, p0, Lcom/android/supl/loc/measure/CellMeasuredResults;->unCellIdentity:I

    .line 52
    iput-object p2, p0, Lcom/android/supl/loc/measure/CellMeasuredResults;->mModeSpecificInfo:Lcom/android/supl/loc/measure/ModeSpecificInfo;

    .line 53
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/CellMeasuredResults;->bIsCellIdentityPresent:Z

    .line 54
    return-void

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ModeSpecificInfo should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCellMeasuredResults()[B
    .locals 6

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "iOffset":I
    const/4 v1, 0x4

    .line 59
    .local v1, "iSize":I
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/CellMeasuredResults;->bIsCellIdentityPresent:Z

    if-eqz v2, :cond_0

    .line 60
    add-int/lit8 v1, v1, 0x4

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/android/supl/loc/measure/CellMeasuredResults;->mModeSpecificInfo:Lcom/android/supl/loc/measure/ModeSpecificInfo;

    invoke-virtual {v2}, Lcom/android/supl/loc/measure/ModeSpecificInfo;->getModeSpecificInfo()[B

    move-result-object v2

    .line 63
    .local v2, "bModeData":[B
    array-length v3, v2

    add-int/2addr v1, v3

    .line 64
    new-array v3, v1, [B

    .line 65
    .local v3, "bData":[B
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/CellMeasuredResults;->bIsCellIdentityPresent:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 66
    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 67
    iget v4, p0, Lcom/android/supl/loc/measure/CellMeasuredResults;->unCellIdentity:I

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {v3, v0, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 71
    :goto_0
    array-length v4, v2

    invoke-static {v2, v5, v3, v0, v4}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 72
    array-length v4, v2

    add-int/2addr v0, v4

    .line 73
    if-eq v0, v1, :cond_2

    .line 74
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "CellMeasuredResults length error"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    :cond_2
    return-object v3
.end method

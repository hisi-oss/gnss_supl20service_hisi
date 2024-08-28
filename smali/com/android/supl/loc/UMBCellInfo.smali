.class public Lcom/android/supl/loc/UMBCellInfo;
.super Ljava/lang/Object;
.source "UMBCellInfo.java"


# instance fields
.field public stRefSectorID:Lcom/android/supl/loc/BitString;

.field public unRefBASELAT:I

.field public unRefBASELONG:I

.field public unRefSeconds:I

.field public usRefMCC:S

.field public usRefMNC:S

.field public usRefWeekNumber:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUMBCellInfo()[B
    .locals 6

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "iOffset":I
    const/16 v1, 0x12

    .line 60
    .local v1, "iSize":I
    iget-object v2, p0, Lcom/android/supl/loc/UMBCellInfo;->stRefSectorID:Lcom/android/supl/loc/BitString;

    invoke-virtual {v2}, Lcom/android/supl/loc/BitString;->getBitStringInfo()[B

    move-result-object v2

    .line 61
    .local v2, "bstRefSectorID":[B
    array-length v3, v2

    add-int/2addr v1, v3

    .line 62
    new-array v3, v1, [B

    .line 63
    .local v3, "bData":[B
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v0, v4}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 64
    array-length v4, v2

    add-int/2addr v0, v4

    .line 65
    iget-short v4, p0, Lcom/android/supl/loc/UMBCellInfo;->usRefMCC:S

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 66
    iget-short v4, p0, Lcom/android/supl/loc/UMBCellInfo;->usRefMNC:S

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 67
    iget v4, p0, Lcom/android/supl/loc/UMBCellInfo;->unRefBASELAT:I

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 68
    iget v4, p0, Lcom/android/supl/loc/UMBCellInfo;->unRefBASELONG:I

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 69
    iget-short v4, p0, Lcom/android/supl/loc/UMBCellInfo;->usRefWeekNumber:S

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 70
    iget v4, p0, Lcom/android/supl/loc/UMBCellInfo;->unRefSeconds:I

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 71
    if-eq v0, v1, :cond_0

    .line 72
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "UMBCell length error"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    :cond_0
    return-object v3
.end method

.method public setDummyData()V
    .locals 2

    .line 78
    new-instance v0, Lcom/android/supl/loc/BitString;

    const-string v1, "umb"

    invoke-direct {v0, v1}, Lcom/android/supl/loc/BitString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/supl/loc/UMBCellInfo;->stRefSectorID:Lcom/android/supl/loc/BitString;

    .line 79
    const/16 v0, 0x194

    iput-short v0, p0, Lcom/android/supl/loc/UMBCellInfo;->usRefMCC:S

    .line 80
    const/16 v0, 0x40

    iput-short v0, p0, Lcom/android/supl/loc/UMBCellInfo;->usRefMNC:S

    .line 81
    const v0, 0xc64d9f

    iput v0, p0, Lcom/android/supl/loc/UMBCellInfo;->unRefBASELAT:I

    .line 82
    const v0, 0x4c88cee

    iput v0, p0, Lcom/android/supl/loc/UMBCellInfo;->unRefBASELONG:I

    .line 83
    const/16 v0, 0x1c6

    iput-short v0, p0, Lcom/android/supl/loc/UMBCellInfo;->usRefWeekNumber:S

    .line 84
    const v0, 0x117a79

    iput v0, p0, Lcom/android/supl/loc/UMBCellInfo;->unRefSeconds:I

    .line 87
    return-void
.end method

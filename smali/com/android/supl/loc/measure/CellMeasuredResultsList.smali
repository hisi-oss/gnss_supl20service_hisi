.class public Lcom/android/supl/loc/measure/CellMeasuredResultsList;
.super Ljava/lang/Object;
.source "CellMeasuredResultsList.java"


# instance fields
.field private astCellMeasuredResults:[Lcom/android/supl/loc/measure/CellMeasuredResults;

.field private ucCellMeasuredResultsCnt:S


# direct methods
.method public constructor <init>([Lcom/android/supl/loc/measure/CellMeasuredResults;)V
    .locals 2
    .param p1, "astCellMeasuredResults"    # [Lcom/android/supl/loc/measure/CellMeasuredResults;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/CellMeasuredResultsList;->astCellMeasuredResults:[Lcom/android/supl/loc/measure/CellMeasuredResults;

    .line 48
    if-eqz p1, :cond_0

    .line 51
    iput-object p1, p0, Lcom/android/supl/loc/measure/CellMeasuredResultsList;->astCellMeasuredResults:[Lcom/android/supl/loc/measure/CellMeasuredResults;

    .line 52
    array-length v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/supl/loc/measure/CellMeasuredResultsList;->ucCellMeasuredResultsCnt:S

    .line 53
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CellMeasuredResults should not be n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCellMeasuredResultList()[B
    .locals 10

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "iOffset":I
    const/4 v1, 0x1

    .line 58
    .local v1, "iSize":I
    new-instance v2, Ljava/util/Vector;

    iget-short v3, p0, Lcom/android/supl/loc/measure/CellMeasuredResultsList;->ucCellMeasuredResultsCnt:S

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    .line 59
    .local v2, "vecCellMeasuredResults":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v3, p0, Lcom/android/supl/loc/measure/CellMeasuredResultsList;->astCellMeasuredResults:[Lcom/android/supl/loc/measure/CellMeasuredResults;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v1

    move v1, v5

    .end local v1    # "iSize":I
    .local v6, "iSize":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v7, v3, v1

    .line 60
    .local v7, "cellMeasuredResults":Lcom/android/supl/loc/measure/CellMeasuredResults;
    if-nez v7, :cond_0

    .line 61
    goto :goto_1

    .line 63
    :cond_0
    invoke-virtual {v7}, Lcom/android/supl/loc/measure/CellMeasuredResults;->getCellMeasuredResults()[B

    move-result-object v8

    .line 64
    .local v8, "bCellMeasured":[B
    array-length v9, v8

    add-int/2addr v6, v9

    .line 65
    invoke-virtual {v2, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v7    # "cellMeasuredResults":Lcom/android/supl/loc/measure/CellMeasuredResults;
    .end local v8    # "bCellMeasured":[B
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_1
    new-array v1, v6, [B

    .line 69
    .local v1, "bData":[B
    iget-short v3, p0, Lcom/android/supl/loc/measure/CellMeasuredResultsList;->ucCellMeasuredResultsCnt:S

    invoke-static {v1, v0, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 70
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 71
    .local v4, "bs":[B
    array-length v7, v4

    invoke-static {v4, v5, v1, v0, v7}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 72
    array-length v7, v4

    add-int/2addr v0, v7

    .line 73
    .end local v4    # "bs":[B
    goto :goto_2

    .line 74
    :cond_2
    if-eq v0, v6, :cond_3

    .line 75
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "CellMeasuredResultList length error"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    :cond_3
    return-object v1
.end method

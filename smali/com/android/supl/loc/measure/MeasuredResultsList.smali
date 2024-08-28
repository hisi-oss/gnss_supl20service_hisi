.class public Lcom/android/supl/loc/measure/MeasuredResultsList;
.super Ljava/lang/Object;
.source "MeasuredResultsList.java"


# instance fields
.field public astMeasuredResults:[Lcom/android/supl/loc/measure/MeasuredResults;

.field public ucMeasuredResultsCnt:S


# direct methods
.method public constructor <init>([Lcom/android/supl/loc/measure/MeasuredResults;)V
    .locals 2
    .param p1, "astMeasuredResults"    # [Lcom/android/supl/loc/measure/MeasuredResults;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/MeasuredResultsList;->astMeasuredResults:[Lcom/android/supl/loc/measure/MeasuredResults;

    .line 49
    if-eqz p1, :cond_0

    .line 52
    iput-object p1, p0, Lcom/android/supl/loc/measure/MeasuredResultsList;->astMeasuredResults:[Lcom/android/supl/loc/measure/MeasuredResults;

    .line 53
    array-length v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/supl/loc/measure/MeasuredResultsList;->ucMeasuredResultsCnt:S

    .line 54
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MeasuredResults should not be n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMeasuredResultsListInfo()[B
    .locals 10

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "iOffset":I
    const/4 v1, 0x1

    .line 59
    .local v1, "iSize":I
    new-instance v2, Ljava/util/Vector;

    iget-short v3, p0, Lcom/android/supl/loc/measure/MeasuredResultsList;->ucMeasuredResultsCnt:S

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    .line 60
    .local v2, "vecMeasuredResults":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v3, p0, Lcom/android/supl/loc/measure/MeasuredResultsList;->astMeasuredResults:[Lcom/android/supl/loc/measure/MeasuredResults;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v1

    move v1, v5

    .end local v1    # "iSize":I
    .local v6, "iSize":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v7, v3, v1

    .line 61
    .local v7, "measuredResult":Lcom/android/supl/loc/measure/MeasuredResults;
    if-nez v7, :cond_0

    .line 62
    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {v7}, Lcom/android/supl/loc/measure/MeasuredResults;->getMeasuredResultsInfo()[B

    move-result-object v8

    .line 65
    .local v8, "bMeasuredResult":[B
    array-length v9, v8

    add-int/2addr v6, v9

    .line 66
    invoke-virtual {v2, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 60
    .end local v7    # "measuredResult":Lcom/android/supl/loc/measure/MeasuredResults;
    .end local v8    # "bMeasuredResult":[B
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_1
    new-array v1, v6, [B

    .line 70
    .local v1, "bData":[B
    iget-short v3, p0, Lcom/android/supl/loc/measure/MeasuredResultsList;->ucMeasuredResultsCnt:S

    invoke-static {v1, v0, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 71
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 72
    .local v4, "bs":[B
    array-length v7, v4

    invoke-static {v4, v5, v1, v0, v7}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 73
    array-length v7, v4

    add-int/2addr v0, v7

    .line 74
    .end local v4    # "bs":[B
    goto :goto_2

    .line 75
    :cond_2
    if-eq v0, v6, :cond_3

    .line 76
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "MeasuredResultList length error"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    :cond_3
    return-object v1
.end method

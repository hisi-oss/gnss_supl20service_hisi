.class public Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;
.super Ljava/lang/Object;
.source "OTD_MeasREL5Ext.java"


# instance fields
.field public otdMsrRestSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;",
            ">;"
        }
    .end annotation
.end field

.field public ucCount:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOTD_MeasRel5Ext()[B
    .locals 8

    .line 44
    const/4 v0, 0x1

    .line 45
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 47
    .local v1, "iOffset":I
    const/4 v2, 0x0

    .line 48
    .local v2, "vecOtherSetMea":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v3, p0, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;->otdMsrRestSets:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 49
    new-instance v3, Ljava/util/Vector;

    iget-object v4, p0, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;->otdMsrRestSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    move-object v2, v3

    .line 50
    iget-object v3, p0, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;->otdMsrRestSets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    .line 51
    .local v4, "eleRest":Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;
    if-eqz v4, :cond_0

    .line 52
    invoke-virtual {v4}, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->getOTD_MSREleRest()[B

    move-result-object v5

    .line 53
    .local v5, "bOttherset":[B
    if-eqz v5, :cond_0

    .line 54
    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 55
    array-length v6, v5

    add-int/2addr v0, v6

    .line 58
    .end local v4    # "eleRest":Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;
    .end local v5    # "bOttherset":[B
    :cond_0
    goto :goto_0

    .line 60
    :cond_1
    new-array v3, v0, [B

    .line 62
    .local v3, "bData":[B
    iget-short v4, p0, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;->ucCount:S

    invoke-static {v3, v1, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 63
    if-eqz v2, :cond_3

    .line 64
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 65
    .local v5, "b":[B
    if-eqz v5, :cond_2

    .line 66
    const/4 v6, 0x0

    array-length v7, v5

    invoke-static {v5, v6, v3, v1, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 67
    array-length v6, v5

    add-int/2addr v1, v6

    .line 69
    .end local v5    # "b":[B
    :cond_2
    goto :goto_1

    .line 71
    :cond_3
    return-object v3
.end method

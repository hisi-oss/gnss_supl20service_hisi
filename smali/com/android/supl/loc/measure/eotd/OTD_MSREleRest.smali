.class public Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;
.super Ljava/lang/Object;
.source "OTD_MSREleRest.java"


# instance fields
.field public otd_MsrComm:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

.field public otd_MsrsOfOtherSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;",
            ">;"
        }
    .end annotation
.end field

.field public ucSetCount:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOTD_MSREleRest()[B
    .locals 9

    .line 45
    const/4 v0, 0x1

    .line 46
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 47
    .local v1, "iOffset":I
    const/4 v2, 0x0

    .line 48
    .local v2, "bMsrComm":[B
    iget-object v3, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->otd_MsrComm:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    if-eqz v3, :cond_0

    .line 49
    iget-object v3, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->otd_MsrComm:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    invoke-virtual {v3}, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;->getOTSMSREle()[B

    move-result-object v2

    .line 50
    array-length v3, v2

    add-int/2addr v0, v3

    .line 52
    :cond_0
    const/4 v3, 0x0

    .line 53
    .local v3, "vecOtherSetMea":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v4, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->otd_MsrsOfOtherSets:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 54
    new-instance v4, Ljava/util/Vector;

    iget-object v5, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->otd_MsrsOfOtherSets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    move-object v3, v4

    .line 55
    iget-object v4, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->otd_MsrsOfOtherSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    .line 56
    .local v5, "otherSets":Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;
    if-eqz v5, :cond_1

    .line 57
    invoke-virtual {v5}, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->getOTD_MSRofOtherSets()[B

    move-result-object v6

    .line 58
    .local v6, "bOttherset":[B
    if-eqz v6, :cond_1

    .line 59
    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 60
    array-length v7, v6

    add-int/2addr v0, v7

    .line 63
    .end local v5    # "otherSets":Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;
    .end local v6    # "bOttherset":[B
    :cond_1
    goto :goto_0

    .line 65
    :cond_2
    new-array v4, v0, [B

    .line 66
    .local v4, "bData":[B
    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 67
    array-length v6, v2

    invoke-static {v2, v5, v4, v1, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 68
    array-length v6, v2

    add-int/2addr v1, v6

    .line 70
    :cond_3
    iget-short v6, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->ucSetCount:S

    invoke-static {v4, v1, v6}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 71
    if-eqz v3, :cond_5

    .line 72
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 73
    .local v7, "b":[B
    if-eqz v7, :cond_4

    .line 74
    array-length v8, v7

    invoke-static {v7, v5, v4, v1, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 75
    array-length v8, v7

    add-int/2addr v1, v8

    .line 77
    .end local v7    # "b":[B
    :cond_4
    goto :goto_1

    .line 79
    :cond_5
    return-object v4
.end method

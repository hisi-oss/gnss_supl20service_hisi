.class public Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;
.super Ljava/lang/Object;
.source "Neighbor_Identity.java"


# instance fields
.field public enIdType:I

.field public stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNeighbor_Identity()[B
    .locals 6

    .line 51
    const/4 v0, 0x4

    .line 52
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 54
    .local v1, "iOffset":I
    const/4 v2, 0x0

    .line 55
    .local v2, "bData":[B
    iget-object v3, p0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    if-eqz v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    iget v4, p0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->enIdType:I

    invoke-virtual {v3, v4}, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->getNeighborIDUnion(I)[B

    move-result-object v3

    .line 57
    .local v3, "bNeighbor":[B
    array-length v4, v3

    add-int/2addr v0, v4

    .line 58
    new-array v2, v0, [B

    .line 59
    iget v4, p0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->enIdType:I

    invoke-static {v2, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 61
    if-eqz v3, :cond_0

    .line 62
    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 63
    array-length v4, v3

    add-int/2addr v1, v4

    .line 66
    .end local v3    # "bNeighbor":[B
    :cond_0
    return-object v2
.end method

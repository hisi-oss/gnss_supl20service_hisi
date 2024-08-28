.class public Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;
.super Ljava/lang/Object;
.source "SUPL_LPP_NEIGHBOUR_OTDOA_MMT.java"


# instance fields
.field public byNumberofNeighbourMmts:B

.field stLPPOTDOANeighbourElem:[Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;->stLPPOTDOANeighbourElem:[Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;

    .line 53
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;->byNumberofNeighbourMmts:B

    .line 54
    new-array v0, v0, [Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;

    new-instance v1, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;->stLPPOTDOANeighbourElem:[Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;

    .line 55
    return-void
.end method


# virtual methods
.method public get_NEIGHBOUR_OTDOA_MMT()[B
    .locals 10

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "iOffset":I
    const/4 v1, 0x1

    .line 60
    .local v1, "iSize":I
    const/4 v2, 0x0

    .line 61
    .local v2, "vecNeighbor":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;->stLPPOTDOANeighbourElem:[Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 62
    new-instance v3, Ljava/util/Vector;

    iget-byte v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;->byNumberofNeighbourMmts:B

    invoke-direct {v3, v5}, Ljava/util/Vector;-><init>(I)V

    move-object v2, v3

    .line 63
    iget-object v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;->stLPPOTDOANeighbourElem:[Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;

    array-length v5, v3

    move v6, v1

    move v1, v4

    .end local v1    # "iSize":I
    .local v6, "iSize":I
    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v7, v3, v1

    .line 64
    .local v7, "elem":Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;
    if-eqz v7, :cond_0

    .line 65
    invoke-virtual {v7}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->getLPP_NEIGHBOUR_ELEM()[B

    move-result-object v8

    .line 66
    .local v8, "bElem":[B
    if-eqz v8, :cond_0

    .line 67
    invoke-virtual {v2, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 68
    array-length v9, v8

    add-int/2addr v6, v9

    .line 63
    .end local v7    # "elem":Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;
    .end local v8    # "bElem":[B
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_1
    move v1, v6

    .end local v6    # "iSize":I
    .restart local v1    # "iSize":I
    :cond_2
    new-array v3, v1, [B

    .line 74
    .local v3, "bData":[B
    iget-byte v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;->byNumberofNeighbourMmts:B

    invoke-static {v3, v0, v5}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 75
    iget-byte v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;->byNumberofNeighbourMmts:B

    if-lez v5, :cond_4

    if-eqz v2, :cond_4

    .line 76
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 77
    .local v6, "b":[B
    if-eqz v6, :cond_3

    .line 78
    array-length v7, v6

    invoke-static {v6, v4, v3, v0, v7}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 79
    array-length v7, v6

    add-int/2addr v0, v7

    .line 81
    .end local v6    # "b":[B
    :cond_3
    goto :goto_1

    .line 83
    :cond_4
    return-object v3
.end method

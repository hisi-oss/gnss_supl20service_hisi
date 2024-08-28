.class public Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;
.super Ljava/lang/Object;
.source "SUPL_LPP_NEIGHBOUR_ELEM.java"


# instance fields
.field public bArfcnPresent:Z

.field public bEGCIPresent:Z

.field public lArfcnEUTRAValue:I

.field public stLPPOTDOAEGCI:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

.field stOTDOAMeasureQuality:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

.field public ulLPPrstd:I

.field public usPhysCellIDNeighbour:S


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->stLPPOTDOAEGCI:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

    .line 85
    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->stOTDOAMeasureQuality:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

    .line 92
    const/16 v0, 0x19c

    iput-short v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->usPhysCellIDNeighbour:S

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->bEGCIPresent:Z

    .line 94
    new-instance v1, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;-><init>()V

    iput-object v1, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->stLPPOTDOAEGCI:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

    .line 95
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->bArfcnPresent:Z

    .line 96
    const/16 v0, 0x200

    iput v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->lArfcnEUTRAValue:I

    .line 97
    const/16 v0, 0x1de

    iput v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->ulLPPrstd:I

    .line 98
    new-instance v0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->stOTDOAMeasureQuality:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

    .line 99
    return-void
.end method


# virtual methods
.method public getLPP_NEIGHBOUR_ELEM()[B
    .locals 7

    .line 102
    const/16 v0, 0xe

    .line 103
    .local v0, "iSize":I
    iget-boolean v1, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->bArfcnPresent:Z

    if-eqz v1, :cond_0

    .line 104
    add-int/lit8 v0, v0, 0x4

    .line 106
    :cond_0
    const/4 v1, 0x0

    .line 107
    .local v1, "bEGCI":[B
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->bEGCIPresent:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->stLPPOTDOAEGCI:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->stLPPOTDOAEGCI:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

    invoke-virtual {v2}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->getLPP_EGCI()[B

    move-result-object v1

    .line 109
    if-eqz v1, :cond_1

    .line 110
    array-length v2, v1

    add-int/2addr v0, v2

    .line 113
    :cond_1
    const/4 v2, 0x0

    .line 114
    .local v2, "bMeaQuality":[B
    iget-object v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->stOTDOAMeasureQuality:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

    if-eqz v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->stOTDOAMeasureQuality:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

    invoke-virtual {v3}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;->getOTDOA_MMT_QUALITY()[B

    move-result-object v2

    .line 116
    if-eqz v2, :cond_2

    .line 117
    array-length v3, v2

    add-int/2addr v0, v3

    .line 120
    :cond_2
    const/4 v3, 0x0

    .line 121
    .local v3, "iOffset":I
    new-array v4, v0, [B

    .line 122
    .local v4, "bData":[B
    iget-short v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->usPhysCellIDNeighbour:S

    invoke-static {v4, v3, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v3

    .line 123
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->bEGCIPresent:Z

    invoke-static {v4, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 124
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->bEGCIPresent:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 125
    if-eqz v1, :cond_3

    .line 126
    array-length v5, v1

    invoke-static {v1, v6, v4, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 127
    array-length v5, v1

    add-int/2addr v3, v5

    .line 130
    :cond_3
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->bArfcnPresent:Z

    invoke-static {v4, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 131
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->bArfcnPresent:Z

    if-eqz v5, :cond_4

    .line 132
    iget v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->lArfcnEUTRAValue:I

    invoke-static {v4, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 134
    :cond_4
    iget v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->ulLPPrstd:I

    invoke-static {v4, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 136
    if-eqz v2, :cond_5

    .line 137
    array-length v5, v2

    invoke-static {v2, v6, v4, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 138
    array-length v5, v2

    add-int/2addr v3, v5

    .line 141
    :cond_5
    return-object v4
.end method

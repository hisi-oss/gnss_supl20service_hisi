.class public Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;
.super Ljava/lang/Object;
.source "SUPL_LPP_OTDOA_SIGNAL_MMT.java"


# instance fields
.field public bArfcnPresent:Z

.field public bMeasureQualityPresent:Z

.field public bNeighbourMMTValid:Z

.field public bOTDOAEGCIValid:Z

.field public lArfcnEUTRAValue:I

.field public stLPPOTDOANeighbourLst:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;

.field public stOTDOAEGCIInfo:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

.field public stOTDOAMeasureQuality:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

.field public usPhysCellID:S

.field public wSignalFrameNo:S


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stOTDOAEGCIInfo:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

    .line 84
    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stOTDOAMeasureQuality:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

    .line 94
    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stLPPOTDOANeighbourLst:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;

    .line 100
    const/16 v0, 0x19c

    iput-short v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->wSignalFrameNo:S

    .line 101
    const/16 v0, 0x19d

    iput-short v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->usPhysCellID:S

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bOTDOAEGCIValid:Z

    .line 103
    new-instance v1, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;-><init>()V

    iput-object v1, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stOTDOAEGCIInfo:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

    .line 104
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bArfcnPresent:Z

    .line 105
    const/16 v1, 0x19f

    iput v1, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->lArfcnEUTRAValue:I

    .line 106
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bMeasureQualityPresent:Z

    .line 107
    new-instance v1, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;-><init>()V

    iput-object v1, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stOTDOAMeasureQuality:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

    .line 108
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bNeighbourMMTValid:Z

    .line 109
    new-instance v0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stLPPOTDOANeighbourLst:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;

    .line 110
    return-void
.end method


# virtual methods
.method public getSIGNAL_MMT()[B
    .locals 8

    .line 115
    const/16 v0, 0x14

    .line 118
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 119
    .local v1, "bEGCI":[B
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bOTDOAEGCIValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stOTDOAEGCIInfo:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stOTDOAEGCIInfo:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

    invoke-virtual {v2}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->getLPP_EGCI()[B

    move-result-object v1

    .line 121
    if-eqz v1, :cond_0

    .line 122
    array-length v2, v1

    add-int/2addr v0, v2

    .line 125
    :cond_0
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bArfcnPresent:Z

    if-eqz v2, :cond_1

    .line 126
    add-int/lit8 v0, v0, 0x4

    .line 128
    :cond_1
    const/4 v2, 0x0

    .line 129
    .local v2, "bMeaQuality":[B
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bMeasureQualityPresent:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stOTDOAMeasureQuality:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

    if-eqz v3, :cond_2

    .line 130
    iget-object v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stOTDOAMeasureQuality:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

    invoke-virtual {v3}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;->getOTDOA_MMT_QUALITY()[B

    move-result-object v2

    .line 131
    if-eqz v2, :cond_2

    .line 132
    array-length v3, v2

    add-int/2addr v0, v3

    .line 135
    :cond_2
    const/4 v3, 0x0

    .line 136
    .local v3, "bNeigh":[B
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bNeighbourMMTValid:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stLPPOTDOANeighbourLst:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;

    if-eqz v4, :cond_3

    .line 137
    iget-object v4, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stLPPOTDOANeighbourLst:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;

    invoke-virtual {v4}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;->get_NEIGHBOUR_OTDOA_MMT()[B

    move-result-object v3

    .line 138
    if-eqz v3, :cond_3

    .line 139
    array-length v4, v3

    add-int/2addr v0, v4

    .line 142
    :cond_3
    const/4 v4, 0x0

    .line 143
    .local v4, "iOffset":I
    new-array v5, v0, [B

    .line 144
    .local v5, "bData":[B
    iget-short v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->wSignalFrameNo:S

    invoke-static {v5, v4, v6}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v4

    .line 145
    iget-short v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->usPhysCellID:S

    invoke-static {v5, v4, v6}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v4

    .line 146
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bOTDOAEGCIValid:Z

    invoke-static {v5, v4, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 147
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bOTDOAEGCIValid:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    .line 148
    array-length v6, v1

    invoke-static {v1, v7, v5, v4, v6}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 149
    array-length v6, v1

    add-int/2addr v4, v6

    .line 151
    :cond_4
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bArfcnPresent:Z

    invoke-static {v5, v4, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 152
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bArfcnPresent:Z

    if-eqz v6, :cond_5

    .line 153
    iget v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->lArfcnEUTRAValue:I

    invoke-static {v5, v4, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 155
    :cond_5
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bMeasureQualityPresent:Z

    invoke-static {v5, v4, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 156
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bMeasureQualityPresent:Z

    if-eqz v6, :cond_6

    if-eqz v2, :cond_6

    .line 157
    array-length v6, v2

    invoke-static {v2, v7, v5, v4, v6}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 158
    array-length v6, v2

    add-int/2addr v4, v6

    .line 160
    :cond_6
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bNeighbourMMTValid:Z

    invoke-static {v5, v4, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 161
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bNeighbourMMTValid:Z

    if-eqz v6, :cond_7

    if-eqz v3, :cond_7

    .line 162
    array-length v6, v3

    invoke-static {v3, v7, v5, v4, v6}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 163
    array-length v6, v3

    add-int/2addr v4, v6

    .line 166
    :cond_7
    return-object v5
.end method

.class public Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;
.super Ljava/lang/Object;
.source "SUPL_OTDOA_NeighbourMeas.java"


# instance fields
.field public eModeType:I

.field public lSFNSFNObsTimeDiff2:J

.field public stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

.field public ucNoOfMeasurements:S

.field public ucStdDevOTDOAMeas:S

.field public ucStdValue:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNeighbourMeas()[B
    .locals 6

    .line 86
    const/16 v0, 0xb

    .line 89
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 91
    .local v1, "bNiberInfo":[B
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    invoke-virtual {v2}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->getNeighModeSpecMeas()[B

    move-result-object v1

    .line 93
    array-length v2, v1

    add-int/2addr v0, v2

    .line 95
    :cond_0
    new-array v2, v0, [B

    .line 96
    .local v2, "bData":[B
    const/4 v3, 0x0

    .line 97
    .local v3, "iOffset":I
    iget v4, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->eModeType:I

    invoke-static {v2, v3, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 98
    iget-object v4, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    if-eqz v4, :cond_1

    .line 99
    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 100
    array-length v4, v1

    add-int/2addr v3, v4

    .line 102
    :cond_1
    iget-short v4, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->ucStdValue:S

    invoke-static {v2, v3, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v3

    .line 103
    iget-short v4, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->ucNoOfMeasurements:S

    invoke-static {v2, v3, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v3

    .line 104
    iget-short v4, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->ucStdDevOTDOAMeas:S

    invoke-static {v2, v3, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v3

    .line 105
    iget-wide v4, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->lSFNSFNObsTimeDiff2:J

    long-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 106
    return-object v2
.end method

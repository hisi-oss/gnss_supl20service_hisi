.class public Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;
.super Ljava/lang/Object;
.source "SUPL_OTDOA_Measurement.java"


# static fields
.field public static final SUPL_OTDOA_MODE_SPEC_INFO_FDD:I = 0x1

.field public static final SUPL_OTDOA_MODE_SPEC_INFO_NONE:I = 0x0

.field public static final SUPL_OTDOA_MODE_SPEC_INFO_TDD:I = 0x2


# instance fields
.field public bMeasurementValid:Z

.field public bNeighbourListPresent:Z

.field public eModeSpecInfoType:I

.field public lSFN:J

.field public stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

.field public stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

.field public ucNoOfNeighbourList:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOTDOA_Measurement(I)[B
    .locals 11
    .param p1, "iMeasType"    # I

    .line 68
    const/16 v0, 0x10

    .line 69
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 70
    .local v1, "iOffset":I
    const/4 v2, 0x0

    .line 71
    .local v2, "bModeSpec":[B
    iget-object v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    if-eqz v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    invoke-virtual {v3}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->getModeSpecMeas()[B

    move-result-object v2

    .line 73
    array-length v3, v2

    add-int/2addr v0, v3

    .line 75
    :cond_0
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->bNeighbourListPresent:Z

    if-eqz v3, :cond_1

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 78
    :cond_1
    const/4 v3, 0x0

    .line 79
    .local v3, "vecbNeighbour":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->bNeighbourListPresent:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    if-eqz v4, :cond_4

    .line 80
    new-instance v4, Ljava/util/Vector;

    iget-object v6, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    array-length v6, v6

    invoke-direct {v4, v6}, Ljava/util/Vector;-><init>(I)V

    move-object v3, v4

    .line 81
    iget-object v4, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    array-length v6, v4

    move v7, v0

    move v0, v5

    .end local v0    # "iSize":I
    .local v7, "iSize":I
    :goto_0
    if-ge v0, v6, :cond_3

    aget-object v8, v4, v0

    .line 82
    .local v8, "meas":Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;
    if-eqz v8, :cond_2

    .line 83
    invoke-virtual {v8}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->getNeighbourMeas()[B

    move-result-object v9

    .line 84
    .local v9, "bNeighbour":[B
    if-eqz v9, :cond_2

    .line 85
    array-length v10, v9

    add-int/2addr v7, v10

    .line 86
    invoke-virtual {v3, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v8    # "meas":Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;
    .end local v9    # "bNeighbour":[B
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_3
    move v0, v7

    .end local v7    # "iSize":I
    .restart local v0    # "iSize":I
    :cond_4
    add-int/lit8 v0, v0, 0x8

    .line 92
    add-int/lit8 v0, v0, 0x4

    .line 93
    new-array v4, v0, [B

    .line 94
    .local v4, "bData":[B
    add-int/lit8 v6, v0, -0x4

    invoke-static {v4, v1, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 95
    const/16 v6, 0x114

    invoke-static {v4, v1, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 96
    invoke-static {v4, v1, p1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 97
    iget-boolean v7, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->bMeasurementValid:Z

    invoke-static {v4, v1, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 98
    iget-wide v7, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->lSFN:J

    long-to-int v7, v7

    invoke-static {v4, v1, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 99
    iget v7, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->eModeSpecInfoType:I

    invoke-static {v4, v1, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 100
    if-eqz v2, :cond_5

    .line 101
    array-length v7, v2

    invoke-static {v2, v5, v4, v1, v7}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 102
    array-length v7, v2

    add-int/2addr v1, v7

    .line 104
    :cond_5
    iget-boolean v7, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->bNeighbourListPresent:Z

    invoke-static {v4, v1, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 105
    iget-boolean v7, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->bNeighbourListPresent:Z

    if-eqz v7, :cond_7

    .line 106
    iget-short v7, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->ucNoOfNeighbourList:S

    invoke-static {v4, v1, v7}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 107
    if-eqz v3, :cond_7

    .line 108
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 109
    .local v8, "b":[B
    if-eqz v8, :cond_6

    .line 110
    array-length v9, v8

    invoke-static {v8, v5, v4, v1, v9}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 111
    array-length v9, v8

    add-int/2addr v1, v9

    .line 113
    .end local v8    # "b":[B
    :cond_6
    goto :goto_1

    .line 116
    :cond_7
    const-string v5, "SUPL20_OTDOA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OTDOA msg has send :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-object v4
.end method

.class public Lcom/android/supl/loc/measure/aflt/AfltMeasure;
.super Ljava/lang/Object;
.source "AfltMeasure.java"


# instance fields
.field public BandClass:I

.field public BaseStationID:I

.field public CDMAFrequency:I

.field public IsOffsetIncluded:Z

.field public MSTimeOffset:I

.field public NetworkIdentification:I

.field public ReferencePN:I

.field public ReferencePilotStrength:I

.field public SystemIdentification:I

.field public TimeReference:I

.field public TotalNumberOfPilots:I

.field public TotalReceivedPower:I

.field public bMeasurementValid:Z

.field phaseRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    .line 103
    return-void
.end method


# virtual methods
.method public getAFLTMeasInfo(I)[B
    .locals 8
    .param p1, "iMeasureType"    # I

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "iOffset":I
    const/4 v1, 0x4

    .line 109
    .local v1, "iSize":I
    add-int/lit8 v1, v1, 0x8

    .line 110
    add-int/lit8 v1, v1, 0x4

    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, "vecPhaseRecord":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->bMeasurementValid:Z

    if-eqz v3, :cond_2

    .line 113
    add-int/lit8 v1, v1, 0x2c

    .line 114
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->IsOffsetIncluded:Z

    if-eqz v3, :cond_0

    .line 115
    add-int/lit8 v1, v1, 0x4

    .line 118
    :cond_0
    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TotalNumberOfPilots:I

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 119
    new-instance v3, Ljava/util/Vector;

    iget-object v4, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    move-object v2, v3

    .line 120
    iget-object v3, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    .line 121
    .local v4, "record":Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;
    if-eqz v4, :cond_1

    .line 122
    invoke-virtual {v4}, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->getAfltPilotPhaseRecord()[B

    move-result-object v5

    .line 123
    .local v5, "bRecord":[B
    if-eqz v5, :cond_1

    .line 124
    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 125
    array-length v6, v5

    add-int/2addr v1, v6

    .line 128
    .end local v4    # "record":Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;
    .end local v5    # "bRecord":[B
    :cond_1
    goto :goto_0

    .line 131
    :cond_2
    new-array v3, v1, [B

    .line 132
    .local v3, "bData":[B
    add-int/lit8 v4, v1, -0x4

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 133
    const/16 v4, 0x114

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 134
    invoke-static {v3, v0, p1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 135
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->bMeasurementValid:Z

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 136
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->bMeasurementValid:Z

    if-eqz v4, :cond_5

    .line 137
    iget v4, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TimeReference:I

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 138
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->IsOffsetIncluded:Z

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 139
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->IsOffsetIncluded:Z

    if-eqz v4, :cond_3

    .line 140
    iget v4, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->MSTimeOffset:I

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 142
    :cond_3
    iget v4, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->ReferencePN:I

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 143
    iget v4, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->ReferencePilotStrength:I

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 144
    iget v4, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->BandClass:I

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 145
    iget v4, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->CDMAFrequency:I

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 146
    iget v4, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->BaseStationID:I

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 147
    iget v4, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->SystemIdentification:I

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 148
    iget v4, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->NetworkIdentification:I

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 149
    iget v4, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TotalReceivedPower:I

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 150
    iget v4, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TotalNumberOfPilots:I

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 151
    iget v4, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TotalNumberOfPilots:I

    if-lez v4, :cond_5

    if-eqz v2, :cond_5

    .line 152
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 153
    .local v5, "b":[B
    if-eqz v5, :cond_4

    .line 154
    const/4 v6, 0x0

    array-length v7, v5

    invoke-static {v5, v6, v3, v0, v7}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 155
    array-length v6, v5

    add-int/2addr v0, v6

    .line 157
    .end local v5    # "b":[B
    :cond_4
    goto :goto_1

    .line 162
    :cond_5
    return-object v3
.end method

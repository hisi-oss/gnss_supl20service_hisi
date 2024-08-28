.class public Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;
.super Ljava/lang/Object;
.source "SUPL_AFLT_PilotPhaseRecord.java"


# instance fields
.field public PilotMeasuredPhase:I

.field public PilotPhaseDoppler:I

.field public PilotPhaseMeasurementError:I

.field public PilotStrength:I

.field public PilotphaseFalseAlarmProbability:I

.field public PilotphaseFalseAlarmRange:I

.field public PseudoDopplerRMSError:I

.field public RMSErrorPhase:I

.field public RepeaterDetectionStatus:I

.field public RepeaterID:[B

.field public RepeaterType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->RepeaterID:[B

    return-void
.end method


# virtual methods
.method public getAfltPilotPhaseRecord()[B
    .locals 5

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "iOffset":I
    const/16 v1, 0x48

    .line 105
    .local v1, "iSize":I
    new-array v2, v1, [B

    .line 107
    .local v2, "bData":[B
    iget v3, p0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotMeasuredPhase:I

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 108
    iget v3, p0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotStrength:I

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 109
    iget v3, p0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->RMSErrorPhase:I

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 110
    iget v3, p0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotPhaseMeasurementError:I

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 111
    iget v3, p0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->RepeaterDetectionStatus:I

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 112
    iget v3, p0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->RepeaterType:I

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 114
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    .line 116
    iget-object v4, p0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->RepeaterID:[B

    aget-byte v4, v4, v3

    invoke-static {v2, v0, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    .end local v3    # "i":I
    :cond_0
    iget v3, p0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotPhaseDoppler:I

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 120
    iget v3, p0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PseudoDopplerRMSError:I

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 121
    iget v3, p0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotphaseFalseAlarmProbability:I

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 122
    iget v3, p0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotphaseFalseAlarmRange:I

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 124
    return-object v2
.end method

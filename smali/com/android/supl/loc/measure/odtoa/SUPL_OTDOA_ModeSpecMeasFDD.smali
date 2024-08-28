.class public Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;
.super Ljava/lang/Object;
.source "SUPL_OTDOA_ModeSpecMeasFDD.java"


# instance fields
.field public bPrimaryScramblingCodePresent:Z

.field public bRxTxTimeDiffValid:Z

.field public lPrimaryScramblingCode:J

.field public lRxTxTimeDiffType2:J

.field public ucNoOfMeasurements:S

.field public ucStdDevOTDOAMeas:S

.field public ucStdValue:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModeSpecMeasFDD()[B
    .locals 5

    .line 93
    nop

    .line 94
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->bPrimaryScramblingCodePresent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xc

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x3

    .line 96
    .local v1, "iSize":I
    const/4 v0, 0x0

    .line 97
    .local v0, "iOffset":I
    new-array v2, v1, [B

    .line 98
    .local v2, "bData":[B
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->bPrimaryScramblingCodePresent:Z

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 99
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->bPrimaryScramblingCodePresent:Z

    if-eqz v3, :cond_1

    .line 100
    iget-wide v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->lPrimaryScramblingCode:J

    long-to-int v3, v3

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 102
    :cond_1
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->bRxTxTimeDiffValid:Z

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 104
    iget-wide v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->lRxTxTimeDiffType2:J

    long-to-int v3, v3

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 105
    iget-short v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->ucStdValue:S

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 106
    iget-short v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->ucNoOfMeasurements:S

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 107
    iget-short v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->ucStdDevOTDOAMeas:S

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 108
    return-object v2
.end method

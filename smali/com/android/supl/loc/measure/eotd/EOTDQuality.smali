.class public Lcom/android/supl/loc/measure/eotd/EOTDQuality;
.super Ljava/lang/Object;
.source "EOTDQuality.java"


# instance fields
.field public ucNbrOfMeasurements:S

.field public ucStdOfEOTD:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEOTDQulaity()[B
    .locals 4

    .line 41
    const/4 v0, 0x2

    .line 42
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 43
    .local v1, "iOffset":I
    new-array v2, v0, [B

    .line 44
    .local v2, "bData":[B
    iget-short v3, p0, Lcom/android/supl/loc/measure/eotd/EOTDQuality;->ucNbrOfMeasurements:S

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 45
    iget-short v3, p0, Lcom/android/supl/loc/measure/eotd/EOTDQuality;->ucStdOfEOTD:S

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 46
    return-object v2
.end method

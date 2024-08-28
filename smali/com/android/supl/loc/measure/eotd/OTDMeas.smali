.class public Lcom/android/supl/loc/measure/eotd/OTDMeas;
.super Ljava/lang/Object;
.source "OTDMeas.java"


# instance fields
.field public eotdQuality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

.field public ucNborTimeSlot:S

.field public usOTDValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOTDMeas()[B
    .locals 6

    .line 52
    const/4 v0, 0x3

    .line 53
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 54
    .local v1, "iOffset":I
    const/4 v2, 0x0

    .line 55
    .local v2, "beotsQuality":[B
    iget-object v3, p0, Lcom/android/supl/loc/measure/eotd/OTDMeas;->eotdQuality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    if-eqz v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/android/supl/loc/measure/eotd/OTDMeas;->eotdQuality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    invoke-virtual {v3}, Lcom/android/supl/loc/measure/eotd/EOTDQuality;->getEOTDQulaity()[B

    move-result-object v2

    .line 57
    array-length v3, v2

    add-int/2addr v0, v3

    .line 59
    :cond_0
    new-array v3, v0, [B

    .line 60
    .local v3, "bData":[B
    iget-short v4, p0, Lcom/android/supl/loc/measure/eotd/OTDMeas;->ucNborTimeSlot:S

    invoke-static {v3, v1, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 61
    if-eqz v2, :cond_1

    .line 62
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v3, v1, v5}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 63
    array-length v4, v2

    add-int/2addr v1, v4

    .line 65
    :cond_1
    iget v4, p0, Lcom/android/supl/loc/measure/eotd/OTDMeas;->usOTDValue:I

    invoke-static {v3, v1, v4}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 66
    return-object v3
.end method

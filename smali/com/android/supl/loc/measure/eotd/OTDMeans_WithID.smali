.class public Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;
.super Ljava/lang/Object;
.source "OTDMeans_WithID.java"


# instance fields
.field public eotdQuality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

.field public neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

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
.method public getOTDMeans_WithID()[B
    .locals 7

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "iOffset":I
    const/4 v1, 0x3

    .line 55
    .local v1, "iSize":I
    const/4 v2, 0x0

    .line 56
    .local v2, "bNeighbor":[B
    const/4 v3, 0x0

    .line 57
    .local v3, "bNEOTDQuality":[B
    iget-object v4, p0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    if-eqz v4, :cond_0

    .line 58
    iget-object v4, p0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    invoke-virtual {v4}, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->getNeighbor_Identity()[B

    move-result-object v2

    .line 59
    array-length v4, v2

    add-int/2addr v1, v4

    .line 61
    :cond_0
    iget-object v4, p0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->eotdQuality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    if-eqz v4, :cond_1

    .line 62
    iget-object v4, p0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->eotdQuality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    invoke-virtual {v4}, Lcom/android/supl/loc/measure/eotd/EOTDQuality;->getEOTDQulaity()[B

    move-result-object v3

    .line 63
    array-length v4, v3

    add-int/2addr v1, v4

    .line 65
    :cond_1
    new-array v4, v1, [B

    .line 66
    .local v4, "bData":[B
    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 67
    array-length v6, v2

    invoke-static {v2, v5, v4, v0, v6}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 68
    array-length v6, v2

    add-int/2addr v0, v6

    .line 70
    :cond_2
    iget-short v6, p0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->ucNborTimeSlot:S

    invoke-static {v4, v0, v6}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 71
    if-eqz v3, :cond_3

    .line 72
    array-length v6, v3

    invoke-static {v3, v5, v4, v0, v6}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 73
    array-length v5, v3

    add-int/2addr v0, v5

    .line 75
    :cond_3
    iget v5, p0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->usOTDValue:I

    invoke-static {v4, v0, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 76
    return-object v4
.end method

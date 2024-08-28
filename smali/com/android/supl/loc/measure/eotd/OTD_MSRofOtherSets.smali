.class public Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;
.super Ljava/lang/Object;
.source "OTD_MSRofOtherSets.java"


# instance fields
.field public bIsIdentityPresent:Z

.field public stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOTD_MSRofOtherSets()[B
    .locals 6

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "iOffset":I
    const/4 v1, 0x4

    .line 53
    .local v1, "iSize":I
    const/4 v2, 0x0

    .line 54
    .local v2, "bOTSMsr":[B
    iget-object v3, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    if-eqz v3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    invoke-virtual {v3}, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->getOTDOtherSets()[B

    move-result-object v2

    .line 56
    array-length v3, v2

    add-int/2addr v1, v3

    .line 58
    :cond_0
    new-array v3, v1, [B

    .line 59
    .local v3, "bData":[B
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->bIsIdentityPresent:Z

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 60
    if-eqz v2, :cond_1

    .line 62
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 63
    array-length v4, v2

    add-int/2addr v0, v4

    .line 65
    :cond_1
    return-object v3
.end method

.class public Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;
.super Ljava/lang/Object;
.source "BSIC_Carrier.java"


# instance fields
.field public cBsic:S

.field public usCarrier:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBSIC_Carrier()[B
    .locals 4

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "iOffset":I
    const/4 v1, 0x3

    .line 54
    .local v1, "iSize":I
    new-array v2, v1, [B

    .line 55
    .local v2, "bData":[B
    iget v3, p0, Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;->usCarrier:I

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 56
    iget-short v3, p0, Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;->cBsic:S

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 57
    return-object v2
.end method

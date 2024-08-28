.class public Lcom/android/supl/loc/measure/FrequencyInfoTdd;
.super Ljava/lang/Object;
.source "FrequencyInfoTdd.java"


# instance fields
.field private usUarfcn_Nt:S


# direct methods
.method public constructor <init>(S)V
    .locals 0
    .param p1, "usUarfcn_Nt"    # S

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-short p1, p0, Lcom/android/supl/loc/measure/FrequencyInfoTdd;->usUarfcn_Nt:S

    .line 45
    return-void
.end method


# virtual methods
.method public getFrequencyInfoTdd()[B
    .locals 4

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "iOffset":I
    const/4 v1, 0x2

    .line 49
    .local v1, "iSize":I
    new-array v2, v1, [B

    .line 50
    .local v2, "bData":[B
    iget-short v3, p0, Lcom/android/supl/loc/measure/FrequencyInfoTdd;->usUarfcn_Nt:S

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 51
    return-object v2
.end method

.class public Lcom/android/supl/loc/measure/eotd/CellID_LAC;
.super Ljava/lang/Object;
.source "CellID_LAC.java"


# instance fields
.field public usReferenceCI:S

.field public usReferenceLAC:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCellID_LAC()[B
    .locals 4

    .line 51
    const/4 v0, 0x4

    .line 52
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 53
    .local v1, "iOffset":I
    new-array v2, v0, [B

    .line 54
    .local v2, "bData":[B
    iget-short v3, p0, Lcom/android/supl/loc/measure/eotd/CellID_LAC;->usReferenceLAC:S

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 55
    iget-short v3, p0, Lcom/android/supl/loc/measure/eotd/CellID_LAC;->usReferenceCI:S

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 56
    return-object v2
.end method
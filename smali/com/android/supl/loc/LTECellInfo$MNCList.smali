.class public Lcom/android/supl/loc/LTECellInfo$MNCList;
.super Ljava/lang/Object;
.source "LTECellInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/LTECellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MNCList"
.end annotation


# instance fields
.field private ucRefMNC:[C

.field private ucRefMNCcnt:S


# direct methods
.method public constructor <init>([C)V
    .locals 1
    .param p1, "usRefMNC"    # [C

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNC:[C

    .line 234
    iget-object v0, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNC:[C

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNC:[C

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNCcnt:S

    goto :goto_0

    .line 237
    :cond_0
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNCcnt:S

    .line 240
    :goto_0
    return-void
.end method


# virtual methods
.method public getMncListInfo()[B
    .locals 5

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "iOffset":I
    const/4 v1, 0x1

    .line 245
    .local v1, "iSize":I
    const/4 v2, 0x0

    .line 246
    .local v2, "bData":[B
    iget-short v3, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNCcnt:S

    const/4 v4, 0x0

    if-lez v3, :cond_0

    .line 247
    iget-short v3, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNCcnt:S

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 248
    new-array v2, v1, [B

    .line 249
    iget-short v3, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNCcnt:S

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 250
    nop

    .local v4, "i":I
    :goto_0
    move v3, v4

    .end local v4    # "i":I
    .local v3, "i":I
    iget-short v4, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNCcnt:S

    if-ge v3, v4, :cond_1

    .line 251
    iget-object v4, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNC:[C

    aget-char v4, v4, v3

    invoke-static {v2, v0, v4}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 250
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 254
    .end local v4    # "i":I
    :cond_0
    new-array v2, v1, [B

    .line 255
    invoke-static {v2, v0, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 257
    :cond_1
    return-object v2
.end method

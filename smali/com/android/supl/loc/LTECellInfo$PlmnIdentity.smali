.class public Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
.super Ljava/lang/Object;
.source "LTECellInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/LTECellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlmnIdentity"
.end annotation


# instance fields
.field private bIsMCCPresent:Z

.field private stMCC:Lcom/android/supl/loc/LTECellInfo$MCC_LIST;

.field private stMNC:Lcom/android/supl/loc/LTECellInfo$MNCList;


# direct methods
.method public constructor <init>(ZLcom/android/supl/loc/LTECellInfo$MCC_LIST;Lcom/android/supl/loc/LTECellInfo$MNCList;)V
    .locals 2
    .param p1, "bIsMCCPresent"    # Z
    .param p2, "stMCC"    # Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    .param p3, "stMNC"    # Lcom/android/supl/loc/LTECellInfo$MNCList;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    if-eqz p3, :cond_2

    .line 273
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "MCC_LIST should not null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;->bIsMCCPresent:Z

    .line 277
    iput-object p2, p0, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;->stMCC:Lcom/android/supl/loc/LTECellInfo$MCC_LIST;

    .line 278
    iput-object p3, p0, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;->stMNC:Lcom/android/supl/loc/LTECellInfo$MNCList;

    .line 279
    return-void

    .line 270
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "MNCList should not null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPLMNIdentityInfo()[B
    .locals 8

    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "iOffset":I
    const/4 v1, 0x4

    .line 284
    .local v1, "iSize":I
    const/4 v2, 0x0

    .line 285
    .local v2, "bstMCC":[C
    iget-boolean v3, p0, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;->bIsMCCPresent:Z

    if-eqz v3, :cond_0

    .line 286
    iget-object v3, p0, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;->stMCC:Lcom/android/supl/loc/LTECellInfo$MCC_LIST;

    invoke-virtual {v3}, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;->getMccListInfo()[C

    move-result-object v2

    .line 287
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 289
    :cond_0
    iget-object v3, p0, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;->stMNC:Lcom/android/supl/loc/LTECellInfo$MNCList;

    invoke-virtual {v3}, Lcom/android/supl/loc/LTECellInfo$MNCList;->getMncListInfo()[B

    move-result-object v3

    .line 290
    .local v3, "bstMNC":[B
    array-length v4, v3

    add-int/2addr v1, v4

    .line 291
    new-array v4, v1, [B

    .line 292
    .local v4, "bData":[B
    iget-boolean v5, p0, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;->bIsMCCPresent:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 293
    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 294
    move v5, v0

    move v0, v6

    .local v0, "i":I
    .local v5, "iOffset":I
    :goto_0
    array-length v7, v2

    if-ge v0, v7, :cond_2

    .line 295
    aget-char v7, v2, v0

    invoke-static {v4, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    .end local v5    # "iOffset":I
    .local v0, "iOffset":I
    :cond_1
    invoke-static {v4, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 301
    .end local v0    # "iOffset":I
    .restart local v5    # "iOffset":I
    :cond_2
    array-length v0, v3

    invoke-static {v3, v6, v4, v5, v0}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 302
    array-length v0, v3

    add-int/2addr v5, v0

    .line 303
    if-eq v1, v5, :cond_3

    .line 304
    const-string v0, "SUPL20_LTECellInfo"

    const-string v6, "PLMNIdentity length error"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_3
    return-object v4
.end method

.class public Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
.super Ljava/lang/Object;
.source "LTECellInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/LTECellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cell_Globalid_Eutra"
.end annotation


# instance fields
.field private iCellIdentity:I

.field private stPLMNIdentity:Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;


# direct methods
.method public constructor <init>(Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;I)V
    .locals 2
    .param p1, "stPLMNIdentity"    # Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    .param p2, "iCellIdentity"    # I

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    if-eqz p1, :cond_1

    .line 183
    if-nez p2, :cond_0

    .line 185
    const-string v0, "SUPL20_LTECellInfo"

    const-string v1, "CellIdentity should not be zero"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    iput-object p1, p0, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;->stPLMNIdentity:Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;

    .line 188
    iput p2, p0, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;->iCellIdentity:I

    .line 190
    return-void

    .line 181
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "PlmnIdentity should not null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCellGlobalidInfo()[B
    .locals 5

    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, "iOffSet":I
    iget-object v1, p0, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;->stPLMNIdentity:Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;

    invoke-virtual {v1}, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;->getPLMNIdentityInfo()[B

    move-result-object v1

    .line 197
    .local v1, "bPLMNIdentity":[B
    array-length v2, v1

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 200
    .local v2, "bData":[B
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 201
    array-length v3, v1

    add-int/2addr v0, v3

    .line 202
    iget v3, p0, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;->iCellIdentity:I

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 203
    return-object v2
.end method

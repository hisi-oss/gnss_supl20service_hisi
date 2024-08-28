.class public Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
.super Ljava/lang/Object;
.source "LTECellInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/LTECellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MCC_LIST"
.end annotation


# instance fields
.field private usRefMCC:[C


# direct methods
.method public constructor <init>([C)V
    .locals 2
    .param p1, "usRefMCC"    # [C

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    if-eqz p1, :cond_1

    .line 215
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 217
    const-string v0, "SUPL20_LTECellInfo"

    const-string v1, "MCC_LIST should not be less than 3"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    iput-object p1, p0, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;->usRefMCC:[C

    .line 220
    return-void

    .line 213
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "MCC_LIST should not null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMccListInfo()[C
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;->usRefMCC:[C

    return-object v0
.end method

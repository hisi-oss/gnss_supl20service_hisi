.class public Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;
.super Ljava/lang/Object;
.source "SUPL_OTDOA_ModeSpecMeansTDD.java"


# instance fields
.field public bCellIDParamValid:Z

.field public lCellParamsID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModeSpecMeansTDD()[B
    .locals 5

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "iOffset":I
    const/16 v1, 0x8

    .line 55
    .local v1, "iSize":I
    new-array v2, v1, [B

    .line 56
    .local v2, "bData":[B
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;->bCellIDParamValid:Z

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 57
    iget-wide v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;->lCellParamsID:J

    long-to-int v3, v3

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 59
    return-object v2
.end method

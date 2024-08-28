.class public Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_ERRINFO;
.super Ljava/lang/Object;
.source "SUPL_LPP_OTDOA_ERRINFO.java"


# static fields
.field public static final SUPL_OTDOA_DEV_ERR_ASST_DATA_MISSING:I = 0x1

.field public static final SUPL_OTDOA_DEV_ERR_ATTEMPT_NEIGHBOUR_CELL_MMT:I = 0x4

.field public static final SUPL_OTDOA_DEV_ERR_NEIGHBOUR_CELL_MMT:I = 0x3

.field public static final SUPL_OTDOA_DEV_ERR_REF_CELL_MMT:I = 0x2

.field public static final SUPL_OTDOA_SERVER_ERR_ASST_DATA_NOTSUPP:I = 0x1

.field public static final SUPL_OTDOA_SERVER_ERR_ASST_DATA_NOTSUPP_CURRENT:I = 0x2

.field public static final SUPL_OTODA_DEV_ERR_UNDEFINED:I

.field public static final SUPL_OTODA_SERVER_ERR_UNDEFINED:I


# instance fields
.field public bDevErr:Z

.field public bServerErr:Z

.field public eLPPOTDOADevErr:I

.field public eLPPOTDOAServerErr:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_ERRINFO;->bServerErr:Z

    .line 77
    iput v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_ERRINFO;->eLPPOTDOAServerErr:I

    .line 78
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_ERRINFO;->bDevErr:Z

    .line 79
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_ERRINFO;->eLPPOTDOADevErr:I

    .line 80
    return-void
.end method


# virtual methods
.method public getOTDOA_ERRINFO()[B
    .locals 4

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "iOffset":I
    const/16 v1, 0x8

    .line 84
    .local v1, "iSize":I
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_ERRINFO;->bServerErr:Z

    if-eqz v2, :cond_0

    .line 85
    add-int/lit8 v1, v1, 0x4

    .line 88
    :cond_0
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_ERRINFO;->bDevErr:Z

    if-eqz v2, :cond_1

    .line 89
    add-int/lit8 v1, v1, 0x4

    .line 91
    :cond_1
    new-array v2, v1, [B

    .line 93
    .local v2, "bData":[B
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_ERRINFO;->bServerErr:Z

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 94
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_ERRINFO;->bServerErr:Z

    if-eqz v3, :cond_2

    .line 95
    iget v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_ERRINFO;->eLPPOTDOAServerErr:I

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 98
    :cond_2
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_ERRINFO;->bDevErr:Z

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 99
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_ERRINFO;->bDevErr:Z

    if-eqz v3, :cond_3

    .line 100
    iget v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_ERRINFO;->eLPPOTDOADevErr:I

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 102
    :cond_3
    return-object v2
.end method

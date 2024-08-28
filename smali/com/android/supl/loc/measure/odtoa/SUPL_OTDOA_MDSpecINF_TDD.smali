.class public Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;
.super Ljava/lang/Object;
.source "SUPL_OTDOA_MDSpecINF_TDD.java"


# static fields
.field public static final OTDOA_BURSTTYPE1:I = 0x0

.field public static final OTDOA_BURSTTYPE2:I = 0x1


# instance fields
.field public eBurstType:I

.field public lCellParamID:J

.field public lMidAmbleShift:J

.field public lTimeSlot:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMDSpecINF_TDD()[B
    .locals 5

    .line 60
    const/16 v0, 0x10

    .line 61
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 62
    .local v1, "iOffset":I
    new-array v2, v0, [B

    .line 63
    .local v2, "bData":[B
    iget v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;->eBurstType:I

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 64
    iget-wide v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;->lMidAmbleShift:J

    long-to-int v3, v3

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 65
    iget-wide v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;->lTimeSlot:J

    long-to-int v3, v3

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 66
    iget-wide v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;->lCellParamID:J

    long-to-int v3, v3

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 67
    return-object v2
.end method

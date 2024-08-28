.class public Lcom/android/supl/loc/measure/TimeSlotISCPList;
.super Ljava/lang/Object;
.source "TimeSlotISCPList.java"


# instance fields
.field private aucTimeslotISCP:[B

.field private ucTimeslotISCPsCnt:S


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "aucTimeslotISCP"    # [B

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/TimeSlotISCPList;->aucTimeslotISCP:[B

    .line 47
    if-eqz p1, :cond_0

    .line 50
    iput-object p1, p0, Lcom/android/supl/loc/measure/TimeSlotISCPList;->aucTimeslotISCP:[B

    .line 51
    iget-object v0, p0, Lcom/android/supl/loc/measure/TimeSlotISCPList;->aucTimeslotISCP:[B

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/supl/loc/measure/TimeSlotISCPList;->ucTimeslotISCPsCnt:S

    .line 53
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TimeslotISCP should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getTimeslotISCPListInfo()[B
    .locals 6

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "iOffset":I
    const/4 v1, 0x1

    .line 58
    .local v1, "iSize":I
    iget-object v2, p0, Lcom/android/supl/loc/measure/TimeSlotISCPList;->aucTimeslotISCP:[B

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/android/supl/loc/measure/TimeSlotISCPList;->aucTimeslotISCP:[B

    array-length v2, v2

    add-int/2addr v1, v2

    .line 61
    :cond_0
    new-array v2, v1, [B

    .line 62
    .local v2, "bData":[B
    iget-short v3, p0, Lcom/android/supl/loc/measure/TimeSlotISCPList;->ucTimeslotISCPsCnt:S

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 63
    iget-object v3, p0, Lcom/android/supl/loc/measure/TimeSlotISCPList;->aucTimeslotISCP:[B

    const/4 v4, 0x0

    iget-short v5, p0, Lcom/android/supl/loc/measure/TimeSlotISCPList;->ucTimeslotISCPsCnt:S

    invoke-static {v3, v4, v2, v0, v5}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 64
    iget-short v3, p0, Lcom/android/supl/loc/measure/TimeSlotISCPList;->ucTimeslotISCPsCnt:S

    add-int/2addr v0, v3

    .line 65
    return-object v2
.end method

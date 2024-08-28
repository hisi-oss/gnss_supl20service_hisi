.class public Lcom/android/supl/loc/GsmCellInfo;
.super Ljava/lang/Object;
.source "GsmCellInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/loc/GsmCellInfo$NMRElement;
    }
.end annotation


# static fields
.field private static GSM_PACKET_LEN:I = 0x0

.field private static final TA_DATA_LEN:I = 0x1


# instance fields
.field public isNMRPresent:Z

.field public isTAPresent:Z

.field public mElement:[Lcom/android/supl/loc/GsmCellInfo$NMRElement;

.field public m_iCellID:I

.field public m_iLAC:I

.field public m_iMCC:I

.field public m_iMNC:I

.field public m_iTA:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const/16 v0, 0x10

    sput v0, Lcom/android/supl/loc/GsmCellInfo;->GSM_PACKET_LEN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/loc/GsmCellInfo;->m_iCellID:I

    .line 52
    iput v0, p0, Lcom/android/supl/loc/GsmCellInfo;->m_iMCC:I

    .line 57
    iput v0, p0, Lcom/android/supl/loc/GsmCellInfo;->m_iMNC:I

    .line 62
    iput v0, p0, Lcom/android/supl/loc/GsmCellInfo;->m_iLAC:I

    .line 67
    iput v0, p0, Lcom/android/supl/loc/GsmCellInfo;->m_iTA:I

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/supl/loc/GsmCellInfo;->mElement:[Lcom/android/supl/loc/GsmCellInfo$NMRElement;

    .line 74
    iput-boolean v0, p0, Lcom/android/supl/loc/GsmCellInfo;->isNMRPresent:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/supl/loc/GsmCellInfo;->isTAPresent:Z

    return-void
.end method


# virtual methods
.method public getGSMInfo()[B
    .locals 12

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "bData":[B
    const/4 v1, 0x0

    .line 85
    .local v1, "iNMRElementLen":I
    sget v2, Lcom/android/supl/loc/GsmCellInfo;->GSM_PACKET_LEN:I

    .line 86
    .local v2, "iBuffSize":I
    iget-boolean v3, p0, Lcom/android/supl/loc/GsmCellInfo;->isNMRPresent:Z

    if-eqz v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/android/supl/loc/GsmCellInfo;->mElement:[Lcom/android/supl/loc/GsmCellInfo$NMRElement;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/supl/loc/GsmCellInfo;->mElement:[Lcom/android/supl/loc/GsmCellInfo$NMRElement;

    array-length v3, v3

    if-lez v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/android/supl/loc/GsmCellInfo;->mElement:[Lcom/android/supl/loc/GsmCellInfo$NMRElement;

    array-length v1, v3

    .line 89
    mul-int/lit8 v3, v1, 0x4

    add-int/2addr v2, v3

    .line 92
    :cond_0
    iget-boolean v3, p0, Lcom/android/supl/loc/GsmCellInfo;->isTAPresent:Z

    if-eqz v3, :cond_1

    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 95
    :cond_1
    new-array v0, v2, [B

    .line 96
    const/4 v3, 0x0

    .line 97
    .local v3, "offset":I
    iget v4, p0, Lcom/android/supl/loc/GsmCellInfo;->m_iMCC:I

    invoke-static {v0, v3, v4}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v3

    .line 98
    iget v4, p0, Lcom/android/supl/loc/GsmCellInfo;->m_iMNC:I

    invoke-static {v0, v3, v4}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v3

    .line 99
    iget v4, p0, Lcom/android/supl/loc/GsmCellInfo;->m_iLAC:I

    invoke-static {v0, v3, v4}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v3

    .line 100
    iget v4, p0, Lcom/android/supl/loc/GsmCellInfo;->m_iCellID:I

    invoke-static {v0, v3, v4}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v3

    .line 101
    iget-boolean v4, p0, Lcom/android/supl/loc/GsmCellInfo;->isNMRPresent:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    .line 103
    if-lez v1, :cond_4

    .line 105
    invoke-static {v0, v3, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 106
    invoke-static {v0, v3, v1}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v3

    .line 107
    iget-object v4, p0, Lcom/android/supl/loc/GsmCellInfo;->mElement:[Lcom/android/supl/loc/GsmCellInfo$NMRElement;

    array-length v7, v4

    move v8, v3

    move v3, v5

    .end local v3    # "offset":I
    .local v8, "offset":I
    :goto_0
    if-ge v3, v7, :cond_2

    aget-object v9, v4, v3

    .line 108
    .local v9, "nmr":Lcom/android/supl/loc/GsmCellInfo$NMRElement;
    invoke-virtual {v9}, Lcom/android/supl/loc/GsmCellInfo$NMRElement;->getNMRElementInfo()[B

    move-result-object v10

    .line 109
    .local v10, "bNMRData":[B
    const/4 v11, 0x4

    invoke-static {v10, v5, v0, v8, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 110
    add-int/lit8 v8, v8, 0x4

    .line 107
    .end local v9    # "nmr":Lcom/android/supl/loc/GsmCellInfo$NMRElement;
    .end local v10    # "bNMRData":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    :cond_2
    move v3, v8

    goto :goto_1

    .line 114
    .end local v8    # "offset":I
    .restart local v3    # "offset":I
    :cond_3
    invoke-static {v0, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 116
    :cond_4
    :goto_1
    iget-boolean v4, p0, Lcom/android/supl/loc/GsmCellInfo;->isTAPresent:Z

    if-eqz v4, :cond_5

    .line 117
    invoke-static {v0, v3, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 118
    iget v4, p0, Lcom/android/supl/loc/GsmCellInfo;->m_iTA:I

    invoke-static {v0, v3, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v3

    goto :goto_2

    .line 120
    :cond_5
    invoke-static {v0, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 122
    :goto_2
    return-object v0
.end method

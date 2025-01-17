.class public Lcom/android/supl/si/SUPLThirdPartyID;
.super Ljava/lang/Object;
.source "SUPLThirdPartyID.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/supl/si/SUPLThirdPartyID;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPL_EMAILID:I = 0x2

.field public static final SUPL_IMS_PUB_I:I = 0x4

.field public static final SUPL_LOGICAL_NAME:I = 0x0

.field public static final SUPL_MDN:I = 0x6

.field public static final SUPL_MIN:I = 0x5

.field public static final SUPL_MSISDN:I = 0x1

.field public static final SUPL_SIP_URI:I = 0x3

.field public static final SUPL_URI:I = 0x7


# instance fields
.field private m_enIdType:I

.field private ubBitsUsed:S

.field public ucIDBuff:[B

.field private ucSize:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 161
    new-instance v0, Lcom/android/supl/si/SUPLThirdPartyID$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLThirdPartyID$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLThirdPartyID;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;S)V
    .locals 2
    .param p1, "m_enIdType"    # I
    .param p2, "stThirdID"    # Ljava/lang/String;
    .param p3, "ubBitsUsed"    # S

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ucIDBuff:[B

    .line 114
    iput p1, p0, Lcom/android/supl/si/SUPLThirdPartyID;->m_enIdType:I

    .line 115
    const/4 v0, 0x7

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 118
    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ucIDBuff:[B

    .line 122
    iget-object v0, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ucIDBuff:[B

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ucSize:S

    .line 123
    iget-short v0, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ucSize:S

    mul-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ubBitsUsed:S

    .line 124
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ThirdPartyID should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ThirdPartyID type invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ucIDBuff:[B

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLThirdPartyID;->readFromParcel(Landroid/os/Parcel;)V

    .line 176
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public getThirdPartyID()[B
    .locals 6

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "iOffset":I
    iget-short v1, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ucSize:S

    const/4 v2, 0x6

    add-int/2addr v2, v1

    .line 135
    .local v2, "iSize":I
    new-array v1, v2, [B

    .line 136
    .local v1, "bData":[B
    iget v3, p0, Lcom/android/supl/si/SUPLThirdPartyID;->m_enIdType:I

    invoke-static {v1, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 137
    iget-short v3, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ucSize:S

    invoke-static {v1, v0, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 138
    iget-short v3, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ubBitsUsed:S

    invoke-static {v1, v0, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 139
    iget-object v3, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ucIDBuff:[B

    iget-short v4, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ucSize:S

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v0, v4}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 140
    iget-short v3, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ucSize:S

    add-int/2addr v0, v3

    .line 141
    if-eq v0, v2, :cond_0

    .line 142
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "ThirdPartyID length invalid"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    :cond_0
    return-object v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLThirdPartyID;->m_enIdType:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ucSize:S

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ubBitsUsed:S

    .line 185
    iget-short v0, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ucSize:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ucIDBuff:[B

    .line 186
    iget-object v0, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ucIDBuff:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 188
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/supl/si/SUPLThirdPartyID;->m_enIdType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ucIDBuff:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 196
    iget v0, p0, Lcom/android/supl/si/SUPLThirdPartyID;->m_enIdType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-short v0, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ucSize:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-short v0, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ubBitsUsed:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object v0, p0, Lcom/android/supl/si/SUPLThirdPartyID;->ucIDBuff:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 200
    return-void
.end method

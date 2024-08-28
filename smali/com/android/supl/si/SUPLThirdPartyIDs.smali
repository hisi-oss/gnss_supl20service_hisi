.class public Lcom/android/supl/si/SUPLThirdPartyIDs;
.super Ljava/lang/Object;
.source "SUPLThirdPartyIDs.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/supl/si/SUPLThirdPartyIDs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSuplThirdPartyID:[Lcom/android/supl/si/SUPLThirdPartyID;

.field private ucValidCount:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lcom/android/supl/si/SUPLThirdPartyIDs$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLThirdPartyIDs$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLThirdPartyIDs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->mSuplThirdPartyID:[Lcom/android/supl/si/SUPLThirdPartyID;

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLThirdPartyIDs;->readFromParcel(Landroid/os/Parcel;)V

    .line 130
    return-void
.end method

.method public constructor <init>(S[Lcom/android/supl/si/SUPLThirdPartyID;)V
    .locals 2
    .param p1, "ucValidCount"    # S
    .param p2, "mSuplThirdPartyID"    # [Lcom/android/supl/si/SUPLThirdPartyID;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->mSuplThirdPartyID:[Lcom/android/supl/si/SUPLThirdPartyID;

    .line 60
    iput-short p1, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    .line 61
    if-lez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ThirdPartyID array should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->mSuplThirdPartyID:[Lcom/android/supl/si/SUPLThirdPartyID;

    .line 65
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getSUPLThirdPartyIDs()[B
    .locals 10

    .line 77
    const/4 v0, 0x1

    .line 78
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 79
    .local v1, "iOffset":I
    iget-short v2, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->mSuplThirdPartyID:[Lcom/android/supl/si/SUPLThirdPartyID;

    array-length v4, v2

    move v5, v0

    move v0, v3

    .end local v0    # "iSize":I
    .local v5, "iSize":I
    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v6, v2, v0

    .line 81
    .local v6, "suplThirdPartyID":Lcom/android/supl/si/SUPLThirdPartyID;
    invoke-virtual {v6}, Lcom/android/supl/si/SUPLThirdPartyID;->getThirdPartyID()[B

    move-result-object v7

    .line 82
    .local v7, "bThridPartyID":[B
    array-length v8, v7

    add-int/2addr v5, v8

    .line 80
    .end local v6    # "suplThirdPartyID":Lcom/android/supl/si/SUPLThirdPartyID;
    .end local v7    # "bThridPartyID":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    move v0, v5

    .end local v5    # "iSize":I
    .restart local v0    # "iSize":I
    :cond_1
    new-array v2, v0, [B

    .line 86
    .local v2, "bData":[B
    iget-short v4, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    invoke-static {v2, v1, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 87
    iget-short v4, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    if-lez v4, :cond_3

    .line 88
    iget-object v4, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->mSuplThirdPartyID:[Lcom/android/supl/si/SUPLThirdPartyID;

    array-length v5, v4

    move v6, v1

    move v1, v3

    .end local v1    # "iOffset":I
    .local v6, "iOffset":I
    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v7, v4, v1

    .line 89
    .local v7, "suplThirdPartyID":Lcom/android/supl/si/SUPLThirdPartyID;
    invoke-virtual {v7}, Lcom/android/supl/si/SUPLThirdPartyID;->getThirdPartyID()[B

    move-result-object v8

    .line 90
    .local v8, "bThridPartyID":[B
    array-length v9, v8

    invoke-static {v8, v3, v2, v6, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 91
    array-length v9, v8

    add-int/2addr v6, v9

    .line 88
    .end local v7    # "suplThirdPartyID":Lcom/android/supl/si/SUPLThirdPartyID;
    .end local v8    # "bThridPartyID":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 94
    :cond_2
    move v1, v6

    .end local v6    # "iOffset":I
    .restart local v1    # "iOffset":I
    :cond_3
    if-eq v1, v0, :cond_4

    .line 95
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "ThirdPartyIDs  length invalid"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    :cond_4
    return-object v2
.end method

.method public getValidCount()S
    .locals 1

    .line 70
    iget-short v0, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    .line 138
    iget-short v0, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    if-lez v0, :cond_0

    .line 140
    const-class v0, Lcom/android/supl/si/SUPLThirdPartyID;

    .line 141
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 142
    .local v0, "parcels":[Landroid/os/Parcelable;
    array-length v1, v0

    new-array v1, v1, [Lcom/android/supl/si/SUPLThirdPartyID;

    iput-object v1, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->mSuplThirdPartyID:[Lcom/android/supl/si/SUPLThirdPartyID;

    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, "i":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 145
    .local v4, "par":Landroid/os/Parcelable;
    iget-object v5, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->mSuplThirdPartyID:[Lcom/android/supl/si/SUPLThirdPartyID;

    add-int/lit8 v6, v1, 0x1

    .local v6, "i":I
    move-object v7, v4

    check-cast v7, Lcom/android/supl/si/SUPLThirdPartyID;

    aput-object v7, v5, v1

    .line 144
    .end local v1    # "i":I
    .end local v4    # "par":Landroid/os/Parcelable;
    add-int/lit8 v3, v3, 0x1

    move v1, v6

    goto :goto_0

    .line 149
    .end local v0    # "parcels":[Landroid/os/Parcelable;
    .end local v6    # "i":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-short v1, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 173
    iget-short v1, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    if-lez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->mSuplThirdPartyID:[Lcom/android/supl/si/SUPLThirdPartyID;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 177
    .local v4, "aThirdPartyID":Lcom/android/supl/si/SUPLThirdPartyID;
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lcom/android/supl/si/SUPLThirdPartyID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    .end local v4    # "aThirdPartyID":Lcom/android/supl/si/SUPLThirdPartyID;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 157
    iget-short v0, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-short v0, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    if-lez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->mSuplThirdPartyID:[Lcom/android/supl/si/SUPLThirdPartyID;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 162
    :cond_0
    return-void
.end method

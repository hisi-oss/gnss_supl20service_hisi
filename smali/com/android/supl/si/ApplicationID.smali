.class public Lcom/android/supl/si/ApplicationID;
.super Ljava/lang/Object;
.source "ApplicationID.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/supl/si/ApplicationID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_pcAppName:Ljava/lang/String;

.field private m_pcAppProvider:Ljava/lang/String;

.field public m_pcAppVersion:Ljava/lang/String;

.field private ucAppNameLen:S

.field private ucAppProviderLen:S

.field private ucAppVersionLen:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 144
    new-instance v0, Lcom/android/supl/si/ApplicationID$1;

    invoke-direct {v0}, Lcom/android/supl/si/ApplicationID$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/ApplicationID;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/android/supl/si/ApplicationID;->ucAppProviderLen:S

    .line 55
    iput-short v0, p0, Lcom/android/supl/si/ApplicationID;->ucAppNameLen:S

    .line 58
    iput-short v0, p0, Lcom/android/supl/si/ApplicationID;->ucAppVersionLen:S

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppProvider:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppName:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppVersion:Ljava/lang/String;

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/supl/si/ApplicationID;->readFromParcel(Landroid/os/Parcel;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "m_pcAppProvider"    # Ljava/lang/String;
    .param p2, "m_pcAppName"    # Ljava/lang/String;
    .param p3, "m_pcAppVersion"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/android/supl/si/ApplicationID;->ucAppProviderLen:S

    .line 55
    iput-short v0, p0, Lcom/android/supl/si/ApplicationID;->ucAppNameLen:S

    .line 58
    iput-short v0, p0, Lcom/android/supl/si/ApplicationID;->ucAppVersionLen:S

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppProvider:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppName:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppVersion:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppProvider:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppName:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppVersion:Ljava/lang/String;

    .line 79
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/supl/si/ApplicationID;->ucAppProviderLen:S

    .line 83
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/supl/si/ApplicationID;->ucAppNameLen:S

    .line 84
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/supl/si/ApplicationID;->ucAppVersionLen:S

    .line 85
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No field should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getApplicationIDInfo()[B
    .locals 8

    .line 92
    const/4 v0, 0x3

    .line 93
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 94
    .local v1, "iOffset":I
    iget-object v2, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppVersion:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 95
    const-string v2, ""

    iput-object v2, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppVersion:Ljava/lang/String;

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppProvider:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 98
    const-string v2, ""

    iput-object v2, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppProvider:Ljava/lang/String;

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppName:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 101
    const-string v2, ""

    iput-object v2, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppName:Ljava/lang/String;

    .line 103
    :cond_2
    iget-object v2, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 104
    .local v2, "bAppVer":[B
    iget-object v3, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppProvider:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 105
    .local v3, "bAppProvider":[B
    iget-object v4, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 107
    .local v4, "bAppName":[B
    array-length v5, v3

    add-int/2addr v0, v5

    .line 108
    array-length v5, v4

    add-int/2addr v0, v5

    .line 109
    array-length v5, v2

    add-int/2addr v0, v5

    .line 110
    new-array v5, v0, [B

    .line 112
    .local v5, "bData":[B
    iget-short v6, p0, Lcom/android/supl/si/ApplicationID;->ucAppProviderLen:S

    invoke-static {v5, v1, v6}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 113
    iget-short v6, p0, Lcom/android/supl/si/ApplicationID;->ucAppNameLen:S

    invoke-static {v5, v1, v6}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 114
    iget-short v6, p0, Lcom/android/supl/si/ApplicationID;->ucAppVersionLen:S

    invoke-static {v5, v1, v6}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 116
    array-length v6, v3

    const/4 v7, 0x0

    invoke-static {v3, v7, v5, v1, v6}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 117
    array-length v6, v3

    add-int/2addr v1, v6

    .line 119
    array-length v6, v4

    invoke-static {v4, v7, v5, v1, v6}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 120
    array-length v6, v4

    add-int/2addr v1, v6

    .line 122
    array-length v6, v2

    invoke-static {v2, v7, v5, v1, v6}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 123
    array-length v6, v2

    add-int/2addr v1, v6

    .line 125
    if-eq v1, v0, :cond_3

    .line 126
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "ApplicationID length invalid"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    :cond_3
    return-object v5
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/supl/si/ApplicationID;->ucAppProviderLen:S

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/supl/si/ApplicationID;->ucAppNameLen:S

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/supl/si/ApplicationID;->ucAppVersionLen:S

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppProvider:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppName:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppVersion:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 183
    iget-short v0, p0, Lcom/android/supl/si/ApplicationID;->ucAppProviderLen:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-short v0, p0, Lcom/android/supl/si/ApplicationID;->ucAppNameLen:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-short v0, p0, Lcom/android/supl/si/ApplicationID;->ucAppVersionLen:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v0, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/supl/si/ApplicationID;->m_pcAppVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    return-void
.end method

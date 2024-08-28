.class public Lcom/android/supl/si/SILocationReport;
.super Ljava/lang/Object;
.source "SILocationReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/supl/si/SILocationReport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m_iLat:I

.field public m_iLon:I

.field public m_usPlatformSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/android/supl/si/SILocationReport$1;

    invoke-direct {v0}, Lcom/android/supl/si/SILocationReport$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SILocationReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SILocationReport;->readFromParcel(Landroid/os/Parcel;)V

    .line 99
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SILocationReport;->m_usPlatformSessionId:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SILocationReport;->m_iLat:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SILocationReport;->m_iLon:I

    .line 107
    return-void
.end method

.method public readSILocationReport(Ljava/io/DataInputStream;)Z
    .locals 2
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    .line 76
    .local v0, "isReadSuccess":Z
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lcom/android/supl/si/SILocationReport;->m_usPlatformSessionId:I

    .line 77
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/supl/si/SILocationReport;->m_iLat:I

    .line 78
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/supl/si/SILocationReport;->m_iLon:I

    .line 79
    const/4 v0, 0x1

    .line 81
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SILocationReport;->m_usPlatformSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SILocationReport;->m_iLat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Lon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SILocationReport;->m_iLon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 118
    iget v0, p0, Lcom/android/supl/si/SILocationReport;->m_usPlatformSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Lcom/android/supl/si/SILocationReport;->m_iLat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget v0, p0, Lcom/android/supl/si/SILocationReport;->m_iLon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    return-void
.end method

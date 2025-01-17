.class public Lcom/android/supl/si/ganss/SuplGanssPOSElem;
.super Ljava/lang/Object;
.source "SuplGanssPOSElem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/supl/si/ganss/SuplGanssPOSElem;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPL_GANSS_ID_GALILEO:I = 0x10

.field public static final SUPL_GANSS_ID_GLONASS:I = 0x8

.field public static final SUPL_GANSS_ID_MODERNGPS:I = 0x2

.field public static final SUPL_GANSS_ID_QZSS:I = 0x4

.field public static final SUPL_GANSS_ID_RESERVED2:I = 0x20

.field public static final SUPL_GANSS_ID_RESERVED3:I = 0x40

.field public static final SUPL_GANSS_ID_RESERVED4:I = 0x80

.field public static final SUPL_GANSS_ID_SBAS:I = 0x1


# instance fields
.field public eGanssId:I

.field public ucPosCapBitmap:I

.field public ucSBASBitmap:I

.field public ucSignalBitmap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lcom/android/supl/si/ganss/SuplGanssPOSElem$1;

    invoke-direct {v0}, Lcom/android/supl/si/ganss/SuplGanssPOSElem$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "eGanssId"    # I
    .param p2, "ucPosCapBitmap"    # I
    .param p3, "ucSignalBitmap"    # I
    .param p4, "ucSBASBitmap"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->eGanssId:I

    .line 76
    iput p2, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucPosCapBitmap:I

    .line 77
    iput p3, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucSignalBitmap:I

    .line 78
    iput p4, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucSBASBitmap:I

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->readFromParcel(Landroid/os/Parcel;)V

    .line 125
    return-void
.end method

.method public static getPacketSize()I
    .locals 1

    .line 95
    const/4 v0, 0x7

    .line 96
    .local v0, "iSize":I
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getPOSElem()[B
    .locals 4

    .line 85
    invoke-static {}, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->getPacketSize()I

    move-result v0

    .line 86
    .local v0, "iSize":I
    new-array v1, v0, [B

    .line 87
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .line 88
    .local v2, "offset":I
    iget v3, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->eGanssId:I

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 89
    iget v3, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucPosCapBitmap:I

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 90
    iget v3, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucSignalBitmap:I

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 91
    iget v3, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucSBASBitmap:I

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 92
    return-object v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->eGanssId:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucPosCapBitmap:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucSignalBitmap:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucSBASBitmap:I

    .line 136
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->eGanssId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucPosCapBitmap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucSignalBitmap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucSBASBitmap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 145
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->eGanssId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucPosCapBitmap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucSignalBitmap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucSBASBitmap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    return-void
.end method

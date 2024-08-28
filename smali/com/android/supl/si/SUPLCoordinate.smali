.class public Lcom/android/supl/si/SUPLCoordinate;
.super Ljava/lang/Object;
.source "SUPLCoordinate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/supl/si/SUPLCoordinate;",
            ">;"
        }
    .end annotation
.end field

.field public static final F2POW23DIV90:D = 93206.755556

.field public static final F2POW24DIV360:D = 46603.377778

.field public static final NORTH:I = 0x0

.field public static final SIZE:I = 0xc

.field public static final SOUTH:I = 0x1


# instance fields
.field private Latitude:I

.field private Longitude:I

.field private iSgnType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Lcom/android/supl/si/SUPLCoordinate$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLCoordinate$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLCoordinate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 5
    .param p1, "iSignType"    # I
    .param p2, "Latitude"    # I
    .param p3, "Longitude"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/si/SUPLCoordinate;->iSgnType:I

    .line 68
    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 71
    iput p1, p0, Lcom/android/supl/si/SUPLCoordinate;->iSgnType:I

    .line 72
    iput p2, p0, Lcom/android/supl/si/SUPLCoordinate;->Latitude:I

    .line 73
    iput p3, p0, Lcom/android/supl/si/SUPLCoordinate;->Longitude:I

    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, "isConvertTo3GPP_GAD":Z
    if-eqz v0, :cond_0

    .line 77
    int-to-double v1, p2

    const-wide v3, 0x40f6c16c16c1e365L    # 93206.755556

    mul-double/2addr v1, v3

    double-to-long v1, v1

    long-to-int p2, v1

    .line 78
    int-to-double v1, p3

    const-wide v3, 0x40e6c16c16c1e365L    # 46603.377778

    mul-double/2addr v1, v3

    double-to-long v1, v1

    long-to-int p3, v1

    .line 80
    :cond_0
    return-void

    .line 69
    .end local v0    # "isConvertTo3GPP_GAD":Z
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid Sign Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/si/SUPLCoordinate;->iSgnType:I

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLCoordinate;->readFromParcel(Landroid/os/Parcel;)V

    .line 124
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getCoordinateInfo()[B
    .locals 4

    .line 87
    const/16 v0, 0xc

    .line 88
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 89
    .local v1, "iOffset":I
    new-array v2, v0, [B

    .line 90
    .local v2, "bData":[B
    iget v3, p0, Lcom/android/supl/si/SUPLCoordinate;->iSgnType:I

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 91
    iget v3, p0, Lcom/android/supl/si/SUPLCoordinate;->Latitude:I

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 92
    iget v3, p0, Lcom/android/supl/si/SUPLCoordinate;->Longitude:I

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 93
    return-object v2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLCoordinate;->iSgnType:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLCoordinate;->Latitude:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLCoordinate;->Longitude:I

    .line 134
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SUPLCoordinate;->iSgnType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SUPLCoordinate;->Latitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Lon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SUPLCoordinate;->Longitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 141
    iget v0, p0, Lcom/android/supl/si/SUPLCoordinate;->iSgnType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v0, p0, Lcom/android/supl/si/SUPLCoordinate;->Latitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Lcom/android/supl/si/SUPLCoordinate;->Longitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    return-void
.end method

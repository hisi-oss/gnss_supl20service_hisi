.class public Lcom/android/supl/si/SUPLCircularArea;
.super Ljava/lang/Object;
.source "SUPLCircularArea.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/supl/si/SUPLCircularArea;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nRadius:I

.field private nRadiusMax:I

.field private nRadiusMin:I

.field private stCenter:Lcom/android/supl/si/SUPLCoordinate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    new-instance v0, Lcom/android/supl/si/SUPLCircularArea$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLCircularArea$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLCircularArea;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLCircularArea;->stCenter:Lcom/android/supl/si/SUPLCoordinate;

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLCircularArea;->readFromParcel(Landroid/os/Parcel;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/android/supl/si/SUPLCoordinate;III)V
    .locals 2
    .param p1, "stCenter"    # Lcom/android/supl/si/SUPLCoordinate;
    .param p2, "nRadius"    # I
    .param p3, "nRadiusMin"    # I
    .param p4, "nRadiusMax"    # I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLCircularArea;->stCenter:Lcom/android/supl/si/SUPLCoordinate;

    .line 79
    if-eqz p1, :cond_0

    .line 82
    iput-object p1, p0, Lcom/android/supl/si/SUPLCircularArea;->stCenter:Lcom/android/supl/si/SUPLCoordinate;

    .line 83
    iput p2, p0, Lcom/android/supl/si/SUPLCircularArea;->nRadius:I

    .line 84
    iput p3, p0, Lcom/android/supl/si/SUPLCircularArea;->nRadiusMin:I

    .line 85
    iput p4, p0, Lcom/android/supl/si/SUPLCircularArea;->nRadiusMax:I

    .line 87
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Coordinate should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getCircularArea()[B
    .locals 6

    .line 94
    const/16 v0, 0xc

    .line 95
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 96
    .local v1, "iOffset":I
    iget-object v2, p0, Lcom/android/supl/si/SUPLCircularArea;->stCenter:Lcom/android/supl/si/SUPLCoordinate;

    invoke-virtual {v2}, Lcom/android/supl/si/SUPLCoordinate;->getCoordinateInfo()[B

    move-result-object v2

    .line 97
    .local v2, "bCoordinate":[B
    array-length v3, v2

    add-int/2addr v0, v3

    .line 98
    new-array v3, v0, [B

    .line 99
    .local v3, "bData":[B
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v1, v4}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 100
    array-length v4, v2

    add-int/2addr v1, v4

    .line 101
    iget v4, p0, Lcom/android/supl/si/SUPLCircularArea;->nRadius:I

    invoke-static {v3, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 102
    iget v4, p0, Lcom/android/supl/si/SUPLCircularArea;->nRadiusMin:I

    invoke-static {v3, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 103
    iget v4, p0, Lcom/android/supl/si/SUPLCircularArea;->nRadiusMax:I

    invoke-static {v3, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 104
    if-eq v1, v0, :cond_0

    .line 105
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "CircularArea length invalid"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    :cond_0
    return-object v3
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 145
    const-class v0, Lcom/android/supl/si/SUPLCoordinate;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/supl/si/SUPLCoordinate;

    iput-object v0, p0, Lcom/android/supl/si/SUPLCircularArea;->stCenter:Lcom/android/supl/si/SUPLCoordinate;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLCircularArea;->nRadius:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLCircularArea;->nRadiusMin:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLCircularArea;->nRadiusMax:I

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Coor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/supl/si/SUPLCircularArea;->stCenter:Lcom/android/supl/si/SUPLCoordinate;

    invoke-virtual {v1}, Lcom/android/supl/si/SUPLCoordinate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Rad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SUPLCircularArea;->nRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "RMin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SUPLCircularArea;->nRadiusMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "RMax"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SUPLCircularArea;->nRadiusMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 157
    iget-object v0, p0, Lcom/android/supl/si/SUPLCircularArea;->stCenter:Lcom/android/supl/si/SUPLCoordinate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 158
    iget v0, p0, Lcom/android/supl/si/SUPLCircularArea;->nRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Lcom/android/supl/si/SUPLCircularArea;->nRadiusMin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget v0, p0, Lcom/android/supl/si/SUPLCircularArea;->nRadiusMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    return-void
.end method

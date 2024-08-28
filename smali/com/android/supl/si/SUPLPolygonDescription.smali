.class public Lcom/android/supl/si/SUPLPolygonDescription;
.super Ljava/lang/Object;
.source "SUPLPolygonDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/supl/si/SUPLPolygonDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nValidCoordinates:I

.field private stCoordinate:[Lcom/android/supl/si/SUPLCoordinate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Lcom/android/supl/si/SUPLPolygonDescription$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLPolygonDescription$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLPolygonDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[Lcom/android/supl/si/SUPLCoordinate;)V
    .locals 2
    .param p1, "nValidCoordinates"    # I
    .param p2, "stCoordinate"    # [Lcom/android/supl/si/SUPLCoordinate;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLPolygonDescription;->stCoordinate:[Lcom/android/supl/si/SUPLCoordinate;

    .line 66
    iput p1, p0, Lcom/android/supl/si/SUPLPolygonDescription;->nValidCoordinates:I

    .line 67
    if-lez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Coordinate value should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/supl/si/SUPLPolygonDescription;->stCoordinate:[Lcom/android/supl/si/SUPLCoordinate;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLPolygonDescription;->stCoordinate:[Lcom/android/supl/si/SUPLCoordinate;

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLPolygonDescription;->readFromParcel(Landroid/os/Parcel;)V

    .line 126
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getPolygonDescription()[B
    .locals 10

    .line 78
    const/4 v0, 0x4

    .line 79
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 80
    .local v1, "iOffset":I
    iget v2, p0, Lcom/android/supl/si/SUPLPolygonDescription;->nValidCoordinates:I

    mul-int/lit8 v2, v2, 0xc

    add-int/2addr v0, v2

    .line 81
    new-array v2, v0, [B

    .line 82
    .local v2, "bData":[B
    iget v3, p0, Lcom/android/supl/si/SUPLPolygonDescription;->nValidCoordinates:I

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 83
    iget v3, p0, Lcom/android/supl/si/SUPLPolygonDescription;->nValidCoordinates:I

    if-lez v3, :cond_1

    .line 84
    iget-object v3, p0, Lcom/android/supl/si/SUPLPolygonDescription;->stCoordinate:[Lcom/android/supl/si/SUPLCoordinate;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v1

    move v1, v5

    .end local v1    # "iOffset":I
    .local v6, "iOffset":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v7, v3, v1

    .line 85
    .local v7, "stSuplCoordinate":Lcom/android/supl/si/SUPLCoordinate;
    invoke-virtual {v7}, Lcom/android/supl/si/SUPLCoordinate;->getCoordinateInfo()[B

    move-result-object v8

    .line 86
    .local v8, "bCoordinate":[B
    array-length v9, v8

    invoke-static {v8, v5, v2, v6, v9}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 87
    array-length v9, v8

    add-int/2addr v6, v9

    .line 84
    .end local v7    # "stSuplCoordinate":Lcom/android/supl/si/SUPLCoordinate;
    .end local v8    # "bCoordinate":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_0
    move v1, v6

    .end local v6    # "iOffset":I
    .restart local v1    # "iOffset":I
    :cond_1
    if-eq v1, v0, :cond_2

    .line 91
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "PolygonDescription length invalid"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    :cond_2
    return-object v2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLPolygonDescription;->nValidCoordinates:I

    .line 134
    iget v0, p0, Lcom/android/supl/si/SUPLPolygonDescription;->nValidCoordinates:I

    if-lez v0, :cond_0

    .line 136
    const-class v0, Lcom/android/supl/si/SUPLCoordinate;

    .line 137
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 136
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 139
    .local v0, "parcels":[Landroid/os/Parcelable;
    array-length v1, v0

    new-array v1, v1, [Lcom/android/supl/si/SUPLCoordinate;

    iput-object v1, p0, Lcom/android/supl/si/SUPLPolygonDescription;->stCoordinate:[Lcom/android/supl/si/SUPLCoordinate;

    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "i":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 142
    .local v4, "par":Landroid/os/Parcelable;
    iget-object v5, p0, Lcom/android/supl/si/SUPLPolygonDescription;->stCoordinate:[Lcom/android/supl/si/SUPLCoordinate;

    add-int/lit8 v6, v1, 0x1

    .local v6, "i":I
    move-object v7, v4

    check-cast v7, Lcom/android/supl/si/SUPLCoordinate;

    aput-object v7, v5, v1

    .line 141
    .end local v1    # "i":I
    .end local v4    # "par":Landroid/os/Parcelable;
    add-int/lit8 v3, v3, 0x1

    move v1, v6

    goto :goto_0

    .line 146
    .end local v0    # "parcels":[Landroid/os/Parcelable;
    .end local v6    # "i":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 166
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 167
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/android/supl/si/SUPLPolygonDescription;->nValidCoordinates:I

    if-lez v1, :cond_0

    .line 168
    iget v1, p0, Lcom/android/supl/si/SUPLPolygonDescription;->nValidCoordinates:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 169
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    iget-object v1, p0, Lcom/android/supl/si/SUPLPolygonDescription;->stCoordinate:[Lcom/android/supl/si/SUPLCoordinate;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 171
    .local v4, "coordinate":Lcom/android/supl/si/SUPLCoordinate;
    invoke-virtual {v4}, Lcom/android/supl/si/SUPLCoordinate;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    .end local v4    # "coordinate":Lcom/android/supl/si/SUPLCoordinate;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 154
    iget v0, p0, Lcom/android/supl/si/SUPLPolygonDescription;->nValidCoordinates:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Lcom/android/supl/si/SUPLPolygonDescription;->nValidCoordinates:I

    if-lez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/supl/si/SUPLPolygonDescription;->stCoordinate:[Lcom/android/supl/si/SUPLCoordinate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 158
    :cond_0
    return-void
.end method

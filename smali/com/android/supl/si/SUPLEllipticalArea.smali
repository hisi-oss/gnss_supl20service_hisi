.class public Lcom/android/supl/si/SUPLEllipticalArea;
.super Ljava/lang/Object;
.source "SUPLEllipticalArea.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/supl/si/SUPLEllipticalArea;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public nAngle:I

.field public nSemiMajor:I

.field public nSemiMajorMax:I

.field public nSemiMajorMin:I

.field public nSemiMinor:I

.field public nSemiMinorMax:I

.field public nSemiMinorMin:I

.field public stCenterCoord:Lcom/android/supl/si/SUPLCoordinate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 185
    new-instance v0, Lcom/android/supl/si/SUPLEllipticalArea$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLEllipticalArea$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLEllipticalArea;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "nSemiMajorMin"    # I
    .param p2, "nSemiMajorMax"    # I
    .param p3, "nSemiMinorMin"    # I
    .param p4, "nSemiMinorMax"    # I
    .param p5, "nAngle"    # I

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->stCenterCoord:Lcom/android/supl/si/SUPLCoordinate;

    .line 118
    iput p1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMin:I

    .line 119
    iput p2, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMax:I

    .line 120
    iput p3, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMin:I

    .line 121
    iput p4, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMax:I

    .line 122
    iput p5, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nAngle:I

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->stCenterCoord:Lcom/android/supl/si/SUPLCoordinate;

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLEllipticalArea;->readFromParcel(Landroid/os/Parcel;)V

    .line 200
    return-void
.end method

.method public constructor <init>(Lcom/android/supl/si/SUPLCoordinate;IIIIIII)V
    .locals 2
    .param p1, "stCenterCoord"    # Lcom/android/supl/si/SUPLCoordinate;
    .param p2, "nSemiMajor"    # I
    .param p3, "nSemiMajorMin"    # I
    .param p4, "nSemiMajorMax"    # I
    .param p5, "nSemiMinor"    # I
    .param p6, "nSemiMinorMin"    # I
    .param p7, "nSemiMinorMax"    # I
    .param p8, "nAngle"    # I

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->stCenterCoord:Lcom/android/supl/si/SUPLCoordinate;

    .line 97
    if-eqz p1, :cond_0

    .line 100
    iput-object p1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->stCenterCoord:Lcom/android/supl/si/SUPLCoordinate;

    .line 101
    iput p2, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajor:I

    .line 102
    iput p3, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMin:I

    .line 103
    iput p4, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMax:I

    .line 104
    iput p5, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinor:I

    .line 105
    iput p6, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMin:I

    .line 106
    iput p7, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMax:I

    .line 107
    iput p8, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nAngle:I

    .line 109
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Coordinate should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public getEllipticalAreaInfo()[B
    .locals 6

    .line 151
    const/16 v0, 0x1c

    .line 152
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 153
    .local v1, "iOffset":I
    iget-object v2, p0, Lcom/android/supl/si/SUPLEllipticalArea;->stCenterCoord:Lcom/android/supl/si/SUPLCoordinate;

    invoke-virtual {v2}, Lcom/android/supl/si/SUPLCoordinate;->getCoordinateInfo()[B

    move-result-object v2

    .line 154
    .local v2, "bLoc":[B
    array-length v3, v2

    add-int/2addr v0, v3

    .line 155
    new-array v3, v0, [B

    .line 156
    .local v3, "bData":[B
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 157
    array-length v4, v2

    add-int/2addr v1, v4

    .line 158
    iget v4, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajor:I

    invoke-static {v3, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 159
    iget v4, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMin:I

    invoke-static {v3, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 160
    iget v4, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMax:I

    invoke-static {v3, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 161
    iget v4, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinor:I

    invoke-static {v3, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 162
    iget v4, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMin:I

    invoke-static {v3, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 163
    iget v4, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMax:I

    invoke-static {v3, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 164
    iget v4, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nAngle:I

    invoke-static {v3, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 166
    if-eq v1, v0, :cond_0

    .line 167
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "EllipticalArea length invalid"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    :cond_0
    return-object v3
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 206
    const-class v0, Lcom/android/supl/si/SUPLCoordinate;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/supl/si/SUPLCoordinate;

    iput-object v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->stCenterCoord:Lcom/android/supl/si/SUPLCoordinate;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajor:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMin:I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMax:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinor:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMin:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMax:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nAngle:I

    .line 215
    return-void
.end method

.method public setCenterCoordinate(Lcom/android/supl/si/SUPLCoordinate;)V
    .locals 0
    .param p1, "stCenterCoord"    # Lcom/android/supl/si/SUPLCoordinate;

    .line 130
    iput-object p1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->stCenterCoord:Lcom/android/supl/si/SUPLCoordinate;

    .line 131
    return-void
.end method

.method public setSemiMajor(I)V
    .locals 0
    .param p1, "nSemiMajor"    # I

    .line 137
    iput p1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajor:I

    .line 138
    return-void
.end method

.method public setSemiMinor(I)V
    .locals 0
    .param p1, "nSemiMinor"    # I

    .line 144
    iput p1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinor:I

    .line 145
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->stCenterCoord:Lcom/android/supl/si/SUPLCoordinate;

    invoke-virtual {v1}, Lcom/android/supl/si/SUPLCoordinate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 222
    iget-object v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->stCenterCoord:Lcom/android/supl/si/SUPLCoordinate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 223
    iget v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nAngle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    return-void
.end method

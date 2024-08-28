.class public Lcom/android/supl/si/SUPLPolygonArea;
.super Ljava/lang/Object;
.source "SUPLPolygonArea.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/supl/si/SUPLPolygonArea;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private PolyDescription:Lcom/android/supl/si/SUPLPolygonDescription;

.field private PolygonHysteresis:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Lcom/android/supl/si/SUPLPolygonArea$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLPolygonArea$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLPolygonArea;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolyDescription:Lcom/android/supl/si/SUPLPolygonDescription;

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLPolygonArea;->readFromParcel(Landroid/os/Parcel;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/android/supl/si/SUPLPolygonDescription;I)V
    .locals 2
    .param p1, "PolyDescription"    # Lcom/android/supl/si/SUPLPolygonDescription;
    .param p2, "PolygonHysteresis"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolyDescription:Lcom/android/supl/si/SUPLPolygonDescription;

    .line 61
    if-eqz p1, :cond_0

    .line 64
    iput-object p1, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolyDescription:Lcom/android/supl/si/SUPLPolygonDescription;

    .line 65
    iput p2, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolygonHysteresis:I

    .line 67
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PolygonDescription object should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getPolygonAreaInfo()[B
    .locals 6

    .line 74
    const/4 v0, 0x4

    .line 75
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 76
    .local v1, "iOffset":I
    iget-object v2, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolyDescription:Lcom/android/supl/si/SUPLPolygonDescription;

    invoke-virtual {v2}, Lcom/android/supl/si/SUPLPolygonDescription;->getPolygonDescription()[B

    move-result-object v2

    .line 77
    .local v2, "bPolygonDesc":[B
    array-length v3, v2

    add-int/2addr v0, v3

    .line 78
    new-array v3, v0, [B

    .line 79
    .local v3, "bData":[B
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 80
    array-length v4, v2

    add-int/2addr v1, v4

    .line 81
    iget v4, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolygonHysteresis:I

    invoke-static {v3, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 82
    if-eq v1, v0, :cond_0

    .line 83
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "PolygonArea length invalid"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    :cond_0
    return-object v3
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolygonHysteresis:I

    .line 126
    const-class v0, Lcom/android/supl/si/SUPLPolygonDescription;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/supl/si/SUPLPolygonDescription;

    iput-object v0, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolyDescription:Lcom/android/supl/si/SUPLPolygonDescription;

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolyDescription:Lcom/android/supl/si/SUPLPolygonDescription;

    invoke-virtual {v1}, Lcom/android/supl/si/SUPLPolygonDescription;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolygonHysteresis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 136
    iget v0, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolygonHysteresis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v0, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolyDescription:Lcom/android/supl/si/SUPLPolygonDescription;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 139
    return-void
.end method

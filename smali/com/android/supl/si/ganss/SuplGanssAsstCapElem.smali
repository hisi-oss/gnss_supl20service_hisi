.class public Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;
.super Ljava/lang/Object;
.source "SuplGanssAsstCapElem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public eGanssId:I

.field public ganssDataModels:Lcom/android/supl/si/ganss/SuplGanssDataModel;

.field public uiAsstCapBitmap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem$1;

    invoke-direct {v0}, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->ganssDataModels:Lcom/android/supl/si/ganss/SuplGanssDataModel;

    .line 69
    return-void
.end method

.method public constructor <init>(IILcom/android/supl/si/ganss/SuplGanssDataModel;)V
    .locals 2
    .param p1, "eGanssId"    # I
    .param p2, "uiAsstCapBitmap"    # I
    .param p3, "ganssDataModels"    # Lcom/android/supl/si/ganss/SuplGanssDataModel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->ganssDataModels:Lcom/android/supl/si/ganss/SuplGanssDataModel;

    .line 60
    iput p1, p0, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->eGanssId:I

    .line 61
    iput p2, p0, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->uiAsstCapBitmap:I

    .line 62
    if-eqz p3, :cond_0

    .line 65
    iput-object p3, p0, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->ganssDataModels:Lcom/android/supl/si/ganss/SuplGanssDataModel;

    .line 66
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuplGanssDataModel should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->ganssDataModels:Lcom/android/supl/si/ganss/SuplGanssDataModel;

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->readFromParcel(Landroid/os/Parcel;)V

    .line 113
    return-void
.end method

.method public static getPacketSize()I
    .locals 2

    .line 85
    nop

    .line 86
    invoke-static {}, Lcom/android/supl/si/ganss/SuplGanssDataModel;->getPacketSize()I

    move-result v0

    const/16 v1, 0x8

    add-int/2addr v1, v0

    .line 87
    .local v1, "iSize":I
    return v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public getAsstCapElem()[B
    .locals 6

    .line 71
    invoke-static {}, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->getPacketSize()I

    move-result v0

    .line 72
    .local v0, "iSize":I
    new-array v1, v0, [B

    .line 73
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .line 74
    .local v2, "offset":I
    iget v3, p0, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->eGanssId:I

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 75
    iget v3, p0, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->uiAsstCapBitmap:I

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 76
    iget-object v3, p0, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->ganssDataModels:Lcom/android/supl/si/ganss/SuplGanssDataModel;

    invoke-virtual {v3}, Lcom/android/supl/si/ganss/SuplGanssDataModel;->getDataModel()[B

    move-result-object v3

    .line 77
    .local v3, "bDataModels":[B
    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 78
    array-length v4, v3

    add-int/2addr v2, v4

    .line 79
    if-eq v0, v2, :cond_0

    .line 80
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "getAsstCapElem size invalid"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    :cond_0
    return-object v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->eGanssId:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->uiAsstCapBitmap:I

    .line 122
    const-class v0, Lcom/android/supl/si/ganss/SuplGanssDataModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/supl/si/ganss/SuplGanssDataModel;

    iput-object v0, p0, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->ganssDataModels:Lcom/android/supl/si/ganss/SuplGanssDataModel;

    .line 123
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->eGanssId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->uiAsstCapBitmap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->ganssDataModels:Lcom/android/supl/si/ganss/SuplGanssDataModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 132
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->eGanssId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->uiAsstCapBitmap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->ganssDataModels:Lcom/android/supl/si/ganss/SuplGanssDataModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 135
    return-void
.end method

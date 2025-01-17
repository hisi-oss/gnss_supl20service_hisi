.class public Lcom/android/supl/si/ganss/SuplGanssDataModel;
.super Ljava/lang/Object;
.source "SuplGanssDataModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/supl/si/ganss/SuplGanssDataModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ucAlmModel:I

.field public ucClkModel:I

.field public ucOrbModel:I

.field public ucUtcModel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Lcom/android/supl/si/ganss/SuplGanssDataModel$1;

    invoke-direct {v0}, Lcom/android/supl/si/ganss/SuplGanssDataModel$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/ganss/SuplGanssDataModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "ucOrbModel"    # I
    .param p2, "ucClkModel"    # I
    .param p3, "ucAlmModel"    # I
    .param p4, "ucUtcModel"    # I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lcom/android/supl/si/ganss/SuplGanssDataModel;->ucOrbModel:I

    .line 78
    iput p2, p0, Lcom/android/supl/si/ganss/SuplGanssDataModel;->ucClkModel:I

    .line 79
    iput p3, p0, Lcom/android/supl/si/ganss/SuplGanssDataModel;->ucAlmModel:I

    .line 80
    iput p4, p0, Lcom/android/supl/si/ganss/SuplGanssDataModel;->ucUtcModel:I

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/supl/si/ganss/SuplGanssDataModel;->readFromParcel(Landroid/os/Parcel;)V

    .line 127
    return-void
.end method

.method public static getPacketSize()I
    .locals 1

    .line 97
    const/4 v0, 0x4

    .line 98
    .local v0, "iSize":I
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public getDataModel()[B
    .locals 4

    .line 87
    invoke-static {}, Lcom/android/supl/si/ganss/SuplGanssDataModel;->getPacketSize()I

    move-result v0

    .line 88
    .local v0, "iSize":I
    new-array v1, v0, [B

    .line 89
    .local v1, "bData":[B
    const/4 v2, 0x0

    .line 90
    .local v2, "offset":I
    iget v3, p0, Lcom/android/supl/si/ganss/SuplGanssDataModel;->ucOrbModel:I

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 91
    iget v3, p0, Lcom/android/supl/si/ganss/SuplGanssDataModel;->ucClkModel:I

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 92
    iget v3, p0, Lcom/android/supl/si/ganss/SuplGanssDataModel;->ucAlmModel:I

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 93
    iget v3, p0, Lcom/android/supl/si/ganss/SuplGanssDataModel;->ucUtcModel:I

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 94
    return-object v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/ganss/SuplGanssDataModel;->ucOrbModel:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/ganss/SuplGanssDataModel;->ucClkModel:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/ganss/SuplGanssDataModel;->ucAlmModel:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/ganss/SuplGanssDataModel;->ucUtcModel:I

    .line 138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/supl/si/ganss/SuplGanssDataModel;->ucOrbModel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/ganss/SuplGanssDataModel;->ucClkModel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/ganss/SuplGanssDataModel;->ucAlmModel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/ganss/SuplGanssDataModel;->ucUtcModel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 156
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssDataModel;->ucOrbModel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssDataModel;->ucClkModel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssDataModel;->ucAlmModel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssDataModel;->ucUtcModel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    return-void
.end method

.class public Lcom/android/supl/si/SUPLAreaEventType;
.super Ljava/lang/Object;
.source "SUPLAreaEventType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/supl/si/SUPLAreaEventType;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENTERINGAREA:I = 0x0

.field public static final INSIDEAREA:I = 0x1

.field public static final LEAVINGAREA:I = 0x3

.field public static final OUTSIDEAREA:I = 0x2


# instance fields
.field private iAreaEventType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Lcom/android/supl/si/SUPLAreaEventType$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLAreaEventType$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLAreaEventType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "iAreaEventType"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/si/SUPLAreaEventType;->iAreaEventType:I

    .line 64
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 67
    iput p1, p0, Lcom/android/supl/si/SUPLAreaEventType;->iAreaEventType:I

    .line 68
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid AreaEvent type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/si/SUPLAreaEventType;->iAreaEventType:I

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLAreaEventType;->readFromParcel(Landroid/os/Parcel;)V

    .line 112
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getAreaEventType()[B
    .locals 4

    .line 75
    const/4 v0, 0x4

    .line 76
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 77
    .local v1, "iOffset":I
    new-array v2, v0, [B

    .line 78
    .local v2, "bData":[B
    iget v3, p0, Lcom/android/supl/si/SUPLAreaEventType;->iAreaEventType:I

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 79
    return-object v2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLAreaEventType;->iAreaEventType:I

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SUPLAreaEventType;->iAreaEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 129
    iget v0, p0, Lcom/android/supl/si/SUPLAreaEventType;->iAreaEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return-void
.end method

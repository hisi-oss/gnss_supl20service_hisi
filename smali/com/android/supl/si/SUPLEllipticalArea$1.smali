.class Lcom/android/supl/si/SUPLEllipticalArea$1;
.super Ljava/lang/Object;
.source "SUPLEllipticalArea.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/si/SUPLEllipticalArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/supl/si/SUPLEllipticalArea;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/supl/si/SUPLEllipticalArea;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 187
    new-instance v0, Lcom/android/supl/si/SUPLEllipticalArea;

    invoke-direct {v0, p1}, Lcom/android/supl/si/SUPLEllipticalArea;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLEllipticalArea$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/supl/si/SUPLEllipticalArea;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/supl/si/SUPLEllipticalArea;
    .locals 1
    .param p1, "size"    # I

    .line 191
    new-array v0, p1, [Lcom/android/supl/si/SUPLEllipticalArea;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLEllipticalArea$1;->newArray(I)[Lcom/android/supl/si/SUPLEllipticalArea;

    move-result-object p1

    return-object p1
.end method

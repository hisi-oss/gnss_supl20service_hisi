.class Lcom/android/supl/si/SUPLRepeatedReportingParams$1;
.super Ljava/lang/Object;
.source "SUPLRepeatedReportingParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/si/SUPLRepeatedReportingParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/supl/si/SUPLRepeatedReportingParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/supl/si/SUPLRepeatedReportingParams;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 102
    new-instance v0, Lcom/android/supl/si/SUPLRepeatedReportingParams;

    invoke-direct {v0, p1}, Lcom/android/supl/si/SUPLRepeatedReportingParams;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLRepeatedReportingParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/supl/si/SUPLRepeatedReportingParams;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/supl/si/SUPLRepeatedReportingParams;
    .locals 1
    .param p1, "size"    # I

    .line 106
    new-array v0, p1, [Lcom/android/supl/si/SUPLRepeatedReportingParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLRepeatedReportingParams$1;->newArray(I)[Lcom/android/supl/si/SUPLRepeatedReportingParams;

    move-result-object p1

    return-object p1
.end method
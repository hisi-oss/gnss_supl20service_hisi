.class Lcom/android/supl/si/SITriggerParams$1;
.super Ljava/lang/Object;
.source "SITriggerParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/si/SITriggerParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/supl/si/SITriggerParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/supl/si/SITriggerParams;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 250
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "createFromParcel "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    new-instance v0, Lcom/android/supl/si/SITriggerParams;

    invoke-direct {v0, p1}, Lcom/android/supl/si/SITriggerParams;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SITriggerParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/supl/si/SITriggerParams;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/supl/si/SITriggerParams;
    .locals 1
    .param p1, "size"    # I

    .line 255
    new-array v0, p1, [Lcom/android/supl/si/SITriggerParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SITriggerParams$1;->newArray(I)[Lcom/android/supl/si/SITriggerParams;

    move-result-object p1

    return-object p1
.end method

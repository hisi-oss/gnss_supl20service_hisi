.class public Lcom/android/supl/si/SUPLPeriodicParams;
.super Ljava/lang/Object;
.source "SUPLPeriodicParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/supl/si/SUPLPeriodicParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dwIntervalBetweenFixes:J

.field private dwNoofFixes:J

.field private dwStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    new-instance v0, Lcom/android/supl/si/SUPLPeriodicParams$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLPeriodicParams$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLPeriodicParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0
    .param p1, "dwStartTime"    # J
    .param p3, "dwNoofFixes"    # J
    .param p5, "dwIntervalBetweenFixes"    # J

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-wide p1, p0, Lcom/android/supl/si/SUPLPeriodicParams;->dwStartTime:J

    .line 85
    iput-wide p3, p0, Lcom/android/supl/si/SUPLPeriodicParams;->dwNoofFixes:J

    .line 86
    iput-wide p5, p0, Lcom/android/supl/si/SUPLPeriodicParams;->dwIntervalBetweenFixes:J

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLPeriodicParams;->readFromParcel(Landroid/os/Parcel;)V

    .line 137
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public getPeriodicParams()[B
    .locals 7

    .line 95
    const/16 v0, 0xc

    .line 96
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 97
    .local v1, "iOffset":I
    new-array v2, v0, [B

    .line 98
    .local v2, "bData":[B
    iget-wide v3, p0, Lcom/android/supl/si/SUPLPeriodicParams;->dwStartTime:J

    long-to-int v3, v3

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 99
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dwStartTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/supl/si/SUPLPeriodicParams;->dwStartTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    iget-wide v3, p0, Lcom/android/supl/si/SUPLPeriodicParams;->dwNoofFixes:J

    long-to-int v3, v3

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 101
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dwNoofFixes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/supl/si/SUPLPeriodicParams;->dwNoofFixes:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    iget-wide v3, p0, Lcom/android/supl/si/SUPLPeriodicParams;->dwIntervalBetweenFixes:J

    long-to-int v3, v3

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 103
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dwIntervalBetweenFixes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/supl/si/SUPLPeriodicParams;->dwIntervalBetweenFixes:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    return-object v2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/supl/si/SUPLPeriodicParams;->dwStartTime:J

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/supl/si/SUPLPeriodicParams;->dwNoofFixes:J

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/supl/si/SUPLPeriodicParams;->dwIntervalBetweenFixes:J

    .line 148
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/supl/si/SUPLPeriodicParams;->dwStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/supl/si/SUPLPeriodicParams;->dwNoofFixes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/supl/si/SUPLPeriodicParams;->dwIntervalBetweenFixes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 156
    iget-wide v0, p0, Lcom/android/supl/si/SUPLPeriodicParams;->dwStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 157
    iget-wide v0, p0, Lcom/android/supl/si/SUPLPeriodicParams;->dwNoofFixes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 158
    iget-wide v0, p0, Lcom/android/supl/si/SUPLPeriodicParams;->dwIntervalBetweenFixes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 160
    return-void
.end method

.class public Lcom/android/supl/loc/StaleLocationInfo;
.super Ljava/lang/Object;
.source "StaleLocationInfo.java"


# instance fields
.field private bLocInfo:[B

.field private iStaleBitlocat:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1
    .param p1, "bLocInfo"    # [B
    .param p2, "iStaleBitlocat"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/loc/StaleLocationInfo;->iStaleBitlocat:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/StaleLocationInfo;->bLocInfo:[B

    .line 54
    iput-object p1, p0, Lcom/android/supl/loc/StaleLocationInfo;->bLocInfo:[B

    .line 55
    iput p2, p0, Lcom/android/supl/loc/StaleLocationInfo;->iStaleBitlocat:I

    .line 56
    return-void
.end method


# virtual methods
.method public getStaleLocation()[B
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/android/supl/loc/StaleLocationInfo;->bLocInfo:[B

    iget v1, p0, Lcom/android/supl/loc/StaleLocationInfo;->iStaleBitlocat:I

    invoke-static {v0, v1}, Lcom/android/bytewriter/IO;->get1([BI)I

    move-result v0

    .line 60
    .local v0, "iOldStaus":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/supl/loc/StaleLocationInfo;->bLocInfo:[B

    iget v2, p0, Lcom/android/supl/loc/StaleLocationInfo;->iStaleBitlocat:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    goto :goto_0

    .line 64
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Stale Location error"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/android/supl/loc/StaleLocationInfo;->bLocInfo:[B

    return-object v1
.end method

.method public upDateInfo([BI)V
    .locals 0
    .param p1, "bLocInfo"    # [B
    .param p2, "iStaleBitlocat"    # I

    .line 69
    iput-object p1, p0, Lcom/android/supl/loc/StaleLocationInfo;->bLocInfo:[B

    .line 70
    iput p2, p0, Lcom/android/supl/loc/StaleLocationInfo;->iStaleBitlocat:I

    .line 71
    return-void
.end method

.class Lcom/android/supl/loc/wifi/WIFIParameter$RTD;
.super Ljava/lang/Object;
.source "WIFIParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/wifi/WIFIParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RTD"
.end annotation


# static fields
.field private static final hundrednanosec:I = 0x1

.field private static final microsec:I = 0x0

.field private static final nanosec:I = 0x3

.field private static final tensnanosec:I = 0x2

.field private static final tenthofnanosec:I = 0x4


# instance fields
.field public bIsRTDAccuInfoPresent:Z

.field public ieRTDunits:I

.field final synthetic this$0:Lcom/android/supl/loc/wifi/WIFIParameter;

.field public ucRTDAccuracy:S

.field public uiRTDValue:I


# direct methods
.method private constructor <init>(Lcom/android/supl/loc/wifi/WIFIParameter;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/android/supl/loc/wifi/WIFIParameter$RTD;->this$0:Lcom/android/supl/loc/wifi/WIFIParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/supl/loc/wifi/WIFIParameter$RTD;->ieRTDunits:I

    .line 371
    iput-boolean p1, p0, Lcom/android/supl/loc/wifi/WIFIParameter$RTD;->bIsRTDAccuInfoPresent:Z

    return-void
.end method


# virtual methods
.method public getRTDInfo()[B
    .locals 5

    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, "iOffset":I
    const/16 v1, 0xc

    .line 378
    .local v1, "iSize":I
    iget-boolean v2, p0, Lcom/android/supl/loc/wifi/WIFIParameter$RTD;->bIsRTDAccuInfoPresent:Z

    if-eqz v2, :cond_0

    .line 379
    add-int/lit8 v1, v1, 0x1

    .line 382
    :cond_0
    new-array v2, v1, [B

    .line 383
    .local v2, "bData":[B
    iget v3, p0, Lcom/android/supl/loc/wifi/WIFIParameter$RTD;->uiRTDValue:I

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 384
    iget v3, p0, Lcom/android/supl/loc/wifi/WIFIParameter$RTD;->ieRTDunits:I

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 385
    iget-boolean v3, p0, Lcom/android/supl/loc/wifi/WIFIParameter$RTD;->bIsRTDAccuInfoPresent:Z

    if-eqz v3, :cond_1

    .line 386
    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    goto :goto_0

    .line 388
    :cond_1
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 390
    :goto_0
    iget-short v3, p0, Lcom/android/supl/loc/wifi/WIFIParameter$RTD;->ucRTDAccuracy:S

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 392
    if-eq v0, v1, :cond_2

    .line 393
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "RTD length error"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 395
    :cond_2
    return-object v2
.end method

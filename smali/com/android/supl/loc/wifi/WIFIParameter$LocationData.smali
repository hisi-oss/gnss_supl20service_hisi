.class Lcom/android/supl/loc/wifi/WIFIParameter$LocationData;
.super Ljava/lang/Object;
.source "WIFIParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/wifi/WIFIParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationData"
.end annotation


# instance fields
.field public bIsLocationAccuInfoPresent:Z

.field public stLocationValue:Lcom/android/supl/loc/BitString;

.field final synthetic this$0:Lcom/android/supl/loc/wifi/WIFIParameter;

.field public ulLocationAccu:J


# direct methods
.method private constructor <init>(Lcom/android/supl/loc/wifi/WIFIParameter;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/android/supl/loc/wifi/WIFIParameter$LocationData;->this$0:Lcom/android/supl/loc/wifi/WIFIParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/supl/loc/wifi/WIFIParameter$LocationData;->bIsLocationAccuInfoPresent:Z

    return-void
.end method


# virtual methods
.method public getLocationInfo()[B
    .locals 8

    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, "iOffset":I
    const/4 v1, 0x4

    .line 434
    .local v1, "iSize":I
    iget-boolean v2, p0, Lcom/android/supl/loc/wifi/WIFIParameter$LocationData;->bIsLocationAccuInfoPresent:Z

    if-eqz v2, :cond_0

    .line 435
    add-int/lit8 v1, v1, 0x8

    .line 437
    :cond_0
    iget-object v2, p0, Lcom/android/supl/loc/wifi/WIFIParameter$LocationData;->stLocationValue:Lcom/android/supl/loc/BitString;

    invoke-virtual {v2}, Lcom/android/supl/loc/BitString;->getBitStringInfo()[B

    move-result-object v2

    .line 438
    .local v2, "bBitStringData":[B
    array-length v3, v2

    add-int/2addr v1, v3

    .line 439
    new-array v3, v1, [B

    .line 440
    .local v3, "bData":[B
    iget-boolean v4, p0, Lcom/android/supl/loc/wifi/WIFIParameter$LocationData;->bIsLocationAccuInfoPresent:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 441
    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 442
    iget-wide v6, p0, Lcom/android/supl/loc/wifi/WIFIParameter$LocationData;->ulLocationAccu:J

    invoke-static {v3, v0, v6, v7}, Lcom/android/bytewriter/IO;->put8([BIJ)I

    move-result v0

    goto :goto_0

    .line 444
    :cond_1
    invoke-static {v3, v0, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 446
    :goto_0
    array-length v4, v2

    invoke-static {v2, v5, v3, v0, v4}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 447
    array-length v4, v2

    add-int/2addr v0, v4

    .line 448
    if-eq v0, v1, :cond_2

    .line 449
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "LocationData length error"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 451
    :cond_2
    return-object v3
.end method

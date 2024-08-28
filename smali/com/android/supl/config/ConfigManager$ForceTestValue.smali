.class public Lcom/android/supl/config/ConfigManager$ForceTestValue;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/config/ConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForceTestValue"
.end annotation


# instance fields
.field public aNMR:[I

.field public iCI:I

.field public iLac:I

.field public iMSISDN:J

.field public iMcc:I

.field public iMnc:I

.field public iTA:I

.field public isFillTAandNMR:Z

.field final synthetic this$0:Lcom/android/supl/config/ConfigManager;


# direct methods
.method public constructor <init>(Lcom/android/supl/config/ConfigManager;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/supl/config/ConfigManager;

    .line 626
    iput-object p1, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->this$0:Lcom/android/supl/config/ConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMnc:I

    .line 628
    iput v0, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMcc:I

    .line 629
    iput v0, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iLac:I

    .line 630
    iput v0, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iCI:I

    .line 631
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMSISDN:J

    .line 632
    iput-boolean v0, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->isFillTAandNMR:Z

    .line 633
    iput v0, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iTA:I

    .line 634
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->aNMR:[I

    return-void
.end method


# virtual methods
.method public getForceTest()[B
    .locals 7

    .line 637
    const/16 v0, 0x20

    .line 639
    .local v0, "iSize":I
    iget-boolean v1, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->isFillTAandNMR:Z

    if-eqz v1, :cond_0

    .line 640
    add-int/lit8 v0, v0, 0x4

    .line 642
    :cond_0
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->aNMR:[I

    if-eqz v1, :cond_1

    .line 643
    add-int/lit8 v0, v0, 0x4

    .line 644
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->aNMR:[I

    array-length v1, v1

    const/4 v2, 0x4

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 646
    :cond_1
    new-array v1, v0, [B

    .line 647
    .local v1, "bData":[B
    const/4 v2, 0x0

    .line 648
    .local v2, "iOffset":I
    const/16 v3, 0x6f

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 649
    add-int/lit8 v3, v0, -0x4

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 650
    iget v3, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMcc:I

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 651
    iget v3, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMnc:I

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 652
    iget v3, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iLac:I

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 653
    iget v3, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iCI:I

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 654
    iget-wide v3, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMSISDN:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/bytewriter/IO;->put8([BIJ)I

    move-result v2

    .line 655
    iget-boolean v3, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->isFillTAandNMR:Z

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 656
    iget-boolean v3, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->isFillTAandNMR:Z

    if-eqz v3, :cond_2

    .line 657
    iget v3, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iTA:I

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 659
    :cond_2
    iget-object v3, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->aNMR:[I

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 660
    iget-object v3, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->aNMR:[I

    array-length v3, v3

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 661
    iget-object v3, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->aNMR:[I

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_4

    aget v6, v3, v4

    .line 662
    .local v6, "iNmr":I
    invoke-static {v1, v2, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 661
    .end local v6    # "iNmr":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 665
    :cond_3
    invoke-static {v1, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 667
    :cond_4
    return-object v1
.end method

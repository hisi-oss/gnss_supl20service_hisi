.class public Lcom/android/supl/loc/measure/TimingAdvance;
.super Ljava/lang/Object;
.source "TimingAdvance.java"


# static fields
.field public static final CHIP_RATE_TDD128:I = 0x0

.field public static final CHIP_RATE_TDD384:I = 0x1

.field public static final CHIP_RATE_TDD768:I = 0x2

.field public static final TA_RESOLUTION_RES0125CHIP:I = 0x2

.field public static final TA_RESOLUTION_RES10CHIP:I = 0x0

.field public static final TA_RESOLUTION_RES5CHIP:I = 0x1


# instance fields
.field private enChipRate:I

.field private enTAResolution:I

.field private isChipRatePresent:Z

.field private isTAResolutionPresent:Z

.field private usTA:S


# direct methods
.method public constructor <init>(SII)V
    .locals 4
    .param p1, "usTA"    # S
    .param p2, "enTAResolution"    # I
    .param p3, "enChipRate"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/loc/measure/TimingAdvance;->isTAResolutionPresent:Z

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/supl/loc/measure/TimingAdvance;->enTAResolution:I

    .line 59
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/TimingAdvance;->isChipRatePresent:Z

    .line 61
    iput v1, p0, Lcom/android/supl/loc/measure/TimingAdvance;->enChipRate:I

    .line 64
    iput-short p1, p0, Lcom/android/supl/loc/measure/TimingAdvance;->usTA:S

    .line 65
    iput p2, p0, Lcom/android/supl/loc/measure/TimingAdvance;->enTAResolution:I

    .line 66
    iput p3, p0, Lcom/android/supl/loc/measure/TimingAdvance;->enChipRate:I

    .line 68
    const/4 v2, 0x1

    if-eq p2, v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/android/supl/loc/measure/TimingAdvance;->isTAResolutionPresent:Z

    .line 69
    if-eq p3, v1, :cond_1

    move v0, v2

    nop

    :cond_1
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/TimingAdvance;->isChipRatePresent:Z

    .line 71
    return-void
.end method


# virtual methods
.method public getTimingAdvanceInfo()[B
    .locals 6

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "iOffset":I
    const/16 v1, 0xa

    .line 77
    .local v1, "iSize":I
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/TimingAdvance;->isTAResolutionPresent:Z

    if-eqz v2, :cond_0

    .line 78
    add-int/lit8 v1, v1, 0x4

    .line 80
    :cond_0
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/TimingAdvance;->isChipRatePresent:Z

    if-eqz v2, :cond_1

    .line 81
    add-int/lit8 v1, v1, 0x4

    .line 83
    :cond_1
    new-array v2, v1, [B

    .line 84
    .local v2, "bData":[B
    iget-short v3, p0, Lcom/android/supl/loc/measure/TimingAdvance;->usTA:S

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 85
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/TimingAdvance;->isTAResolutionPresent:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 86
    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 87
    iget v3, p0, Lcom/android/supl/loc/measure/TimingAdvance;->enTAResolution:I

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    goto :goto_0

    .line 89
    :cond_2
    invoke-static {v2, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 91
    :goto_0
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/TimingAdvance;->isChipRatePresent:Z

    if-eqz v3, :cond_3

    .line 92
    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 93
    iget v3, p0, Lcom/android/supl/loc/measure/TimingAdvance;->enChipRate:I

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    goto :goto_1

    .line 95
    :cond_3
    invoke-static {v2, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 97
    :goto_1
    if-eq v0, v1, :cond_4

    .line 98
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "TimingAdvance length error"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    :cond_4
    return-object v2
.end method

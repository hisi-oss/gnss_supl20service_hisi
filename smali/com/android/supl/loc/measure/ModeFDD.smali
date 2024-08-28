.class public Lcom/android/supl/loc/measure/ModeFDD;
.super Ljava/lang/Object;
.source "ModeFDD.java"


# instance fields
.field private isCpich_Ec_N0Present:Z

.field private isCpich_RSCPPresent:Z

.field private isPathLossPresent:Z

.field private ucCpich_Ec_N0:S

.field private ucCpich_RSCP:S

.field private ucPathloss:S

.field private usPrimaryScramblingCode:S


# direct methods
.method public constructor <init>(SSSS)V
    .locals 4
    .param p1, "usPrimaryScramblingCode"    # S
    .param p2, "ucCpich_Ec_N0"    # S
    .param p3, "ucCpich_RSCP"    # S
    .param p4, "ucPathloss"    # S

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-short p1, p0, Lcom/android/supl/loc/measure/ModeFDD;->usPrimaryScramblingCode:S

    .line 58
    iput-short p2, p0, Lcom/android/supl/loc/measure/ModeFDD;->ucCpich_Ec_N0:S

    .line 59
    iput-short p3, p0, Lcom/android/supl/loc/measure/ModeFDD;->ucCpich_RSCP:S

    .line 60
    iput-short p4, p0, Lcom/android/supl/loc/measure/ModeFDD;->ucPathloss:S

    .line 61
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/android/supl/loc/measure/ModeFDD;->isCpich_Ec_N0Present:Z

    .line 62
    if-eq p3, v2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iput-boolean v3, p0, Lcom/android/supl/loc/measure/ModeFDD;->isCpich_RSCPPresent:Z

    .line 63
    if-eq p4, v2, :cond_2

    move v0, v1

    nop

    :cond_2
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/ModeFDD;->isPathLossPresent:Z

    .line 64
    return-void
.end method


# virtual methods
.method public getModeFDDInfo()[B
    .locals 5

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "iOffset":I
    const/16 v1, 0xe

    .line 70
    .local v1, "iSize":I
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/ModeFDD;->isCpich_Ec_N0Present:Z

    if-eqz v2, :cond_0

    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 73
    :cond_0
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/ModeFDD;->isCpich_RSCPPresent:Z

    if-eqz v2, :cond_1

    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 76
    :cond_1
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/ModeFDD;->isPathLossPresent:Z

    if-eqz v2, :cond_2

    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 80
    :cond_2
    new-array v2, v1, [B

    .line 81
    .local v2, "bData":[B
    iget-short v3, p0, Lcom/android/supl/loc/measure/ModeFDD;->usPrimaryScramblingCode:S

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 83
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/ModeFDD;->isCpich_Ec_N0Present:Z

    if-eqz v3, :cond_3

    .line 84
    iget-short v3, p0, Lcom/android/supl/loc/measure/ModeFDD;->ucCpich_Ec_N0:S

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 86
    :cond_3
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/ModeFDD;->isCpich_RSCPPresent:Z

    if-eqz v3, :cond_4

    .line 87
    iget-short v3, p0, Lcom/android/supl/loc/measure/ModeFDD;->ucCpich_RSCP:S

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 89
    :cond_4
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/ModeFDD;->isPathLossPresent:Z

    if-eqz v3, :cond_5

    .line 90
    iget-short v3, p0, Lcom/android/supl/loc/measure/ModeFDD;->ucPathloss:S

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 92
    :cond_5
    if-eq v1, v0, :cond_6

    .line 93
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "ModeFDD length error"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    :cond_6
    return-object v2
.end method

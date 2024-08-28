.class public Lcom/android/supl/loc/measure/ModeTDD;
.super Ljava/lang/Object;
.source "ModeTDD.java"


# instance fields
.field private isPathLossPresent:Z

.field private isPrimaryCCPCH_RSCPPresent:Z

.field private isProposedTGSNPresent:Z

.field private isTimeslotISCP_ListPresent:Z

.field private stTimeslotISCP_List:Lcom/android/supl/loc/measure/TimeSlotISCPList;

.field private ucCellParametersID:S

.field private ucPathloss:S

.field private ucPrimaryCCPCH_RSCP:S

.field private ucProposedTGSN:S


# direct methods
.method public constructor <init>(SSSSLcom/android/supl/loc/measure/TimeSlotISCPList;)V
    .locals 4
    .param p1, "ucCellParametersID"    # S
    .param p2, "ucProposedTGSN"    # S
    .param p3, "ucPrimaryCCPCH_RSCP"    # S
    .param p4, "ucPathloss"    # S
    .param p5, "stTimeslotISCP_List"    # Lcom/android/supl/loc/measure/TimeSlotISCPList;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/loc/measure/ModeTDD;->isProposedTGSNPresent:Z

    .line 45
    const/4 v1, -0x1

    iput-short v1, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucProposedTGSN:S

    .line 47
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/ModeTDD;->isPrimaryCCPCH_RSCPPresent:Z

    .line 49
    iput-short v1, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucPrimaryCCPCH_RSCP:S

    .line 51
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/ModeTDD;->isPathLossPresent:Z

    .line 53
    iput-short v1, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucPathloss:S

    .line 55
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/ModeTDD;->isTimeslotISCP_ListPresent:Z

    .line 57
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/supl/loc/measure/ModeTDD;->stTimeslotISCP_List:Lcom/android/supl/loc/measure/TimeSlotISCPList;

    .line 61
    iput-short p1, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucCellParametersID:S

    .line 62
    iput-short p2, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucProposedTGSN:S

    .line 63
    iput-short p3, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucPrimaryCCPCH_RSCP:S

    .line 64
    iput-short p4, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucPathloss:S

    .line 65
    iput-object p5, p0, Lcom/android/supl/loc/measure/ModeTDD;->stTimeslotISCP_List:Lcom/android/supl/loc/measure/TimeSlotISCPList;

    .line 66
    const/4 v2, 0x1

    if-eq p2, v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/android/supl/loc/measure/ModeTDD;->isProposedTGSNPresent:Z

    .line 67
    if-eq p3, v1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iput-boolean v3, p0, Lcom/android/supl/loc/measure/ModeTDD;->isPrimaryCCPCH_RSCPPresent:Z

    .line 68
    if-eq p4, v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/ModeTDD;->isPathLossPresent:Z

    .line 69
    if-eqz p5, :cond_3

    move v0, v2

    nop

    :cond_3
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/ModeTDD;->isTimeslotISCP_ListPresent:Z

    .line 71
    return-void
.end method


# virtual methods
.method public getModeTDDInfo()[B
    .locals 6

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "iOffset":I
    const/16 v1, 0x11

    .line 76
    .local v1, "iSize":I
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/ModeTDD;->isProposedTGSNPresent:Z

    if-eqz v2, :cond_0

    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 79
    :cond_0
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/ModeTDD;->isPrimaryCCPCH_RSCPPresent:Z

    if-eqz v2, :cond_1

    .line 80
    add-int/lit8 v1, v1, 0x1

    .line 82
    :cond_1
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/ModeTDD;->isPathLossPresent:Z

    if-eqz v2, :cond_2

    .line 83
    add-int/lit8 v1, v1, 0x1

    .line 85
    :cond_2
    const/4 v2, 0x0

    .line 86
    .local v2, "bstTimeslotISCP_List":[B
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/ModeTDD;->isTimeslotISCP_ListPresent:Z

    if-eqz v3, :cond_3

    .line 87
    iget-object v3, p0, Lcom/android/supl/loc/measure/ModeTDD;->stTimeslotISCP_List:Lcom/android/supl/loc/measure/TimeSlotISCPList;

    invoke-virtual {v3}, Lcom/android/supl/loc/measure/TimeSlotISCPList;->getTimeslotISCPListInfo()[B

    move-result-object v2

    .line 88
    array-length v3, v2

    add-int/2addr v1, v3

    .line 91
    :cond_3
    new-array v3, v1, [B

    .line 92
    .local v3, "bData":[B
    iget-short v4, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucCellParametersID:S

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 93
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/ModeTDD;->isProposedTGSNPresent:Z

    if-eqz v4, :cond_4

    .line 94
    iget-short v4, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucProposedTGSN:S

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 96
    :cond_4
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/ModeTDD;->isPrimaryCCPCH_RSCPPresent:Z

    if-eqz v4, :cond_5

    .line 97
    iget-short v4, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucPrimaryCCPCH_RSCP:S

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 99
    :cond_5
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/ModeTDD;->isPathLossPresent:Z

    if-eqz v4, :cond_6

    .line 100
    iget-short v4, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucPathloss:S

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 103
    :cond_6
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/ModeTDD;->isTimeslotISCP_ListPresent:Z

    if-eqz v4, :cond_7

    .line 104
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v3, v0, v5}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 105
    array-length v4, v2

    add-int/2addr v0, v4

    .line 108
    :cond_7
    if-eq v0, v1, :cond_8

    .line 109
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "ModeTDD length error"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    :cond_8
    return-object v3
.end method

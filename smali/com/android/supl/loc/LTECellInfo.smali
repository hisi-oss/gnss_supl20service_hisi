.class public Lcom/android/supl/loc/LTECellInfo;
.super Ljava/lang/Object;
.source "LTECellInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;,
        Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;,
        Lcom/android/supl/loc/LTECellInfo$MNCList;,
        Lcom/android/supl/loc/LTECellInfo$MCC_LIST;,
        Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/lang/String; = "SUPL20_LTECellInfo"

.field public static bIsMeasResultListEUTRA:Z = false

.field public static bIsRSRPInfoPresent:Z = false

.field public static bIsRSRQInfoPresent:Z = false

.field public static bIsTAInfoPresent:Z = false

.field public static listMRLEUTRA:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;",
            ">;"
        }
    .end annotation
.end field

.field public static ucRSRPResult:S = 0x0s

.field public static ucRSRQResult:S = 0x0s

.field public static final usMaxCellReport:S = 0x8s

.field public static usTA:S


# instance fields
.field public stCELLGlobalID:Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;

.field public usPhysCellID:S

.field public usTrackAreaCode:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/supl/loc/LTECellInfo;->bIsRSRPInfoPresent:Z

    .line 69
    sput-boolean v0, Lcom/android/supl/loc/LTECellInfo;->bIsRSRQInfoPresent:Z

    .line 73
    sput-boolean v0, Lcom/android/supl/loc/LTECellInfo;->bIsTAInfoPresent:Z

    .line 80
    sput-boolean v0, Lcom/android/supl/loc/LTECellInfo;->bIsMeasResultListEUTRA:Z

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/supl/loc/LTECellInfo;->listMRLEUTRA:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;CS)V
    .locals 2
    .param p1, "stCELLGlobalID"    # Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
    .param p2, "usTrackAreaCode"    # C
    .param p3, "ucPhysCellID"    # S

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/LTECellInfo;->stCELLGlobalID:Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;

    .line 86
    if-eqz p1, :cond_1

    .line 89
    if-nez p2, :cond_0

    .line 91
    const-string v0, "SUPL20_LTECellInfo"

    const-string v1, "TrackAreaCode should not be zero"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/android/supl/loc/LTECellInfo;->stCELLGlobalID:Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;

    .line 94
    iput-char p2, p0, Lcom/android/supl/loc/LTECellInfo;->usTrackAreaCode:C

    .line 95
    iput-short p3, p0, Lcom/android/supl/loc/LTECellInfo;->usPhysCellID:S

    .line 96
    return-void

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cell_Globalid_Eutra should not null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAPILTECellInfo(Landroid/content/Context;)Lcom/android/supl/loc/LTECellInfo;
    .locals 13
    .param p0, "mContext"    # Landroid/content/Context;

    .line 334
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 335
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    const-string v1, "SUPL20_LTECellInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TelephonyManager class:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    .line 337
    .local v1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-nez v1, :cond_0

    .line 338
    const-string v2, "SUPL20_LTECellInfo"

    const-string v3, "getAllCellInfo function returns list is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v2, 0x0

    return-object v2

    .line 342
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v2

    .line 343
    .local v2, "neighborCellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    if-eqz v2, :cond_2

    .line 344
    const-string v3, "SUPL20_LTECellInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "neighborCellInfoList size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/NeighboringCellInfo;

    .line 346
    .local v4, "neighbor":Landroid/telephony/NeighboringCellInfo;
    if-eqz v4, :cond_1

    .line 347
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v5

    .line 348
    .local v5, "lac":I
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v6

    .line 349
    .local v6, "cid":I
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getPsc()I

    move-result v7

    .line 350
    .local v7, "psc":I
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v8

    .line 351
    .local v8, "rssi":I
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getNetworkType()I

    move-result v9

    .line 352
    .local v9, "nwtype":I
    const-string v10, "SUPL20_LTECellInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "neighborCellInfo psc:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "rssi:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "nwtype:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .end local v4    # "neighbor":Landroid/telephony/NeighboringCellInfo;
    .end local v5    # "lac":I
    .end local v6    # "cid":I
    .end local v7    # "psc":I
    .end local v8    # "rssi":I
    .end local v9    # "nwtype":I
    :cond_1
    goto :goto_0

    .line 357
    :cond_2
    invoke-static {v1, v2}, Lcom/android/supl/loc/LTECellInfo;->getCellInfo_To_LTECellInfo(Ljava/util/List;Ljava/util/List;)Lcom/android/supl/loc/LTECellInfo;

    move-result-object v3

    return-object v3
.end method

.method public static getCellInfo_To_LTECellInfo(Ljava/util/List;Ljava/util/List;)Lcom/android/supl/loc/LTECellInfo;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)",
            "Lcom/android/supl/loc/LTECellInfo;"
        }
    .end annotation

    .line 403
    .local p0, "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .local p1, "neighborCellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    const-string v0, "SUPL20_LTECellInfo"

    const-string v1, "start to get lte cell info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/supl/loc/LTECellInfo;->bIsMeasResultListEUTRA:Z

    .line 405
    sget-object v1, Lcom/android/supl/loc/LTECellInfo;->listMRLEUTRA:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 407
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 408
    const-string v0, "SUPL20_LTECellInfo"

    const-string v3, "cellInfoList is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-object v1

    .line 412
    :cond_0
    const/4 v3, 0x0

    .line 414
    .local v3, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    const-string v4, "SUPL20_LTECellInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cellinfo list size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v4, 0x0

    .line 416
    .local v4, "cellInfoLte":Landroid/telephony/CellInfoLte;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CellInfo;

    .line 417
    .local v6, "allCellInfo":Landroid/telephony/CellInfo;
    instance-of v7, v6, Landroid/telephony/CellInfoLte;

    if-eqz v7, :cond_12

    .line 418
    move-object v4, v6

    check-cast v4, Landroid/telephony/CellInfoLte;

    .line 420
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->isRegistered()Z

    move-result v7

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v7, :cond_a

    .line 421
    const/4 v7, 0x0

    .line 423
    .local v7, "identityLte":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v7

    .line 424
    if-nez v7, :cond_1

    .line 425
    const-string v0, "SUPL20_LTECellInfo"

    const-string v5, "getCellIdentity function returns null"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-object v1

    .line 429
    :cond_1
    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v12

    .line 430
    .local v12, "mnc":I
    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v13

    .line 431
    .local v13, "mcc":I
    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v14

    .line 432
    .local v14, "tac":I
    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v15

    .line 433
    .local v15, "ci":I
    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v1

    .line 435
    .local v1, "pci":I
    const v8, 0x7fffffff

    if-eq v8, v12, :cond_9

    if-eq v8, v13, :cond_9

    if-ne v8, v15, :cond_2

    .line 436
    move/from16 v23, v1

    move-object/from16 v21, v6

    goto/16 :goto_5

    .line 440
    :cond_2
    const/4 v8, 0x3

    new-array v9, v8, [C

    .line 442
    .local v9, "c_mcc":[C
    div-int/lit8 v8, v13, 0x64

    int-to-char v8, v8

    aput-char v8, v9, v0

    .line 443
    rem-int/lit8 v8, v13, 0x64

    div-int/lit8 v8, v8, 0xa

    int-to-char v8, v8

    aput-char v8, v9, v11

    .line 444
    rem-int/lit8 v8, v13, 0xa

    int-to-char v8, v8

    aput-char v8, v9, v10

    .line 446
    const/16 v8, 0x63

    if-le v12, v8, :cond_3

    .line 447
    const/4 v8, 0x3

    new-array v8, v8, [C

    .line 448
    .local v8, "c_mnc":[C
    div-int/lit8 v10, v12, 0x64

    int-to-char v10, v10

    aput-char v10, v8, v0

    .line 449
    rem-int/lit8 v10, v12, 0x64

    div-int/lit8 v10, v10, 0xa

    int-to-char v10, v10

    aput-char v10, v8, v11

    .line 450
    rem-int/lit8 v10, v12, 0xa

    int-to-char v10, v10

    const/4 v11, 0x2

    aput-char v10, v8, v11

    goto :goto_1

    .line 452
    .end local v8    # "c_mnc":[C
    :cond_3
    move v11, v10

    new-array v8, v11, [C

    .line 453
    .restart local v8    # "c_mnc":[C
    div-int/lit8 v10, v12, 0xa

    int-to-char v10, v10

    aput-char v10, v8, v0

    .line 454
    rem-int/lit8 v10, v12, 0xa

    int-to-char v10, v10

    const/4 v11, 0x1

    aput-char v10, v8, v11

    .line 457
    :goto_1
    new-instance v10, Lcom/android/supl/loc/LTECellInfo$MNCList;

    invoke-direct {v10, v8}, Lcom/android/supl/loc/LTECellInfo$MNCList;-><init>([C)V

    .line 458
    .local v10, "stMNC":Lcom/android/supl/loc/LTECellInfo$MNCList;
    new-instance v11, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;

    invoke-direct {v11, v9}, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;-><init>([C)V

    .line 459
    .local v11, "stMCC":Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    new-instance v0, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v11, v10}, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;-><init>(ZLcom/android/supl/loc/LTECellInfo$MCC_LIST;Lcom/android/supl/loc/LTECellInfo$MNCList;)V

    .line 460
    .local v0, "identity":Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    new-instance v2, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;

    invoke-direct {v2, v0, v15}, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;-><init>(Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;I)V

    .line 461
    .local v2, "eutra":Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
    move-object/from16 v19, v0

    new-instance v0, Lcom/android/supl/loc/LTECellInfo;

    .end local v0    # "identity":Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    .local v19, "identity":Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    move-object/from16 v20, v5

    int-to-char v5, v14

    move-object/from16 v21, v6

    int-to-short v6, v1

    .end local v6    # "allCellInfo":Landroid/telephony/CellInfo;
    .local v21, "allCellInfo":Landroid/telephony/CellInfo;
    invoke-direct {v0, v2, v5, v6}, Lcom/android/supl/loc/LTECellInfo;-><init>(Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;CS)V

    .line 463
    .end local v3    # "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    .local v0, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v3

    .line 464
    .local v3, "signal_strength":Landroid/telephony/CellSignalStrengthLte;
    if-eqz v3, :cond_8

    .line 465
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v5

    int-to-short v5, v5

    sput-short v5, Lcom/android/supl/loc/LTECellInfo;->ucRSRPResult:S

    .line 469
    sget-short v5, Lcom/android/supl/loc/LTECellInfo;->ucRSRPResult:S

    add-int/lit16 v5, v5, 0x8d

    int-to-short v5, v5

    sput-short v5, Lcom/android/supl/loc/LTECellInfo;->ucRSRPResult:S

    .line 470
    sget-short v5, Lcom/android/supl/loc/LTECellInfo;->ucRSRPResult:S

    if-gez v5, :cond_4

    .line 471
    const/4 v5, 0x0

    sput-short v5, Lcom/android/supl/loc/LTECellInfo;->ucRSRPResult:S

    goto :goto_2

    .line 473
    :cond_4
    sget-short v5, Lcom/android/supl/loc/LTECellInfo;->ucRSRPResult:S

    const/16 v6, 0x61

    if-le v5, v6, :cond_5

    .line 474
    sput-short v6, Lcom/android/supl/loc/LTECellInfo;->ucRSRPResult:S

    .line 476
    :cond_5
    :goto_2
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/supl/loc/LTECellInfo;->bIsRSRPInfoPresent:Z

    .line 480
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthLte;->getRsrq()I

    move-result v5

    const/4 v6, 0x2

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x28

    int-to-short v5, v5

    sput-short v5, Lcom/android/supl/loc/LTECellInfo;->ucRSRQResult:S

    .line 481
    sget-short v5, Lcom/android/supl/loc/LTECellInfo;->ucRSRQResult:S

    if-gez v5, :cond_6

    .line 482
    const/4 v5, 0x0

    sput-short v5, Lcom/android/supl/loc/LTECellInfo;->ucRSRQResult:S

    goto :goto_3

    .line 484
    :cond_6
    sget-short v5, Lcom/android/supl/loc/LTECellInfo;->ucRSRQResult:S

    const/16 v6, 0x22

    if-le v5, v6, :cond_7

    .line 485
    sput-short v6, Lcom/android/supl/loc/LTECellInfo;->ucRSRQResult:S

    .line 487
    :cond_7
    :goto_3
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/supl/loc/LTECellInfo;->bIsRSRQInfoPresent:Z

    .line 490
    const-string v6, "SUPL20_LTECellInfo"

    const-string v5, "ucRSRPResult:%d, ucRSRQResult:%d"

    move-object/from16 v22, v0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .end local v0    # "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    .local v22, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    move/from16 v23, v1

    sget-short v1, Lcom/android/supl/loc/LTECellInfo;->ucRSRPResult:S

    .end local v1    # "pci":I
    .local v23, "pci":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v17, 0x0

    aput-object v1, v0, v17

    sget-short v1, Lcom/android/supl/loc/LTECellInfo;->ucRSRQResult:S

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v18, 0x1

    aput-object v1, v0, v18

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 493
    .end local v22    # "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    .end local v23    # "pci":I
    .restart local v0    # "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    .restart local v1    # "pci":I
    :cond_8
    move-object/from16 v22, v0

    move/from16 v23, v1

    const/16 v17, 0x0

    .end local v0    # "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    .end local v1    # "pci":I
    .restart local v22    # "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    .restart local v23    # "pci":I
    sput-boolean v17, Lcom/android/supl/loc/LTECellInfo;->bIsRSRPInfoPresent:Z

    .line 494
    sput-boolean v17, Lcom/android/supl/loc/LTECellInfo;->bIsRSRQInfoPresent:Z

    .line 496
    .end local v2    # "eutra":Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
    .end local v3    # "signal_strength":Landroid/telephony/CellSignalStrengthLte;
    .end local v7    # "identityLte":Landroid/telephony/CellIdentityLte;
    .end local v8    # "c_mnc":[C
    .end local v9    # "c_mcc":[C
    .end local v10    # "stMNC":Lcom/android/supl/loc/LTECellInfo$MNCList;
    .end local v11    # "stMCC":Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    .end local v12    # "mnc":I
    .end local v13    # "mcc":I
    .end local v14    # "tac":I
    .end local v15    # "ci":I
    .end local v19    # "identity":Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    .end local v23    # "pci":I
    :goto_4
    nop

    .line 545
    move-object/from16 v3, v22

    const/4 v0, 0x0

    const/16 v16, 0x0

    goto/16 :goto_9

    .line 436
    .end local v21    # "allCellInfo":Landroid/telephony/CellInfo;
    .end local v22    # "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    .restart local v1    # "pci":I
    .local v3, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    .restart local v6    # "allCellInfo":Landroid/telephony/CellInfo;
    .restart local v7    # "identityLte":Landroid/telephony/CellIdentityLte;
    .restart local v12    # "mnc":I
    .restart local v13    # "mcc":I
    .restart local v14    # "tac":I
    .restart local v15    # "ci":I
    :cond_9
    move/from16 v23, v1

    move-object/from16 v21, v6

    .end local v1    # "pci":I
    .end local v6    # "allCellInfo":Landroid/telephony/CellInfo;
    .restart local v21    # "allCellInfo":Landroid/telephony/CellInfo;
    .restart local v23    # "pci":I
    :goto_5
    const-string v0, "SUPL20_LTECellInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid identityLte, mnc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mcc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ci: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v0, 0x0

    return-object v0

    .line 499
    .end local v7    # "identityLte":Landroid/telephony/CellIdentityLte;
    .end local v12    # "mnc":I
    .end local v13    # "mcc":I
    .end local v14    # "tac":I
    .end local v15    # "ci":I
    .end local v21    # "allCellInfo":Landroid/telephony/CellInfo;
    .end local v23    # "pci":I
    .restart local v6    # "allCellInfo":Landroid/telephony/CellInfo;
    :cond_a
    move-object v0, v1

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    .end local v6    # "allCellInfo":Landroid/telephony/CellInfo;
    .restart local v21    # "allCellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    .line 500
    .local v1, "identityLte":Landroid/telephony/CellIdentityLte;
    if-nez v1, :cond_b

    .line 501
    const-string v2, "SUPL20_LTECellInfo"

    const-string v5, "get neighbor cell returns null"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    nop

    .line 416
    move-object v1, v0

    move-object/from16 v5, v20

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 505
    :cond_b
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v2

    .line 506
    .local v2, "mnc":I
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v5

    .line 507
    .local v5, "mcc":I
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v6

    .line 508
    .local v6, "tac":I
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v7

    .line 509
    .local v7, "ci":I
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v8

    .line 511
    .local v8, "pci":I
    const/4 v9, 0x0

    .line 512
    .local v9, "usMeasResultRSRP":S
    const/4 v10, 0x0

    .line 513
    .local v10, "usMeasResultRSRQ":S
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v11

    .line 514
    .local v11, "signal_strength":Landroid/telephony/CellSignalStrengthLte;
    if-eqz v11, :cond_10

    .line 515
    invoke-virtual {v11}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v12

    int-to-short v9, v12

    .line 516
    add-int/lit16 v12, v9, 0x8d

    int-to-short v9, v12

    .line 517
    if-gez v9, :cond_c

    .line 518
    const/4 v9, 0x0

    goto :goto_6

    .line 520
    :cond_c
    const/16 v12, 0x61

    if-le v9, v12, :cond_d

    .line 521
    const/16 v9, 0x61

    .line 524
    :cond_d
    :goto_6
    invoke-virtual {v11}, Landroid/telephony/CellSignalStrengthLte;->getRsrq()I

    move-result v12

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x28

    int-to-short v10, v12

    .line 525
    if-gez v10, :cond_e

    .line 526
    const/4 v10, 0x0

    goto :goto_7

    .line 528
    :cond_e
    const/16 v12, 0x22

    if-le v10, v12, :cond_f

    .line 529
    const/16 v10, 0x22

    .line 531
    :cond_f
    :goto_7
    const-string v12, "SUPL20_LTECellInfo"

    const-string v13, "usMeasResultRSRP:%d, usMeasResultRSRQ:%d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v17, 0x1

    aput-object v15, v14, v17

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 533
    :cond_10
    const/16 v16, 0x0

    :goto_8
    sget-object v12, Lcom/android/supl/loc/LTECellInfo;->listMRLEUTRA:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/16 v13, 0x8

    if-ge v12, v13, :cond_11

    .line 535
    new-instance v12, Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;

    int-to-short v13, v8

    invoke-direct {v12, v13, v9, v10}, Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;-><init>(SSS)V

    .line 536
    .local v12, "measResult":Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;
    sget-object v13, Lcom/android/supl/loc/LTECellInfo;->listMRLEUTRA:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/supl/loc/LTECellInfo;->bIsMeasResultListEUTRA:Z

    .line 538
    .end local v12    # "measResult":Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;
    goto :goto_9

    .line 541
    :cond_11
    const-string v12, "SUPL20_LTECellInfo"

    const-string v13, "listMRLEUTRA size > 8, discard!"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "identityLte":Landroid/telephony/CellIdentityLte;
    .end local v2    # "mnc":I
    .end local v5    # "mcc":I
    .end local v6    # "tac":I
    .end local v7    # "ci":I
    .end local v8    # "pci":I
    .end local v9    # "usMeasResultRSRP":S
    .end local v10    # "usMeasResultRSRQ":S
    .end local v11    # "signal_strength":Landroid/telephony/CellSignalStrengthLte;
    .end local v21    # "allCellInfo":Landroid/telephony/CellInfo;
    goto :goto_9

    .line 545
    :cond_12
    move/from16 v16, v0

    move-object v0, v1

    move-object/from16 v20, v5

    .line 416
    :goto_9
    move-object v1, v0

    move/from16 v0, v16

    move-object/from16 v5, v20

    goto/16 :goto_0

    .line 546
    :cond_13
    const-string v0, "SUPL20_LTECellInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listMRLEUTRA size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/supl/loc/LTECellInfo;->listMRLEUTRA:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-object v3
.end method

.method public static getCellLocation_To_LTECellInfo(Landroid/telephony/CellLocation;II)Lcom/android/supl/loc/LTECellInfo;
    .locals 10
    .param p0, "cellLoc"    # Landroid/telephony/CellLocation;
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I

    .line 361
    instance-of v0, p0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_2

    .line 362
    move-object v0, p0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 363
    .local v0, "gsmCell":Landroid/telephony/gsm/GsmCellLocation;
    const/4 v1, 0x3

    new-array v2, v1, [C

    .line 366
    .local v2, "c_mcc":[C
    div-int/lit8 v3, p1, 0x64

    int-to-char v3, v3

    const/4 v4, 0x0

    aput-char v3, v2, v4

    .line 367
    rem-int/lit8 v3, p1, 0x64

    div-int/lit8 v3, v3, 0xa

    int-to-char v3, v3

    const/4 v5, 0x1

    aput-char v3, v2, v5

    .line 368
    rem-int/lit8 v3, p1, 0xa

    int-to-char v3, v3

    const/4 v6, 0x2

    aput-char v3, v2, v6

    .line 370
    const/16 v3, 0x63

    if-le p2, v3, :cond_0

    .line 371
    new-array v1, v1, [C

    .line 372
    .local v1, "c_mnc":[C
    div-int/lit8 v3, p2, 0x64

    int-to-char v3, v3

    aput-char v3, v1, v4

    .line 373
    rem-int/lit8 v3, p2, 0x64

    div-int/lit8 v3, v3, 0xa

    int-to-char v3, v3

    aput-char v3, v1, v5

    .line 374
    rem-int/lit8 v3, p2, 0xa

    int-to-char v3, v3

    aput-char v3, v1, v6

    goto :goto_0

    .line 376
    .end local v1    # "c_mnc":[C
    :cond_0
    new-array v1, v6, [C

    .line 377
    .restart local v1    # "c_mnc":[C
    div-int/lit8 v3, p2, 0xa

    int-to-char v3, v3

    aput-char v3, v1, v4

    .line 378
    rem-int/lit8 v3, p2, 0xa

    int-to-char v3, v3

    aput-char v3, v1, v5

    .line 381
    :goto_0
    new-instance v3, Lcom/android/supl/loc/LTECellInfo$MNCList;

    invoke-direct {v3, v1}, Lcom/android/supl/loc/LTECellInfo$MNCList;-><init>([C)V

    .line 382
    .local v3, "stMNC":Lcom/android/supl/loc/LTECellInfo$MNCList;
    new-instance v4, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;

    invoke-direct {v4, v2}, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;-><init>([C)V

    .line 383
    .local v4, "stMCC":Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    new-instance v6, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;

    invoke-direct {v6, v5, v4, v3}, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;-><init>(ZLcom/android/supl/loc/LTECellInfo$MCC_LIST;Lcom/android/supl/loc/LTECellInfo$MNCList;)V

    move-object v5, v6

    .line 384
    .local v5, "identity":Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    new-instance v6, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;-><init>(Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;I)V

    .line 387
    .local v6, "eutra":Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
    const/4 v7, 0x0

    .line 388
    .local v7, "sPhysCellID":S
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v8

    if-ltz v8, :cond_1

    const/16 v8, 0x1f7

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v9

    if-lt v8, v9, :cond_1

    .line 389
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v8

    int-to-short v7, v8

    .line 392
    :cond_1
    new-instance v8, Lcom/android/supl/loc/LTECellInfo;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v9

    int-to-char v9, v9

    invoke-direct {v8, v6, v9, v7}, Lcom/android/supl/loc/LTECellInfo;-><init>(Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;CS)V

    .line 393
    .local v8, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    return-object v8

    .line 396
    .end local v0    # "gsmCell":Landroid/telephony/gsm/GsmCellLocation;
    .end local v1    # "c_mnc":[C
    .end local v2    # "c_mcc":[C
    .end local v3    # "stMNC":Lcom/android/supl/loc/LTECellInfo$MNCList;
    .end local v4    # "stMCC":Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    .end local v5    # "identity":Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    .end local v6    # "eutra":Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
    .end local v7    # "sPhysCellID":S
    .end local v8    # "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getFunctionReturnValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "stClassName"    # Ljava/lang/String;
    .param p2, "stMethodName"    # Ljava/lang/String;
    .param p4, "arglist"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 610
    .local p3, "pType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 612
    .local v0, "retobj":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 615
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 617
    .local v2, "getMethod":Ljava/lang/reflect/Method;
    const-string v3, "SUPL20_LTECellInfo"

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/4 v3, 0x0

    .line 620
    .local v3, "methobj":Ljava/lang/Object;
    if-nez p0, :cond_0

    .line 621
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 623
    :cond_0
    move-object v3, p0

    .line 627
    :goto_0
    invoke-virtual {v2, v3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 642
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getMethod":Ljava/lang/reflect/Method;
    .end local v3    # "methobj":Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 640
    :catch_0
    move-exception v1

    .line 641
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    const-string v2, "SUPL20_LTECellInfo"

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    goto :goto_2

    .line 638
    :catch_1
    move-exception v1

    .line 639
    .local v1, "ex":Ljava/lang/SecurityException;
    const-string v2, "SUPL20_LTECellInfo"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "ex":Ljava/lang/SecurityException;
    goto :goto_1

    .line 636
    :catch_2
    move-exception v1

    .line 637
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    const-string v2, "SUPL20_LTECellInfo"

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    goto :goto_1

    .line 634
    :catch_3
    move-exception v1

    .line 635
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    const-string v2, "SUPL20_LTECellInfo"

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 632
    :catch_4
    move-exception v1

    .line 633
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "SUPL20_LTECellInfo"

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 630
    :catch_5
    move-exception v1

    .line 631
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "SUPL20_LTECellInfo"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 628
    :catch_6
    move-exception v1

    .line 629
    .local v1, "ex":Ljava/lang/InstantiationException;
    const-string v2, "SUPL20_LTECellInfo"

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "ex":Ljava/lang/InstantiationException;
    goto :goto_1

    .line 644
    :goto_2
    return-object v0
.end method

.method public static getNONAPILTECellInfo(Landroid/content/Context;)Lcom/android/supl/loc/LTECellInfo;
    .locals 22
    .param p0, "mContext"    # Landroid/content/Context;

    .line 553
    const/4 v1, 0x0

    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v2, "getAllCellInfo"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 555
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_2

    .line 556
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 557
    .local v3, "noparams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v4, "phone"
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v5, p0

    :try_start_1
    invoke-virtual {v5, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 558
    .local v4, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getAllCellInfo"

    invoke-static {v4, v6, v7, v3, v1}, Lcom/android/supl/loc/LTECellInfo;->getFunctionReturnValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 559
    .local v6, "retobj":Ljava/lang/Object;
    if-nez v6, :cond_0

    .line 560
    const-string v2, "SUPL20_LTECellInfo"

    const-string v7, "getAllCellInfo function return null"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-object v1

    .line 563
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 564
    .local v7, "reClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 565
    move-object v8, v6

    check-cast v8, Ljava/util/ArrayList;

    .line 566
    .local v8, "allCellInfoarrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 567
    .local v10, "object":Ljava/lang/Object;
    if-eqz v10, :cond_1

    .line 568
    const-string v11, "SUPL20_LTECellInfo"

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "getCellIdentity"

    invoke-static {v10, v11, v12, v3, v1}, Lcom/android/supl/loc/LTECellInfo;->getFunctionReturnValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 571
    .local v11, "retobjCellInde":Ljava/lang/Object;
    if-eqz v11, :cond_1

    .line 572
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.telephony.LteCellIdentity"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 573
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    const-string v12, "getMcc"

    invoke-static {v11, v9, v12, v3, v1}, Lcom/android/supl/loc/LTECellInfo;->getFunctionReturnValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 574
    .local v9, "retobjMCC":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "getMnc"

    invoke-static {v11, v12, v13, v3, v1}, Lcom/android/supl/loc/LTECellInfo;->getFunctionReturnValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 575
    .local v12, "retobjMNC":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "getCi"

    invoke-static {v11, v13, v14, v3, v1}, Lcom/android/supl/loc/LTECellInfo;->getFunctionReturnValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 576
    .local v13, "retobjCi":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "getPci"

    invoke-static {v11, v14, v15, v3, v1}, Lcom/android/supl/loc/LTECellInfo;->getFunctionReturnValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 577
    .local v14, "retobjPci":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v15

    const-string v2, "getTac"

    invoke-static {v11, v15, v2, v3, v1}, Lcom/android/supl/loc/LTECellInfo;->getFunctionReturnValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 578
    .local v2, "retobjTac":Ljava/lang/Object;
    const-string v15, "SUPL20_LTECellInfo"

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v1, "SUPL20_LTECellInfo"

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v1, "SUPL20_LTECellInfo"

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-string v1, "SUPL20_LTECellInfo"

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const-string v1, "SUPL20_LTECellInfo"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    new-instance v1, Lcom/android/supl/loc/LTECellInfo$MNCList;

    const/4 v15, 0x1

    move-object/from16 v17, v0

    new-array v0, v15, [C

    .end local v0    # "method":Ljava/lang/reflect/Method;
    .local v17, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    int-to-char v15, v15

    const/16 v16, 0x0

    aput-char v15, v0, v16

    invoke-direct {v1, v0}, Lcom/android/supl/loc/LTECellInfo$MNCList;-><init>([C)V

    move-object v0, v1

    .line 584
    .local v0, "stMNC":Lcom/android/supl/loc/LTECellInfo$MNCList;
    new-instance v1, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;

    move-object/from16 v18, v3

    const/4 v15, 0x1

    new-array v3, v15, [C

    .end local v3    # "noparams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v18, "noparams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    int-to-char v15, v15

    const/16 v16, 0x0

    aput-char v15, v3, v16

    invoke-direct {v1, v3}, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;-><init>([C)V

    .line 586
    .local v1, "stMCC":Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    new-instance v3, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;

    const/4 v15, 0x1

    invoke-direct {v3, v15, v1, v0}, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;-><init>(ZLcom/android/supl/loc/LTECellInfo$MCC_LIST;Lcom/android/supl/loc/LTECellInfo$MNCList;)V

    .line 588
    .local v3, "identity":Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    new-instance v15, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;

    move-object/from16 v19, v0

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "stMNC":Lcom/android/supl/loc/LTECellInfo$MNCList;
    .local v19, "stMNC":Lcom/android/supl/loc/LTECellInfo$MNCList;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-char v0, v0

    invoke-direct {v15, v3, v0}, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;-><init>(Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;I)V

    move-object v0, v15

    .line 590
    .local v0, "eutra":Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v15

    .line 591
    .local v15, "ucPhysCellID":S
    move-object/from16 v20, v1

    new-instance v1, Lcom/android/supl/loc/LTECellInfo;

    .end local v1    # "stMCC":Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    .local v20, "stMCC":Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    move-object/from16 v21, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "identity":Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    .local v21, "identity":Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-char v3, v3

    invoke-direct {v1, v0, v3, v15}, Lcom/android/supl/loc/LTECellInfo;-><init>(Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;CS)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 592
    .local v1, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    return-object v1

    .line 596
    .end local v1    # "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    .end local v2    # "retobjTac":Ljava/lang/Object;
    .end local v9    # "retobjMCC":Ljava/lang/Object;
    .end local v10    # "object":Ljava/lang/Object;
    .end local v11    # "retobjCellInde":Ljava/lang/Object;
    .end local v12    # "retobjMNC":Ljava/lang/Object;
    .end local v13    # "retobjCi":Ljava/lang/Object;
    .end local v14    # "retobjPci":Ljava/lang/Object;
    .end local v15    # "ucPhysCellID":S
    .end local v17    # "method":Ljava/lang/reflect/Method;
    .end local v18    # "noparams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v19    # "stMNC":Lcom/android/supl/loc/LTECellInfo$MNCList;
    .end local v20    # "stMCC":Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    .end local v21    # "identity":Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    .local v0, "method":Ljava/lang/reflect/Method;
    .local v3, "noparams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    move-object/from16 v17, v0

    move/from16 v16, v2

    move-object/from16 v18, v3

    .line 566
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "noparams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v17    # "method":Ljava/lang/reflect/Method;
    .restart local v18    # "noparams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move/from16 v2, v16

    move-object/from16 v0, v17

    move-object/from16 v3, v18

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 601
    .end local v4    # "manager":Landroid/telephony/TelephonyManager;
    .end local v6    # "retobj":Ljava/lang/Object;
    .end local v7    # "reClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "allCellInfoarrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v17    # "method":Ljava/lang/reflect/Method;
    .end local v18    # "noparams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    goto :goto_1

    .line 599
    :catch_1
    move-exception v0

    goto :goto_2

    .line 603
    :cond_2
    move-object/from16 v5, p0

    goto :goto_3

    .line 601
    :catch_2
    move-exception v0

    move-object/from16 v5, p0

    .line 602
    .local v0, "ex":Ljava/lang/SecurityException;
    :goto_1
    const-string v1, "SUPL20_LTECellInfo"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ex":Ljava/lang/SecurityException;
    goto :goto_4

    .line 599
    :catch_3
    move-exception v0

    move-object/from16 v5, p0

    .line 600
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    :goto_2
    const-string v1, "SUPL20_LTECellInfo"

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_3
    :goto_3
    nop

    .line 605
    :goto_4
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getLTECellInfo()[B
    .locals 11

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "iOffset":I
    const/4 v1, 0x0

    .line 102
    .local v1, "iSize":I
    const/4 v2, 0x0

    .line 103
    .local v2, "bData":[B
    iget-object v3, p0, Lcom/android/supl/loc/LTECellInfo;->stCELLGlobalID:Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;

    invoke-virtual {v3}, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;->getCellGlobalidInfo()[B

    move-result-object v3

    .line 104
    .local v3, "bstCELLGlobalID":[B
    array-length v4, v3

    add-int/2addr v1, v4

    .line 105
    add-int/lit8 v1, v1, 0x2

    .line 107
    add-int/lit8 v1, v1, 0x2

    .line 109
    add-int/lit8 v1, v1, 0x10

    .line 110
    sget-boolean v4, Lcom/android/supl/loc/LTECellInfo;->bIsRSRPInfoPresent:Z

    if-eqz v4, :cond_0

    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 113
    :cond_0
    sget-boolean v4, Lcom/android/supl/loc/LTECellInfo;->bIsRSRQInfoPresent:Z

    if-eqz v4, :cond_1

    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 116
    :cond_1
    sget-boolean v4, Lcom/android/supl/loc/LTECellInfo;->bIsTAInfoPresent:Z

    if-eqz v4, :cond_2

    .line 117
    add-int/lit8 v1, v1, 0x2

    .line 119
    :cond_2
    const/4 v4, 0x0

    .line 120
    .local v4, "bMeasureList":[B
    sget-boolean v5, Lcom/android/supl/loc/LTECellInfo;->bIsMeasResultListEUTRA:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/supl/loc/LTECellInfo;->listMRLEUTRA:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 121
    const/4 v5, 0x0

    .line 122
    .local v5, "MeasOffset":I
    sget-object v7, Lcom/android/supl/loc/LTECellInfo;->listMRLEUTRA:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x6

    mul-int/2addr v7, v8

    new-array v4, v7, [B

    .line 123
    sget-object v7, Lcom/android/supl/loc/LTECellInfo;->listMRLEUTRA:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;

    .line 124
    .local v9, "measResult":Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;
    invoke-virtual {v9}, Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;->getMeasResultEUTRA()[B

    move-result-object v10

    invoke-static {v10, v6, v4, v5, v8}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 125
    add-int/lit8 v5, v5, 0x6

    .line 126
    .end local v9    # "measResult":Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;
    goto :goto_0

    .line 128
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 129
    array-length v7, v4

    add-int/2addr v1, v7

    .line 132
    .end local v5    # "MeasOffset":I
    :cond_4
    new-array v2, v1, [B

    .line 133
    array-length v5, v3

    invoke-static {v3, v6, v2, v0, v5}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 134
    array-length v5, v3

    add-int/2addr v0, v5

    .line 135
    iget-short v5, p0, Lcom/android/supl/loc/LTECellInfo;->usPhysCellID:S

    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 137
    iget-char v5, p0, Lcom/android/supl/loc/LTECellInfo;->usTrackAreaCode:C

    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 138
    sget-boolean v5, Lcom/android/supl/loc/LTECellInfo;->bIsRSRPInfoPresent:Z

    const/4 v7, 0x1

    if-eqz v5, :cond_5

    .line 139
    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 140
    sget-short v5, Lcom/android/supl/loc/LTECellInfo;->ucRSRPResult:S

    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    goto :goto_1

    .line 142
    :cond_5
    invoke-static {v2, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 145
    :goto_1
    sget-boolean v5, Lcom/android/supl/loc/LTECellInfo;->bIsRSRQInfoPresent:Z

    if-eqz v5, :cond_6

    .line 146
    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 147
    sget-short v5, Lcom/android/supl/loc/LTECellInfo;->ucRSRQResult:S

    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    goto :goto_2

    .line 149
    :cond_6
    invoke-static {v2, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 152
    :goto_2
    sget-boolean v5, Lcom/android/supl/loc/LTECellInfo;->bIsTAInfoPresent:Z

    if-eqz v5, :cond_7

    .line 153
    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 154
    sget-short v5, Lcom/android/supl/loc/LTECellInfo;->usTA:S

    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    goto :goto_3

    .line 156
    :cond_7
    invoke-static {v2, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 158
    :goto_3
    sget-boolean v5, Lcom/android/supl/loc/LTECellInfo;->bIsMeasResultListEUTRA:Z

    if-eqz v5, :cond_8

    sget-object v5, Lcom/android/supl/loc/LTECellInfo;->listMRLEUTRA:Ljava/util/List;

    if-eqz v5, :cond_8

    .line 159
    invoke-static {v2, v0, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 160
    sget-object v5, Lcom/android/supl/loc/LTECellInfo;->listMRLEUTRA:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v2, v0, v5}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 161
    array-length v5, v4

    invoke-static {v4, v6, v2, v0, v5}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 162
    array-length v5, v4

    add-int/2addr v0, v5

    goto :goto_4

    .line 165
    :cond_8
    invoke-static {v2, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 167
    :goto_4
    if-eq v0, v1, :cond_9

    .line 168
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "LTECellInfo length error"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    :cond_9
    return-object v2
.end method

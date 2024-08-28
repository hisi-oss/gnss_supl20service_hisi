.class public Lcom/android/supl/loc/SETLocationManager;
.super Ljava/lang/Object;
.source "SETLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;,
        Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;,
        Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;
    }
.end annotation


# static fields
.field public static final JELLY_BEAN_MR1:I = 0x11

.field public static final LOCATION_ID_STATUS_CURRENT:I = 0x1

.field public static final LOCATION_ID_STATUS_STALE:I = 0x0

.field public static final LOCATION_ID_STATUS_UNKNOWN:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "SUPL20_LocMan"

.field public static final MAX_WLAN_INFO:I = 0x14

.field public static final PRIVACY_APPROVED:I = 0x2

.field public static final PRIVACY_CHECKING:I = 0x1

.field public static final PRIVACY_NOT_APPROVED:I = 0x0

.field private static final TD_SCDMA:I = 0x11

.field private static final UMB_CELLINFO:I = 0x14

.field private static final WIFI_CELLINFO:I = 0x15

.field public static final outgoing:Ljava/lang/String; = "android.intent.action.NEW_OUTGOING_CALL"


# instance fields
.field private configManager:Lcom/android/supl/config/ConfigManager;

.field private iPrivacyApprovedFlag:I

.field private intentFilter:Landroid/content/IntentFilter;

.field private isEmergencyCall:Z

.field private isEmergencyCallListen:Z

.field private isLocationSwithEnable:Z

.field private isStartListen:Z

.field private isWifiRegister:Z

.field private mCallListener:Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;

.field private mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

.field private mContext:Landroid/content/Context;

.field private mLock_cell:Ljava/lang/Object;

.field private mMyPhoneStateListener:Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;

.field private mNetInfo:Lcom/android/supl/loc/NetInfo;

.field private mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

.field private mWIFIReceiver:Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

.field private m_iMcc:I

.field private m_iMnc:I

.field private m_stBearerNetworkType:Ljava/lang/String;

.field private m_stIMSI:Ljava/lang/String;

.field private m_stMSISDN:Ljava/lang/String;

.field private m_stPhoneType:Ljava/lang/String;

.field private outGoingCallReceiver:Landroid/content/BroadcastReceiver;

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    .line 76
    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->m_stIMSI:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->m_stMSISDN:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->m_stBearerNetworkType:Ljava/lang/String;

    .line 91
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    .line 96
    iput v1, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    .line 98
    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->m_stPhoneType:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    .line 102
    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mMyPhoneStateListener:Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;

    .line 104
    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->configManager:Lcom/android/supl/config/ConfigManager;

    .line 106
    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    .line 108
    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 112
    iput-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isStartListen:Z

    .line 124
    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    .line 134
    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mWIFIReceiver:Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

    .line 135
    iput-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isWifiRegister:Z

    .line 137
    iput-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCall:Z

    .line 139
    iput-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCallListen:Z

    .line 141
    iput-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isLocationSwithEnable:Z

    .line 145
    iput v1, p0, Lcom/android/supl/loc/SETLocationManager;->iPrivacyApprovedFlag:I

    .line 147
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mLock_cell:Ljava/lang/Object;

    .line 196
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->intentFilter:Landroid/content/IntentFilter;

    .line 197
    new-instance v1, Lcom/android/supl/loc/SETLocationManager$1;

    invoke-direct {v1, p0}, Lcom/android/supl/loc/SETLocationManager$1;-><init>(Lcom/android/supl/loc/SETLocationManager;)V

    iput-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->outGoingCallReceiver:Landroid/content/BroadcastReceiver;

    .line 395
    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mCallListener:Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;

    .line 150
    iput-object p1, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    .line 151
    new-instance v1, Lcom/android/supl/loc/NetInfo;

    invoke-direct {v1, p1}, Lcom/android/supl/loc/NetInfo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    .line 153
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    .line 155
    new-instance v1, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;

    invoke-direct {v1, p0, v0}, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;-><init>(Lcom/android/supl/loc/SETLocationManager;Lcom/android/supl/loc/SETLocationManager$1;)V

    iput-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mMyPhoneStateListener:Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/supl/loc/SETLocationManager;->getLocationEnableState(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isLocationSwithEnable:Z

    .line 159
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->configManager:Lcom/android/supl/config/ConfigManager;

    .line 161
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->configManager:Lcom/android/supl/config/ConfigManager;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->configManager:Lcom/android/supl/config/ConfigManager;

    iget-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isLocationSwithEnable:Z

    invoke-virtual {v0, v1}, Lcom/android/supl/config/ConfigManager;->updateLocationSwitch(Z)V

    .line 164
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/supl/loc/SETLocationManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/loc/SETLocationManager;

    .line 69
    iget-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCall:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/supl/loc/SETLocationManager;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/loc/SETLocationManager;
    .param p1, "x1"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/supl/loc/SETLocationManager;->getLocationEnableState(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/supl/loc/SETLocationManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/supl/loc/SETLocationManager;
    .param p1, "x1"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCall:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/config/ConfigManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/loc/SETLocationManager;

    .line 69
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->configManager:Lcom/android/supl/config/ConfigManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/supl/loc/SETLocationManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/loc/SETLocationManager;

    .line 69
    invoke-direct {p0}, Lcom/android/supl/loc/SETLocationManager;->readPrivacyDB()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/supl/loc/SETLocationManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/loc/SETLocationManager;

    .line 69
    iget v0, p0, Lcom/android/supl/loc/SETLocationManager;->iPrivacyApprovedFlag:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/supl/loc/SETLocationManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/supl/loc/SETLocationManager;
    .param p1, "x1"    # I

    .line 69
    iput p1, p0, Lcom/android/supl/loc/SETLocationManager;->iPrivacyApprovedFlag:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/supl/loc/SETLocationManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/loc/SETLocationManager;

    .line 69
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/commprocessor/NDKCommProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/loc/SETLocationManager;

    .line 69
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/supl/loc/SETLocationManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/loc/SETLocationManager;

    .line 69
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mLock_cell:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/supl/loc/SETLocationManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/loc/SETLocationManager;

    .line 69
    iget-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isLocationSwithEnable:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/supl/loc/SETLocationManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/supl/loc/SETLocationManager;
    .param p1, "x1"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/android/supl/loc/SETLocationManager;->isLocationSwithEnable:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/supl/loc/SETLocationManager;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/loc/SETLocationManager;

    .line 69
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/supl/loc/SETLocationManager;Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/supl/loc/SETLocationManager;
    .param p1, "x1"    # Landroid/telephony/CellLocation;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # [B
    .param p5, "x5"    # Ljava/util/List;

    .line 69
    invoke-direct/range {p0 .. p5}, Lcom/android/supl/loc/SETLocationManager;->fillCellInfo(Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/loc/NetInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/loc/SETLocationManager;

    .line 69
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/supl/loc/SETLocationManager;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/supl/loc/SETLocationManager;
    .param p1, "x1"    # Ljava/util/List;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/supl/loc/SETLocationManager;->sendWIFIScanResult(Ljava/util/List;)V

    return-void
.end method

.method private checkCdmaCellLocationVaild(Landroid/telephony/cdma/CdmaCellLocation;)Z
    .locals 4
    .param p1, "cdmaCell"    # Landroid/telephony/cdma/CdmaCellLocation;

    .line 1362
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1364
    const-string v1, "SUPL20_LocMan"

    const-string v2, "cdmaCell is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    return v0

    .line 1379
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    if-ltz v1, :cond_a

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    const/16 v2, 0x7fff

    if-le v1, v2, :cond_1

    goto/16 :goto_4

    .line 1385
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v1

    if-ltz v1, :cond_9

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v1

    const v2, 0xffff

    if-le v1, v2, :cond_2

    goto/16 :goto_3

    .line 1391
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    if-ltz v1, :cond_8

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    if-le v1, v2, :cond_3

    goto :goto_2

    .line 1397
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v1

    const v2, -0x13c680

    if-lt v1, v2, :cond_7

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v1

    const v2, 0x13c680

    if-le v1, v2, :cond_4

    goto :goto_1

    .line 1403
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v1

    const v2, -0x278d00

    if-lt v1, v2, :cond_6

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v1

    const v2, 0x278d00

    if-le v1, v2, :cond_5

    goto :goto_0

    .line 1409
    :cond_5
    const/4 v0, 0x1

    return v0

    .line 1405
    :cond_6
    :goto_0
    const-string v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdmaCell lon is error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    return v0

    .line 1399
    :cond_7
    :goto_1
    const-string v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdmaCell lat is error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    return v0

    .line 1393
    :cond_8
    :goto_2
    const-string v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdmaCell base id is error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    return v0

    .line 1387
    :cond_9
    :goto_3
    const-string v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdmaCell nid is error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    return v0

    .line 1381
    :cond_a
    :goto_4
    const-string v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdmaCell sid is error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    return v0
.end method

.method private checkGsmCellLocationValid(Landroid/telephony/gsm/GsmCellLocation;)Z
    .locals 4
    .param p1, "gsmCell"    # Landroid/telephony/gsm/GsmCellLocation;

    .line 1275
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1277
    const-string v1, "SUPL20_LocMan"

    const-string v2, "gsmCell is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    return v0

    .line 1285
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    const v2, 0xffff

    if-le v1, v2, :cond_1

    goto :goto_1

    .line 1291
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-le v1, v2, :cond_2

    goto :goto_0

    .line 1297
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 1293
    :cond_3
    :goto_0
    const-string v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gsmCell lac is error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    return v0

    .line 1287
    :cond_4
    :goto_1
    const-string v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gsmCell cid is error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    return v0
.end method

.method private checkLteCellLocationValid(Landroid/telephony/gsm/GsmCellLocation;)Z
    .locals 4
    .param p1, "lteCell"    # Landroid/telephony/gsm/GsmCellLocation;

    .line 1327
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1329
    const-string v1, "SUPL20_LocMan"

    const-string v2, "lteCell is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    return v0

    .line 1339
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    if-ltz v1, :cond_6

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    const v2, 0xfffffff

    if-le v1, v2, :cond_1

    goto :goto_1

    .line 1345
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-ltz v1, :cond_5

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    const v2, 0xffff

    if-le v1, v2, :cond_2

    goto :goto_0

    .line 1351
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v0

    const/16 v1, 0x1f7

    if-le v0, v1, :cond_4

    .line 1353
    :cond_3
    const-string v0, "SUPL20_LocMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lteCell psc is error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 1347
    :cond_5
    :goto_0
    const-string v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lteCell lac is error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    return v0

    .line 1341
    :cond_6
    :goto_1
    const-string v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lteCell cid is error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    return v0
.end method

.method private checkUmtsCellLocationValid(Landroid/telephony/gsm/GsmCellLocation;)Z
    .locals 4
    .param p1, "umtsCell"    # Landroid/telephony/gsm/GsmCellLocation;

    .line 1301
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1303
    const-string v1, "SUPL20_LocMan"

    const-string v2, "umtsCell is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    return v0

    .line 1311
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    const v2, 0xfffffff

    if-le v1, v2, :cond_1

    goto :goto_1

    .line 1317
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    const v2, 0xffff

    if-le v1, v2, :cond_2

    goto :goto_0

    .line 1323
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 1319
    :cond_3
    :goto_0
    const-string v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "umtsCell lac is error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    return v0

    .line 1313
    :cond_4
    :goto_1
    const-string v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "umtsCell cid is error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    return v0
.end method

.method private fakeGSMData()V
    .locals 7

    .line 716
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 717
    .local v0, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    const/16 v1, 0xc83

    const v2, 0xcb1935

    invoke-virtual {v0, v1, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 718
    const/16 v1, 0x194

    iput v1, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    .line 719
    const/16 v1, 0x40

    iput v1, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    .line 720
    const-string v1, "SUPL20_LocMan"

    const-string v2, "fakeGSMData called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/supl/loc/SETLocationManager;->fillCellInfo(Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    .line 722
    return-void
.end method

.method private fakeLTEData()V
    .locals 8

    .line 725
    const-string v0, "SUPL20_LocMan"

    const-string v1, "fakeLTEData called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/supl/loc/SETLocationManager;->fillCellInfo(Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    .line 727
    return-void
.end method

.method private fillCDMACellinfo(Landroid/telephony/CellLocation;)Lcom/android/supl/loc/CdmaCellInfo;
    .locals 3
    .param p1, "cellLoc"    # Landroid/telephony/CellLocation;

    .line 612
    move-object v0, p1

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 613
    .local v0, "cdmaLocation":Landroid/telephony/cdma/CdmaCellLocation;
    new-instance v1, Lcom/android/supl/loc/CdmaCellInfo;

    invoke-direct {v1}, Lcom/android/supl/loc/CdmaCellInfo;-><init>()V

    .line 614
    .local v1, "cdmaCellInfo":Lcom/android/supl/loc/CdmaCellInfo;
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v2

    iput v2, v1, Lcom/android/supl/loc/CdmaCellInfo;->m_iBASELAT:I

    .line 615
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v2

    iput v2, v1, Lcom/android/supl/loc/CdmaCellInfo;->m_iBASELONG:I

    .line 616
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v1, Lcom/android/supl/loc/CdmaCellInfo;->m_sBASEID:S

    .line 617
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v1, Lcom/android/supl/loc/CdmaCellInfo;->m_sSID:S

    .line 618
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v1, Lcom/android/supl/loc/CdmaCellInfo;->m_sNID:S

    .line 625
    return-object v1
.end method

.method private declared-synchronized fillCellInfo(Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V
    .locals 28
    .param p1, "cellLocation"    # Landroid/telephony/CellLocation;
    .param p2, "isFake"    # Z
    .param p3, "iNetWorkType"    # I
    .param p4, "bScanData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CellLocation;",
            "ZI[B",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .local p5, "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move-object/from16 v3, p5

    monitor-enter p0

    .line 734
    :try_start_0
    iget-boolean v4, v1, Lcom/android/supl/loc/SETLocationManager;->isLocationSwithEnable:Z

    if-nez v4, :cond_0

    .line 735
    const-string v4, "SUPL20_LocMan"

    const-string v5, "Location switch is OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    monitor-exit p0

    return-void

    .line 739
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/supl/loc/SETLocationManager;->upDatePhoneInfo()V

    .line 740
    const/4 v4, 0x0

    .line 741
    .local v4, "isGSM":Z
    const/4 v5, 0x0

    .line 742
    .local v5, "isWCDMA":Z
    const/4 v6, 0x0

    .line 743
    .local v6, "isCDMA":Z
    const/4 v7, 0x0

    .line 744
    .local v7, "isHRDP":Z
    const/4 v8, 0x0

    .line 745
    .local v8, "isUMB":Z
    const/4 v9, 0x0

    .line 746
    .local v9, "isLTE":Z
    const/4 v10, 0x0

    .line 747
    .local v10, "isWLAN_AP":Z
    const/4 v11, 0x0

    .line 748
    .local v11, "isWIMAXBS":Z
    const/4 v12, 0x0

    .line 749
    .local v12, "bLoc":[B
    const/4 v13, 0x0

    .line 750
    .local v13, "iLocDataLen":I
    invoke-direct {v1, v2}, Lcom/android/supl/loc/SETLocationManager;->getNetworkTypeString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lcom/android/supl/loc/SETLocationManager;->m_stBearerNetworkType:Ljava/lang/String;

    .line 751
    const-string v14, "SUPL20_LocMan"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v4

    const-string v4, "cellInfo NetworkType:"

    .end local v4    # "isGSM":Z
    .local v16, "isGSM":Z
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/supl/loc/SETLocationManager;->m_stBearerNetworkType:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v4, 0x2

    const/4 v14, 0x4

    const/4 v15, 0x1

    if-eq v2, v4, :cond_f

    if-ne v2, v15, :cond_1

    .line 755
    move/from16 v21, v5

    goto/16 :goto_5

    .line 767
    :cond_1
    if-ne v2, v14, :cond_3

    .line 769
    instance-of v4, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Landroid/telephony/cdma/CdmaCellLocation;

    .line 770
    invoke-direct {v1, v4}, Lcom/android/supl/loc/SETLocationManager;->checkCdmaCellLocationVaild(Landroid/telephony/cdma/CdmaCellLocation;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 772
    const/4 v6, 0x1

    .line 773
    invoke-direct/range {p0 .. p1}, Lcom/android/supl/loc/SETLocationManager;->fillCDMACellinfo(Landroid/telephony/CellLocation;)Lcom/android/supl/loc/CdmaCellInfo;

    move-result-object v4

    .line 774
    .local v4, "cdmaCellInfo":Lcom/android/supl/loc/CdmaCellInfo;
    invoke-virtual {v4}, Lcom/android/supl/loc/CdmaCellInfo;->getCDMAInfo()[B

    move-result-object v17

    move-object/from16 v12, v17

    .line 775
    array-length v15, v12

    move v13, v15

    .line 776
    .end local v4    # "cdmaCellInfo":Lcom/android/supl/loc/CdmaCellInfo;
    nop

    .line 849
    .end local v5    # "isWCDMA":Z
    .local v21, "isWCDMA":Z
    :cond_2
    :goto_0
    move/from16 v21, v5

    goto/16 :goto_6

    .line 777
    .end local v21    # "isWCDMA":Z
    .restart local v5    # "isWCDMA":Z
    :cond_3
    const/4 v4, 0x3

    if-eq v2, v4, :cond_d

    const/16 v4, 0xa

    if-eq v2, v4, :cond_d

    const/16 v4, 0x8

    if-eq v2, v4, :cond_d

    const/16 v4, 0x9

    if-eq v2, v4, :cond_d

    const/16 v4, 0xf

    if-eq v2, v4, :cond_d

    const/16 v4, 0x11

    if-ne v2, v4, :cond_4

    .line 786
    move/from16 v21, v5

    goto/16 :goto_4

    .line 798
    :cond_4
    const/16 v15, 0x14

    if-ne v2, v15, :cond_5

    .line 799
    const/4 v8, 0x1

    .line 800
    new-instance v4, Lcom/android/supl/loc/UMBCellInfo;

    invoke-direct {v4}, Lcom/android/supl/loc/UMBCellInfo;-><init>()V

    .line 801
    .local v4, "umbCellInfo":Lcom/android/supl/loc/UMBCellInfo;
    invoke-virtual {v4}, Lcom/android/supl/loc/UMBCellInfo;->setDummyData()V

    .line 802
    invoke-virtual {v4}, Lcom/android/supl/loc/UMBCellInfo;->getUMBCellInfo()[B

    move-result-object v15

    move-object v12, v15

    .line 803
    array-length v15, v12

    move v13, v15

    .line 804
    .end local v4    # "umbCellInfo":Lcom/android/supl/loc/UMBCellInfo;
    goto :goto_0

    :cond_5
    const/16 v15, 0x15

    if-ne v2, v15, :cond_7

    .line 805
    const/4 v10, 0x1

    .line 806
    if-eqz p4, :cond_6

    .line 807
    move-object/from16 v4, p4

    .line 814
    :goto_1
    move-object v12, v4

    goto :goto_2

    .line 810
    :cond_6
    new-instance v4, Lcom/android/supl/loc/wifi/WIFIParameter;

    iget-object v14, v1, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    invoke-virtual {v14}, Lcom/android/supl/loc/NetInfo;->getWiFiMACAddress()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Lcom/android/supl/loc/wifi/WIFIParameter;-><init>(Ljava/lang/String;)V

    .line 811
    .local v4, "wifiParameter":Lcom/android/supl/loc/wifi/WIFIParameter;
    invoke-virtual {v4}, Lcom/android/supl/loc/wifi/WIFIParameter;->getWIFIParameterInfo()[B

    move-result-object v14

    move-object v4, v14

    .end local v12    # "bLoc":[B
    .local v4, "bLoc":[B
    goto :goto_1

    .line 814
    .end local v4    # "bLoc":[B
    .restart local v12    # "bLoc":[B
    :goto_2
    array-length v4, v12

    move v13, v4

    goto :goto_0

    .line 815
    :cond_7
    const/16 v14, 0xd

    if-ne v2, v14, :cond_c

    .line 816
    const-string v14, "SUPL20_LocMan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v5

    const-string v5, "Network type is 4G, type is "

    .end local v5    # "isWCDMA":Z
    .restart local v21    # "isWCDMA":Z
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/4 v4, 0x0

    .line 818
    .local v4, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x11

    if-lt v5, v14, :cond_9

    .line 819
    if-eqz v3, :cond_8

    .line 820
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/supl/loc/LTECellInfo;->getCellInfo_To_LTECellInfo(Ljava/util/List;Ljava/util/List;)Lcom/android/supl/loc/LTECellInfo;

    move-result-object v5

    move-object v4, v5

    goto :goto_3

    .line 823
    :cond_8
    iget-object v5, v1, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/supl/loc/LTECellInfo;->getAPILTECellInfo(Landroid/content/Context;)Lcom/android/supl/loc/LTECellInfo;

    move-result-object v5

    move-object v4, v5

    goto :goto_3

    .line 827
    :cond_9
    iget-object v5, v1, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/supl/loc/LTECellInfo;->getNONAPILTECellInfo(Landroid/content/Context;)Lcom/android/supl/loc/LTECellInfo;

    move-result-object v5

    move-object v4, v5

    .line 830
    :goto_3
    if-nez v4, :cond_a

    .line 831
    instance-of v5, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v5, :cond_a

    move-object v5, v0

    check-cast v5, Landroid/telephony/gsm/GsmCellLocation;

    .line 832
    invoke-direct {v1, v5}, Lcom/android/supl/loc/SETLocationManager;->checkLteCellLocationValid(Landroid/telephony/gsm/GsmCellLocation;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 834
    iget v5, v1, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    iget v14, v1, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    invoke-static {v0, v5, v14}, Lcom/android/supl/loc/LTECellInfo;->getCellLocation_To_LTECellInfo(Landroid/telephony/CellLocation;II)Lcom/android/supl/loc/LTECellInfo;

    move-result-object v5

    move-object v4, v5

    .line 838
    :cond_a
    if-eqz v4, :cond_b

    .line 839
    invoke-virtual {v4}, Lcom/android/supl/loc/LTECellInfo;->getLTECellInfo()[B

    move-result-object v5

    move-object v12, v5

    .line 840
    array-length v5, v12

    move v13, v5

    .line 841
    const-string v5, "SUPL20_LocMan"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LTE data send.."

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/4 v9, 0x1

    goto/16 :goto_6

    .line 845
    :cond_b
    const/4 v9, 0x0

    .line 846
    const-string v3, "SUPL20_LocMan"

    const-string v5, "LTE data  is null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    goto/16 :goto_6

    .line 849
    .end local v21    # "isWCDMA":Z
    .restart local v5    # "isWCDMA":Z
    :cond_c
    move/from16 v21, v5

    .end local v5    # "isWCDMA":Z
    .restart local v21    # "isWCDMA":Z
    goto :goto_6

    .line 786
    .end local v21    # "isWCDMA":Z
    .restart local v5    # "isWCDMA":Z
    :cond_d
    move/from16 v21, v5

    .end local v5    # "isWCDMA":Z
    .restart local v21    # "isWCDMA":Z
    :goto_4
    const-string v3, "SUPL20_LocMan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network type is 3G, type is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    instance-of v3, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_e

    .line 788
    move-object v3, v0

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v1, v3}, Lcom/android/supl/loc/SETLocationManager;->checkUmtsCellLocationValid(Landroid/telephony/gsm/GsmCellLocation;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 790
    const/4 v5, 0x1

    .line 791
    .end local v21    # "isWCDMA":Z
    .restart local v5    # "isWCDMA":Z
    new-instance v3, Lcom/android/supl/loc/WcdmaCellInfo;

    iget v4, v1, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    iget v14, v1, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    invoke-direct {v3, v0, v4, v14}, Lcom/android/supl/loc/WcdmaCellInfo;-><init>(Landroid/telephony/CellLocation;II)V

    .line 792
    .local v3, "wcdmaCellInfo":Lcom/android/supl/loc/WcdmaCellInfo;
    invoke-virtual {v3}, Lcom/android/supl/loc/WcdmaCellInfo;->getWCDMAInfo()[B

    move-result-object v4

    move-object v12, v4

    .line 793
    array-length v4, v12

    move v13, v4

    .line 794
    .end local v3    # "wcdmaCellInfo":Lcom/android/supl/loc/WcdmaCellInfo;
    goto/16 :goto_0

    .line 796
    .end local v5    # "isWCDMA":Z
    .restart local v21    # "isWCDMA":Z
    :cond_e
    const-string v3, "SUPL20_LocMan"

    const-string v4, "Network type is UMTS but CellLocation is Cdma, just return."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 755
    .end local v21    # "isWCDMA":Z
    .restart local v5    # "isWCDMA":Z
    :cond_f
    move/from16 v21, v5

    .end local v5    # "isWCDMA":Z
    .restart local v21    # "isWCDMA":Z
    :goto_5
    instance-of v3, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_10

    .line 756
    move-object v3, v0

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v1, v3}, Lcom/android/supl/loc/SETLocationManager;->checkGsmCellLocationValid(Landroid/telephony/gsm/GsmCellLocation;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 758
    const/4 v4, 0x1

    .line 759
    .end local v16    # "isGSM":Z
    .local v4, "isGSM":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/supl/loc/SETLocationManager;->fillGSMCellinfo(Landroid/telephony/CellLocation;)Lcom/android/supl/loc/GsmCellInfo;

    move-result-object v3

    .line 760
    .local v3, "gsmCellInfo":Lcom/android/supl/loc/GsmCellInfo;
    invoke-virtual {v3}, Lcom/android/supl/loc/GsmCellInfo;->getGSMInfo()[B

    move-result-object v5

    move-object v12, v5

    .line 761
    array-length v5, v12

    move v13, v5

    .line 762
    .end local v3    # "gsmCellInfo":Lcom/android/supl/loc/GsmCellInfo;
    nop

    .line 849
    move/from16 v16, v4

    goto :goto_6

    .line 764
    .end local v4    # "isGSM":Z
    .restart local v16    # "isGSM":Z
    :cond_10
    const-string v3, "SUPL20_LocMan"

    const-string v4, "Network type is UMTS but CellLocation is Cdma, just return."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_11
    :goto_6
    const/4 v3, 0x0

    .line 850
    .local v3, "iStaleBitLocation":I
    new-instance v4, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v4}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 851
    .local v4, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/4 v5, 0x4

    .line 852
    .local v5, "iLocationIDStatusLen":I
    const/4 v14, 0x4

    .line 853
    .local v14, "iMesageCodeLen":I
    const/16 v17, 0x20

    .line 855
    .local v17, "iLocationSetStatusLen":I
    if-nez v16, :cond_12

    if-nez v6, :cond_12

    if-nez v21, :cond_12

    if-nez v10, :cond_12

    if-nez v9, :cond_12

    .line 856
    const/4 v13, 0x0

    .line 857
    const/4 v5, 0x0

    .line 859
    :cond_12
    add-int v20, v13, v5

    add-int v20, v20, v17

    const/16 v19, 0x4

    add-int/lit8 v0, v20, 0x4

    .line 861
    .local v0, "iSendPacketSize":I
    add-int/lit8 v2, v0, 0x4

    new-array v2, v2, [B

    .line 862
    .local v2, "bData":[B
    const/16 v20, 0x0

    .line 863
    .local v20, "offset":I
    move/from16 v22, v3

    add-int/lit8 v3, v20, 0x4

    .line 864
    .end local v20    # "offset":I
    .local v3, "offset":I
    .local v22, "iStaleBitLocation":I
    move/from16 v23, v5

    const/16 v5, 0x10b

    .end local v5    # "iLocationIDStatusLen":I
    .local v23, "iLocationIDStatusLen":I
    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    move v3, v5

    .line 865
    if-eqz v16, :cond_13

    .line 866
    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    move/from16 v3, v19

    .line 867
    const/4 v5, 0x0

    invoke-static {v12, v5, v2, v3, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 868
    add-int/2addr v3, v13

    .line 869
    move v5, v3

    .line 870
    .end local v22    # "iStaleBitLocation":I
    .local v5, "iStaleBitLocation":I
    move/from16 v24, v5

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    .end local v5    # "iStaleBitLocation":I
    .local v24, "iStaleBitLocation":I
    move/from16 v3, v19

    .line 875
    move/from16 v22, v24

    goto :goto_7

    .line 872
    .end local v24    # "iStaleBitLocation":I
    .restart local v22    # "iStaleBitLocation":I
    :cond_13
    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    move/from16 v3, v19

    .line 875
    :goto_7
    if-eqz v21, :cond_14

    .line 876
    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    move/from16 v3, v19

    .line 877
    const/4 v5, 0x0

    invoke-static {v12, v5, v2, v3, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 878
    add-int/2addr v3, v13

    .line 879
    move/from16 v22, v3

    .line 880
    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    move/from16 v3, v19

    goto :goto_8

    .line 882
    :cond_14
    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    move/from16 v3, v19

    .line 884
    :goto_8
    if-eqz v6, :cond_15

    .line 885
    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    move/from16 v3, v19

    .line 886
    const/4 v5, 0x0

    invoke-static {v12, v5, v2, v3, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 887
    add-int/2addr v3, v13

    .line 888
    move/from16 v22, v3

    .line 889
    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    move/from16 v3, v19

    goto :goto_9

    .line 891
    :cond_15
    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    move/from16 v3, v19

    .line 894
    :goto_9
    if-eqz v7, :cond_16

    .line 895
    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    move/from16 v3, v19

    .line 896
    const/4 v5, 0x0

    invoke-static {v12, v5, v2, v3, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 897
    add-int/2addr v3, v13

    .line 898
    move/from16 v22, v3

    .line 899
    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    move/from16 v3, v19

    goto :goto_a

    .line 901
    :cond_16
    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    move/from16 v3, v19

    .line 903
    :goto_a
    if-eqz v8, :cond_17

    .line 904
    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    move/from16 v3, v19

    .line 905
    const/4 v5, 0x0

    invoke-static {v12, v5, v2, v3, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 906
    add-int/2addr v3, v13

    .line 907
    move/from16 v22, v3

    .line 908
    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    move/from16 v3, v19

    goto :goto_b

    .line 910
    :cond_17
    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    move/from16 v3, v19

    .line 912
    :goto_b
    if-eqz v9, :cond_18

    .line 913
    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    move/from16 v3, v19

    .line 914
    const/4 v5, 0x0

    invoke-static {v12, v5, v2, v3, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 915
    add-int/2addr v3, v13

    .line 916
    move/from16 v22, v3

    .line 917
    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    move/from16 v3, v19

    goto :goto_c

    .line 919
    :cond_18
    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    move/from16 v3, v19

    .line 921
    :goto_c
    if-eqz v10, :cond_19

    .line 922
    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    move/from16 v3, v19

    .line 923
    const/4 v5, 0x0

    invoke-static {v12, v5, v2, v3, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 924
    add-int/2addr v3, v13

    .line 925
    move/from16 v22, v3

    .line 926
    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    move/from16 v3, v19

    goto :goto_d

    .line 928
    :cond_19
    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    move/from16 v3, v19

    .line 930
    :goto_d
    if-eqz v11, :cond_1a

    .line 931
    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    move/from16 v3, v19

    .line 932
    const/4 v5, 0x0

    invoke-static {v12, v5, v2, v3, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 933
    add-int/2addr v3, v13

    .line 934
    move/from16 v22, v3

    .line 935
    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    move v3, v5

    goto :goto_e

    .line 937
    :cond_1a
    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v18

    move/from16 v3, v18

    .line 940
    .end local v22    # "iStaleBitLocation":I
    .restart local v5    # "iStaleBitLocation":I
    :goto_e
    move/from16 v5, v22

    move/from16 v25, v6

    add-int/lit8 v6, v3, -0x4

    .end local v6    # "isCDMA":Z
    .local v25, "isCDMA":Z
    if-eq v0, v6, :cond_1b

    .line 941
    const-string v6, "SUPL20_LocMan"

    move/from16 v26, v7

    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7    # "isHRDP":Z
    .local v26, "isHRDP":Z
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v8

    const-string v8, "invalid size "

    .end local v8    # "isUMB":Z
    .local v27, "isUMB":Z
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v3, -0x4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 943
    .end local v26    # "isHRDP":Z
    .end local v27    # "isUMB":Z
    .restart local v7    # "isHRDP":Z
    .restart local v8    # "isUMB":Z
    :cond_1b
    move/from16 v26, v7

    move/from16 v27, v8

    .end local v7    # "isHRDP":Z
    .end local v8    # "isUMB":Z
    .restart local v26    # "isHRDP":Z
    .restart local v27    # "isUMB":Z
    :goto_f
    add-int/lit8 v6, v3, -0x4

    const/4 v7, 0x0

    invoke-static {v2, v7, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    .line 944
    iput-object v2, v4, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 946
    iget-object v6, v1, Lcom/android/supl/loc/SETLocationManager;->mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    if-eqz v6, :cond_1c

    .line 947
    iget-object v6, v1, Lcom/android/supl/loc/SETLocationManager;->mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-virtual {v6, v4}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 950
    :cond_1c
    if-eqz v5, :cond_1f

    .line 952
    if-eqz v10, :cond_1d

    .line 953
    iget-object v6, v1, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    invoke-virtual {v6, v2, v5}, Lcom/android/supl/loc/NetInfo;->setStaleLocationInfo([BI)V

    goto :goto_10

    .line 956
    :cond_1d
    iget-object v6, v1, Lcom/android/supl/loc/SETLocationManager;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    if-nez v6, :cond_1e

    .line 957
    new-instance v6, Lcom/android/supl/loc/StaleLocationInfo;

    invoke-direct {v6, v2, v5}, Lcom/android/supl/loc/StaleLocationInfo;-><init>([BI)V

    iput-object v6, v1, Lcom/android/supl/loc/SETLocationManager;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    goto :goto_10

    .line 959
    :cond_1e
    iget-object v6, v1, Lcom/android/supl/loc/SETLocationManager;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    invoke-virtual {v6, v2, v5}, Lcom/android/supl/loc/StaleLocationInfo;->upDateInfo([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 964
    :cond_1f
    :goto_10
    monitor-exit p0

    return-void

    .line 733
    .end local v0    # "iSendPacketSize":I
    .end local v2    # "bData":[B
    .end local v3    # "offset":I
    .end local v4    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    .end local v5    # "iStaleBitLocation":I
    .end local v9    # "isLTE":Z
    .end local v10    # "isWLAN_AP":Z
    .end local v11    # "isWIMAXBS":Z
    .end local v12    # "bLoc":[B
    .end local v13    # "iLocDataLen":I
    .end local v14    # "iMesageCodeLen":I
    .end local v16    # "isGSM":Z
    .end local v17    # "iLocationSetStatusLen":I
    .end local v21    # "isWCDMA":Z
    .end local v23    # "iLocationIDStatusLen":I
    .end local v25    # "isCDMA":Z
    .end local v26    # "isHRDP":Z
    .end local v27    # "isUMB":Z
    .end local p1    # "cellLocation":Landroid/telephony/CellLocation;
    .end local p2    # "isFake":Z
    .end local p3    # "iNetWorkType":I
    .end local p4    # "bScanData":[B
    .end local p5    # "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/supl/loc/SETLocationManager;
    throw v0
.end method

.method private fillGSMCellinfo(Landroid/telephony/CellLocation;)Lcom/android/supl/loc/GsmCellInfo;
    .locals 3
    .param p1, "cellLoc"    # Landroid/telephony/CellLocation;

    .line 630
    move-object v0, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 631
    .local v0, "gsmCell":Landroid/telephony/gsm/GsmCellLocation;
    new-instance v1, Lcom/android/supl/loc/GsmCellInfo;

    invoke-direct {v1}, Lcom/android/supl/loc/GsmCellInfo;-><init>()V

    .line 633
    .local v1, "gsmCellInfo":Lcom/android/supl/loc/GsmCellInfo;
    iget v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    iput v2, v1, Lcom/android/supl/loc/GsmCellInfo;->m_iMNC:I

    .line 634
    iget v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    iput v2, v1, Lcom/android/supl/loc/GsmCellInfo;->m_iMCC:I

    .line 635
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    iput v2, v1, Lcom/android/supl/loc/GsmCellInfo;->m_iLAC:I

    .line 636
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    iput v2, v1, Lcom/android/supl/loc/GsmCellInfo;->m_iCellID:I

    .line 638
    return-object v1
.end method

.method private getLocationEnableState(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 1108
    invoke-virtual {p0}, Lcom/android/supl/loc/SETLocationManager;->isGlobalVersion()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1110
    return v1

    .line 1114
    :cond_0
    iget v0, p0, Lcom/android/supl/loc/SETLocationManager;->iPrivacyApprovedFlag:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1116
    const-string v0, "SUPL20_LocMan"

    const-string v3, "privacy not approved"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iput v1, p0, Lcom/android/supl/loc/SETLocationManager;->iPrivacyApprovedFlag:I

    .line 1119
    invoke-virtual {p0}, Lcom/android/supl/loc/SETLocationManager;->readPrivacyApprovedFlag()V

    .line 1120
    return v2

    .line 1122
    :cond_1
    iget v0, p0, Lcom/android/supl/loc/SETLocationManager;->iPrivacyApprovedFlag:I

    if-ne v1, v0, :cond_2

    .line 1125
    invoke-direct {p0}, Lcom/android/supl/loc/SETLocationManager;->readPrivacyDB()Z

    .line 1128
    :cond_2
    iget v0, p0, Lcom/android/supl/loc/SETLocationManager;->iPrivacyApprovedFlag:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    .line 1129
    return v2

    .line 1132
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "location"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1134
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-string v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 1135
    .local v3, "gps":Z
    const-string v4, "network"

    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    .line 1137
    .local v4, "network":Z
    const-string v5, "SUPL20_LocMan"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gps switch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " network switch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    if-nez v3, :cond_5

    if-eqz v4, :cond_4

    goto :goto_0

    .line 1143
    :cond_4
    return v2

    .line 1140
    :cond_5
    :goto_0
    return v1
.end method

.method private getNetworkTypeString(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 642
    const-string v0, "Unknown"

    .line 644
    .local v0, "typeString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 704
    const-string v0, "NOT RETERIVE"

    goto :goto_0

    .line 697
    :pswitch_0
    const-string v0, "TDS"

    .line 698
    goto :goto_0

    .line 694
    :pswitch_1
    const-string v0, "GSM"

    .line 695
    goto :goto_0

    .line 679
    :pswitch_2
    const-string v0, "HSPAP"

    .line 680
    goto :goto_0

    .line 691
    :pswitch_3
    const-string v0, "EHRPD"

    .line 692
    goto :goto_0

    .line 688
    :pswitch_4
    const-string v0, "LTE"

    .line 689
    goto :goto_0

    .line 685
    :pswitch_5
    const-string v0, "EVDO_B"

    .line 686
    goto :goto_0

    .line 682
    :pswitch_6
    const-string v0, "IDEN"

    .line 683
    goto :goto_0

    .line 670
    :pswitch_7
    const-string v0, "HSPA"

    .line 671
    goto :goto_0

    .line 676
    :pswitch_8
    const-string v0, "HSUPA"

    .line 677
    goto :goto_0

    .line 673
    :pswitch_9
    const-string v0, "HSDPA"

    .line 674
    goto :goto_0

    .line 661
    :pswitch_a
    const-string v0, "1xRTT"

    .line 662
    goto :goto_0

    .line 667
    :pswitch_b
    const-string v0, "EVDO_A"

    .line 668
    goto :goto_0

    .line 664
    :pswitch_c
    const-string v0, "EVDO_0"

    .line 665
    goto :goto_0

    .line 655
    :pswitch_d
    const-string v0, "CDMA"

    .line 656
    goto :goto_0

    .line 652
    :pswitch_e
    const-string v0, "UMTS"

    .line 653
    goto :goto_0

    .line 646
    :pswitch_f
    const-string v0, "EDGE"

    .line 647
    goto :goto_0

    .line 649
    :pswitch_10
    const-string v0, "GPRS"

    .line 650
    goto :goto_0

    .line 658
    :pswitch_11
    const-string v0, "UNKNOWN"

    .line 659
    nop

    .line 712
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPhoneTypeString(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 590
    const-string v0, "Unknown"

    .line 592
    .local v0, "typeString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 604
    const-string v0, "NOT RETERIVE"

    goto :goto_0

    .line 597
    :pswitch_0
    const-string v0, "CDMA"

    .line 598
    goto :goto_0

    .line 594
    :pswitch_1
    const-string v0, "GSM"

    .line 595
    goto :goto_0

    .line 601
    :pswitch_2
    const-string v0, "UNKNOWN"

    .line 602
    nop

    .line 608
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isSIMEnabled()Z
    .locals 5

    .line 314
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 315
    .local v0, "state":I
    const/4 v1, 0x0

    .line 316
    .local v1, "isSIMStateEnabled":Z
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 319
    :pswitch_0
    const/4 v1, 0x1

    .line 320
    goto :goto_0

    .line 328
    :pswitch_1
    const/4 v1, 0x0

    .line 329
    nop

    .line 335
    :goto_0
    const-string v2, "SUPL20_LocMan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM state :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized readPrivacyDB()Z
    .locals 8

    monitor-enter p0

    .line 1198
    :try_start_0
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_accuracy_startup_comfirm"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1199
    .local v0, "iFlag":I
    const-string v1, "SUPL20_LocMan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const/4 v1, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1203
    iput v1, p0, Lcom/android/supl/loc/SETLocationManager;->iPrivacyApprovedFlag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1204
    monitor-exit p0

    return v3

    .line 1207
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hw_lbs_user_confirm"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1208
    .local v4, "iFlagUserConfirm":I
    const-string v5, "SUPL20_LocMan"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UserConfirm: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    if-ne v4, v3, :cond_1

    .line 1212
    iput v1, p0, Lcom/android/supl/loc/SETLocationManager;->iPrivacyApprovedFlag:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1213
    monitor-exit p0

    return v3

    .line 1216
    :cond_1
    monitor-exit p0

    return v2

    .line 1197
    .end local v0    # "iFlag":I
    .end local v4    # "iFlagUserConfirm":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/supl/loc/SETLocationManager;
    throw v0
.end method

.method private sendWIFIScanResult(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1220
    .local p1, "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1221
    const/4 v0, 0x0

    .line 1222
    .local v0, "iSize":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1223
    .local v1, "nScanResults":I
    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    .line 1224
    const/16 v1, 0x14

    .line 1226
    :cond_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v1}, Ljava/util/Vector;-><init>(I)V

    .line 1227
    .local v2, "vecScanDataRes":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "iSize":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1228
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 1230
    .local v5, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v5, :cond_2

    iget-object v6, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 1231
    new-instance v6, Lcom/android/supl/loc/wifi/WIFIParameter;

    iget-object v7, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/android/supl/loc/wifi/WIFIParameter;-><init>(Ljava/lang/String;)V

    .line 1232
    .local v6, "parameter":Lcom/android/supl/loc/wifi/WIFIParameter;
    nop

    .line 1233
    const/4 v7, 0x0

    .line 1234
    .local v7, "isServeWIFI":Z
    iget-object v8, p0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    if-eqz v8, :cond_1

    .line 1235
    iget-object v8, p0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    invoke-virtual {v8}, Lcom/android/supl/loc/NetInfo;->getWiFiMACAddress()Ljava/lang/String;

    move-result-object v8

    .line 1236
    .local v8, "stMAcAddress":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 1237
    iget-object v9, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1241
    .end local v8    # "stMAcAddress":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6, v7}, Lcom/android/supl/loc/wifi/WIFIParameter;->getScanWIFIParameterInfo(Z)[B

    move-result-object v8

    .line 1242
    .local v8, "bWifiInfoData":[B
    if-eqz v8, :cond_2

    .line 1243
    array-length v9, v8

    add-int/2addr v4, v9

    .line 1244
    invoke-virtual {v2, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1227
    .end local v5    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v6    # "parameter":Lcom/android/supl/loc/wifi/WIFIParameter;
    .end local v7    # "isServeWIFI":Z
    .end local v8    # "bWifiInfoData":[B
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1250
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1251
    add-int/lit8 v4, v4, 0x1

    .line 1252
    new-array v0, v4, [B

    .line 1254
    .local v0, "bScanData":[B
    const/4 v5, 0x0

    .line 1256
    .local v5, "iOffset":I
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-static {v0, v5, v6}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v5

    .line 1258
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v11, v5

    .end local v5    # "iOffset":I
    .local v11, "iOffset":I
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1259
    .local v5, "b":[B
    if-eqz v5, :cond_4

    .line 1260
    array-length v7, v5

    invoke-static {v5, v3, v0, v11, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1261
    array-length v7, v5

    add-int/2addr v11, v7

    .line 1263
    .end local v5    # "b":[B
    :cond_4
    goto :goto_1

    .line 1264
    :cond_5
    if-eq v11, v4, :cond_6

    .line 1265
    const-string v3, "SUPL20_LocMan"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wifi sacn result length invalid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1267
    :cond_6
    const-string v3, "SUPL20_LocMan"

    const-string v5, "Wifi sacn result send"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x15

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/supl/loc/SETLocationManager;->fillCellInfo(Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    .line 1272
    .end local v0    # "bScanData":[B
    .end local v1    # "nScanResults":I
    .end local v2    # "vecScanDataRes":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    .end local v4    # "iSize":I
    .end local v11    # "iOffset":I
    :cond_7
    :goto_2
    return-void
.end method

.method private startListener()V
    .locals 3

    .line 341
    iget-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isStartListen:Z

    if-nez v0, :cond_1

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isStartListen:Z

    .line 343
    const/16 v0, 0xd1

    .line 348
    .local v0, "events":I
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mMyPhoneStateListener:Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 349
    const-string v1, "SUPL20_LocMan"

    const-string v2, "Registered MyPhoneStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isLocationSwithEnable:Z

    if-eqz v1, :cond_0

    .line 352
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 353
    invoke-virtual {p0}, Lcom/android/supl/loc/SETLocationManager;->forceCellLocationUpdate()V

    goto :goto_0

    .line 355
    :cond_0
    const-string v1, "SUPL20_LocMan"

    const-string v2, "Location switch is OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local v0    # "events":I
    :cond_1
    :goto_0
    return-void
.end method

.method private upDatePhoneInfo()V
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->m_stIMSI:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/supl/loc/SETLocationManager;->getPhoneTypeString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->m_stPhoneType:Ljava/lang/String;

    .line 233
    const-string v0, "SUPL20_LocMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_stPhoneType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/supl/loc/SETLocationManager;->getNetworkTypeString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->m_stBearerNetworkType:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->configManager:Lcom/android/supl/config/ConfigManager;

    if-eqz v0, :cond_0

    const-string v0, "msisdn"

    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->configManager:Lcom/android/supl/config/ConfigManager;

    invoke-virtual {v1}, Lcom/android/supl/config/ConfigManager;->getPrefSetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->m_stMSISDN:Ljava/lang/String;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "networkOperator":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 248
    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    .line 249
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    .line 250
    const-string v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Op Mnc= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " MCC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    .line 252
    :goto_0
    goto :goto_1

    .line 256
    :cond_1
    const-string v1, "SUPL20_LocMan"

    const-string v2, "NULL Value received for network operator"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_1
    return-void
.end method

.method private updateNoSIM_MNC_MCC(Lcom/android/supl/nc/SendToServer;I)V
    .locals 3
    .param p1, "sendToServer"    # Lcom/android/supl/nc/SendToServer;
    .param p2, "sSessionID"    # I

    .line 302
    const/16 v0, 0xe

    new-array v0, v0, [B

    iput-object v0, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "iOffset":I
    iget-object v1, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    iget-object v2, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x4

    invoke-static {v1, v0, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 308
    iget-object v1, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    const/16 v2, 0x119

    invoke-static {v1, v0, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 309
    iget-object v1, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    invoke-static {v1, v0, p2}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 310
    iget-object v1, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 312
    return-void
.end method


# virtual methods
.method public forceCellLocationUpdate()V
    .locals 1

    .line 361
    new-instance v0, Lcom/android/supl/loc/SETLocationManager$2;

    invoke-direct {v0, p0}, Lcom/android/supl/loc/SETLocationManager$2;-><init>(Lcom/android/supl/loc/SETLocationManager;)V

    .line 380
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 381
    return-void
.end method

.method public getSIM_Mnc_MCC(I)Lcom/android/supl/nc/SendToServer;
    .locals 6
    .param p1, "sSessionID"    # I

    .line 266
    new-instance v0, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v0}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 267
    .local v0, "sendToServer":Lcom/android/supl/nc/SendToServer;
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "stSimOperator":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 271
    const/16 v2, 0x12

    :try_start_0
    new-array v2, v2, [B

    iput-object v2, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 275
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    .line 276
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    .line 278
    const/4 v2, 0x0

    .line 279
    .local v2, "iOffset":I
    iget-object v3, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    iget-object v4, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x4

    invoke-static {v3, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    move v2, v3

    .line 281
    iget-object v3, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    const/16 v4, 0x119

    invoke-static {v3, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    move v2, v3

    .line 283
    iget-object v3, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    invoke-static {v3, v2, p1}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v3

    move v2, v3

    .line 284
    iget-object v3, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    move v2, v3

    .line 285
    iget-object v3, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    iget v4, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    invoke-static {v3, v2, v4}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v3

    move v2, v3

    .line 286
    iget-object v3, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    iget v4, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    invoke-static {v3, v2, v4}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v3

    move v2, v3

    .line 287
    const-string v3, "SUPL20_LocMan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim Operator Mnc= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " MCC = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "iOffset":I
    goto :goto_0

    .line 288
    :catch_0
    move-exception v2

    .line 289
    .end local v1    # "stSimOperator":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 291
    .restart local v1    # "stSimOperator":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/supl/loc/SETLocationManager;->updateNoSIM_MNC_MCC(Lcom/android/supl/nc/SendToServer;I)V

    .line 292
    const-string v2, "SUPL20_LocMan"

    const-string v3, "NULL Value received for Sim Operator "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v1    # "stSimOperator":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 295
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/supl/loc/SETLocationManager;->updateNoSIM_MNC_MCC(Lcom/android/supl/nc/SendToServer;I)V

    .line 296
    const-string v1, "SUPL20_LocMan"

    const-string v2, "NULL Value received for TelephonyManager "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_2
    const-string v1, "SUPL20_LocMan"

    const-string v2, " Msg  MSG_PCM_UPDATE_SIM_MCC_MNC"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-object v0
.end method

.method public isGlobalVersion()Z
    .locals 2

    .line 1417
    const-string v0, "zh"

    const-string v1, "ro.product.locale.language"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CN"

    const-string v1, "ro.product.locale.region"

    .line 1418
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1417
    :goto_1
    return v0
.end method

.method public readPrivacyApprovedFlag()V
    .locals 1

    .line 1147
    new-instance v0, Lcom/android/supl/loc/SETLocationManager$3;

    invoke-direct {v0, p0}, Lcom/android/supl/loc/SETLocationManager$3;-><init>(Lcom/android/supl/loc/SETLocationManager;)V

    .line 1193
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1194
    return-void
.end method

.method public registerEmergencyReceiver()V
    .locals 5

    .line 384
    iget-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCallListen:Z

    if-nez v0, :cond_1

    .line 385
    const-string v0, "SUPL20_LocMan"

    const-string v1, "register the Emergency Receiver "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->outGoingCallReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "supl20servicePermission"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCallListen:Z

    .line 388
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mCallListener:Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;

    invoke-direct {v0, p0, v4}, Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;-><init>(Lcom/android/supl/loc/SETLocationManager;Lcom/android/supl/loc/SETLocationManager$1;)V

    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mCallListener:Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;

    .line 391
    :cond_0
    const/16 v0, 0x20

    .line 392
    .local v0, "iEvent":I
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mCallListener:Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 394
    .end local v0    # "iEvent":I
    :cond_1
    return-void
.end method

.method public sendCellStaleLocation()V
    .locals 2

    .line 966
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    if-eqz v0, :cond_0

    .line 967
    new-instance v0, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v0}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 968
    .local v0, "sendToServer":Lcom/android/supl/nc/SendToServer;
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    invoke-virtual {v1}, Lcom/android/supl/loc/StaleLocationInfo;->getStaleLocation()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 969
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    if-eqz v1, :cond_0

    .line 970
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-virtual {v1, v0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 973
    .end local v0    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    :cond_0
    return-void
.end method

.method public sendSETIDInfo(II)V
    .locals 4
    .param p1, "iSetIDType"    # I
    .param p2, "sSessionId"    # I

    .line 977
    iget-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isLocationSwithEnable:Z

    if-eqz v0, :cond_0

    .line 978
    invoke-direct {p0}, Lcom/android/supl/loc/SETLocationManager;->upDatePhoneInfo()V

    .line 981
    :cond_0
    new-instance v0, Lcom/android/supl/loc/SetID;

    invoke-direct {v0, p1}, Lcom/android/supl/loc/SetID;-><init>(I)V

    .line 982
    .local v0, "setID":Lcom/android/supl/loc/SetID;
    new-instance v1, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v1}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 983
    .local v1, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/4 v2, 0x0

    .line 984
    .local v2, "bData":[B
    packed-switch p1, :pswitch_data_0

    .line 1037
    const-string v3, ""

    invoke-virtual {v0, p2, v3}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v2

    .line 1038
    iput-object v2, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    goto :goto_0

    .line 1031
    :pswitch_0
    const-string v3, ""

    invoke-virtual {v0, p2, v3}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v2

    .line 1032
    iput-object v2, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 1034
    goto :goto_0

    .line 1024
    :pswitch_1
    const-string v3, ""

    invoke-virtual {v0, p2, v3}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v2

    .line 1025
    iput-object v2, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 1027
    goto :goto_0

    .line 1017
    :pswitch_2
    iget-object v3, p0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    invoke-virtual {v3}, Lcom/android/supl/loc/NetInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    .line 1018
    .local v3, "stIPAddress":Ljava/lang/String;
    invoke-virtual {v0, p2, v3}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v2

    .line 1019
    iput-object v2, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 1021
    goto :goto_0

    .line 1011
    .end local v3    # "stIPAddress":Ljava/lang/String;
    :pswitch_3
    const-string v3, ""

    invoke-virtual {v0, p2, v3}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v2

    .line 1012
    iput-object v2, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 1014
    goto :goto_0

    .line 1005
    :pswitch_4
    iget-object v3, p0, Lcom/android/supl/loc/SETLocationManager;->m_stIMSI:Ljava/lang/String;

    invoke-virtual {v0, p2, v3}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v2

    .line 1006
    iput-object v2, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 1008
    goto :goto_0

    .line 999
    :pswitch_5
    const-string v3, ""

    invoke-virtual {v0, p2, v3}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v2

    .line 1000
    iput-object v2, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 1002
    goto :goto_0

    .line 993
    :pswitch_6
    const-string v3, ""

    invoke-virtual {v0, p2, v3}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v2

    .line 994
    iput-object v2, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 996
    goto :goto_0

    .line 987
    :pswitch_7
    iget-object v3, p0, Lcom/android/supl/loc/SETLocationManager;->m_stMSISDN:Ljava/lang/String;

    invoke-virtual {v0, p2, v3}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v2

    .line 988
    iput-object v2, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 990
    nop

    .line 1044
    :goto_0
    iget-object v3, p0, Lcom/android/supl/loc/SETLocationManager;->mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    if-eqz v3, :cond_1

    .line 1045
    iget-object v3, p0, Lcom/android/supl/loc/SETLocationManager;->mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-virtual {v3, v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 1047
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCommProcessor(Lcom/android/supl/commprocessor/NDKCommProcessor;)V
    .locals 0
    .param p1, "commProcessor"    # Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 167
    iput-object p1, p0, Lcom/android/supl/loc/SETLocationManager;->mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 169
    return-void
.end method

.method public startLocationIdListener()V
    .locals 5

    .line 173
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mWIFIReceiver:Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

    if-nez v1, :cond_0

    .line 178
    new-instance v1, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;-><init>(Lcom/android/supl/loc/SETLocationManager;)V

    iput-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mWIFIReceiver:Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

    .line 180
    :cond_0
    iget-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isWifiRegister:Z

    if-nez v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mWIFIReceiver:Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

    const-string v3, "supl20servicePermission"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 182
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isWifiRegister:Z

    .line 185
    :cond_1
    invoke-direct {p0}, Lcom/android/supl/loc/SETLocationManager;->isSIMEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    const-string v1, "SUPL20_LocMan"

    const-string v2, " sim is enable on the SET"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0}, Lcom/android/supl/loc/SETLocationManager;->startListener()V

    goto :goto_0

    .line 191
    :cond_2
    invoke-direct {p0}, Lcom/android/supl/loc/SETLocationManager;->startListener()V

    .line 192
    const-string v1, "SUPL20_LocMan"

    const-string v2, " sim is not enabled on the SET"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    return-void
.end method

.method public stopListening()V
    .locals 4

    .line 449
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mWIFIReceiver:Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isWifiRegister:Z

    if-ne v0, v1, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/supl/loc/SETLocationManager;->mWIFIReceiver:Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 451
    iput-boolean v2, p0, Lcom/android/supl/loc/SETLocationManager;->isWifiRegister:Z

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mMyPhoneStateListener:Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isStartListen:Z

    if-ne v0, v1, :cond_1

    .line 454
    iput-boolean v2, p0, Lcom/android/supl/loc/SETLocationManager;->isStartListen:Z

    .line 455
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mMyPhoneStateListener:Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 456
    const-string v0, "SUPL20_LocMan"

    const-string v1, "De-Registered MyPhoneStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_1
    return-void
.end method

.method public unregisterEmergencyReceiver()V
    .locals 3

    .line 398
    iget-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCallListen:Z

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->outGoingCallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "iEvents":I
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mCallListener:Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 402
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCallListen:Z

    .line 403
    const-string v1, "SUPL20_LocMan"

    const-string v2, "unregister the Emergency Receiver "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .end local v0    # "iEvents":I
    :cond_0
    return-void
.end method

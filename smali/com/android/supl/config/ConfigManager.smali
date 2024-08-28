.class public Lcom/android/supl/config/ConfigManager;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/config/ConfigManager$ForceTestValue;
    }
.end annotation


# static fields
.field private static final BEARER_NETWORK_ENABLE:Ljava/lang/String; = "bearer_network_enable"

.field private static final BEARER_NETWORK_PRIORITY:Ljava/lang/String; = "bearer_network_priority"

.field private static final BEARER_NETWORK_SUPPORT:Ljava/lang/String; = "bearer_network_support"

.field public static final CDMA:Ljava/lang/String; = "cdma"

.field private static final CERT:Ljava/lang/String; = "cert"

.field private static final CHECK_GPS:Ljava/lang/String; = "checkgps"

.field private static final CI:Ljava/lang/String; = "ci"

.field private static final CONFIG_START:Ljava/lang/String; = "config_start"

.field private static final FILLTAANDNMR:Ljava/lang/String; = "filltaandnmr"

.field private static final FORCETESTVALUE:Ljava/lang/String; = "forcetestvalue"

.field public static final GSM:Ljava/lang/String; = "gsm"

.field public static final HRPD:Ljava/lang/String; = "hrpd"

.field private static final IPADDRESS:Ljava/lang/String; = "ipaddress"

.field private static final LAC:Ljava/lang/String; = "lac"

.field public static final LTE:Ljava/lang/String; = "lte"

.field private static final MCC:Ljava/lang/String; = "mcc"

.field private static final MNC:Ljava/lang/String; = "mnc"

.field private static final MSISDN:Ljava/lang/String; = "msisdn"

.field private static final NETCONT_PARAMS:Ljava/lang/String; = "netcont_params"

.field private static final NI_UDP_ENABLED:Ljava/lang/String; = "ni_udp_enabled"

.field private static final NMR:Ljava/lang/String; = "nmr"

.field private static final NW_RETRIES:Ljava/lang/String; = "nw_retries"

.field private static final NW_TIMEOUT:Ljava/lang/String; = "nw_timeout"

.field private static final PATH:Ljava/lang/String; = "path"

.field private static final PCM:Ljava/lang/String; = "pcm"

.field private static final PORT:Ljava/lang/String; = "port"

.field private static final PREF_SETID:Ljava/lang/String; = "pref_setid"

.field private static final PWD:Ljava/lang/String; = "pwd"

.field private static final SCM:Ljava/lang/String; = "scm"

.field private static ST_LOG:Ljava/lang/String; = null

.field public static final SUPL_Services_Version:Ljava/lang/String; = "2.13.2.3"

.field private static final SUPL_VERSION:Ljava/lang/String; = "suplver"

.field private static final SWITCH_APN_ENABLE:Ljava/lang/String; = "switch_apn_enable"

.field private static final TA:Ljava/lang/String; = "ta"

.field public static final UMB:Ljava/lang/String; = "umb"

.field private static final VALID:Ljava/lang/String; = "valid"

.field public static final WCDMA:Ljava/lang/String; = "wcdma"

.field public static final WIMAX:Ljava/lang/String; = "wimax"

.field public static final WLAN:Ljava/lang/String; = "wlan"

.field private static sConfigManager:Lcom/android/supl/config/ConfigManager;


# instance fields
.field private iConfigStartVersion:I

.field private iSUPLVersion:I

.field private isBearNetworkFound:Z

.field private isCertFound:Z

.field private isCertVaild:Z

.field private isCheckGPSEnabled:Z

.field private isForceTest:Z

.field private isLocationSwithEnable:Z

.field private isMultipleBearNetworkSupport:Z

.field private isMultipleBearNetworkSupportRoaming:Z

.field private isNiUdpEnabled:Z

.field private isPCMFound:Z

.field private isRequiredTag:Z

.field private isSCMFound:Z

.field private isSwitchApnEnabled:Z

.field private mComparater:Lcom/android/supl/bearer/BearerNetworkComparater;

.field private m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

.field private queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/android/supl/bearer/BearerNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private roamingBearerNetwork:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Boolean;",
            "Ljava/util/PriorityQueue<",
            "Lcom/android/supl/bearer/BearerNetwork;",
            ">;>;"
        }
    .end annotation
.end field

.field private stCurrentBearerNetWork:Ljava/lang/String;

.field private stData:Ljava/lang/String;

.field private stKeyStoreConv:Ljava/lang/String;

.field private stKeyStorePath:Ljava/lang/String;

.field private stPerfSetId:Ljava/lang/String;

.field private stPrivateKeyStore:Ljava/lang/String;

.field private stPrivateKeyStoreConv:Ljava/lang/String;

.field private testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    const/4 v0, 0x0

    sput-object v0, Lcom/android/supl/config/ConfigManager;->sConfigManager:Lcom/android/supl/config/ConfigManager;

    .line 123
    const-string v0, "SUPL20_Config"

    sput-object v0, Lcom/android/supl/config/ConfigManager;->ST_LOG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 195
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    .line 125
    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    .line 127
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/supl/config/ConfigManager;->iSUPLVersion:I

    .line 129
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/supl/config/ConfigManager;->iConfigStartVersion:I

    .line 131
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isCertVaild:Z

    .line 133
    const-string v2, "/system/etc/security"

    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->stKeyStorePath:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->stPerfSetId:Ljava/lang/String;

    .line 137
    const-string v2, "format-convert"

    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->stKeyStoreConv:Ljava/lang/String;

    .line 139
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isForceTest:Z

    .line 141
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isCheckGPSEnabled:Z

    .line 143
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isSwitchApnEnabled:Z

    .line 145
    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->stPrivateKeyStore:Ljava/lang/String;

    .line 147
    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->stPrivateKeyStoreConv:Ljava/lang/String;

    .line 149
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    .line 151
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupportRoaming:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isBearNetworkFound:Z

    .line 175
    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->stCurrentBearerNetWork:Ljava/lang/String;

    .line 177
    new-instance v2, Lcom/android/supl/bearer/BearerNetworkComparater;

    invoke-direct {v2}, Lcom/android/supl/bearer/BearerNetworkComparater;-><init>()V

    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->mComparater:Lcom/android/supl/bearer/BearerNetworkComparater;

    .line 179
    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    .line 181
    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->roamingBearerNetwork:Ljava/util/HashMap;

    .line 186
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isLocationSwithEnable:Z

    .line 230
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    .line 232
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isPCMFound:Z

    .line 234
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isSCMFound:Z

    .line 236
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    .line 238
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isNiUdpEnabled:Z

    .line 240
    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lcom/android/supl/config/ConfigManager;->ST_LOG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    invoke-virtual {v1}, Lcom/android/supl/config/NetworkConnectionParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/android/supl/config/ConfigManager;->setKeyStore_ConvFromConfig()V

    .line 201
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/supl/config/ConfigManager;
    .locals 2

    const-class v0, Lcom/android/supl/config/ConfigManager;

    monitor-enter v0

    .line 189
    :try_start_0
    sget-object v1, Lcom/android/supl/config/ConfigManager;->sConfigManager:Lcom/android/supl/config/ConfigManager;

    if-nez v1, :cond_0

    .line 190
    new-instance v1, Lcom/android/supl/config/ConfigManager;

    invoke-direct {v1}, Lcom/android/supl/config/ConfigManager;-><init>()V

    sput-object v1, Lcom/android/supl/config/ConfigManager;->sConfigManager:Lcom/android/supl/config/ConfigManager;

    .line 192
    :cond_0
    sget-object v1, Lcom/android/supl/config/ConfigManager;->sConfigManager:Lcom/android/supl/config/ConfigManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setKeyStore_ConvFromConfig()V
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/android/supl/config/ConfigManager;->getKeyStorePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->stPrivateKeyStore:Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lcom/android/supl/config/ConfigManager;->getKeyStoreConv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->stPrivateKeyStoreConv:Ljava/lang/String;

    .line 214
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 523
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    if-eqz v0, :cond_0

    .line 524
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    .line 528
    :cond_0
    return-void
.end method

.method public checkGPSEnabled()Z
    .locals 1

    .line 682
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isCheckGPSEnabled:Z

    return v0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 351
    :try_start_0
    const-string v0, "suplver"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 353
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/supl/config/ConfigManager;->iSUPLVersion:I

    .line 354
    sget-object v0, Lcom/android/supl/config/ConfigManager;->ST_LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " supl version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/supl/config/ConfigManager;->iSUPLVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 356
    :cond_0
    iget v0, p0, Lcom/android/supl/config/ConfigManager;->iConfigStartVersion:I

    iget v1, p0, Lcom/android/supl/config/ConfigManager;->iSUPLVersion:I

    if-ne v0, v1, :cond_2a

    .line 357
    const-string v0, "switch_apn_enable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 359
    const-string v0, "true"

    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isSwitchApnEnabled:Z

    goto/16 :goto_2

    .line 361
    :cond_1
    const-string v0, "pref_setid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 363
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->stPerfSetId:Ljava/lang/String;

    .line 364
    sget-object v0, Lcom/android/supl/config/ConfigManager;->ST_LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_setid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/config/ConfigManager;->stPerfSetId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 367
    :cond_2
    const-string v0, "nw_timeout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v0, :cond_2a

    .line 370
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/config/NetworkConnectionParam;->m_iConnectionTimeOut:I

    goto/16 :goto_2

    .line 372
    :cond_3
    const-string v0, "nw_retries"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 373
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v0, :cond_2a

    .line 374
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/config/NetworkConnectionParam;->m_iConnectionRetries:I

    goto/16 :goto_2

    .line 376
    :cond_4
    const-string v0, "pcm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 377
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isPCMFound:Z

    goto/16 :goto_2

    .line 378
    :cond_5
    const-string v0, "scm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 379
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isSCMFound:Z

    goto/16 :goto_2

    .line 380
    :cond_6
    const-string v0, "port"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 381
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isPCMFound:Z

    if-eqz v0, :cond_7

    .line 382
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/config/NetworkConnectionParam;->m_iPCMPort:I

    goto/16 :goto_2

    .line 383
    :cond_7
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isSCMFound:Z

    if-eqz v0, :cond_2a

    .line 384
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/config/NetworkConnectionParam;->m_iSCMPort:I

    goto/16 :goto_2

    .line 386
    :cond_8
    const-string v0, "ipaddress"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 387
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isPCMFound:Z

    if-eqz v0, :cond_9

    .line 388
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 389
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/supl/config/NetworkConnectionParam;->m_stPCMFQDN:Ljava/lang/String;

    goto/16 :goto_2

    .line 391
    :cond_9
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isSCMFound:Z

    if-eqz v0, :cond_2a

    .line 392
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 393
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/supl/config/NetworkConnectionParam;->m_stSCMFQDN:Ljava/lang/String;

    goto/16 :goto_2

    .line 396
    :cond_a
    const-string v0, "ni_udp_enabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    .line 397
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_b

    move v1, v2

    nop

    :cond_b
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isNiUdpEnabled:Z

    .line 398
    sget-object v0, Lcom/android/supl/config/ConfigManager;->ST_LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UDP socket enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isNiUdpEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 399
    :cond_c
    const-string v0, "cert"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 400
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    goto/16 :goto_2

    .line 401
    :cond_d
    const-string v0, "valid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 402
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    if-eqz v0, :cond_2a

    .line 403
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_e

    move v1, v2

    nop

    :cond_e
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isCertVaild:Z

    goto/16 :goto_2

    .line 406
    :cond_f
    const-string v0, "path"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 407
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isCertVaild:Z

    if-eqz v0, :cond_2a

    .line 408
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 409
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->stKeyStorePath:Ljava/lang/String;

    goto/16 :goto_2

    .line 413
    :cond_10
    const-string v0, "pwd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 414
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isCertVaild:Z

    if-eqz v0, :cond_2a

    .line 415
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 416
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->stKeyStoreConv:Ljava/lang/String;

    goto/16 :goto_2

    .line 419
    :cond_11
    const-string v0, "forcetestvalue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 421
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 422
    .local v0, "iValue":I
    if-ne v0, v2, :cond_12

    .line 423
    new-instance v1, Lcom/android/supl/config/ConfigManager$ForceTestValue;

    invoke-direct {v1, p0}, Lcom/android/supl/config/ConfigManager$ForceTestValue;-><init>(Lcom/android/supl/config/ConfigManager;)V

    iput-object v1, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    .line 426
    .end local v0    # "iValue":I
    :cond_12
    goto/16 :goto_2

    :cond_13
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v0, :cond_14

    const-string v0, "mcc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 427
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMcc:I

    goto/16 :goto_2

    .line 429
    :cond_14
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v0, :cond_15

    const-string v0, "mnc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 430
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMnc:I

    goto/16 :goto_2

    .line 432
    :cond_15
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v0, :cond_16

    const-string v0, "lac"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 433
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iLac:I

    goto/16 :goto_2

    .line 435
    :cond_16
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v0, :cond_17

    const-string v0, "ci"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 436
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iCI:I

    goto/16 :goto_2

    .line 438
    :cond_17
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v0, :cond_18

    const-string v0, "msisdn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 439
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMSISDN:J

    goto/16 :goto_2

    .line 441
    :cond_18
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v0, :cond_1a

    const-string v0, "filltaandnmr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 442
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iget-object v3, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_19

    move v1, v2

    nop

    :cond_19
    iput-boolean v1, v0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->isFillTAandNMR:Z

    goto/16 :goto_2

    .line 444
    :cond_1a
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v0, :cond_1b

    const-string v0, "ta"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 445
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iTA:I

    goto/16 :goto_2

    .line 447
    :cond_1b
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v0, :cond_1d

    const-string v0, "nmr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 448
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 449
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "stNMR":[Ljava/lang/String;
    array-length v2, v0

    new-array v2, v2, [I

    .line 451
    .local v2, "aNmr":[I
    const/4 v3, 0x0

    .line 452
    .local v3, "i":I
    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_1c

    aget-object v5, v0, v1

    .line 453
    .local v5, "string":Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    .local v6, "i":I
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v2, v3

    .line 452
    .end local v3    # "i":I
    .end local v5    # "string":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    move v3, v6

    goto :goto_0

    .line 455
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :cond_1c
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iput-object v2, v1, Lcom/android/supl/config/ConfigManager$ForceTestValue;->aNMR:[I

    .line 456
    .end local v0    # "stNMR":[Ljava/lang/String;
    .end local v2    # "aNmr":[I
    .end local v3    # "i":I
    goto/16 :goto_2

    .line 457
    :cond_1d
    const-string v0, "checkgps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1f

    .line 459
    :try_start_1
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1e

    move v1, v2

    nop

    :cond_1e
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isCheckGPSEnabled:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 460
    :catch_0
    move-exception v0

    .line 462
    :goto_1
    goto/16 :goto_2

    .line 463
    :cond_1f
    :try_start_2
    const-string v0, "bearer_network_enable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 464
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_20

    move v1, v2

    nop

    :cond_20
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    .line 465
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v0, :cond_2a

    .line 466
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->roamingBearerNetwork:Ljava/util/HashMap;

    goto/16 :goto_2

    .line 468
    :cond_21
    const-string v0, "bearer_network_support"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    .line 470
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isBearNetworkFound:Z

    goto/16 :goto_2

    .line 471
    :cond_22
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isBearNetworkFound:Z

    if-eqz v0, :cond_2a

    .line 473
    const-string v0, "wlan"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 474
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v0, :cond_2a

    .line 475
    new-instance v0, Lcom/android/supl/bearer/BearerNetwork;

    const-string v1, "wlan"

    iget-object v2, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 476
    .local v0, "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 477
    .end local v0    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    goto/16 :goto_2

    .line 478
    :cond_23
    const-string v0, "lte"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 479
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v0, :cond_2a

    .line 480
    new-instance v0, Lcom/android/supl/bearer/BearerNetwork;

    const-string v1, "lte"

    iget-object v2, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 481
    .restart local v0    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 482
    .end local v0    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    goto/16 :goto_2

    .line 483
    :cond_24
    const-string v0, "gsm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 484
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v0, :cond_2a

    .line 485
    new-instance v0, Lcom/android/supl/bearer/BearerNetwork;

    const-string v1, "gsm"

    iget-object v2, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 486
    .restart local v0    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 487
    .end local v0    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    goto/16 :goto_2

    .line 488
    :cond_25
    const-string v0, "cdma"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 489
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v0, :cond_2a

    .line 490
    new-instance v0, Lcom/android/supl/bearer/BearerNetwork;

    const-string v1, "cdma"

    iget-object v2, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 491
    .restart local v0    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 492
    .end local v0    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    goto/16 :goto_2

    .line 493
    :cond_26
    const-string v0, "wcdma"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 494
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v0, :cond_2a

    .line 495
    new-instance v0, Lcom/android/supl/bearer/BearerNetwork;

    const-string v1, "wcdma"

    iget-object v2, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 496
    .restart local v0    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 497
    .end local v0    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    goto :goto_2

    .line 498
    :cond_27
    const-string v0, "umb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 499
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v0, :cond_2a

    .line 500
    new-instance v0, Lcom/android/supl/bearer/BearerNetwork;

    const-string v1, "umb"

    iget-object v2, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 501
    .restart local v0    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 502
    .end local v0    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    goto :goto_2

    .line 503
    :cond_28
    const-string v0, "wimax"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 504
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v0, :cond_2a

    .line 505
    new-instance v0, Lcom/android/supl/bearer/BearerNetwork;

    const-string v1, "wimax"

    iget-object v2, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 506
    .restart local v0    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 507
    .end local v0    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    goto :goto_2

    .line 508
    :cond_29
    const-string v0, "hrpd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 509
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v0, :cond_2a

    .line 510
    new-instance v0, Lcom/android/supl/bearer/BearerNetwork;

    const-string v1, "hrpd"

    iget-object v2, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 511
    .restart local v0    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 518
    .end local v0    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    :cond_2a
    :goto_2
    goto :goto_3

    .line 516
    :catch_1
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/supl/config/ConfigManager;->ST_LOG:Ljava/lang/String;

    const-string v2, "NumberFormatException error "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_3
    return-void
.end method

.method public getForceTestvalue()[B
    .locals 2

    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, "bTestValue":[B
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    invoke-virtual {v1}, Lcom/android/supl/config/ConfigManager$ForceTestValue;->getForceTest()[B

    move-result-object v0

    .line 624
    :cond_0
    return-object v0
.end method

.method public getKeyStoreConv()Ljava/lang/String;
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stKeyStoreConv:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyStorePath()Ljava/lang/String;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stKeyStorePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationSwitchEnable()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isLocationSwithEnable:Z

    return v0
.end method

.method public getNwRetries()I
    .locals 2

    .line 547
    const/4 v0, 0x5

    .line 548
    .local v0, "iRetries":I
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_iConnectionRetries:I

    .line 551
    :cond_0
    return v0
.end method

.method public getNwTimeout()I
    .locals 2

    .line 531
    const/16 v0, 0x1388

    .line 532
    .local v0, "iTimeout":I
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_iConnectionTimeOut:I

    .line 535
    :cond_0
    return v0
.end method

.method public getPCMIpAdress()Ljava/lang/String;
    .locals 2

    .line 571
    const-string v0, "127.0.0.1"

    .line 572
    .local v0, "stIPAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_stPCMFQDN:Ljava/lang/String;

    .line 575
    :cond_0
    return-object v0
.end method

.method public getPCMPort()I
    .locals 2

    .line 555
    const/16 v0, 0x2329

    .line 556
    .local v0, "iPortNumber":I
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_iPCMPort:I

    .line 559
    :cond_0
    return v0
.end method

.method public getPCMUnixSocketPath()Ljava/lang/String;
    .locals 2

    .line 597
    const-string v0, "/data/gnss/pcm_soc"

    .line 598
    .local v0, "sPCMSocket":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_sPCMUnixSocPath:Ljava/lang/String;

    .line 601
    :cond_0
    return-object v0
.end method

.method public getPrefSetId()Ljava/lang/String;
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stPerfSetId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKeyStore()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stPrivateKeyStore:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKeyStoreConv()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stPrivateKeyStoreConv:Ljava/lang/String;

    return-object v0
.end method

.method public getRoamingBearerNetwork()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Boolean;",
            "Ljava/util/PriorityQueue<",
            "Lcom/android/supl/bearer/BearerNetwork;",
            ">;>;"
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->roamingBearerNetwork:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSCMIpAdress()Ljava/lang/String;
    .locals 2

    .line 579
    const-string v0, "127.0.0.1"

    .line 580
    .local v0, "stIPAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_stSCMFQDN:Ljava/lang/String;

    .line 583
    :cond_0
    return-object v0
.end method

.method public getSCMPort()I
    .locals 2

    .line 563
    const/16 v0, 0x232a

    .line 564
    .local v0, "iPortNumber":I
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_iSCMPort:I

    .line 567
    :cond_0
    return v0
.end method

.method public getSCMUnixSocketPath()Ljava/lang/String;
    .locals 2

    .line 588
    const-string v0, "/data/gnss/scm_soc"

    .line 589
    .local v0, "sSCMSocket":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_sSCMUnixSocPath:Ljava/lang/String;

    .line 592
    :cond_0
    return-object v0
.end method

.method public getSUPLVersion()I
    .locals 1

    .line 605
    iget v0, p0, Lcom/android/supl/config/ConfigManager;->iSUPLVersion:I

    return v0
.end method

.method public isCertVaild()Z
    .locals 1

    .line 611
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isCertVaild:Z

    return v0
.end method

.method public isForceTest()Z
    .locals 1

    .line 675
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isForceTest:Z

    return v0
.end method

.method public isMultipleBearNetworkSupport()Z
    .locals 1

    .line 717
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    return v0
.end method

.method public isNiUdpEnabled()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isNiUdpEnabled:Z

    return v0
.end method

.method public setNiUdpEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 543
    iput-boolean p1, p0, Lcom/android/supl/config/ConfigManager;->isNiUdpEnabled:Z

    .line 544
    return-void
.end method

.method public setSwitchApnEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 696
    iput-boolean p1, p0, Lcom/android/supl/config/ConfigManager;->isSwitchApnEnabled:Z

    .line 697
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 246
    const-string v0, "suplver"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 247
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 248
    :cond_0
    const-string v0, "config_start"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :try_start_0
    const-string v0, ""

    const-string v1, "version"

    invoke-interface {p4, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/supl/config/ConfigManager;->iConfigStartVersion:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    goto :goto_0

    .line 251
    :catch_1
    move-exception v0

    .line 253
    :goto_0
    goto/16 :goto_2

    .line 254
    :cond_1
    iget v0, p0, Lcom/android/supl/config/ConfigManager;->iConfigStartVersion:I

    iget v2, p0, Lcom/android/supl/config/ConfigManager;->iSUPLVersion:I

    if-ne v0, v2, :cond_24

    .line 255
    const-string v0, "switch_apn_enable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 257
    :cond_2
    const-string v0, "pref_setid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 259
    :cond_3
    const-string v0, "netcont_params"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 260
    new-instance v0, Lcom/android/supl/config/NetworkConnectionParam;

    invoke-direct {v0}, Lcom/android/supl/config/NetworkConnectionParam;-><init>()V

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    goto/16 :goto_2

    .line 261
    :cond_4
    const-string v0, "nw_timeout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 262
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 263
    :cond_5
    const-string v0, "nw_retries"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 264
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 265
    :cond_6
    const-string v0, "pcm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 266
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isPCMFound:Z

    goto/16 :goto_2

    .line 267
    :cond_7
    const-string v0, "scm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 268
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isSCMFound:Z

    goto/16 :goto_2

    .line 269
    :cond_8
    const-string v0, "port"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 270
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 271
    :cond_9
    const-string v0, "ipaddress"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 272
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 273
    :cond_a
    const-string v0, "ni_udp_enabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 274
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 275
    :cond_b
    const-string v0, "cert"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 276
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    goto/16 :goto_2

    .line 277
    :cond_c
    const-string v0, "valid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 278
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    if-eqz v0, :cond_24

    .line 279
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 281
    :cond_d
    const-string v0, "path"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 282
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isCertVaild:Z

    if-eqz v0, :cond_24

    .line 283
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 285
    :cond_e
    const-string v0, "pwd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 286
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isCertVaild:Z

    if-eqz v0, :cond_24

    .line 287
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 289
    :cond_f
    const-string v0, "forcetestvalue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 290
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 292
    :cond_10
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v0, :cond_11

    const-string v0, "mcc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 293
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 295
    :cond_11
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v0, :cond_12

    const-string v0, "mnc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 296
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 298
    :cond_12
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v0, :cond_13

    const-string v0, "lac"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 299
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 301
    :cond_13
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v0, :cond_14

    const-string v0, "ci"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 302
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 304
    :cond_14
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v0, :cond_15

    const-string v0, "msisdn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 305
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 307
    :cond_15
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v0, :cond_16

    const-string v0, "filltaandnmr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 308
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 310
    :cond_16
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v0, :cond_17

    const-string v0, "ta"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 311
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 313
    :cond_17
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v0, :cond_18

    const-string v0, "nmr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 314
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 315
    :cond_18
    const-string v0, "checkgps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 316
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 317
    :cond_19
    const-string v0, "bearer_network_enable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 318
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_2

    .line 319
    :cond_1a
    const-string v0, "bearer_network_support"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 320
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isBearNetworkFound:Z

    .line 321
    const-string v0, ""

    const-string v2, "roaming"

    invoke-interface {p4, v0, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1b

    goto :goto_1

    :cond_1b
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupportRoaming:Z

    .line 322
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v0, :cond_24

    .line 323
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/supl/config/ConfigManager;->mComparater:Lcom/android/supl/bearer/BearerNetworkComparater;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    .line 324
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->roamingBearerNetwork:Ljava/util/HashMap;

    iget-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupportRoaming:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 326
    :cond_1c
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isBearNetworkFound:Z

    if-eqz v0, :cond_24

    .line 327
    const-string v0, "wlan"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 328
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto :goto_2

    .line 329
    :cond_1d
    const-string v0, "lte"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 330
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto :goto_2

    .line 331
    :cond_1e
    const-string v0, "gsm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 332
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto :goto_2

    .line 333
    :cond_1f
    const-string v0, "cdma"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 334
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto :goto_2

    .line 335
    :cond_20
    const-string v0, "wcdma"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 336
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto :goto_2

    .line 337
    :cond_21
    const-string v0, "umb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 338
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto :goto_2

    .line 339
    :cond_22
    const-string v0, "wimax"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 340
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto :goto_2

    .line 341
    :cond_23
    const-string v0, "hrpd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 342
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    .line 346
    :cond_24
    :goto_2
    return-void
.end method

.method public switchApnEnabled()Z
    .locals 1

    .line 689
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isSwitchApnEnabled:Z

    return v0
.end method

.method public declared-synchronized updateLocationSwitch(Z)V
    .locals 0
    .param p1, "locationSwitch"    # Z

    monitor-enter p0

    .line 204
    :try_start_0
    iput-boolean p1, p0, Lcom/android/supl/config/ConfigManager;->isLocationSwithEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 203
    .end local p1    # "locationSwitch":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/supl/config/ConfigManager;
    throw p1
.end method

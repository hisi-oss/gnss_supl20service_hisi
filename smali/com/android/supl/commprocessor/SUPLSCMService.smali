.class public Lcom/android/supl/commprocessor/SUPLSCMService;
.super Landroid/app/Service;
.source "SUPLSCMService.java"

# interfaces
.implements Lcom/android/supl/GpsOnOffListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/commprocessor/SUPLSCMService$MyBinder;,
        Lcom/android/supl/commprocessor/SUPLSCMService$SCMConnectionThread;
    }
.end annotation


# static fields
.field private static final HOST_ADDRESS:I = 0x7f000001

.field public static final SERVICE_NAME:Ljava/lang/String;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private isInit:Z

.field private final mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

.field private scmThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/android/supl/commprocessor/SUPLSCMService;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/supl/commprocessor/SUPLSCMService;->SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    new-instance v0, Lcom/android/supl/commprocessor/SUPLSCMService$MyBinder;

    invoke-direct {v0, p0}, Lcom/android/supl/commprocessor/SUPLSCMService$MyBinder;-><init>(Lcom/android/supl/commprocessor/SUPLSCMService;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mBinder:Landroid/os/IBinder;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    .line 34
    iput-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->scmThread:Ljava/lang/Thread;

    .line 35
    iput-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mContext:Landroid/content/Context;

    .line 36
    const-string v0, "SUPL20_SCMService"

    iput-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->LOG_TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->isInit:Z

    .line 43
    iput-object p0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    new-instance v0, Lcom/android/supl/commprocessor/SUPLSCMService$MyBinder;

    invoke-direct {v0, p0}, Lcom/android/supl/commprocessor/SUPLSCMService$MyBinder;-><init>(Lcom/android/supl/commprocessor/SUPLSCMService;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mBinder:Landroid/os/IBinder;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    .line 34
    iput-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->scmThread:Ljava/lang/Thread;

    .line 35
    iput-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mContext:Landroid/content/Context;

    .line 36
    const-string v0, "SUPL20_SCMService"

    iput-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->LOG_TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->isInit:Z

    .line 47
    iput-object p1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p0}, Lcom/android/supl/commprocessor/SUPLSCMService;->onCreate()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/supl/commprocessor/SUPLSCMService;)Lcom/android/supl/commprocessor/ServerCommProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/commprocessor/SUPLSCMService;

    .line 26
    iget-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/supl/commprocessor/SUPLSCMService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/supl/commprocessor/SUPLSCMService;
    .param p1, "x1"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0, p1}, Lcom/android/supl/commprocessor/SUPLSCMService;->supportMultipleBearerNetwork(Landroid/content/Context;)V

    return-void
.end method

.method private checkSupportMultiBearer()V
    .locals 3

    .line 203
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    .line 204
    .local v0, "configManager":Lcom/android/supl/config/ConfigManager;
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mContext:Landroid/content/Context;

    .line 206
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lcom/android/supl/commprocessor/SUPLSCMService$1;

    invoke-direct {v2, p0, v1}, Lcom/android/supl/commprocessor/SUPLSCMService$1;-><init>(Lcom/android/supl/commprocessor/SUPLSCMService;Landroid/content/Context;)V

    .line 216
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 217
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "thread":Ljava/lang/Thread;
    goto :goto_0

    .line 218
    :cond_0
    const-string v1, "SUPL20_SCMService"

    const-string v2, "No Support for MultiBearer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    return-void
.end method

.method private isBearerNetWorkSupported(I[Ljava/lang/String;)Z
    .locals 5
    .param p1, "type"    # I
    .param p2, "stNetWorkType"    # [Ljava/lang/String;

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "isNetworkSupported":Z
    const/4 v1, 0x0

    .line 304
    .local v1, "typeString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 326
    :pswitch_1
    const-string v1, "hrpd"

    .line 327
    const/4 v0, 0x1

    .line 328
    goto :goto_0

    .line 322
    :pswitch_2
    const-string v1, "lte"

    .line 323
    const/4 v0, 0x1

    .line 324
    goto :goto_0

    .line 333
    :pswitch_3
    const-string v1, "wcdma"

    .line 334
    const/4 v0, 0x1

    .line 335
    goto :goto_0

    .line 341
    :pswitch_4
    const-string v1, "wcdma"

    .line 342
    const/4 v0, 0x1

    goto :goto_0

    .line 337
    :pswitch_5
    const-string v1, "wcdma"

    .line 338
    const/4 v0, 0x1

    .line 339
    goto :goto_0

    .line 318
    :pswitch_6
    const-string v1, "cdma"

    .line 319
    const/4 v0, 0x1

    .line 320
    goto :goto_0

    .line 314
    :pswitch_7
    const-string v1, "umb"

    .line 315
    const/4 v0, 0x1

    .line 316
    goto :goto_0

    .line 306
    :pswitch_8
    const-string v1, "gsm"

    .line 307
    const/4 v0, 0x1

    .line 308
    goto :goto_0

    .line 310
    :pswitch_9
    const-string v1, "gsm"

    .line 311
    const/4 v0, 0x1

    .line 312
    goto :goto_0

    .line 330
    :pswitch_a
    const-string v1, "UNKNOWN"

    .line 331
    nop

    .line 346
    :goto_0
    const-string v2, "SUPL20_SCMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    if-eqz p2, :cond_0

    array-length v2, p2

    if-eqz v2, :cond_0

    .line 348
    const/4 v2, 0x0

    aput-object v1, p2, v2

    .line 350
    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private isMobileDataEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "mobileDataEnabled":Z
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 188
    .local v1, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 189
    .local v2, "cmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getMobileDataEnabled"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 190
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 192
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 196
    .end local v2    # "cmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 193
    :catch_0
    move-exception v2

    .line 197
    :goto_0
    return v0
.end method

.method private isRoaming(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 179
    const-string v0, "phone"

    .line 180
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 181
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private start()V
    .locals 12

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->isInit:Z

    .line 84
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    .line 85
    .local v0, "configManager":Lcom/android/supl/config/ConfigManager;
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->getSCMPort()I

    move-result v7

    .line 86
    .local v7, "iSCMport":I
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->getSCMIpAdress()Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, "stSCMIPAddress":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->getNwTimeout()I

    move-result v9

    .line 88
    .local v9, "iTimeOut":I
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->getNwRetries()I

    move-result v10

    .line 90
    .local v10, "iRetries":I
    new-instance v11, Lcom/android/supl/commprocessor/ServerCommProcessor;

    const/4 v2, 0x0

    move-object v1, v11

    move-object v3, v8

    move v4, v7

    move v5, v9

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/supl/commprocessor/ServerCommProcessor;-><init>(ZLjava/lang/String;III)V

    iput-object v11, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    .line 92
    iget-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    iget-object v2, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/supl/commprocessor/ServerCommProcessor;->setContext(Landroid/content/Context;)V

    .line 93
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/supl/commprocessor/SUPLSCMService$SCMConnectionThread;

    invoke-direct {v2, p0}, Lcom/android/supl/commprocessor/SUPLSCMService$SCMConnectionThread;-><init>(Lcom/android/supl/commprocessor/SUPLSCMService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->scmThread:Ljava/lang/Thread;

    .line 94
    iget-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->scmThread:Ljava/lang/Thread;

    const-string v2, "SCM handsake thread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->scmThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 96
    const-string v1, "SUPL20_SCMService"

    const-string v2, "SCM Service Created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method private startSCM()V
    .locals 2

    .line 68
    const-string v0, "SUPL20_SCMService"

    const-string v1, "Send startSCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-boolean v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->isInit:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-virtual {v0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->reInit()V

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/android/supl/commprocessor/SUPLSCMService;->start()V

    .line 75
    :goto_0
    return-void
.end method

.method private supportMultipleBearerNetwork(Landroid/content/Context;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;

    .line 223
    move-object/from16 v1, p1

    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v2

    .line 224
    .local v2, "configManager":Lcom/android/supl/config/ConfigManager;
    const-string v0, "phone"

    .line 225
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 226
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v0, "connectivity"

    .line 227
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 228
    .local v4, "cm":Landroid/net/ConnectivityManager;
    invoke-direct/range {p0 .. p1}, Lcom/android/supl/commprocessor/SUPLSCMService;->isMobileDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 229
    nop

    .line 230
    invoke-virtual {v2}, Lcom/android/supl/config/ConfigManager;->getRoamingBearerNetwork()Ljava/util/HashMap;

    move-result-object v5

    .line 231
    .local v5, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Boolean;Ljava/util/PriorityQueue<Lcom/android/supl/bearer/BearerNetwork;>;>;"
    if-eqz v5, :cond_9

    .line 232
    invoke-direct/range {p0 .. p1}, Lcom/android/supl/commprocessor/SUPLSCMService;->isRoaming(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 233
    .local v6, "isRoaming":Z
    const/4 v0, 0x0

    .line 234
    .local v0, "isConnected":Z
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/PriorityQueue;

    .line 235
    .local v7, "bearerNetworks":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/android/supl/bearer/BearerNetwork;>;"
    if-eqz v7, :cond_9

    .line 236
    invoke-virtual {v7}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v0

    .end local v0    # "isConnected":Z
    .local v9, "isConnected":Z
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/supl/bearer/BearerNetwork;

    .line 238
    .local v10, "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    if-nez v10, :cond_0

    .line 239
    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v11

    .line 242
    .local v11, "iNetworkType":I
    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/String;

    .line 244
    .local v13, "stData":[Ljava/lang/String;
    move-object/from16 v14, p0

    invoke-direct {v14, v11, v13}, Lcom/android/supl/commprocessor/SUPLSCMService;->isBearerNetWorkSupported(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 245
    invoke-virtual {v10}, Lcom/android/supl/bearer/BearerNetwork;->getBearerNetWorkName()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    aget-object v12, v13, v15

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 247
    const-string v0, "enableHIPRI"

    invoke-virtual {v4, v15, v0}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v12

    .line 254
    .local v12, "result":I
    const/4 v0, -0x1

    if-ne v0, v12, :cond_1

    .line 255
    const-string v0, "SUPL20_SCMService"

    const-string v8, "Wrong result of startUsingNetworkFeature, maybe problems"

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void

    .line 259
    :cond_1
    if-nez v12, :cond_2

    .line 260
    const-string v0, "SUPL20_SCMService"

    const-string v8, "No need to perform additional network settings"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 264
    :cond_2
    const/4 v0, 0x0

    .line 267
    .local v0, "checkState":Landroid/net/NetworkInfo$State;
    move-object/from16 v17, v0

    move v0, v15

    .local v0, "counter":I
    .local v17, "checkState":Landroid/net/NetworkInfo$State;
    :goto_1
    const/16 v15, 0x1e

    const/4 v1, 0x5

    if-ge v0, v15, :cond_4

    .line 268
    :try_start_0
    invoke-virtual {v4, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 269
    .end local v17    # "checkState":Landroid/net/NetworkInfo$State;
    .local v15, "checkState":Landroid/net/NetworkInfo$State;
    :try_start_1
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v15, v1}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v1, :cond_3

    .line 270
    nop

    .line 275
    move-object/from16 v18, v2

    goto :goto_3

    .line 271
    :cond_3
    move-object/from16 v18, v2

    const-wide/16 v1, 0x3e8

    .end local v2    # "configManager":Lcom/android/supl/config/ConfigManager;
    .local v18, "configManager":Lcom/android/supl/config/ConfigManager;
    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 267
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v17, v15

    move-object/from16 v2, v18

    move-object/from16 v1, p1

    const/4 v15, 0x0

    goto :goto_1

    .line 273
    .end local v0    # "counter":I
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v18    # "configManager":Lcom/android/supl/config/ConfigManager;
    .restart local v2    # "configManager":Lcom/android/supl/config/ConfigManager;
    :catch_1
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_2

    .end local v15    # "checkState":Landroid/net/NetworkInfo$State;
    .restart local v17    # "checkState":Landroid/net/NetworkInfo$State;
    :catch_2
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v15, v17

    .end local v2    # "configManager":Lcom/android/supl/config/ConfigManager;
    .end local v17    # "checkState":Landroid/net/NetworkInfo$State;
    .restart local v15    # "checkState":Landroid/net/NetworkInfo$State;
    .restart local v18    # "configManager":Lcom/android/supl/config/ConfigManager;
    :goto_2
    goto :goto_3

    .line 275
    .end local v15    # "checkState":Landroid/net/NetworkInfo$State;
    .end local v18    # "configManager":Lcom/android/supl/config/ConfigManager;
    .restart local v2    # "configManager":Lcom/android/supl/config/ConfigManager;
    .restart local v17    # "checkState":Landroid/net/NetworkInfo$State;
    :cond_4
    move-object/from16 v18, v2

    move-object/from16 v15, v17

    .line 276
    .end local v2    # "configManager":Lcom/android/supl/config/ConfigManager;
    .end local v17    # "checkState":Landroid/net/NetworkInfo$State;
    .restart local v15    # "checkState":Landroid/net/NetworkInfo$State;
    .restart local v18    # "configManager":Lcom/android/supl/config/ConfigManager;
    :goto_3
    const/4 v1, 0x5

    invoke-virtual {v4, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 277
    .end local v15    # "checkState":Landroid/net/NetworkInfo$State;
    .local v0, "checkState":Landroid/net/NetworkInfo$State;
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-nez v1, :cond_5

    const/16 v16, 0x1

    goto :goto_4

    :cond_5
    const/16 v16, 0x0

    :goto_4
    move/from16 v1, v16

    .line 279
    .end local v9    # "isConnected":Z
    .local v1, "isConnected":Z
    const-string v2, "SUPL20_SCMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "startUsingNetworkFeature enableHIPRI status"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const v2, 0x7f000001

    const/4 v9, 0x5

    invoke-virtual {v4, v9, v2}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v2

    .line 282
    .local v2, "resultBool":Z
    const-string v9, "SUPL20_SCMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v0

    const-string v0, "requestRouteToHost result: "

    .end local v0    # "checkState":Landroid/net/NetworkInfo$State;
    .local v19, "checkState":Landroid/net/NetworkInfo$State;
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    if-nez v2, :cond_6

    .line 284
    const-string v0, "SUPL20_SCMService"

    const-string v9, "Wrong requestRouteToHost result: expected true, but was false"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_6
    if-eqz v1, :cond_7

    .line 287
    return-void

    .line 293
    .end local v2    # "resultBool":Z
    .end local v10    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    .end local v11    # "iNetworkType":I
    .end local v12    # "result":I
    .end local v13    # "stData":[Ljava/lang/String;
    .end local v19    # "checkState":Landroid/net/NetworkInfo$State;
    :cond_7
    move v9, v1

    goto :goto_5

    .end local v1    # "isConnected":Z
    .end local v18    # "configManager":Lcom/android/supl/config/ConfigManager;
    .local v2, "configManager":Lcom/android/supl/config/ConfigManager;
    .restart local v9    # "isConnected":Z
    :cond_8
    move-object/from16 v18, v2

    .line 236
    .end local v2    # "configManager":Lcom/android/supl/config/ConfigManager;
    .restart local v18    # "configManager":Lcom/android/supl/config/ConfigManager;
    :goto_5
    move-object/from16 v2, v18

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 300
    .end local v5    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Boolean;Ljava/util/PriorityQueue<Lcom/android/supl/bearer/BearerNetwork;>;>;"
    .end local v6    # "isRoaming":Z
    .end local v7    # "bearerNetworks":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/android/supl/bearer/BearerNetwork;>;"
    .end local v9    # "isConnected":Z
    .end local v18    # "configManager":Lcom/android/supl/config/ConfigManager;
    .restart local v2    # "configManager":Lcom/android/supl/config/ConfigManager;
    :cond_9
    move-object/from16 v14, p0

    move-object/from16 v18, v2

    .end local v2    # "configManager":Lcom/android/supl/config/ConfigManager;
    .restart local v18    # "configManager":Lcom/android/supl/config/ConfigManager;
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .line 168
    iget-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 78
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    .line 79
    .local v0, "configManager":Lcom/android/supl/config/ConfigManager;
    const-string v1, "SUPL20_SCMService"

    const-string v2, "SUPL20 service version :2.13.2.3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct {p0}, Lcom/android/supl/commprocessor/SUPLSCMService;->start()V

    .line 81
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-virtual {v0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->stopDatagramServer()V

    .line 358
    iget-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-virtual {v0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->stopListening()V

    .line 359
    iget-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-virtual {v0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->stopNetWork()V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->scmThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 363
    iget-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/supl/SUPLManager;->getInstance(Landroid/content/Context;)Lcom/android/supl/SUPLManager;

    move-result-object v0

    .line 364
    .local v0, "suplManager":Lcom/android/supl/SUPLManager;
    invoke-virtual {v0, p0}, Lcom/android/supl/SUPLManager;->removeGpsListener(Lcom/android/supl/GpsOnOffListener;)Z

    .line 365
    return-void
.end method

.method public onGPSLocationProviderDisabled()V
    .locals 2

    .line 57
    const-string v0, "SUPL20_SCMService"

    const-string v1, " onGPSLocationProviderDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-boolean v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->isInit:Z

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "SUPL20_SCMService"

    const-string v1, "SCM Service is running. Will pause it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-virtual {v0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->pause()V

    goto :goto_0

    .line 62
    :cond_0
    const-string v0, "SUPL20_SCMService"

    const-string v1, "SCM Service not already created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    return-void
.end method

.method public onGPSLocationProviderEnabled()V
    .locals 2

    .line 52
    const-string v0, "SUPL20_SCMService"

    const-string v1, " onGPSLocationProviderEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0}, Lcom/android/supl/commprocessor/SUPLSCMService;->startSCM()V

    .line 54
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .line 163
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 104
    const/4 v0, 0x1

    return v0
.end method

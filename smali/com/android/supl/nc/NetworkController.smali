.class public Lcom/android/supl/nc/NetworkController;
.super Ljava/lang/Object;
.source "NetworkController.java"


# static fields
.field private static final CONNECTION_CLOSE_THREAD:Ljava/lang/String; = "Connection close thread"

.field public static final CONNECTION_TYPE_TLS:I = 0x1

.field public static final CONNECTION_TYPE_TLS_PKS:I = 0x4

.field public static final CONNECTION_TYPE_TLSv1_1:I = 0x2

.field public static final CONNECTION_TYPE_TLSv1_2:I = 0x3

.field public static final CONNECTION_TYPE_UDP:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SUPL20_NC"

.field public static final STOP_WRITE_THREAD:I = 0x65

.field private static keyStore:Ljava/security/KeyStore; = null

.field private static keyStoreList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/KeyStore;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_iBufferSize:I = 0xa


# instance fields
.field private MAX_SUPL_NETWORK_REQUEST_TIMEOUT:I

.field agpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field private cp:Lcom/android/supl/commprocessor/CommandProcessor;

.field private deque:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/supl/nc/SendToServer;",
            ">;"
        }
    .end annotation
.end field

.field eSlpList:[Ljava/lang/String;

.field private iConnType:I

.field private iConnectionCount:I

.field private iFailerStatus:I

.field private iNetWorkID:I

.field private isConnectionError:Z

.field private isSCM:Z

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mNeedEmergencyApn:Z

.field private final mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private m_CilentSocket:Ljava/net/Socket;

.field private m_iConnTimeOut:I

.field private m_iHandShakeTimeOut:I

.field private m_iServerPortNo:I

.field private m_localSocket:Landroid/net/LocalSocket;

.field private m_open_supl_apn_ok:Z

.field private m_stReadThreadName:Ljava/lang/String;

.field private m_stServerIPAddr:Ljava/lang/String;

.field private m_stWriteThreadName:Ljava/lang/String;

.field private networkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

.field public final objLock:Ljava/lang/Object;

.field private readerThread:Lcom/android/supl/nc/ReaderThread;

.field private server_conn_retry:I

.field private server_conn_timeout:I

.field private ssl_Context:Ljavax/net/ssl/SSLContext;

.field private writerThread:Lcom/android/supl/nc/WriterThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 153
    const/4 v0, 0x0

    sput-object v0, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/supl/nc/NetworkController;->keyStoreList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILcom/android/supl/commprocessor/CommandProcessor;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "iSecure"    # I
    .param p2, "m_stServerIPAddr"    # Ljava/lang/String;
    .param p3, "m_iServerPortNo"    # I
    .param p4, "cp"    # Lcom/android/supl/commprocessor/CommandProcessor;
    .param p5, "m_stReadThreadName"    # Ljava/lang/String;
    .param p6, "m_stWriteThreadName"    # Ljava/lang/String;
    .param p7, "isSCM"    # Z

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    .line 113
    const/16 v1, 0x1388

    iput v1, p0, Lcom/android/supl/nc/NetworkController;->server_conn_timeout:I

    .line 115
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/supl/nc/NetworkController;->server_conn_retry:I

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    .line 119
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_localSocket:Landroid/net/LocalSocket;

    .line 121
    const/16 v2, 0x1c6b

    iput v2, p0, Lcom/android/supl/nc/NetworkController;->m_iServerPortNo:I

    .line 123
    const-string v2, "supl.google.com"

    iput-object v2, p0, Lcom/android/supl/nc/NetworkController;->m_stServerIPAddr:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    .line 129
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    .line 131
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->deque:Ljava/util/concurrent/BlockingQueue;

    .line 133
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->ssl_Context:Ljavax/net/ssl/SSLContext;

    .line 135
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    .line 137
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    .line 139
    iput v0, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    .line 143
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_stReadThreadName:Ljava/lang/String;

    .line 145
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_stWriteThreadName:Ljava/lang/String;

    .line 149
    iput-boolean v0, p0, Lcom/android/supl/nc/NetworkController;->isConnectionError:Z

    .line 151
    iput v0, p0, Lcom/android/supl/nc/NetworkController;->iFailerStatus:I

    .line 156
    iput-boolean v0, p0, Lcom/android/supl/nc/NetworkController;->isSCM:Z

    .line 158
    const/16 v2, 0x7d0

    iput v2, p0, Lcom/android/supl/nc/NetworkController;->m_iHandShakeTimeOut:I

    .line 160
    iput v2, p0, Lcom/android/supl/nc/NetworkController;->m_iConnTimeOut:I

    .line 167
    const v2, 0xea60

    iput v2, p0, Lcom/android/supl/nc/NetworkController;->MAX_SUPL_NETWORK_REQUEST_TIMEOUT:I

    .line 168
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 169
    iput-boolean v0, p0, Lcom/android/supl/nc/NetworkController;->m_open_supl_apn_ok:Z

    .line 170
    iput-boolean v0, p0, Lcom/android/supl/nc/NetworkController;->mNeedEmergencyApn:Z

    .line 757
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->objLock:Ljava/lang/Object;

    .line 1032
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->networkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .line 1112
    new-instance v0, Lcom/android/supl/nc/NetworkController$3;

    invoke-direct {v0, p0}, Lcom/android/supl/nc/NetworkController$3;-><init>(Lcom/android/supl/nc/NetworkController;)V

    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1197
    const-string v0, "e-slp.e911.kddi.ne.jp"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->eSlpList:[Ljava/lang/String;

    .line 174
    const-string v0, "SUPL20_NC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iConnType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iput p1, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    .line 176
    iput-object p2, p0, Lcom/android/supl/nc/NetworkController;->m_stServerIPAddr:Ljava/lang/String;

    .line 177
    iput p3, p0, Lcom/android/supl/nc/NetworkController;->m_iServerPortNo:I

    .line 178
    iput-object p4, p0, Lcom/android/supl/nc/NetworkController;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    .line 179
    iput-object p5, p0, Lcom/android/supl/nc/NetworkController;->m_stReadThreadName:Ljava/lang/String;

    .line 180
    iput-object p6, p0, Lcom/android/supl/nc/NetworkController;->m_stWriteThreadName:Ljava/lang/String;

    .line 181
    iput-boolean p7, p0, Lcom/android/supl/nc/NetworkController;->isSCM:Z

    .line 182
    invoke-static {}, Lcom/android/supl/SuplApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->mContext:Landroid/content/Context;

    .line 183
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 184
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->switchApnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0, p2}, Lcom/android/supl/nc/NetworkController;->checkIfNeedEmergencyApn(Ljava/lang/String;)V

    .line 187
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/supl/nc/NetworkController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/nc/NetworkController;

    .line 97
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/nc/NetworkController;

    .line 97
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/ReaderThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/nc/NetworkController;

    .line 97
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/supl/nc/NetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/supl/nc/NetworkController;

    .line 97
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->reconnectAgain()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/supl/nc/NetworkController;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/nc/NetworkController;

    .line 97
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/supl/nc/NetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/nc/NetworkController;

    .line 97
    iget-boolean v0, p0, Lcom/android/supl/nc/NetworkController;->mNeedEmergencyApn:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/supl/nc/NetworkController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/supl/nc/NetworkController;
    .param p1, "x1"    # Z

    .line 97
    iput-boolean p1, p0, Lcom/android/supl/nc/NetworkController;->m_open_supl_apn_ok:Z

    return p1
.end method

.method private checkIfNeedEmergencyApn(Ljava/lang/String;)V
    .locals 6
    .param p1, "serverName"    # Ljava/lang/String;

    .line 1199
    const-string v0, "SUPL20_NC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIfNeedEmergencyApn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->eSlpList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1201
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1202
    const-string v0, "SUPL20_NC"

    const-string v1, "eslp match, need to open emergency apn."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/supl/nc/NetworkController;->mNeedEmergencyApn:Z

    .line 1204
    return-void

    .line 1200
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1207
    :cond_1
    iput-boolean v2, p0, Lcom/android/supl/nc/NetworkController;->mNeedEmergencyApn:Z

    .line 1208
    return-void
.end method

.method private checkSuplApnState()Z
    .locals 5

    .line 1073
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x28

    if-ge v1, v2, :cond_1

    .line 1074
    const-string v2, "SUPL20_NC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSuplApnState wait for open supl apn ok : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-boolean v2, p0, Lcom/android/supl/nc/NetworkController;->m_open_supl_apn_ok:Z

    if-eqz v2, :cond_0

    .line 1077
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->setRouting()V

    .line 1078
    const/4 v0, 0x1

    return v0

    .line 1081
    :cond_0
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    goto :goto_1

    .line 1082
    :catch_0
    move-exception v2

    .line 1083
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1073
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1086
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private createSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    iget v1, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 393
    const-string v1, "SUPL20_NC"

    const-string v2, "Creating TLSv1 Context"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    goto :goto_2

    .line 396
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    if-ne v1, v2, :cond_2

    .line 400
    :try_start_0
    const-string v1, "TLSv1.1"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    move-object v0, v1

    .line 401
    const-string v1, "SUPL20_NC"

    const-string v2, "TLSv1.1 Context created succesfully"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v1

    .line 405
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    if-nez v0, :cond_1

    .line 407
    const-string v2, "SUPL20_NC"

    const-string v3, "TLSv1.1 Context creation failed , so falling back to TLSv1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 410
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    :goto_0
    goto :goto_2

    .line 412
    :cond_2
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    if-ne v1, v2, :cond_4

    .line 416
    :try_start_1
    const-string v1, "TLSv1.2"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    move-object v0, v1

    .line 417
    const-string v1, "SUPL20_NC"

    const-string v2, "TLSv1.2 Context created succesfully"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 419
    :catch_1
    move-exception v1

    .line 421
    .restart local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    if-nez v0, :cond_3

    .line 423
    const-string v2, "SUPL20_NC"

    const-string v3, "TLSv1.2 Context creation failed , so falling back to TLSv1.1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v2, "TLSv1.1"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 426
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_3
    :goto_1
    nop

    .line 433
    :goto_2
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 434
    return-object v0

    .line 430
    :cond_4
    const-string v1, "SUPL20_NC"

    const-string v2, "Valid CONNECTION_TYPE not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-object v0
.end method

.method private createSSLSocket()Ljava/net/Socket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/net/ConnectException;,
            Ljava/io/IOException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 445
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 446
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 452
    .local v1, "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    new-instance v2, Lcom/android/supl/nc/MySSLSocketFactory;

    invoke-direct {v2, v1}, Lcom/android/supl/nc/MySSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 454
    .local v2, "sslSocketFactory":Lcom/android/supl/nc/MySSLSocketFactory;
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    .line 455
    .local v3, "socket":Ljava/net/Socket;
    const/4 v4, 0x0

    .line 456
    .local v4, "remoteAddress":Ljava/net/SocketAddress;
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/supl/config/ConfigManager;->switchApnEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 458
    new-instance v5, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getPortNumber()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v4, v5

    goto :goto_0

    .line 462
    :cond_0
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getPortNumber()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object v4, v5

    .line 465
    :goto_0
    iget v5, p0, Lcom/android/supl/nc/NetworkController;->m_iConnTimeOut:I

    invoke-virtual {v3, v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 466
    nop

    .line 467
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getPortNumber()I

    move-result v6

    const/4 v7, 0x1

    .line 466
    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/android/supl/nc/MySSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v5

    return-object v5

    .line 448
    .end local v1    # "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v2    # "sslSocketFactory":Lcom/android/supl/nc/MySSLSocketFactory;
    .end local v3    # "socket":Ljava/net/Socket;
    .end local v4    # "remoteAddress":Ljava/net/SocketAddress;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The SSLSocket connection failed with the TLS connection type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUPL20_NC"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v1, Ljava/net/ConnectException;

    invoke-direct {v1}, Ljava/net/ConnectException;-><init>()V

    throw v1
.end method

.method private getKeyStore()Ljava/security/KeyStore;
    .locals 10

    .line 245
    sget-object v0, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;

    return-object v0

    .line 249
    :cond_0
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    .line 250
    .local v0, "configManager":Lcom/android/supl/config/ConfigManager;
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->getPrivateKeyStore()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "stKeyStorePath":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->getPrivateKeyStoreConv()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "stKeyStoreConv":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 254
    const-string v4, "SUPL20_NC"

    const-string v5, "stKeyStorePath == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-object v3

    .line 258
    :cond_1
    if-nez v2, :cond_2

    .line 259
    const-string v4, "SUPL20_NC"

    const-string v5, "stKeyStoreConv == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-object v3

    .line 263
    :cond_2
    const/4 v4, 0x0

    .line 264
    .local v4, "fis":Ljava/io/FileInputStream;
    move-object v5, v3

    .line 266
    .local v5, "ks":Ljava/security/KeyStore;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 267
    const-string v6, "BKS"

    const-string v7, "BC"

    invoke-static {v6, v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    move-object v5, v6

    .line 268
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 269
    sput-object v5, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    nop

    .line 276
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    const-string v7, "SUPL20_NC"

    const-string v8, "Error closing keystore file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v3, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 275
    :catchall_0
    move-exception v6

    goto :goto_2

    .line 272
    :catch_1
    move-exception v6

    .line 273
    .local v6, "e":Ljava/security/GeneralSecurityException;
    :try_start_2
    const-string v7, "SUPL20_NC"

    const-string v8, "Error Loading keystore: "

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    .end local v6    # "e":Ljava/security/GeneralSecurityException;
    if-eqz v4, :cond_3

    .line 276
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 270
    :catch_2
    move-exception v6

    .line 271
    .local v6, "e":Ljava/io/IOException;
    :try_start_4
    const-string v7, "SUPL20_NC"

    const-string v8, "Error Loading keystore: "

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 275
    .end local v6    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_3

    .line 276
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 281
    :cond_3
    :goto_1
    sget-object v3, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;

    if-eqz v3, :cond_4

    .line 282
    const-string v3, "SUPL20_NC"

    const-string v6, "Successfully loaded Keystore"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_4
    sget-object v3, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;

    return-object v3

    .line 275
    :goto_2
    if-eqz v4, :cond_5

    .line 276
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 277
    goto :goto_3

    :catch_3
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    const-string v8, "SUPL20_NC"

    const-string v9, "Error closing keystore file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v3, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;

    .end local v7    # "e":Ljava/io/IOException;
    :cond_5
    :goto_3
    throw v6
.end method

.method private static declared-synchronized getKeyStoreAll()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/KeyStore;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/supl/nc/NetworkController;

    monitor-enter v0

    .line 324
    :try_start_0
    sget-object v1, Lcom/android/supl/nc/NetworkController;->keyStoreList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    sget-object v1, Lcom/android/supl/nc/NetworkController;->keyStoreList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 328
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v1

    .line 329
    .local v1, "configManager":Lcom/android/supl/config/ConfigManager;
    invoke-virtual {v1}, Lcom/android/supl/config/ConfigManager;->getPrivateKeyStore()Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "stKeyStorePath":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/supl/config/ConfigManager;->getPrivateKeyStoreConv()Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "stKeyStoreConv":Ljava/lang/String;
    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 333
    const-string v5, "SUPL20_NC"

    const-string v6, "KeyStore is empty!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    monitor-exit v0

    return-object v4

    .line 337
    :cond_1
    :try_start_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    .local v5, "dir":Ljava/io/File;
    nop

    .line 342
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 343
    const-string v6, "SUPL20_NC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "is not exist!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    monitor-exit v0

    return-object v4

    .line 346
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_3

    .line 347
    const-string v6, "SUPL20_NC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "is not directory!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 348
    monitor-exit v0

    return-object v4

    .line 350
    :cond_3
    :try_start_4
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, "fileNames":[Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_6

    aget-object v8, v4, v7

    .line 352
    .local v8, "name":Ljava/lang/String;
    const-string v9, ".bks"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "gnss_hiskey_hisi.bks"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 353
    goto :goto_1

    .line 356
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/android/supl/nc/NetworkController;->getKeyStoreByPath(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v9

    .line 357
    .local v9, "ks":Ljava/security/KeyStore;
    if-eqz v9, :cond_5

    .line 358
    sget-object v10, Lcom/android/supl/nc/NetworkController;->keyStoreList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "ks":Ljava/security/KeyStore;
    :cond_5
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 362
    :cond_6
    sget-object v6, Lcom/android/supl/nc/NetworkController;->keyStoreList:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object v6

    .line 323
    .end local v1    # "configManager":Lcom/android/supl/config/ConfigManager;
    .end local v2    # "stKeyStorePath":Ljava/lang/String;
    .end local v3    # "stKeyStoreConv":Ljava/lang/String;
    .end local v4    # "fileNames":[Ljava/lang/String;
    .end local v5    # "dir":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getKeyStoreByPath(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 6
    .param p0, "stKeyStorePath"    # Ljava/lang/String;
    .param p1, "stKeyStoreConv"    # Ljava/lang/String;

    .line 289
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 290
    const-string v1, "SUPL20_NC"

    const-string v2, "stKeyStorePath == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-object v0

    .line 294
    :cond_0
    if-nez p1, :cond_1

    .line 295
    const-string v1, "SUPL20_NC"

    const-string v2, "stKeyStoreConv == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-object v0

    .line 299
    :cond_1
    const/4 v1, 0x0

    .line 300
    .local v1, "fis":Ljava/io/FileInputStream;
    nop

    .line 302
    .local v0, "ks":Ljava/security/KeyStore;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 303
    const-string v2, "BKS"

    const-string v3, "BC"

    invoke-static {v2, v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    move-object v0, v2

    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    nop

    .line 311
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 312
    :goto_0
    goto :goto_1

    .line 310
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 307
    :catch_0
    move-exception v2

    .line 308
    .local v2, "e":Ljava/security/GeneralSecurityException;
    :try_start_2
    const-string v3, "SUPL20_NC"

    const-string v4, "Error Loading keystore: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    if-eqz v1, :cond_2

    .line 311
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 305
    :catch_1
    move-exception v2

    .line 306
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    const-string v3, "SUPL20_NC"

    const-string v4, "Error Loading keystore: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 310
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_2

    .line 311
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 312
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    const-string v3, "SUPL20_NC"

    const-string v4, "Error closing keystore file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 316
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 317
    const-string v2, "SUPL20_NC"

    const-string v3, "Successfully loaded Keystore"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_3
    return-object v0

    .line 310
    :goto_2
    if-eqz v1, :cond_4

    .line 311
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 312
    goto :goto_3

    :catch_3
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    const-string v4, "SUPL20_NC"

    const-string v5, "Error closing keystore file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    throw v2
.end method

.method private getLocalSocket(Ljava/lang/String;)Landroid/net/LocalSocket;
    .locals 5
    .param p1, "unixsocketpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v1, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, p1, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 474
    .local v0, "address":Landroid/net/LocalSocketAddress;
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    .line 477
    .local v1, "unixsoc":Landroid/net/LocalSocket;
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    goto :goto_0

    .line 479
    :catch_0
    move-exception v2

    .line 481
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "SUPL20_NC"

    const-string v4, "Exception caught while connecting the unix socket"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-object v1
.end method

.method private getPortNumber()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->m_iServerPortNo:I

    return v0
.end method

.method private getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->ssl_Context:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    .line 439
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->createSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->ssl_Context:Ljavax/net/ssl/SSLContext;

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->ssl_Context:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method private getSocket()Ljava/net/Socket;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/net/ConnectException;,
            Ljava/io/IOException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 487
    const/4 v0, 0x0

    .line 489
    .local v0, "socket":Ljava/net/Socket;
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/config/ConfigManager;->switchApnEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 490
    iget-boolean v1, p0, Lcom/android/supl/nc/NetworkController;->mNeedEmergencyApn:Z

    if-nez v1, :cond_0

    .line 492
    :try_start_0
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 493
    const-string v1, "SUPL20_NC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DNS query success: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v1

    .line 495
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v3, "SUPL20_NC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DNS query fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 496
    iput-object v2, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 497
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :goto_0
    goto :goto_1

    .line 499
    :cond_0
    iput-object v2, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 503
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->prepareNetwork()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 508
    iget v1, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    if-nez v1, :cond_3

    .line 509
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    move-object v0, v1

    .line 510
    const/4 v1, 0x0

    .line 511
    .local v1, "remoteAddress":Ljava/net/SocketAddress;
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/supl/config/ConfigManager;->switchApnEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 513
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getPortNumber()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v1, v2

    goto :goto_2

    .line 517
    :cond_2
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getPortNumber()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object v1, v2

    .line 519
    :goto_2
    iget v2, p0, Lcom/android/supl/nc/NetworkController;->server_conn_timeout:I

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 520
    .end local v1    # "remoteAddress":Ljava/net/SocketAddress;
    goto/16 :goto_6

    .line 521
    :cond_3
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->createSSLSocket()Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 522
    .local v1, "sslSocket":Ljavax/net/ssl/SSLSocket;
    if-nez v1, :cond_4

    .line 524
    return-object v2

    .line 528
    :cond_4
    const-string v2, "SUPL20_NC"

    const-string v3, "NO_FALLBACK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, "suites":[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    array-length v5, v2

    if-le v5, v4, :cond_7

    .line 532
    array-length v5, v2

    sub-int/2addr v5, v4

    new-array v5, v5, [Ljava/lang/String;

    .line 533
    .local v5, "newSuites":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 534
    .local v6, "index":I
    array-length v7, v2

    move v8, v6

    move v6, v3

    .end local v6    # "index":I
    .local v8, "index":I
    :goto_3
    if-ge v6, v7, :cond_6

    aget-object v9, v2, v6

    .line 535
    .local v9, "suite":Ljava/lang/String;
    const-string v10, "TLS_FALLBACK_SCSV"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 536
    add-int/lit8 v10, v8, 0x1

    .local v10, "index":I
    aput-object v9, v5, v8

    .line 534
    .end local v8    # "index":I
    .end local v9    # "suite":Ljava/lang/String;
    move v8, v10

    .end local v10    # "index":I
    .restart local v8    # "index":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 539
    :cond_6
    invoke-virtual {v1, v5}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 542
    .end local v5    # "newSuites":[Ljava/lang/String;
    .end local v8    # "index":I
    :cond_7
    iget v5, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    if-ne v4, v5, :cond_8

    .line 543
    const-string v5, "SUPL20_NC"

    const-string v6, "Enabling TLSv1"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v5, "TLSv1"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_4

    .line 545
    :cond_8
    const/4 v5, 0x2

    iget v6, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    if-ne v5, v6, :cond_9

    .line 546
    const-string v5, "SUPL20_NC"

    const-string v6, "Enabling TLSv1 and TLSv1.1"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v5, "TLSv1.1"

    const-string v6, "TLSv1"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_4

    .line 548
    :cond_9
    const/4 v5, 0x3

    iget v6, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    if-ne v5, v6, :cond_a

    .line 549
    const-string v5, "SUPL20_NC"

    const-string v6, "Enabling TLSv1.2 and TLSv1.1"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v5, "TLSv1.2"

    const-string v6, "TLSv1.1"

    const-string v7, "TLSv1"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 555
    :cond_a
    :goto_4
    invoke-virtual {v1, v4}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 556
    iget v4, p0, Lcom/android/supl/nc/NetworkController;->m_iHandShakeTimeOut:I

    invoke-virtual {v1, v4}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 557
    new-instance v4, Lcom/android/supl/nc/NetworkController$1;

    invoke-direct {v4, p0}, Lcom/android/supl/nc/NetworkController$1;-><init>(Lcom/android/supl/nc/NetworkController;)V

    invoke-virtual {v1, v4}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 563
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 564
    invoke-virtual {v1, v3}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 565
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 566
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    const-string v4, "SUPL20_NC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The SSL Protocol used is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v4

    .line 568
    .local v4, "secured":Z
    if-eqz v4, :cond_b

    .line 569
    const-string v5, "SUPL20_NC"

    const-string v6, "Connection Secured."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 572
    :cond_b
    const-string v5, "SUPL20_NC"

    const-string v6, "Connection Not Secured."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :goto_5
    move-object v0, v1

    .line 577
    .end local v1    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local v2    # "suites":[Ljava/lang/String;
    .end local v3    # "session":Ljavax/net/ssl/SSLSession;
    .end local v4    # "secured":Z
    :goto_6
    return-object v0

    .line 504
    :cond_c
    const-string v1, "SUPL20_NC"

    const-string v2, "Network unavailable, throw exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v1, Ljava/net/ConnectException;

    const-string v2, "failed to switch to supl apn!"

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initReadThread()V
    .locals 3

    .line 968
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    if-nez v0, :cond_0

    .line 970
    new-instance v0, Lcom/android/supl/nc/ReaderThread;

    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    iget v2, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    invoke-direct {v0, v1, v2}, Lcom/android/supl/nc/ReaderThread;-><init>(Lcom/android/supl/commprocessor/CommandProcessor;I)V

    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    .line 971
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    invoke-virtual {v0, p0}, Lcom/android/supl/nc/ReaderThread;->setNetworkController(Lcom/android/supl/nc/NetworkController;)V

    .line 972
    const-string v0, "SUPL20_NC"

    const-string v1, "readerThread initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 974
    :cond_0
    const-string v0, "SUPL20_NC"

    const-string v1, "readerThread already initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 979
    const-string v0, "SUPL20_NC"

    const-string v1, "don\'t need reader thread, it replace by hisupl_adapter socket"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 983
    :cond_1
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->m_stReadThreadName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/supl/nc/ReaderThread;->setClientSocket(Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 987
    :catch_0
    move-exception v0

    .line 988
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "SUPL20_NC"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    goto :goto_2

    .line 985
    :catch_1
    move-exception v0

    .line 986
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "SUPL20_NC"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 989
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_1
    nop

    .line 990
    :goto_2
    return-void
.end method

.method private initWriteThread()V
    .locals 3

    .line 994
    :try_start_0
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->deque:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_0

    .line 995
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->deque:Ljava/util/concurrent/BlockingQueue;

    .line 996
    const-string v0, "SUPL20_NC"

    const-string v1, "deque initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 998
    :cond_0
    const-string v0, "SUPL20_NC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deque has packet size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->deque:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :goto_0
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    if-nez v0, :cond_1

    .line 1002
    const-string v0, "SUPL20_NC"

    const-string v1, "WriterThread initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    new-instance v0, Lcom/android/supl/nc/WriterThread;

    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->deque:Ljava/util/concurrent/BlockingQueue;

    iget v2, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    invoke-direct {v0, v1, p0, v2}, Lcom/android/supl/nc/WriterThread;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/supl/nc/NetworkController;I)V

    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    goto :goto_1

    .line 1006
    :cond_1
    const-string v0, "SUPL20_NC"

    const-string v1, "WriterThread already initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1009
    :goto_1
    :try_start_1
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1011
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    invoke-virtual {v0}, Lcom/android/supl/nc/WriterThread;->startThread()V

    goto :goto_2

    .line 1015
    :cond_2
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->m_stWriteThreadName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/supl/nc/WriterThread;->setClientSocket(Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    .local v0, "ex":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v1, "SUPL20_NC"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    goto :goto_3

    .line 1017
    :catch_1
    move-exception v0

    .line 1018
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "SUPL20_NC"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1021
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_2
    nop

    .line 1025
    :goto_3
    goto :goto_4

    .line 1023
    :catch_2
    move-exception v0

    .line 1024
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "SUPL20_NC"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1026
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method public static final isThreadRunning(Ljava/lang/String;)Z
    .locals 6
    .param p0, "stThreadName"    # Ljava/lang/String;

    .line 874
    const/4 v0, 0x0

    .line 875
    .local v0, "isThreadRuning":Z
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 878
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 879
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 880
    .local v1, "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Thread;>;"
    if-eqz v1, :cond_2

    .line 881
    nop

    .line 882
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Thread;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Thread;

    .line 883
    .local v2, "runningThreadArray":[Ljava/lang/Thread;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 884
    aget-object v4, v2, v3

    .line 885
    .local v4, "runningThread":Ljava/lang/Thread;
    if-eqz v4, :cond_1

    .line 886
    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    .line 887
    .local v5, "stRunningThreadName":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 888
    if-eqz v0, :cond_1

    .line 889
    goto :goto_1

    .line 883
    .end local v4    # "runningThread":Ljava/lang/Thread;
    .end local v5    # "stRunningThreadName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 897
    .end local v1    # "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Thread;>;"
    .end local v2    # "runningThreadArray":[Ljava/lang/Thread;
    .end local v3    # "i":I
    :cond_2
    :goto_1
    return v0

    .line 876
    :cond_3
    :goto_2
    return v0
.end method

.method private prepareNetwork()Z
    .locals 5

    .line 1158
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->switchApnEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1161
    return v1

    .line 1164
    :cond_0
    const-string v0, "SUPL20_NC"

    const-string v2, "request network"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1166
    .local v0, "requestBuilder":Landroid/net/NetworkRequest$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1167
    iget-boolean v3, p0, Lcom/android/supl/nc/NetworkController;->mNeedEmergencyApn:Z

    if-eqz v3, :cond_1

    .line 1168
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    goto :goto_0

    .line 1170
    :cond_1
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1172
    :goto_0
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 1173
    .local v1, "request":Landroid/net/NetworkRequest;
    iput-boolean v2, p0, Lcom/android/supl/nc/NetworkController;->m_open_supl_apn_ok:Z

    .line 1174
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget v4, p0, Lcom/android/supl/nc/NetworkController;->MAX_SUPL_NETWORK_REQUEST_TIMEOUT:I

    invoke-virtual {v2, v1, v3, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 1178
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->checkSuplApnState()Z

    move-result v2

    return v2
.end method

.method private reconnectAgain()V
    .locals 2

    .line 901
    const-string v0, "SUPL20_NC"

    const-string v1, "Trying to connect again"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/supl/nc/NetworkController;->connect([IZ)Z

    .line 903
    return-void
.end method

.method private releaseNetwork()V
    .locals 3

    .line 1183
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->switchApnEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1186
    return-void

    .line 1189
    :cond_0
    const-string v0, "SUPL20_NC"

    const-string v1, "unregister network callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :try_start_0
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1194
    goto :goto_0

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "SUPL20_NC"

    const-string v2, "Invalid NetworkCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 1196
    return-void
.end method

.method private setRouting()V
    .locals 4

    .line 1089
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 1091
    :try_start_0
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 1092
    const-string v0, "SUPL20_NC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNS re-query success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    goto :goto_0

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v1, "SUPL20_NC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DNS re-query fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1095
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 1096
    return-void

    .line 1099
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 1100
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/android/supl/nc/NetworkController;->mNeedEmergencyApn:Z

    if-eqz v1, :cond_1

    .line 1101
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->mConnMgr:Landroid/net/ConnectivityManager;

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    goto :goto_1

    .line 1103
    :cond_1
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    .line 1105
    :goto_1
    if-nez v0, :cond_2

    .line 1106
    const-string v1, "SUPL20_NC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error requesting route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1108
    :cond_2
    const-string v1, "SUPL20_NC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully requested route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :goto_2
    return-void
.end method

.method private startCloseConnectionThread(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 866
    const-string v0, "Connection close thread"

    invoke-static {v0}, Lcom/android/supl/nc/NetworkController;->isThreadRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    return-void

    .line 869
    :cond_0
    const-string v0, "Connection close thread"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 870
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 871
    return-void
.end method


# virtual methods
.method public CloseReadWriteStreams()V
    .locals 2

    .line 1054
    const-string v0, "SUPL20_NC"

    const-string v1, "Start CloseReadWriteStreams"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    invoke-virtual {v0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    .line 1056
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    invoke-virtual {v0}, Lcom/android/supl/nc/WriterThread;->closeWrite()V

    .line 1057
    const-string v0, "SUPL20_NC"

    const-string v1, "End CloseReadWriteStreams"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    return-void
.end method

.method public IsSCM()Z
    .locals 1

    .line 1062
    iget-boolean v0, p0, Lcom/android/supl/nc/NetworkController;->isSCM:Z

    return v0
.end method

.method public SetTimeOuts(II)V
    .locals 0
    .param p1, "iHandShakeTimeOut"    # I
    .param p2, "iConnTimeOut"    # I

    .line 1067
    iput p1, p0, Lcom/android/supl/nc/NetworkController;->m_iHandShakeTimeOut:I

    .line 1068
    iput p2, p0, Lcom/android/supl/nc/NetworkController;->m_iConnTimeOut:I

    .line 1069
    return-void
.end method

.method public addPacket(Lcom/android/supl/nc/SendToServer;)V
    .locals 4
    .param p1, "sendToServer"    # Lcom/android/supl/nc/SendToServer;

    .line 727
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    invoke-virtual {v0, p1}, Lcom/android/supl/nc/WriterThread;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    goto :goto_1

    .line 731
    :cond_0
    const/4 v0, 0x0

    .line 733
    .local v0, "try_times":I
    :cond_1
    const-string v1, "SUPL20_NC"

    const-string v2, "writerThread is null, wait and re-try"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    goto :goto_0

    .line 739
    :catch_0
    move-exception v1

    .line 743
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 745
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    if-eqz v1, :cond_2

    .line 746
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    invoke-virtual {v1, p1}, Lcom/android/supl/nc/WriterThread;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 747
    const-string v1, "SUPL20_NC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPacket try times "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_2
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    if-nez v1, :cond_3

    const/16 v1, 0x78

    if-lt v0, v1, :cond_1

    .line 751
    :cond_3
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    if-nez v1, :cond_4

    .line 752
    const-string v1, "SUPL20_NC"

    const-string v2, "writerThread is still null, donot addPacket!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    .end local v0    # "try_times":I
    :cond_4
    :goto_1
    return-void
.end method

.method public closeConnection()V
    .locals 3

    .line 907
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 951
    :try_start_0
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 952
    const-string v0, "SUPL20_NC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_CilentSocket is closed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const-string v0, "SUPL20_NC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket isBound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isBound()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const-string v0, "SUPL20_NC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket isClosed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string v0, "SUPL20_NC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket isInputShutdown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const-string v0, "SUPL20_NC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket isOutputShutdown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const-string v0, "SUPL20_NC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket isConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->releaseNetwork()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    goto :goto_0

    .line 960
    :catch_0
    move-exception v0

    .line 962
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 966
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized connect([IZ)Z
    .locals 10
    .param p1, "failStatus"    # [I
    .param p2, "isReConnection"    # Z

    monitor-enter p0

    .line 582
    const/4 v0, 0x0

    .line 583
    .local v0, "iNumberOfRetryAttmpt":I
    const/4 v1, 0x0

    .line 584
    .local v1, "isConnect":Z
    const/4 v2, -0x1

    if-nez p2, :cond_1

    .line 585
    :try_start_0
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->isConnected()Z

    move-result v3

    move v1, v3

    .line 586
    if-eqz v1, :cond_2

    .line 587
    const-string v3, "SUPL20_NC"

    const-string v4, "Socket already in connected state so returning"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget v3, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    if-ne v3, v2, :cond_0

    .line 589
    const-string v2, "SUPL20_NC"

    const-string v3, "pcm/scm have already connect by hidl"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->initRead_WriteThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    :cond_0
    monitor-exit p0

    return v1

    .line 581
    .end local v0    # "iNumberOfRetryAttmpt":I
    .end local v1    # "isConnect":Z
    .end local p1    # "failStatus":[I
    .end local p2    # "isReConnection":Z
    :catchall_0
    move-exception p1

    goto/16 :goto_5

    .line 595
    .restart local v0    # "iNumberOfRetryAttmpt":I
    .restart local v1    # "isConnect":Z
    .restart local p1    # "failStatus":[I
    .restart local p2    # "isReConnection":Z
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Lcom/android/supl/nc/NetworkController;->m_localSocket:Landroid/net/LocalSocket;

    .line 598
    :cond_2
    iget-boolean v3, p0, Lcom/android/supl/nc/NetworkController;->isConnectionError:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 599
    if-eqz p1, :cond_3

    .line 600
    const-string v2, "SUPL20_NC"

    const-string v3, "Connect: IsConnectionError set to True"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget v2, p0, Lcom/android/supl/nc/NetworkController;->iFailerStatus:I

    aput v2, p1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    :cond_3
    monitor-exit p0

    return v1

    .line 609
    :cond_4
    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 610
    const/4 v5, 0x4

    :try_start_2
    iget v6, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    if-ne v6, v2, :cond_5

    .line 612
    const-string v6, "SUPL20_NC"

    const-string v7, "Do nothing, pcm/scm have already connect by hidl"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 616
    :cond_5
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getSocket()Ljava/net/Socket;

    move-result-object v6

    iput-object v6, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    .line 617
    iget-object v6, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    if-nez v6, :cond_6

    .line 619
    goto/16 :goto_4

    .line 623
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->initRead_WriteThread()V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 671
    :cond_7
    :goto_1
    goto/16 :goto_2

    .line 665
    :catch_0
    move-exception v5

    .line 666
    .local v5, "e":Ljava/security/GeneralSecurityException;
    :try_start_3
    const-string v6, "SUPL20_NC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error on Connection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    if-eqz p1, :cond_8

    .line 669
    const/4 v6, 0x2

    aput v6, p1, v4

    .end local v5    # "e":Ljava/security/GeneralSecurityException;
    goto/16 :goto_2

    .line 658
    :catch_1
    move-exception v5

    .line 659
    .local v5, "e":Ljava/security/KeyManagementException;
    const-string v6, "SUPL20_NC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error on Connection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    if-eqz p1, :cond_7

    .line 662
    const/4 v6, 0x3

    aput v6, p1, v4

    .end local v5    # "e":Ljava/security/KeyManagementException;
    goto :goto_1

    .line 652
    :catch_2
    move-exception v5

    .line 653
    .local v5, "ex":Ljava/io/IOException;
    const-string v6, "SUPL20_NC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error on Connection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    if-eqz p1, :cond_7

    .line 656
    aput v3, p1, v4

    .end local v5    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 646
    :catch_3
    move-exception v5

    .line 647
    .local v5, "ex":Ljava/net/ConnectException;
    const-string v6, "SUPL20_NC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error on Connection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    if-eqz p1, :cond_7

    .line 650
    aput v3, p1, v4

    .end local v5    # "ex":Ljava/net/ConnectException;
    goto/16 :goto_1

    .line 640
    :catch_4
    move-exception v6

    .line 641
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v7, "SUPL20_NC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error on Connection "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    if-eqz p1, :cond_7

    .line 644
    aput v5, p1, v4

    .end local v6    # "e":Ljava/security/NoSuchAlgorithmException;
    goto/16 :goto_1

    .line 632
    :catch_5
    move-exception v6

    .line 633
    .local v6, "e":Ljavax/net/ssl/SSLException;
    const-string v7, "SUPL20_NC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error on Connection "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const-string v7, "SUPL20_NC"

    const-string v8, "Inside SSLException "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    if-eqz p1, :cond_7

    .line 637
    aput v5, p1, v4

    .end local v6    # "e":Ljavax/net/ssl/SSLException;
    goto/16 :goto_1

    .line 625
    :catch_6
    move-exception v5

    .line 626
    .local v5, "ex":Ljava/net/UnknownHostException;
    const-string v6, "SUPL20_NC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error on Connection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    if-eqz p1, :cond_7

    .line 629
    aput v4, p1, v4

    .end local v5    # "ex":Ljava/net/UnknownHostException;
    goto/16 :goto_1

    .line 673
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->isConnected()Z

    move-result v5

    move v1, v5

    .line 675
    if-nez v1, :cond_a

    .line 676
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->releaseNetwork()V

    .line 677
    iget v5, p0, Lcom/android/supl/nc/NetworkController;->server_conn_retry:I

    if-lt v0, v5, :cond_9

    .line 679
    const-string v2, "SUPL20_NC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 680
    goto :goto_4

    .line 684
    :cond_9
    :try_start_4
    const-string v5, "SUPL20_NC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connection retry attempt "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget v5, p0, Lcom/android/supl/nc/NetworkController;->server_conn_timeout:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 689
    goto :goto_3

    .line 686
    :catch_7
    move-exception v5

    .line 707
    :cond_a
    :goto_3
    if-eqz v1, :cond_4

    .line 708
    :goto_4
    if-nez v1, :cond_b

    if-eqz p1, :cond_b

    .line 709
    :try_start_5
    aget v2, p1, v4

    iput v2, p0, Lcom/android/supl/nc/NetworkController;->iFailerStatus:I

    .line 710
    iput-boolean v3, p0, Lcom/android/supl/nc/NetworkController;->isConnectionError:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 712
    :cond_b
    monitor-exit p0

    return v1

    .line 581
    .end local v0    # "iNumberOfRetryAttmpt":I
    .end local v1    # "isConnect":Z
    .end local p1    # "failStatus":[I
    .end local p2    # "isReConnection":Z
    :goto_5
    monitor-exit p0

    .end local p0    # "this":Lcom/android/supl/nc/NetworkController;
    throw p1
.end method

.method public decrementConnectionCount()V
    .locals 1

    .line 210
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    .line 211
    return-void
.end method

.method public getConnectionCount()I
    .locals 1

    .line 214
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    return v0
.end method

.method protected getKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 4

    .line 379
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "alg":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    .line 381
    .local v1, "kmFact":Ljavax/net/ssl/KeyManagerFactory;
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/supl/config/ConfigManager;->getPrivateKeyStoreConv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 382
    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 383
    .end local v0    # "alg":Ljava/lang/String;
    .end local v1    # "kmFact":Ljavax/net/ssl/KeyManagerFactory;
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v1, "SUPL20_NC"

    const-string v2, "Error while creating Keymaanger: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNetWorkID()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    return v0
.end method

.method public getNetworkCommandProcessor()Lcom/android/supl/commprocessor/NetworkCommandProcessor;
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->networkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    return-object v0
.end method

.method public getServerIPAddr()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->m_stServerIPAddr:Ljava/lang/String;

    return-object v0
.end method

.method protected getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 6

    .line 367
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/supl/nc/SSLX509TrustManager;

    invoke-static {}, Lcom/android/supl/nc/NetworkController;->getKeyStoreAll()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/supl/nc/SSLX509TrustManager;-><init>(Ljava/util/List;Ljava/lang/String;)V

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/security/KeyStoreException;
    const-string v2, "SUPL20_NC"

    const-string v3, "Error while creating TrustManager: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    return-object v1

    .line 368
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 369
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "SUPL20_NC"

    const-string v3, "Error while creating TrustManager: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    return-object v1
.end method

.method public initRead_WriteThread()V
    .locals 3

    .line 716
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    .line 717
    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    .line 718
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 720
    const-string v0, "SUPL20_NC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_CilentSocket isClosed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_0
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->initWriteThread()V

    .line 723
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->initReadThread()V

    .line 725
    return-void
.end method

.method public isConnected()Z
    .locals 3

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "isConnected":Z
    iget v1, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 232
    const/4 v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    .line 241
    :cond_1
    :goto_0
    return v0
.end method

.method public isNetWorkMatch(I)Z
    .locals 1
    .param p1, "iNetWorkID"    # I

    .line 221
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeSLPSession()V
    .locals 5

    .line 1041
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->networkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->networkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_stServerIPAddr:Ljava/lang/String;

    iget v2, p0, Lcom/android/supl/nc/NetworkController;->m_iServerPortNo:I

    iget v3, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    iget v4, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->getNetKey(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 1043
    .local v0, "stKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->networkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    invoke-virtual {v1, v0}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->removeFailerSession(Ljava/lang/String;)V

    .line 1045
    .end local v0    # "stKey":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setNetWorkID(I)V
    .locals 0
    .param p1, "iNetWorkID"    # I

    .line 201
    iput p1, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    .line 203
    return-void
.end method

.method public setNetworkCommProceeor(Lcom/android/supl/commprocessor/NetworkCommandProcessor;)V
    .locals 0
    .param p1, "networkCommandProcessor"    # Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .line 1037
    iput-object p1, p0, Lcom/android/supl/nc/NetworkController;->networkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .line 1039
    return-void
.end method

.method public setServer_conn_Timeout_Retries(II)V
    .locals 0
    .param p1, "iTimeOut"    # I
    .param p2, "iRetries"    # I

    .line 190
    iput p1, p0, Lcom/android/supl/nc/NetworkController;->server_conn_timeout:I

    .line 191
    iput p2, p0, Lcom/android/supl/nc/NetworkController;->server_conn_retry:I

    .line 192
    return-void
.end method

.method public declared-synchronized stop(ZLjava/lang/Object;Z)Z
    .locals 5
    .param p1, "isStop"    # Z
    .param p2, "pauseLock"    # Ljava/lang/Object;
    .param p3, "ConnectAgain"    # Z

    monitor-enter p0

    .line 760
    :try_start_0
    const-string v0, "SUPL20_NC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop() isStop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",ConnectAgain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v0, 0x0

    .line 762
    .local v0, "isStoped":Z
    new-instance v1, Lcom/android/supl/nc/NetworkController$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/supl/nc/NetworkController$2;-><init>(Lcom/android/supl/nc/NetworkController;ZZLjava/lang/Object;)V

    .line 838
    .local v1, "thread":Ljava/lang/Thread;
    const-string v2, "SUPL20_NC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before decrement Connection Count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    if-nez p3, :cond_0

    iget v2, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    if-lez v2, :cond_0

    .line 840
    iget v2, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    .line 842
    :cond_0
    const-string v2, "SUPL20_NC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After decrement Connection Count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget v2, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    if-nez v2, :cond_2

    .line 844
    if-nez p3, :cond_1

    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    instance-of v2, v2, Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    if-eqz v2, :cond_1

    .line 846
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    check-cast v2, Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .line 847
    .local v2, "networkCommandProcessor":Lcom/android/supl/commprocessor/NetworkCommandProcessor;
    const-string v3, "SUPL20_NC"

    const-string v4, "sendOnNetWorkSessionClose() "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget v3, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    invoke-virtual {v2, v3}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sendOnNetWorkSessionClose(I)V

    .line 851
    .end local v2    # "networkCommandProcessor":Lcom/android/supl/commprocessor/NetworkCommandProcessor;
    :cond_1
    const-string v2, "SUPL20_NC"

    const-string v3, "Starting startCloseConnectionThread"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-direct {p0, v1}, Lcom/android/supl/nc/NetworkController;->startCloseConnectionThread(Ljava/lang/Thread;)V

    goto :goto_0

    .line 854
    :cond_2
    if-eqz p3, :cond_3

    .line 856
    invoke-direct {p0, v1}, Lcom/android/supl/nc/NetworkController;->startCloseConnectionThread(Ljava/lang/Thread;)V

    goto :goto_0

    .line 858
    :cond_3
    const-string v2, "SUPL20_NC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not stoping NetworkController \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" because connection count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    :goto_0
    monitor-exit p0

    return v0

    .line 759
    .end local v0    # "isStoped":Z
    .end local v1    # "thread":Ljava/lang/Thread;
    .end local p1    # "isStop":Z
    .end local p2    # "pauseLock":Ljava/lang/Object;
    .end local p3    # "ConnectAgain":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/supl/nc/NetworkController;
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_stServerIPAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/nc/NetworkController;->m_iServerPortNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " NI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " CC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upDateConnectionCount()V
    .locals 1

    .line 206
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    .line 207
    return-void
.end method

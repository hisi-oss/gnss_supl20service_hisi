.class public Lcom/android/supl/commprocessor/ServerCommProcessor;
.super Ljava/lang/Object;
.source "ServerCommProcessor.java"

# interfaces
.implements Lcom/android/supl/commprocessor/CommandProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;
    }
.end annotation


# static fields
.field public static final COMM_MSG_HELLO_TO_COMM_SRVC_MAGIC_CODE:I = -0x66cf7bac

.field public static final COMM_MSG_HELLO_TO_SUPL_CLIENT_MAGIC_CODE:I = -0x7eb79a9d

.field private static final LOG_TAG:Ljava/lang/String; = "SUPL20_SCM"

.field public static final MASTER_BUFF_LEN:I = 0x1388

.field public static final MSG_SCM_BYE:I = 0x200

.field public static final MSG_SCM_CONNECT:I = 0x202

.field public static final MSG_SCM_DISCONNECT:I = 0x203

.field public static final MSG_SCM_HELLO_TO_COMM_SRVC:I = 0x201

.field public static final MSG_SCM_HELLO_TO_SUPL_CLIENT:I = 0x205

.field public static final MSG_SCM_NW_CONNECTION_OFF:I = 0x20b

.field public static final MSG_SCM_NW_CONNECTION_ON:I = 0x20a

.field public static final MSG_SCM_ON_CONNECTED:I = 0x206

.field public static final MSG_SCM_ON_NOT_CONNECTED:I = 0x207

.field public static final MSG_SCM_ON_NW_SESSION_CLOSED:I = 0x209

.field public static final MSG_SCM_ON_RECEIVE:I = 0x208

.field public static final MSG_SCM_ON_RECEIVE_FROM_NON_TCP:I = 0x20d

.field public static final MSG_SCM_SEND:I = 0x204

.field public static final MSG_SCM_SYS_IDLE:I = 0x20c


# instance fields
.field private iLastWritePostion:I

.field private iTotalArrival:I

.field private isPause:Z

.field private mContext:Landroid/content/Context;

.field private mDatagramServer:Lcom/android/supl/commprocessor/DatagramServer;

.field private mListening:Z

.field private mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

.field private final mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private m_bMasterBuffer:[B

.field private nc:Lcom/android/supl/nc/NetworkController;

.field private packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

.field private final pauseLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    .line 100
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    .line 102
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    .line 104
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .line 108
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mContext:Landroid/content/Context;

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mListening:Z

    .line 112
    iput-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z

    .line 114
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mDatagramServer:Lcom/android/supl/commprocessor/DatagramServer;

    .line 166
    new-instance v0, Lcom/android/supl/commprocessor/ServerCommProcessor$1;

    invoke-direct {v0, p0}, Lcom/android/supl/commprocessor/ServerCommProcessor$1;-><init>(Lcom/android/supl/commprocessor/ServerCommProcessor;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 559
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->pauseLock:Ljava/lang/Object;

    .line 603
    iput v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 605
    iput v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 118
    new-instance v0, Lcom/android/supl/nc/NetworkController;

    const-string v4, "10.4.0.51"

    const-string v7, "SCM read thread"

    const-string v8, "SCM write thread"

    const/4 v3, 0x0

    const/16 v5, 0x115c

    const/4 v9, 0x1

    move-object v2, v0

    move-object v6, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/supl/nc/NetworkController;-><init>(ILjava/lang/String;ILcom/android/supl/commprocessor/CommandProcessor;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    .line 120
    new-instance v0, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    const-string v1, "SCM command process thread"

    invoke-direct {v0, p0, v1}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;-><init>(Lcom/android/supl/commprocessor/ServerCommProcessor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    .line 121
    invoke-static {}, Lcom/android/supl/nc/SuplServiceMgr;->getInstance()Lcom/android/supl/nc/SuplServiceMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/supl/nc/SuplServiceMgr;->setScmCommandProcessor(Lcom/android/supl/commprocessor/CommandProcessor;)V

    .line 124
    new-instance v0, Lcom/android/supl/commprocessor/DatagramServer;

    const-string v1, "UDP SUPL server"

    const/16 v2, 0x1c6b

    invoke-direct {v0, v2, v1, p0}, Lcom/android/supl/commprocessor/DatagramServer;-><init>(ILjava/lang/String;Lcom/android/supl/commprocessor/ServerCommProcessor;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mDatagramServer:Lcom/android/supl/commprocessor/DatagramServer;

    .line 125
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;III)V
    .locals 10
    .param p1, "isSecure"    # Z
    .param p2, "stIP"    # Ljava/lang/String;
    .param p3, "iPort"    # I
    .param p4, "iTimeOut"    # I
    .param p5, "iRetries"    # I

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    .line 100
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    .line 102
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    .line 104
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .line 108
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mContext:Landroid/content/Context;

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mListening:Z

    .line 112
    iput-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z

    .line 114
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mDatagramServer:Lcom/android/supl/commprocessor/DatagramServer;

    .line 166
    new-instance v0, Lcom/android/supl/commprocessor/ServerCommProcessor$1;

    invoke-direct {v0, p0}, Lcom/android/supl/commprocessor/ServerCommProcessor$1;-><init>(Lcom/android/supl/commprocessor/ServerCommProcessor;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 559
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->pauseLock:Ljava/lang/Object;

    .line 603
    iput v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 605
    iput v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 128
    invoke-direct {p0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->msgBufferReset()V

    .line 129
    new-instance v0, Lcom/android/supl/nc/NetworkController;

    const-string v7, "SCM read thread"

    const-string v8, "SCM write thread"

    const/4 v3, 0x0

    const/4 v9, 0x1

    move-object v2, v0

    move-object v4, p2

    move v5, p3

    move-object v6, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/supl/nc/NetworkController;-><init>(ILjava/lang/String;ILcom/android/supl/commprocessor/CommandProcessor;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    .line 130
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v0, p4, p5}, Lcom/android/supl/nc/NetworkController;->setServer_conn_Timeout_Retries(II)V

    .line 131
    new-instance v0, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    const-string v1, "SCM command process thread"

    invoke-direct {v0, p0, v1}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;-><init>(Lcom/android/supl/commprocessor/ServerCommProcessor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    .line 132
    new-instance v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    invoke-direct {v0, p0}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;-><init>(Lcom/android/supl/commprocessor/ServerCommProcessor;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .line 133
    invoke-static {}, Lcom/android/supl/nc/SuplServiceMgr;->getInstance()Lcom/android/supl/nc/SuplServiceMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/supl/nc/SuplServiceMgr;->setScmCommandProcessor(Lcom/android/supl/commprocessor/CommandProcessor;)V

    .line 136
    new-instance v0, Lcom/android/supl/commprocessor/DatagramServer;

    const-string v1, "UDP SUPL server"

    const/16 v2, 0x1c6b

    invoke-direct {v0, v2, v1, p0}, Lcom/android/supl/commprocessor/DatagramServer;-><init>(ILjava/lang/String;Lcom/android/supl/commprocessor/ServerCommProcessor;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mDatagramServer:Lcom/android/supl/commprocessor/DatagramServer;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/supl/commprocessor/ServerCommProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/commprocessor/ServerCommProcessor;

    .line 60
    iget-boolean v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mListening:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/supl/commprocessor/ServerCommProcessor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/supl/commprocessor/ServerCommProcessor;
    .param p1, "x1"    # Z

    .line 60
    invoke-direct {p0, p1}, Lcom/android/supl/commprocessor/ServerCommProcessor;->sendConnectivityStatus(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/supl/commprocessor/ServerCommProcessor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/commprocessor/ServerCommProcessor;

    .line 60
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->pauseLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/supl/commprocessor/ServerCommProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/commprocessor/ServerCommProcessor;

    .line 60
    iget-boolean v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/supl/commprocessor/ServerCommProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/supl/commprocessor/ServerCommProcessor;
    .param p1, "x1"    # Z

    .line 60
    iput-boolean p1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/supl/commprocessor/ServerCommProcessor;)Lcom/android/supl/nc/NetworkController;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/commprocessor/ServerCommProcessor;

    .line 60
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/supl/commprocessor/ServerCommProcessor;)Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/commprocessor/ServerCommProcessor;

    .line 60
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/supl/commprocessor/ServerCommProcessor;)Lcom/android/supl/commprocessor/NetworkCommandProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/commprocessor/ServerCommProcessor;

    .line 60
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    return-object v0
.end method

.method private msgBufferReset()V
    .locals 2

    .line 139
    const/16 v0, 0x1388

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    .line 140
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 141
    return-void
.end method

.method private sendConnectivityStatus(Z)V
    .locals 6
    .param p1, "available"    # Z

    .line 243
    new-instance v0, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v0}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 245
    .local v0, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 246
    .local v1, "bData":[B
    const/4 v2, 0x0

    .line 247
    .local v2, "offset":I
    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 248
    if-eqz p1, :cond_0

    .line 249
    const/16 v3, 0x20a

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    goto :goto_0

    .line 251
    :cond_0
    const/16 v3, 0x20b

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 253
    :goto_0
    const-string v3, "SUPL20_SCM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network connection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iput-object v1, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 255
    iget-object v3, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v3, v0}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 256
    return-void
.end method


# virtual methods
.method public init()Z
    .locals 3

    .line 197
    const-string v0, "SUPL20_SCM"

    const-string v1, "calling nc.connect for scm"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/supl/nc/NetworkController;->connect([IZ)Z

    move-result v0

    .line 199
    .local v0, "isConnected":Z
    return v0
.end method

.method public pause()V
    .locals 4

    .line 561
    new-instance v0, Lcom/android/supl/commprocessor/ServerCommProcessor$2;

    invoke-direct {v0, p0}, Lcom/android/supl/commprocessor/ServerCommProcessor$2;-><init>(Lcom/android/supl/commprocessor/ServerCommProcessor;)V

    .line 584
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 586
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 587
    const-string v1, "SUPL20_SCM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCM pause finished:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    goto :goto_0

    .line 588
    :catch_0
    move-exception v1

    .line 589
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "SUPL20_SCM"

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public process(Lcom/android/supl/commprocessor/FromServer;)V
    .locals 23
    .param p1, "fromServer"    # Lcom/android/supl/commprocessor/FromServer;

    move-object/from16 v1, p0

    .line 280
    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    const/4 v3, 0x0

    if-eqz v0, :cond_15

    if-eqz v2, :cond_15

    iget-object v0, v2, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    if-eqz v0, :cond_15

    iget v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    iget-object v4, v2, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    array-length v4, v4

    add-int/2addr v0, v4

    const/16 v4, 0x1388

    if-ge v0, v4, :cond_15

    .line 285
    :try_start_0
    iget-object v0, v2, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    iget-object v4, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    iget v5, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    iget-object v6, v2, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    array-length v6, v6

    invoke-static {v0, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 287
    iget v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    iget-object v4, v2, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    array-length v4, v4

    add-int/2addr v0, v4

    iput v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 288
    iget v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    iget-object v4, v2, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    array-length v4, v4

    add-int/2addr v0, v4

    iput v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 289
    const-string v0, "SUPL20_SCM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buffer size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "writePosition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 295
    nop

    .line 305
    :goto_0
    const/4 v4, 0x0

    .line 306
    .local v4, "iReadLen":I
    const/4 v5, 0x0

    .line 307
    .local v5, "iCurrentPacketSize":I
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    iget-object v7, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v0

    .line 309
    .local v6, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v5, v0

    .line 311
    if-gtz v5, :cond_0

    .line 314
    goto/16 :goto_4

    .line 316
    :cond_0
    add-int/lit8 v4, v4, 0x4

    .line 317
    iget v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v0, v0, -0x4

    iput v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 319
    iget v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    if-ge v0, v5, :cond_1

    .line 323
    goto/16 :goto_4

    .line 325
    :cond_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v7, v0

    .line 326
    .local v7, "icmdID":I
    add-int/lit8 v4, v4, 0x4

    .line 327
    const-string v0, "SUPL20_SCM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "process icmdID2: 0X"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    if-eqz v7, :cond_14

    const/16 v0, 0x20c

    if-eq v7, v0, :cond_13

    const/16 v0, 0x300

    if-eq v7, v0, :cond_12

    packed-switch v7, :pswitch_data_0

    .line 537
    const-string v0, "SUPL20_SCM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "default : recvd %d cmdid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-direct/range {p0 .. p0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->msgBufferReset()V

    .line 539
    goto/16 :goto_4

    .line 454
    :pswitch_0
    const-string v0, "SUPL20_SCM"

    const-string v8, " process MSG_SCM_SEND"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 457
    .local v0, "iBuffLen":I
    if-nez v0, :cond_2

    .line 458
    const-string v8, "SUPL20_SCM"

    const-string v9, " invalid send Buff len "

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    goto/16 :goto_4

    .line 461
    :cond_2
    add-int/lit8 v4, v4, 0x4

    .line 462
    new-array v8, v0, [B

    .line 463
    .local v8, "bBuff":[B
    invoke-virtual {v6, v8}, Ljava/io/DataInputStream;->read([B)I

    move-result v9

    .line 464
    .local v9, "iBuffRead":I
    if-eq v9, v0, :cond_3

    .line 465
    const-string v10, "SUPL20_SCM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalid Buff len "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    goto/16 :goto_4

    .line 468
    :cond_3
    add-int/2addr v4, v9

    .line 479
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v10

    .line 480
    .local v10, "iNWSessionID":I
    const-string v11, "SUPL20_SCM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MSG_SCM_SEND-->NWSessionID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    if-gez v10, :cond_4

    .line 482
    const-string v11, "SUPL20_SCM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invalid NWSessionID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    goto/16 :goto_4

    .line 485
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 486
    iget-object v11, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    invoke-virtual {v11, v8, v10}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sendDataByNetworkID([BI)Z

    move-result v11

    .line 487
    .local v11, "isFindSLPSession":Z
    if-nez v11, :cond_5

    .line 489
    const-string v12, "SUPL20_SCM"

    const-string v13, "MSG_SCM_SEND-->failed to find SLPSession"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_5
    iget-object v12, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    iget-object v13, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    iget-object v14, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    array-length v14, v14

    sub-int/2addr v14, v4

    invoke-static {v12, v4, v13, v3, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 493
    iget v12, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    sub-int/2addr v12, v4

    iput v12, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 494
    iget v12, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v13, v4, -0x4

    sub-int/2addr v12, v13

    iput v12, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 495
    const-string v12, "SUPL20_SCM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "buffer size:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "writePosition: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    goto/16 :goto_3

    .line 499
    .end local v0    # "iBuffLen":I
    .end local v8    # "bBuff":[B
    .end local v9    # "iBuffRead":I
    .end local v10    # "iNWSessionID":I
    .end local v11    # "isFindSLPSession":Z
    :pswitch_1
    const-string v0, "SUPL20_SCM"

    const-string v8, "process MSG_SCM_DISCONNECT"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 501
    .local v0, "iNWSessionID":I
    if-gez v0, :cond_6

    .line 502
    const-string v8, "SUPL20_SCM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " invalid NWSessionID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    goto/16 :goto_4

    .line 505
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 506
    iget-object v8, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    invoke-virtual {v8, v0}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->disconnectByNetworkID(I)V

    .line 507
    iget-object v8, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    iget-object v9, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    iget-object v10, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    array-length v10, v10

    sub-int/2addr v10, v4

    invoke-static {v8, v4, v9, v3, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 509
    iget v8, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    sub-int/2addr v8, v4

    iput v8, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 510
    iget v8, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v9, v4, -0x4

    sub-int/2addr v8, v9

    iput v8, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 512
    goto/16 :goto_3

    .line 386
    .end local v0    # "iNWSessionID":I
    :pswitch_2
    const-string v0, "SUPL20_SCM"

    const-string v8, "process MSG_SCM_CONNECT"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 389
    .local v0, "iFQDNLen":I
    if-nez v0, :cond_7

    .line 390
    const-string v8, "SUPL20_SCM"

    const-string v9, " invalid fqdn len "

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    goto/16 :goto_4

    .line 393
    :cond_7
    add-int/lit8 v4, v4, 0x4

    .line 395
    new-array v8, v0, [B

    .line 396
    .local v8, "bFQDN":[B
    invoke-virtual {v6, v8}, Ljava/io/DataInputStream;->read([B)I

    move-result v9

    .line 397
    .local v9, "iFQDNRead":I
    if-eq v9, v0, :cond_8

    .line 398
    const-string v10, "SUPL20_SCM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " invalid fqdn len "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    goto/16 :goto_4

    .line 401
    :cond_8
    add-int/2addr v4, v9

    .line 403
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 404
    .local v10, "iPortNO":I
    if-gtz v10, :cond_9

    .line 405
    const-string v11, "SUPL20_SCM"

    const-string v12, " invalid port no "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    goto/16 :goto_4

    .line 408
    :cond_9
    add-int/lit8 v4, v4, 0x4

    .line 410
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    move v14, v11

    .line 411
    .local v14, "iSecureMode":I
    if-ltz v14, :cond_c

    const/4 v11, 0x3

    if-le v14, v11, :cond_a

    .line 412
    move/from16 v20, v0

    move/from16 v21, v14

    goto/16 :goto_1

    .line 415
    :cond_a
    add-int/lit8 v4, v4, 0x4

    .line 417
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    move/from16 v19, v11

    .line 418
    .local v19, "iPSKParam":I
    if-gez v19, :cond_b

    .line 419
    const-string v11, "SUPL20_SCM"

    const-string v12, " invalid PSK Param  "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    goto/16 :goto_4

    .line 422
    :cond_b
    add-int/lit8 v4, v4, 0x4

    .line 424
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readShort()S

    move-result v15

    .line 426
    .local v15, "sSessionID":S
    add-int/lit8 v4, v4, 0x2

    .line 428
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v16

    .line 430
    .local v16, "iReqID":I
    add-int/lit8 v4, v4, 0x1

    .line 432
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    move v13, v11

    .line 434
    .local v13, "iHandShakeTimeOut":I
    add-int/lit8 v4, v4, 0x4

    .line 436
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 438
    .local v11, "iConnTimeOut":I
    add-int/lit8 v4, v4, 0x4

    .line 440
    const-string v12, "SUPL20_SCM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v0

    const-string v0, "Connection TO : "

    .end local v0    # "iFQDNLen":I
    .local v20, "iFQDNLen":I
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", handshake TO : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v8}, Ljava/lang/String;-><init>([B)V

    .line 444
    .local v12, "stIP":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    move v3, v11

    move-object v11, v0

    .end local v11    # "iConnTimeOut":I
    .local v3, "iConnTimeOut":I
    move v0, v13

    move v13, v10

    .end local v13    # "iHandShakeTimeOut":I
    .local v0, "iHandShakeTimeOut":I
    move/from16 v21, v14

    .end local v14    # "iSecureMode":I
    .local v21, "iSecureMode":I
    move/from16 v17, v0

    move/from16 v18, v3

    invoke-virtual/range {v11 .. v18}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->connect(Ljava/lang/String;IIIIII)Z

    .line 446
    iget-object v11, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    iget-object v13, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    iget-object v14, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    array-length v14, v14

    sub-int/2addr v14, v4

    const/4 v2, 0x0

    invoke-static {v11, v4, v13, v2, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 448
    iget v2, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    sub-int/2addr v2, v4

    iput v2, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 449
    iget v2, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v11, v4, -0x4

    sub-int/2addr v2, v11

    iput v2, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 451
    goto/16 :goto_3

    .line 412
    .end local v3    # "iConnTimeOut":I
    .end local v12    # "stIP":Ljava/lang/String;
    .end local v15    # "sSessionID":S
    .end local v16    # "iReqID":I
    .end local v19    # "iPSKParam":I
    .end local v20    # "iFQDNLen":I
    .end local v21    # "iSecureMode":I
    .local v0, "iFQDNLen":I
    .restart local v14    # "iSecureMode":I
    :cond_c
    move/from16 v20, v0

    move/from16 v21, v14

    .end local v0    # "iFQDNLen":I
    .end local v14    # "iSecureMode":I
    .restart local v20    # "iFQDNLen":I
    .restart local v21    # "iSecureMode":I
    :goto_1
    const-string v0, "SUPL20_SCM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " invalid SecureMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v21    # "iSecureMode":I
    .local v3, "iSecureMode":I
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 413
    goto/16 :goto_4

    .line 335
    .end local v3    # "iSecureMode":I
    .end local v8    # "bFQDN":[B
    .end local v9    # "iFQDNRead":I
    .end local v10    # "iPortNO":I
    .end local v20    # "iFQDNLen":I
    :pswitch_3
    :try_start_2
    const-string v0, "SUPL20_SCM"

    const-string v2, "process hello msg"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v2, v0

    .line 339
    .local v2, "iMagicNum":I
    add-int/lit8 v4, v4, 0x4

    .line 340
    const v0, -0x66cf7bac

    if-ne v2, v0, :cond_11

    .line 341
    const-string v0, "SUPL20_SCM"

    const-string v3, "init msg success"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_2

    :cond_d
    move v0, v3

    :goto_2
    move v8, v0

    .line 347
    .local v8, "bNiUdpEnabled":Z
    add-int/lit8 v4, v4, 0x1

    .line 349
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v3, 0x0

    nop

    .line 350
    .local v3, "bSwitchApnEnabled":Z
    :cond_e
    add-int/lit8 v4, v4, 0x1

    .line 352
    iget-object v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    iget-object v9, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    iget-object v10, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    array-length v10, v10

    sub-int/2addr v10, v4

    const/4 v11, 0x0

    invoke-static {v0, v4, v9, v11, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 354
    iget v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    sub-int/2addr v0, v4

    iput v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 355
    iget v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v9, v4, -0x4

    sub-int/2addr v0, v9

    iput v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 356
    iget-object v9, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->pauseLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 357
    :try_start_3
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/supl/config/ConfigManager;->setNiUdpEnabled(Z)V

    .line 358
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/supl/config/ConfigManager;->setSwitchApnEnabled(Z)V

    .line 360
    const-string v0, "SUPL20_SCM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bNiUdpEnabled:      "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v0, "SUPL20_SCM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bSwitchApnEnabled:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    if-eqz v8, :cond_f

    .line 364
    iget-object v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->mDatagramServer:Lcom/android/supl/commprocessor/DatagramServer;

    invoke-virtual {v0}, Lcom/android/supl/commprocessor/DatagramServer;->startServer()V

    .line 367
    :cond_f
    iget-boolean v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z

    if-nez v0, :cond_10

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->sendHelloMessage()V

    .line 370
    :cond_10
    monitor-exit v9

    .line 374
    .end local v2    # "iMagicNum":I
    .end local v3    # "bSwitchApnEnabled":Z
    .end local v8    # "bNiUdpEnabled":Z
    goto :goto_3

    .line 370
    .restart local v2    # "iMagicNum":I
    .restart local v3    # "bSwitchApnEnabled":Z
    .restart local v8    # "bNiUdpEnabled":Z
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 343
    .end local v3    # "bSwitchApnEnabled":Z
    .end local v8    # "bNiUdpEnabled":Z
    :cond_11
    goto :goto_4

    .line 371
    .end local v2    # "iMagicNum":I
    :catch_0
    move-exception v0

    .line 373
    .local v0, "ex":Ljava/io/IOException;
    :try_start_5
    const-string v2, "SUPL20_SCM"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    .end local v0    # "ex":Ljava/io/IOException;
    goto :goto_3

    .line 516
    :pswitch_4
    const-string v0, "SUPL20_SCM"

    const-string v2, " process bye msg"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->stopNetWork()V

    .line 519
    iget-object v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    iget-object v2, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    iget-object v3, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    array-length v3, v3

    sub-int/2addr v3, v4

    const/4 v8, 0x0

    invoke-static {v0, v4, v2, v8, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 521
    iget v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    sub-int/2addr v0, v4

    iput v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 522
    iget v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v2, v4, -0x4

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 524
    goto :goto_3

    .line 379
    :cond_12
    iget-object v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    iget-object v2, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    iget-object v3, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    array-length v3, v3

    sub-int/2addr v3, v4

    const/4 v8, 0x0

    invoke-static {v0, v4, v2, v8, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 381
    iget v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    sub-int/2addr v0, v4

    iput v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 382
    iget v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v2, v4, -0x4

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 383
    goto :goto_3

    .line 527
    :cond_13
    const-string v0, "SUPL20_SCM"

    const-string v2, " process MSG_SCM_SYS_IDLE"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    iget-object v2, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    iget-object v3, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    array-length v3, v3

    sub-int/2addr v3, v4

    const/4 v8, 0x0

    invoke-static {v0, v4, v2, v8, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 531
    iget v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    sub-int/2addr v0, v4

    iput v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 532
    iget v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v2, v4, -0x4

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 534
    nop

    .line 545
    .end local v7    # "icmdID":I
    :goto_3
    goto :goto_5

    .line 331
    .restart local v7    # "icmdID":I
    :cond_14
    nop

    .line 547
    .end local v4    # "iReadLen":I
    .end local v5    # "iCurrentPacketSize":I
    .end local v6    # "in":Ljava/io/DataInputStream;
    .end local v7    # "icmdID":I
    :goto_4
    return-void

    .line 542
    .restart local v4    # "iReadLen":I
    .restart local v5    # "iCurrentPacketSize":I
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :catch_1
    move-exception v0

    .line 544
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 546
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "iReadLen":I
    .end local v5    # "iCurrentPacketSize":I
    .end local v6    # "in":Ljava/io/DataInputStream;
    :goto_5
    nop

    .line 305
    move-object/from16 v2, p1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 290
    :catch_2
    move-exception v0

    .line 291
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "SUPL20_SCM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process m_bMasterBuffer overflow,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 293
    iput v2, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 294
    return-void

    .line 297
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_15
    const-string v0, "SUPL20_SCM"

    const-string v2, "m_bMasterBuff is null or fromServer is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 299
    iput v2, v1, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 300
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reInit()V
    .locals 3

    .line 593
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->pauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 594
    :try_start_0
    iget-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z

    if-eqz v1, :cond_0

    .line 595
    const-string v1, "SUPL20_SCM"

    const-string v2, "SCM reInit invoked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    invoke-virtual {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->getThreadName()Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, "stThrName":Ljava/lang/String;
    new-instance v2, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    invoke-direct {v2, p0, v1}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;-><init>(Lcom/android/supl/commprocessor/ServerCommProcessor;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    .line 598
    iget-object v2, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v2}, Lcom/android/supl/nc/NetworkController;->initRead_WriteThread()V

    .line 599
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z

    .line 601
    .end local v1    # "stThrName":Ljava/lang/String;
    :cond_0
    monitor-exit v0

    .line 602
    return-void

    .line 601
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendByeMessage()V
    .locals 4

    .line 233
    new-instance v0, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v0}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 234
    .local v0, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/16 v1, 0xc

    new-array v1, v1, [B

    .line 235
    .local v1, "bData":[B
    const/4 v2, 0x0

    .line 236
    .local v2, "offset":I
    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 237
    const/16 v3, 0x200

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 238
    iput-object v1, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 239
    iget-object v3, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v3, v0}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 240
    return-void
.end method

.method public sendHelloMessage()V
    .locals 5

    .line 206
    new-instance v0, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v0}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 208
    .local v0, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/16 v1, 0xc

    new-array v1, v1, [B

    .line 209
    .local v1, "bData":[B
    const/4 v2, 0x0

    .line 210
    .local v2, "offset":I
    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 211
    const/16 v3, 0x205

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 212
    const v3, -0x7eb79a9d

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 213
    iput-object v1, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 214
    iget-object v3, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v3, v0}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->startListening()V

    .line 216
    const-string v3, "SUPL20_SCM"

    const-string v4, "sendHelloMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method public sendServer(Lcom/android/supl/nc/SendToServer;)V
    .locals 1
    .param p1, "sendToServer"    # Lcom/android/supl/nc/SendToServer;

    .line 225
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v0, p1}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 227
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 146
    iput-object p1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mContext:Landroid/content/Context;

    .line 147
    return-void
.end method

.method public declared-synchronized startListening()V
    .locals 2

    monitor-enter p0

    .line 150
    :try_start_0
    iget-boolean v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mListening:Z

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 152
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 153
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v0    # "connManager":Landroid/net/ConnectivityManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/supl/commprocessor/ServerCommProcessor;
    throw v0
.end method

.method public stopDatagramServer()V
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mDatagramServer:Lcom/android/supl/commprocessor/DatagramServer;

    invoke-virtual {v0}, Lcom/android/supl/commprocessor/DatagramServer;->stop()V

    .line 671
    return-void
.end method

.method public declared-synchronized stopListening()V
    .locals 2

    monitor-enter p0

    .line 158
    :try_start_0
    iget-boolean v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mListening:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 160
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 162
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v0    # "connManager":Landroid/net/ConnectivityManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/supl/commprocessor/ServerCommProcessor;
    throw v0
.end method

.method public stopNetWork()V
    .locals 4

    .line 553
    const-string v0, "SUPL20_SCM"

    const-string v1, "SCM stopNetWork invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    invoke-virtual {v0}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->stopRead()V

    .line 555
    invoke-virtual {p0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->stopListening()V

    .line 556
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/supl/nc/NetworkController;->stop(ZLjava/lang/Object;Z)Z

    .line 557
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    invoke-virtual {v0}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->disConnectAllNetWork()V

    .line 558
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->getNetWorkID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writePacket(Lcom/android/supl/commprocessor/FromServer;)V
    .locals 3
    .param p1, "fromServer"    # Lcom/android/supl/commprocessor/FromServer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 262
    if-eqz p1, :cond_1

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    invoke-static {v0}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->access$200(Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    invoke-static {v0}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->access$200(Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 269
    :cond_0
    const-string v0, "SUPL20_SCM"

    const-string v1, "packet is null or deque is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    goto :goto_1

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v1, "SUPL20_SCM"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 263
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fromServer object must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

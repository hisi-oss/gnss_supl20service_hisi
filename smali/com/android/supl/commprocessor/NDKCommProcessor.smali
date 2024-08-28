.class public Lcom/android/supl/commprocessor/NDKCommProcessor;
.super Ljava/lang/Object;
.source "NDKCommProcessor.java"

# interfaces
.implements Lcom/android/supl/commprocessor/CommandProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;
    }
.end annotation


# static fields
.field private static final EMERGENCY_REGISTER:I = 0x1

.field private static final EMERGENCY_UN_REGISTER:I = 0x2

.field private static final LOCATION_REGISTER:I = 0x3

.field private static final LOCATION_UN_REGISTER:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "SUPL20_PCM"

.field public static final MASTER_BUFF_LEN:I = 0x1388

.field private static final MSG_PCM_BYE:I = 0x100

.field public static final MSG_PCM_EMERGENCY_CALL:I = 0x116

.field public static final MSG_PCM_GET_HIST_KEY:I = 0x11a

.field private static final MSG_PCM_GET_LOCATION_ID:I = 0x103

.field public static final MSG_PCM_GET_OTHER_MEAS:I = 0x113

.field private static final MSG_PCM_GET_SET_ID:I = 0x102

.field public static final MSG_PCM_GET_SIM_MCC_MNC:I = 0x118

.field private static final MSG_PCM_HELLO_TO_PLAT_SRVC:I = 0x101

.field private static final MSG_PCM_HELLO_TO_SUPL_CLIENT:I = 0x109

.field private static final MSG_PCM_ON_SI_FAILURE:I = 0x108

.field private static final MSG_PCM_ON_SI_LOCATION_REPORT:I = 0x106

.field public static final MSG_PCM_ON_SI_SESSION_COMPLETE:I = 0x107

.field public static final MSG_PCM_ON_SYSTEM_SHUTDOWN:I = 0x111

.field public static final MSG_PCM_SYS_IDLE:I = 0x112

.field public static final MSG_PCM_UPDATE_HIST_KEY:I = 0x11b

.field public static final MSG_PCM_UPDATE_LOCATION_ID:I = 0x10b

.field public static final MSG_PCM_UPDATE_OTHER_MEAS:I = 0x114

.field public static final MSG_PCM_UPDATE_SET_ID:I = 0x10a

.field public static final MSG_PCM_UPDATE_SIM_MCC_MNC:I = 0x119

.field public static final MSG_PCM_UPDATE_SLP_CONFIG:I = 0x115

.field private static final PLAT_MSG_HELLO_TO_PLAT_SRVC_MAGIC_CODE:I = 0x53589793

.field private static final PLAT_MSG_HELLO_TO_SUPL_CLIENT_MAGIC_CODE:I = 0x31415926


# instance fields
.field private final_key:Ljavax/crypto/SecretKey;

.field private handshake_with_server:Z

.field private iLastWritePostion:I

.field private iTotalArrival:I

.field private isPause:Z

.field private locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

.field private mHandler:Landroid/os/Handler;

.field private mPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

.field private m_bMasterBuffer:[B

.field private nc:Lcom/android/supl/nc/NetworkController;

.field private final pauseLock:Ljava/lang/Object;

.field private readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ILcom/android/supl/loc/SETLocationManager;II)V
    .locals 10
    .param p1, "isSecure"    # Z
    .param p2, "stIP"    # Ljava/lang/String;
    .param p3, "iPort"    # I
    .param p4, "location_Manager"    # Lcom/android/supl/loc/SETLocationManager;
    .param p5, "iTimeOut"    # I
    .param p6, "iRetries"    # I

    move-object v8, p0

    .line 164
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    .line 95
    iput-object v0, v8, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    .line 141
    iput-object v0, v8, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    .line 145
    iput-object v0, v8, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    .line 147
    iput-object v0, v8, Lcom/android/supl/commprocessor/NDKCommProcessor;->mPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    .line 157
    const/4 v1, 0x0

    iput-boolean v1, v8, Lcom/android/supl/commprocessor/NDKCommProcessor;->isPause:Z

    .line 159
    iput-object v0, v8, Lcom/android/supl/commprocessor/NDKCommProcessor;->final_key:Ljavax/crypto/SecretKey;

    .line 161
    iput-boolean v1, v8, Lcom/android/supl/commprocessor/NDKCommProcessor;->handshake_with_server:Z

    .line 217
    new-instance v0, Lcom/android/supl/commprocessor/NDKCommProcessor$1;

    invoke-direct {v0, v8}, Lcom/android/supl/commprocessor/NDKCommProcessor$1;-><init>(Lcom/android/supl/commprocessor/NDKCommProcessor;)V

    iput-object v0, v8, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    .line 745
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v8, Lcom/android/supl/commprocessor/NDKCommProcessor;->pauseLock:Ljava/lang/Object;

    .line 797
    iput v1, v8, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 799
    iput v1, v8, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 165
    invoke-direct {v8}, Lcom/android/supl/commprocessor/NDKCommProcessor;->msgBufferReset()V

    .line 166
    new-instance v9, Lcom/android/supl/nc/NetworkController;

    const-string v5, "PCM read thread"

    const-string v6, "PCM write thread"

    const/4 v7, 0x0

    move-object v0, v9

    move-object v2, p2

    move v3, p3

    move-object v4, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/supl/nc/NetworkController;-><init>(ILjava/lang/String;ILcom/android/supl/commprocessor/CommandProcessor;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v9, v8, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    .line 168
    iget-object v0, v8, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    move v1, p5

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/supl/nc/NetworkController;->setServer_conn_Timeout_Retries(II)V

    .line 169
    new-instance v0, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    const-string v3, "PCM command process thread"

    invoke-direct {v0, v8, v3}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;-><init>(Lcom/android/supl/commprocessor/NDKCommProcessor;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    .line 170
    move-object v0, p4

    iput-object v0, v8, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    .line 171
    iget-object v3, v8, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v3, v8}, Lcom/android/supl/loc/SETLocationManager;->setCommProcessor(Lcom/android/supl/commprocessor/NDKCommProcessor;)V

    .line 172
    invoke-static {}, Lcom/android/supl/nc/SuplServiceMgr;->getInstance()Lcom/android/supl/nc/SuplServiceMgr;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/supl/nc/SuplServiceMgr;->setPcmCommandProcessor(Lcom/android/supl/commprocessor/CommandProcessor;)V

    .line 173
    invoke-static {}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->getInstance()Lcom/android/supl/trigger/PeriodicTriggerHandler;

    move-result-object v3

    iput-object v3, v8, Lcom/android/supl/commprocessor/NDKCommProcessor;->mPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    .line 174
    iget-object v3, v8, Lcom/android/supl/commprocessor/NDKCommProcessor;->mPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    invoke-virtual {v3, v8}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->setNdkCommProcessor(Lcom/android/supl/commprocessor/NDKCommProcessor;)V

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/loc/SETLocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 89
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/supl/commprocessor/NDKCommProcessor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 89
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->pauseLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/supl/commprocessor/NDKCommProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 89
    iget-boolean v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->isPause:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/supl/commprocessor/NDKCommProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/supl/commprocessor/NDKCommProcessor;
    .param p1, "x1"    # Z

    .line 89
    iput-boolean p1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->isPause:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/nc/NetworkController;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 89
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 89
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    return-object v0
.end method

.method private msgBufferReset()V
    .locals 2

    .line 178
    const/16 v0, 0x1388

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    .line 179
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 180
    return-void
.end method


# virtual methods
.method public init()Z
    .locals 3

    .line 188
    const-string v0, "SUPL20_PCM"

    const-string v1, "calling nc.connect for pcm"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/supl/nc/NetworkController;->connect([IZ)Z

    move-result v0

    .line 191
    .local v0, "isConnected":Z
    return v0
.end method

.method public pause()V
    .locals 5

    .line 748
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 749
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 750
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 751
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 752
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 753
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 754
    new-instance v1, Lcom/android/supl/commprocessor/NDKCommProcessor$2;

    invoke-direct {v1, p0}, Lcom/android/supl/commprocessor/NDKCommProcessor$2;-><init>(Lcom/android/supl/commprocessor/NDKCommProcessor;)V

    .line 777
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 779
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 780
    const-string v2, "SUPL20_PCM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PCM pause finished:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->isPause:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    goto :goto_0

    .line 781
    :catch_0
    move-exception v2

    .line 782
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "SUPL20_PCM"

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public process(Lcom/android/supl/commprocessor/FromServer;)V
    .locals 11
    .param p1, "fromServer"    # Lcom/android/supl/commprocessor/FromServer;

    .line 314
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    iget-object v0, p1, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    iget-object v2, p1, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    array-length v2, v2

    add-int/2addr v0, v2

    const/16 v2, 0x1388

    if-ge v0, v2, :cond_12

    .line 319
    :try_start_0
    iget-object v0, p1, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    iget-object v2, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget v3, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    iget-object v4, p1, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    array-length v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 321
    iget v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    iget-object v2, p1, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    array-length v2, v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 322
    iget v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    iget-object v2, p1, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    array-length v2, v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 323
    const-string v0, "SUPL20_PCM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "writePosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 329
    nop

    .line 339
    :goto_0
    const/4 v0, 0x0

    .line 340
    .local v0, "iReadLen":I
    const/4 v2, 0x0

    .line 341
    .local v2, "iPacketSize":I
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 344
    .local v3, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    move v2, v4

    .line 346
    if-gtz v2, :cond_0

    .line 347
    const-string v4, "SUPL20_PCM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "process: process less then zero "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    goto/16 :goto_6

    .line 351
    :cond_0
    add-int/lit8 v0, v0, 0x4

    .line 352
    iget v4, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    add-int/lit8 v4, v4, -0x4

    iput v4, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 354
    iget v4, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    if-ge v4, v2, :cond_1

    .line 355
    const-string v4, "SUPL20_PCM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "process: iTotalArrival less then PacketSize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    goto/16 :goto_6

    .line 360
    :cond_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 361
    .local v4, "icmdID":I
    add-int/lit8 v0, v0, 0x4

    .line 362
    const-string v5, "SUPL20_PCM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "process icmdID: 0X"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    if-eqz v4, :cond_11

    const/16 v5, 0x118

    if-eq v4, v5, :cond_e

    const/16 v5, 0x11a

    if-eq v4, v5, :cond_c

    const/16 v5, 0x300

    if-eq v4, v5, :cond_b

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .line 718
    const-string v5, "SUPL20_PCM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "default : recvd cmdid 0X"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 718
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    array-length v7, v7

    sub-int/2addr v7, v0

    invoke-static {v5, v0, v6, v1, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 723
    iget v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    sub-int/2addr v5, v0

    iput v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 724
    iget v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    add-int/lit8 v6, v0, -0x4

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 726
    goto/16 :goto_6

    .line 590
    :pswitch_0
    const-string v5, "SUPL20_PCM"

    const-string v6, " process MSG_PCM_GET_OTHER_MEAS"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 593
    .local v5, "iMeasureType":I
    add-int/lit8 v0, v0, 0x4

    .line 594
    packed-switch v5, :pswitch_data_2

    .line 639
    const-string v6, "SUPL20_PCM"

    goto/16 :goto_1

    .line 626
    :pswitch_1
    const-string v6, "SUPL20_PCM"

    const-string v7, " process MSG_PCM_GET_AFLT_MEAS"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    new-instance v6, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;

    invoke-direct {v6}, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;-><init>()V

    .line 628
    .local v6, "afltParser":Lcom/android/supl/loc/measure/aflt/AfltConfigParser;
    invoke-virtual {v6}, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->getAFLTMeasInfo()Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    move-result-object v7

    .line 629
    .local v7, "suplafltMeasInfo":Lcom/android/supl/loc/measure/aflt/AfltMeasure;
    invoke-virtual {v7, v5}, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->getAFLTMeasInfo(I)[B

    move-result-object v8

    .line 630
    .local v8, "afltMeas":[B
    new-instance v9, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v9}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 631
    .local v9, "sendToServer":Lcom/android/supl/nc/SendToServer;
    iput-object v8, v9, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 632
    iget-object v10, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v10, v9}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 633
    goto :goto_2

    .line 615
    .end local v6    # "afltParser":Lcom/android/supl/loc/measure/aflt/AfltConfigParser;
    .end local v7    # "suplafltMeasInfo":Lcom/android/supl/loc/measure/aflt/AfltMeasure;
    .end local v8    # "afltMeas":[B
    .end local v9    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    :pswitch_2
    const-string v6, "SUPL20_PCM"

    const-string v7, " process MSG_PCM_GET_EOTD_MEAS"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    new-instance v6, Lcom/android/supl/loc/measure/eotd/EOTDParser;

    invoke-direct {v6}, Lcom/android/supl/loc/measure/eotd/EOTDParser;-><init>()V

    .line 617
    .local v6, "eotdParser":Lcom/android/supl/loc/measure/eotd/EOTDParser;
    invoke-virtual {v6}, Lcom/android/supl/loc/measure/eotd/EOTDParser;->getEotdMeasInfo()Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    move-result-object v7

    .line 618
    .local v7, "eotdMeasInfo":Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;
    invoke-virtual {v7, v5}, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->getEOTDMeasInfo(I)[B

    move-result-object v8

    .line 619
    .local v8, "eotdMeas":[B
    new-instance v9, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v9}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 620
    .restart local v9    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    iput-object v8, v9, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 621
    iget-object v10, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v10, v9}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 623
    goto :goto_2

    .line 606
    .end local v6    # "eotdParser":Lcom/android/supl/loc/measure/eotd/EOTDParser;
    .end local v7    # "eotdMeasInfo":Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;
    .end local v8    # "eotdMeas":[B
    .end local v9    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    :pswitch_3
    const-string v6, "SUPL20_PCM"

    const-string v7, " process MSG_PCM_GET_OTDOA_LPP_MEAS"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance v6, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;

    invoke-direct {v6}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;-><init>()V

    .line 608
    .local v6, "lpp_OTDOA_MEASUREMENT":Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;
    invoke-virtual {v6, v5}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;->getOTDOA_MEASUREMENT(I)[B

    move-result-object v7

    .line 609
    .local v7, "bLPPOTDOAMeas":[B
    new-instance v8, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v8}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 610
    .local v8, "sendToServer":Lcom/android/supl/nc/SendToServer;
    iput-object v7, v8, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 611
    iget-object v9, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v9, v8}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 612
    goto :goto_2

    .line 596
    .end local v6    # "lpp_OTDOA_MEASUREMENT":Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;
    .end local v7    # "bLPPOTDOAMeas":[B
    .end local v8    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    :pswitch_4
    const-string v6, "SUPL20_PCM"

    const-string v7, " process MSG_PCM_GET_OTDOA_GSM_MEAS"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v6, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;

    invoke-direct {v6}, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;-><init>()V

    .line 598
    .local v6, "configParser":Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;
    invoke-virtual {v6}, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->getOtdoa_Measurement()Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    move-result-object v7

    .line 599
    .local v7, "measurement":Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;
    invoke-virtual {v7, v5}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->getOTDOA_Measurement(I)[B

    move-result-object v8

    .line 600
    .local v8, "odtoaMeas":[B
    new-instance v9, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v9}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 601
    .restart local v9    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    iput-object v8, v9, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 602
    iget-object v10, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v10, v9}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 603
    goto :goto_2

    .line 636
    .end local v6    # "configParser":Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;
    .end local v7    # "measurement":Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;
    .end local v8    # "odtoaMeas":[B
    .end local v9    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    :pswitch_5
    const-string v6, "SUPL20_PCM"

    const-string v7, " process SUPLOtherMeasureMent NONE "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    goto :goto_2

    .line 639
    :goto_1
    const-string v7, " process SUPL_OTHER_MEAS_AFLT"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :goto_2
    iget-object v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v8, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    array-length v8, v8

    sub-int/2addr v8, v0

    invoke-static {v6, v0, v7, v1, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 646
    iget v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    sub-int/2addr v6, v0

    iput v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 647
    iget v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    add-int/lit8 v7, v0, -0x4

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 648
    goto/16 :goto_5

    .line 583
    .end local v5    # "iMeasureType":I
    :pswitch_6
    const-string v5, "SUPL20_PCM"

    const-string v6, " process MSG_PCM_SYS_IDLE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    array-length v7, v7

    sub-int/2addr v7, v0

    invoke-static {v5, v0, v6, v1, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 586
    iget v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    sub-int/2addr v5, v0

    iput v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 587
    iget v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    add-int/lit8 v6, v0, -0x4

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 588
    goto/16 :goto_5

    .line 555
    :pswitch_7
    const-string v5, "SUPL20_PCM"

    const-string v6, " process MSG_PCM_ON_SI_FAILURE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    new-instance v5, Lcom/android/supl/si/SIFailure;

    invoke-direct {v5}, Lcom/android/supl/si/SIFailure;-><init>()V

    .line 558
    .local v5, "failure":Lcom/android/supl/si/SIFailure;
    invoke-virtual {v5, v3}, Lcom/android/supl/si/SIFailure;->readSIFailure(Ljava/io/DataInputStream;)Z

    move-result v6

    .line 559
    .local v6, "isReadSuccess":Z
    if-nez v6, :cond_2

    .line 560
    goto/16 :goto_5

    .line 562
    :cond_2
    add-int/lit8 v0, v0, 0x6

    .line 565
    iget-object v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v8, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v9, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    array-length v9, v9

    sub-int/2addr v9, v0

    invoke-static {v7, v0, v8, v1, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 568
    iget v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    sub-int/2addr v7, v0

    iput v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 569
    iget v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    add-int/lit8 v8, v0, -0x4

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 571
    goto/16 :goto_5

    .line 536
    .end local v5    # "failure":Lcom/android/supl/si/SIFailure;
    .end local v6    # "isReadSuccess":Z
    :pswitch_8
    const-string v5, "SUPL20_PCM"

    const-string v6, " process MSG_PCM_ON_SI_SESSION_COMPLETE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v5, Lcom/android/supl/si/SISessionComplete;

    invoke-direct {v5}, Lcom/android/supl/si/SISessionComplete;-><init>()V

    .line 539
    .local v5, "sessionComplete":Lcom/android/supl/si/SISessionComplete;
    nop

    .line 540
    invoke-virtual {v5, v3}, Lcom/android/supl/si/SISessionComplete;->readSISessionComplete(Ljava/io/DataInputStream;)Z

    move-result v6

    .line 541
    .restart local v6    # "isReadSuccess":Z
    if-nez v6, :cond_3

    .line 542
    goto/16 :goto_5

    .line 544
    :cond_3
    add-int/lit8 v0, v0, 0x2

    .line 546
    iget-object v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v8, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v9, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    array-length v9, v9

    sub-int/2addr v9, v0

    invoke-static {v7, v0, v8, v1, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 549
    iget v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    sub-int/2addr v7, v0

    iput v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 550
    iget v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    add-int/lit8 v8, v0, -0x4

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 552
    goto/16 :goto_5

    .line 517
    .end local v5    # "sessionComplete":Lcom/android/supl/si/SISessionComplete;
    .end local v6    # "isReadSuccess":Z
    :pswitch_9
    const-string v5, "SUPL20_PCM"

    const-string v6, " process MSG_PCM_ON_SI_LOCATION_REPORT"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v5, Lcom/android/supl/si/SILocationReport;

    invoke-direct {v5}, Lcom/android/supl/si/SILocationReport;-><init>()V

    .line 520
    .local v5, "locationReport":Lcom/android/supl/si/SILocationReport;
    invoke-virtual {v5, v3}, Lcom/android/supl/si/SILocationReport;->readSILocationReport(Ljava/io/DataInputStream;)Z

    move-result v6

    .line 521
    .restart local v6    # "isReadSuccess":Z
    if-nez v6, :cond_4

    .line 522
    goto/16 :goto_5

    .line 525
    :cond_4
    add-int/lit8 v0, v0, 0xa

    .line 528
    iget-object v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v8, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v9, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    array-length v9, v9

    sub-int/2addr v9, v0

    invoke-static {v7, v0, v8, v1, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 531
    iget v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    sub-int/2addr v7, v0

    iput v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 532
    iget v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    add-int/lit8 v8, v0, -0x4

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 533
    goto/16 :goto_5

    .line 499
    .end local v5    # "locationReport":Lcom/android/supl/si/SILocationReport;
    .end local v6    # "isReadSuccess":Z
    :pswitch_a
    const-string v5, "SUPL20_PCM"

    const-string v6, " process MSG_PCM_STOP_TRIGGER_PERIODIC"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    .line 501
    invoke-virtual {v5, v3}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->stopTriggerPeriodic(Ljava/io/DataInputStream;)Z

    move-result v5

    .line 502
    .local v5, "isReadSuccess":Z
    if-nez v5, :cond_5

    .line 503
    goto/16 :goto_5

    .line 505
    :cond_5
    add-int/lit8 v0, v0, 0x3

    .line 508
    iget-object v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v8, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    array-length v8, v8

    sub-int/2addr v8, v0

    invoke-static {v6, v0, v7, v1, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 511
    iget v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    sub-int/2addr v6, v0

    iput v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 512
    iget v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    add-int/lit8 v7, v0, -0x4

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 514
    goto/16 :goto_5

    .line 481
    .end local v5    # "isReadSuccess":Z
    :pswitch_b
    const-string v5, "SUPL20_PCM"

    const-string v6, " process MSG_PCM_START_TRIGGER_PERIODIC"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    .line 483
    invoke-virtual {v5, v3}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->startTriggerPeriodic(Ljava/io/DataInputStream;)Z

    move-result v5

    .line 484
    .restart local v5    # "isReadSuccess":Z
    if-nez v5, :cond_6

    .line 485
    goto/16 :goto_5

    .line 487
    :cond_6
    add-int/lit8 v0, v0, 0xb

    .line 491
    iget-object v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v8, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    array-length v8, v8

    sub-int/2addr v8, v0

    invoke-static {v6, v0, v7, v1, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 494
    iget v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    sub-int/2addr v6, v0

    iput v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 495
    iget v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    add-int/lit8 v7, v0, -0x4

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 496
    goto/16 :goto_5

    .line 455
    .end local v5    # "isReadSuccess":Z
    :pswitch_c
    const-string v5, "SUPL20_PCM"

    const-string v6, " process MSG_PCM_GET_LOCATION_ID"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 458
    .local v5, "iPushModule":I
    add-int/lit8 v0, v0, 0x4

    .line 469
    iget-object v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 470
    .local v6, "message":Landroid/os/Message;
    const/4 v7, 0x3

    iput v7, v6, Landroid/os/Message;->what:I

    .line 471
    iget-object v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 473
    iget-object v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v8, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v9, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    array-length v9, v9

    sub-int/2addr v9, v0

    invoke-static {v7, v0, v8, v1, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 476
    iget v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    sub-int/2addr v7, v0

    iput v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 477
    iget v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    add-int/lit8 v8, v0, -0x4

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 478
    goto/16 :goto_5

    .line 408
    .end local v5    # "iPushModule":I
    .end local v6    # "message":Landroid/os/Message;
    :pswitch_d
    :try_start_2
    const-string v5, "SUPL20_PCM"

    const-string v6, " process MSG_PCM_GET_SET_ID"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 412
    :try_start_3
    const-string v5, "SUPL20_PCM"

    const-string v6, "add 2s delay before fetch set id"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-wide/16 v5, 0x7d0

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 417
    goto :goto_3

    .line 414
    :catch_0
    move-exception v5

    .line 421
    :goto_3
    :try_start_4
    iget-object v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v5}, Lcom/android/supl/loc/SETLocationManager;->forceCellLocationUpdate()V

    .line 422
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 423
    .local v5, "iReqSetType":I
    add-int/lit8 v0, v0, 0x4

    .line 424
    invoke-static {v5}, Lcom/android/supl/loc/SetID;->isValidSetIDRequest(I)Z

    move-result v6

    .line 425
    .local v6, "isValid":Z
    const-string v7, "SUPL20_PCM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "iReqSetType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    if-nez v6, :cond_7

    .line 427
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "SUPL20_PCMprocess: in Valid set id request"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 430
    :cond_7
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v7

    .line 431
    .local v7, "sSessionId":I
    add-int/lit8 v0, v0, 0x2

    .line 432
    if-gez v7, :cond_8

    .line 433
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "SUPL20_PCMprocess: in Valid set id sSessionId"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 436
    :cond_8
    iget-object v8, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v8, v5, v7}, Lcom/android/supl/loc/SETLocationManager;->sendSETIDInfo(II)V

    .line 437
    iget-object v8, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v9, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v10, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    array-length v10, v10

    sub-int/2addr v10, v0

    invoke-static {v8, v0, v9, v1, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 440
    iget v8, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    sub-int/2addr v8, v0

    iput v8, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 441
    iget v8, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    add-int/lit8 v9, v0, -0x4

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 450
    .end local v5    # "iReqSetType":I
    .end local v6    # "isValid":Z
    .end local v7    # "sSessionId":I
    goto/16 :goto_5

    .line 442
    :catch_1
    move-exception v5

    .line 444
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_5
    iget-object v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v8, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    array-length v8, v8

    sub-int/2addr v8, v0

    invoke-static {v6, v0, v7, v1, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 447
    iget v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    sub-int/2addr v6, v0

    iput v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 448
    iget v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    add-int/lit8 v7, v0, -0x4

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 449
    const-string v6, "SUPL20_PCM"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 451
    .end local v5    # "ex":Ljava/lang/Exception;
    goto/16 :goto_5

    .line 370
    :pswitch_e
    :try_start_6
    const-string v5, "SUPL20_PCM"

    const-string v6, "process hello msg"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 374
    .local v5, "iMagicNum":I
    add-int/lit8 v0, v0, 0x4

    .line 375
    const v6, 0x53589793

    if-ne v5, v6, :cond_a

    .line 376
    const-string v6, "SUPL20_PCM"

    const-string v7, "init msg success"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v8, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    array-length v8, v8

    sub-int/2addr v8, v0

    invoke-static {v6, v0, v7, v1, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 384
    iget v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    sub-int/2addr v6, v0

    iput v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 385
    iget v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    add-int/lit8 v7, v0, -0x4

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 386
    iget-object v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->pauseLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 387
    :try_start_7
    iget-boolean v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->isPause:Z

    if-nez v7, :cond_9

    .line 388
    invoke-virtual {p0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendHelloMessage()V

    .line 390
    :cond_9
    monitor-exit v6

    .line 394
    .end local v5    # "iMagicNum":I
    goto/16 :goto_5

    .line 390
    .restart local v5    # "iMagicNum":I
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v7
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 378
    :cond_a
    goto/16 :goto_6

    .line 391
    .end local v5    # "iMagicNum":I
    :catch_2
    move-exception v5

    .line 393
    .local v5, "ex":Ljava/io/IOException;
    :try_start_9
    const-string v6, "SUPL20_PCM"

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    .end local v5    # "ex":Ljava/io/IOException;
    goto/16 :goto_5

    .line 574
    :pswitch_f
    const-string v5, "SUPL20_PCM"

    const-string v6, " process MSG_PCM_BYE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {p0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->stopNetWork()V

    .line 576
    iget-object v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    array-length v7, v7

    sub-int/2addr v7, v0

    invoke-static {v5, v0, v6, v1, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 578
    iget v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    sub-int/2addr v5, v0

    iput v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 579
    iget v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    add-int/lit8 v6, v0, -0x4

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 580
    goto/16 :goto_5

    .line 399
    :cond_b
    iget-object v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    array-length v7, v7

    sub-int/2addr v7, v0

    invoke-static {v5, v0, v6, v1, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 402
    iget v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    sub-int/2addr v5, v0

    iput v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 403
    iget v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    add-int/lit8 v6, v0, -0x4

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 404
    goto/16 :goto_5

    .line 671
    :cond_c
    const-string v5, "SUPL20_PCM"

    const-string v6, " process MSG_PCM_GET_HIST_KEY"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    array-length v7, v7

    sub-int/2addr v7, v0

    invoke-static {v5, v0, v6, v1, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 674
    iget v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    sub-int/2addr v5, v0

    iput v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 675
    iget v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    add-int/lit8 v6, v0, -0x4

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 680
    :try_start_a
    iget-object v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->final_key:Ljavax/crypto/SecretKey;

    if-nez v5, :cond_d

    .line 682
    const-string v5, "SUPL20_PCM"

    const-string v6, "generator a key"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string v5, "AES"

    invoke-static {v5}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v5

    .line 686
    .local v5, "keyGen":Ljavax/crypto/KeyGenerator;
    const/16 v6, 0x80

    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 687
    invoke-virtual {v5}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    iput-object v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->final_key:Ljavax/crypto/SecretKey;

    .line 688
    .end local v5    # "keyGen":Ljavax/crypto/KeyGenerator;
    goto :goto_4

    .line 691
    :cond_d
    const-string v5, "SUPL20_PCM"

    const-string v6, "key is already exist."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 705
    :goto_4
    nop

    .line 707
    :try_start_b
    iget-object v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->final_key:Ljavax/crypto/SecretKey;

    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    .line 708
    .local v5, "key":[B
    new-instance v6, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v6}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 709
    .local v6, "packet":Lcom/android/supl/nc/SendToServer;
    const/16 v7, 0x8

    array-length v8, v5

    add-int/2addr v7, v8

    new-array v7, v7, [B

    iput-object v7, v6, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 710
    const/4 v7, 0x0

    .line 711
    .local v7, "iOffset":I
    iget-object v8, v6, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    iget-object v9, v6, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    array-length v9, v9

    add-int/lit8 v9, v9, -0x4

    invoke-static {v8, v7, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v8

    move v7, v8

    .line 712
    iget-object v8, v6, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    const/16 v9, 0x11b

    invoke-static {v8, v7, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v8

    move v7, v8

    .line 713
    iget-object v8, v6, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    array-length v9, v5

    invoke-static {v5, v1, v8, v7, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 714
    invoke-virtual {p0, v6}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 715
    goto :goto_5

    .line 700
    .end local v5    # "key":[B
    .end local v6    # "packet":Lcom/android/supl/nc/SendToServer;
    .end local v7    # "iOffset":I
    :catch_3
    move-exception v5

    .line 702
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "SUPL20_PCM"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 704
    goto :goto_5

    .line 694
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v5

    .line 696
    .local v5, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v6, "SUPL20_PCM"

    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 698
    goto :goto_5

    .line 651
    .end local v5    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_e
    const-string v5, "SUPL20_PCM"

    const-string v6, " process MSG_PCM_GET_SIM_MCC_MNC"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    .line 654
    .local v5, "sSessionId":I
    add-int/lit8 v0, v0, 0x2

    .line 655
    if-gez v5, :cond_f

    .line 656
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "SUPL20_PCMprocess: in Valid set id sSessionId"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 659
    :cond_f
    iget-object v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    if-eqz v6, :cond_10

    .line 660
    iget-object v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v6, v5}, Lcom/android/supl/loc/SETLocationManager;->getSIM_Mnc_MCC(I)Lcom/android/supl/nc/SendToServer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 664
    :cond_10
    iget-object v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v7, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    iget-object v8, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    array-length v8, v8

    sub-int/2addr v8, v0

    invoke-static {v6, v0, v7, v1, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 666
    iget v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    sub-int/2addr v6, v0

    iput v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 667
    iget v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    add-int/lit8 v7, v0, -0x4

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 668
    nop

    .line 732
    .end local v4    # "icmdID":I
    .end local v5    # "sSessionId":I
    :goto_5
    goto :goto_7

    .line 366
    .restart local v4    # "icmdID":I
    :cond_11
    nop

    .line 734
    .end local v0    # "iReadLen":I
    .end local v2    # "iPacketSize":I
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v4    # "icmdID":I
    :goto_6
    return-void

    .line 729
    .restart local v0    # "iReadLen":I
    .restart local v2    # "iPacketSize":I
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :catch_5
    move-exception v4

    .line 731
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "SUPL20_PCM"

    const-string v6, "Error in process "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 733
    .end local v0    # "iReadLen":I
    .end local v2    # "iPacketSize":I
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    :goto_7
    goto/16 :goto_0

    .line 324
    :catch_6
    move-exception v0

    .line 325
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "SUPL20_PCM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process m_bMasterBuffer overflow,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iput v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 327
    iput v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 328
    return-void

    .line 331
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_12
    const-string v0, "SUPL20_PCM"

    const-string v2, "m_bMasterBuff is null or fromServer is null or m_bMasterBuffer overflow!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iput v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 333
    iput v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 334
    return-void

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x112
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public reInit()V
    .locals 3

    .line 786
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->pauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 787
    :try_start_0
    iget-boolean v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->isPause:Z

    if-eqz v1, :cond_0

    .line 788
    const-string v1, "SUPL20_PCM"

    const-string v2, "PCM reInit invoked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    invoke-virtual {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->getThreadName()Ljava/lang/String;

    move-result-object v1

    .line 790
    .local v1, "stThrName":Ljava/lang/String;
    new-instance v2, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    invoke-direct {v2, p0, v1}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;-><init>(Lcom/android/supl/commprocessor/NDKCommProcessor;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    .line 791
    iget-object v2, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v2}, Lcom/android/supl/nc/NetworkController;->initRead_WriteThread()V

    .line 792
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->isPause:Z

    .line 795
    .end local v1    # "stThrName":Ljava/lang/String;
    :cond_0
    monitor-exit v0

    .line 796
    return-void

    .line 795
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendByeMessage()V
    .locals 5

    .line 263
    new-instance v0, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v0}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 264
    .local v0, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/16 v1, 0xc

    new-array v1, v1, [B

    .line 266
    .local v1, "bData":[B
    const/4 v2, 0x0

    .line 267
    .local v2, "offset":I
    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 268
    const/16 v3, 0x100

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 269
    iput-object v1, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 270
    iget-object v3, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v3, v0}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 271
    const-string v3, "SUPL20_PCM"

    const-string v4, "sendByeMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->handshake_with_server:Z

    .line 273
    return-void
.end method

.method public sendHelloMessage()V
    .locals 5

    .line 199
    new-instance v0, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v0}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 201
    .local v0, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/16 v1, 0xc

    new-array v1, v1, [B

    .line 203
    .local v1, "bData":[B
    const/4 v2, 0x0

    .line 204
    .local v2, "offset":I
    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 205
    const/16 v3, 0x109

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 206
    const v3, 0x31415926

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 207
    iput-object v1, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 208
    iget-object v3, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v3, v0}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 209
    const-string v3, "SUPL20_PCM"

    const-string v4, "sendHelloMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->handshake_with_server:Z

    .line 213
    iget-object v4, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 214
    .local v4, "message":Landroid/os/Message;
    iput v3, v4, Landroid/os/Message;->what:I

    .line 215
    iget-object v3, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    return-void
.end method

.method public sendServer(Lcom/android/supl/nc/SendToServer;)V
    .locals 2
    .param p1, "sendToServer"    # Lcom/android/supl/nc/SendToServer;

    .line 282
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v0}, Lcom/android/supl/loc/SETLocationManager;->isGlobalVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v0, p1}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    goto :goto_0

    .line 285
    :cond_0
    iget-boolean v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->handshake_with_server:Z

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v0, p1}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    goto :goto_0

    .line 288
    :cond_1
    const-string v0, "SUPL20_PCM"

    const-string v1, "no handshake, dont send msg to server"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_0
    return-void
.end method

.method public stopNetWork()V
    .locals 4

    .line 740
    const-string v0, "SUPL20_PCM"

    const-string v1, "PCM stopNetWork invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    invoke-virtual {v0}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->stopRead()V

    .line 742
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/supl/nc/NetworkController;->stop(ZLjava/lang/Object;Z)Z

    .line 744
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->getNetWorkID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

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

    .line 298
    if-eqz p1, :cond_1

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    invoke-static {v0}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->access$100(Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    invoke-static {v0}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->access$100(Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 307
    :cond_0
    goto :goto_0

    .line 299
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fromServer object must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v1, "SUPL20_PCM"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

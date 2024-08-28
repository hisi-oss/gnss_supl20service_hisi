.class public Lcom/android/supl/SUPLHIDLInterface;
.super Ljava/lang/Object;
.source "SUPLHIDLInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;,
        Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SUPLHIDL"

.field private static mHiSuplCb:Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;

.field private static mSUPLHIDLInterface:Lcom/android/supl/SUPLHIDLInterface;

.field private static final sWatcherLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHidlDeathHandler:Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;

.field private mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

.field private final mObject:Ljava/lang/Object;

.field private mSuplServiceMgr:Lcom/android/supl/nc/SuplServiceMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/supl/SUPLHIDLInterface;->sWatcherLock:Ljava/lang/Object;

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/android/supl/SUPLHIDLInterface;->mHiSuplCb:Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    .line 25
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/supl/SUPLHIDLInterface;->mObject:Ljava/lang/Object;

    .line 32
    iput-object v0, p0, Lcom/android/supl/SUPLHIDLInterface;->mSuplServiceMgr:Lcom/android/supl/nc/SuplServiceMgr;

    .line 52
    iput-object p1, p0, Lcom/android/supl/SUPLHIDLInterface;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;

    invoke-direct {v0, p0}, Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;-><init>(Lcom/android/supl/SUPLHIDLInterface;)V

    sput-object v0, Lcom/android/supl/SUPLHIDLInterface;->mHiSuplCb:Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;

    .line 54
    const-string v0, "SUPLHIDL"

    const-string v1, "getISuplService"

    invoke-static {v0, v1}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-direct {p0}, Lcom/android/supl/SUPLHIDLInterface;->getISuplService()V

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/android/supl/SUPLHIDLInterface;)Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/SUPLHIDLInterface;

    .line 21
    iget-object v0, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/supl/SUPLHIDLInterface;Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;)Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;
    .locals 0
    .param p0, "x0"    # Lcom/android/supl/SUPLHIDLInterface;
    .param p1, "x1"    # Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    .line 21
    iput-object p1, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/supl/SUPLHIDLInterface;)Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/SUPLHIDLInterface;

    .line 21
    iget-object v0, p0, Lcom/android/supl/SUPLHIDLInterface;->mHidlDeathHandler:Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/supl/SUPLHIDLInterface;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/SUPLHIDLInterface;

    .line 21
    iget-object v0, p0, Lcom/android/supl/SUPLHIDLInterface;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/supl/SUPLHIDLInterface;)Lcom/android/supl/nc/SuplServiceMgr;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/SUPLHIDLInterface;

    .line 21
    iget-object v0, p0, Lcom/android/supl/SUPLHIDLInterface;->mSuplServiceMgr:Lcom/android/supl/nc/SuplServiceMgr;

    return-object v0
.end method

.method public static createSUPLHIDLInterface(Landroid/content/Context;)Lcom/android/supl/SUPLHIDLInterface;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 38
    sget-object v0, Lcom/android/supl/SUPLHIDLInterface;->sWatcherLock:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/android/supl/SUPLHIDLInterface;->mSUPLHIDLInterface:Lcom/android/supl/SUPLHIDLInterface;

    if-nez v1, :cond_0

    .line 40
    const-string v1, "SUPLHIDL"

    const-string v2, "new one"

    invoke-static {v1, v2}, Lcom/android/supl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v1, Lcom/android/supl/SUPLHIDLInterface;

    invoke-direct {v1, p0}, Lcom/android/supl/SUPLHIDLInterface;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/supl/SUPLHIDLInterface;->mSUPLHIDLInterface:Lcom/android/supl/SUPLHIDLInterface;

    .line 43
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    sget-object v0, Lcom/android/supl/SUPLHIDLInterface;->mSUPLHIDLInterface:Lcom/android/supl/SUPLHIDLInterface;

    return-object v0

    .line 43
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private declared-synchronized getISuplService()V
    .locals 4

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "SUPLHIDL"

    const-string v1, "Get getISuplService service not null."

    invoke-static {v0, v1}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 104
    :cond_0
    :try_start_1
    invoke-static {}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;->getService()Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    .line 105
    iget-object v0, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    if-eqz v0, :cond_1

    .line 106
    const-string v0, "SUPLHIDL"

    const-string v1, "Get mISupl service success."

    invoke-static {v0, v1}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    sget-object v1, Lcom/android/supl/SUPLHIDLInterface;->mHiSuplCb:Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;

    invoke-interface {v0, v1}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;->setCallback(Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks;)Z

    .line 108
    new-instance v0, Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;-><init>(Lcom/android/supl/SUPLHIDLInterface;Lcom/android/supl/SUPLHIDLInterface$1;)V

    iput-object v0, p0, Lcom/android/supl/SUPLHIDLInterface;->mHidlDeathHandler:Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;

    .line 109
    iget-object v0, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    iget-object v1, p0, Lcom/android/supl/SUPLHIDLInterface;->mHidlDeathHandler:Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    goto :goto_0

    .line 111
    :cond_1
    const-string v0, "SUPLHIDL"

    const-string v1, "mISupl return null"

    invoke-static {v0, v1}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :goto_0
    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "SUPLHIDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/supl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 113
    :catch_1
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SUPLHIDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getting ISupl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/supl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 118
    :goto_1
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/supl/SUPLHIDLInterface;
    throw v0
.end method


# virtual methods
.method public declared-synchronized SendMsg2PCM(Lcom/android/supl/nc/SendToServer;)V
    .locals 5
    .param p1, "msg"    # Lcom/android/supl/nc/SendToServer;

    monitor-enter p0

    .line 60
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/supl/nc/SendToServer;->m_iPacketSize:I

    const/16 v1, 0x4000

    if-ge v0, v1, :cond_1

    .line 61
    new-instance v0, Lvendor/huawei/hardware/hisupl/V1_0/client2server;

    invoke-direct {v0}, Lvendor/huawei/hardware/hisupl/V1_0/client2server;-><init>()V

    .line 62
    .local v0, "c2s":Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    iget-object v1, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    array-length v1, v1

    iput v1, v0, Lvendor/huawei/hardware/hisupl/V1_0/client2server;->packetSize:I

    .line 63
    iget-object v1, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    iget-object v2, v0, Lvendor/huawei/hardware/hisupl/V1_0/client2server;->c2s_packet:[B

    iget v3, v0, Lvendor/huawei/hardware/hisupl/V1_0/client2server;->packetSize:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :try_start_1
    iget-object v1, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    invoke-interface {v1, v0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;->suplPlatformServiceSend2server(Lvendor/huawei/hardware/hisupl/V1_0/client2server;)Z

    .line 67
    const-string v1, "SUPLHIDL"

    const-string v2, "suplPlatformServiceSend2server send."

    invoke-static {v1, v2}, Lcom/android/supl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :cond_0
    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 72
    .end local v0    # "c2s":Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 59
    .end local p1    # "msg":Lcom/android/supl/nc/SendToServer;
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 74
    .restart local p1    # "msg":Lcom/android/supl/nc/SendToServer;
    :cond_1
    const-string v0, "SUPLHIDL"

    const-string v1, "msg is null or msg size too big"

    invoke-static {v0, v1}, Lcom/android/supl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    :goto_1
    monitor-exit p0

    return-void

    .line 59
    .end local p1    # "msg":Lcom/android/supl/nc/SendToServer;
    :goto_2
    monitor-exit p0

    .end local p0    # "this":Lcom/android/supl/SUPLHIDLInterface;
    throw p1
.end method

.method public declared-synchronized SendMsg2SCM(Lcom/android/supl/nc/SendToServer;)V
    .locals 5
    .param p1, "msg"    # Lcom/android/supl/nc/SendToServer;

    monitor-enter p0

    .line 80
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    array-length v0, v0

    const/16 v1, 0x4000

    if-ge v0, v1, :cond_1

    .line 81
    new-instance v0, Lvendor/huawei/hardware/hisupl/V1_0/client2server;

    invoke-direct {v0}, Lvendor/huawei/hardware/hisupl/V1_0/client2server;-><init>()V

    .line 82
    .local v0, "c2s":Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    iget-object v1, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    array-length v1, v1

    iput v1, v0, Lvendor/huawei/hardware/hisupl/V1_0/client2server;->packetSize:I

    .line 83
    iget-object v1, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    iget-object v2, v0, Lvendor/huawei/hardware/hisupl/V1_0/client2server;->c2s_packet:[B

    iget v3, v0, Lvendor/huawei/hardware/hisupl/V1_0/client2server;->packetSize:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :try_start_1
    iget-object v1, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    invoke-interface {v1, v0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;->suplCommServiceSend2server(Lvendor/huawei/hardware/hisupl/V1_0/client2server;)Z

    .line 87
    const-string v1, "SUPLHIDL"

    const-string v2, "suplCommServiceSend2server send."

    invoke-static {v1, v2}, Lcom/android/supl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :cond_0
    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 92
    .end local v0    # "c2s":Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 79
    .end local p1    # "msg":Lcom/android/supl/nc/SendToServer;
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 94
    .restart local p1    # "msg":Lcom/android/supl/nc/SendToServer;
    :cond_1
    const-string v0, "SUPLHIDL"

    const-string v1, "msg is null or msg size too big"

    invoke-static {v0, v1}, Lcom/android/supl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :goto_1
    monitor-exit p0

    return-void

    .line 79
    .end local p1    # "msg":Lcom/android/supl/nc/SendToServer;
    :goto_2
    monitor-exit p0

    .end local p0    # "this":Lcom/android/supl/SUPLHIDLInterface;
    throw p1
.end method

.method public setSuplServiceMgr(Lcom/android/supl/nc/SuplServiceMgr;)V
    .locals 0
    .param p1, "mgr"    # Lcom/android/supl/nc/SuplServiceMgr;

    .line 48
    iput-object p1, p0, Lcom/android/supl/SUPLHIDLInterface;->mSuplServiceMgr:Lcom/android/supl/nc/SuplServiceMgr;

    .line 49
    return-void
.end method

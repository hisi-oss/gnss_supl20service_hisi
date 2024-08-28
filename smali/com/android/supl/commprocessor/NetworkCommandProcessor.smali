.class public Lcom/android/supl/commprocessor/NetworkCommandProcessor;
.super Ljava/lang/Object;
.source "NetworkCommandProcessor.java"

# interfaces
.implements Lcom/android/supl/commprocessor/CommandProcessor;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SUPL20_NetCP"

.field private static final MAX_NETWORK_ID:I = 0xff

.field public static sNetworkID:I


# instance fields
.field private configManager:Lcom/android/supl/config/ConfigManager;

.field private netWorkIDSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private scp:Lcom/android/supl/commprocessor/ServerCommProcessor;

.field private slpSession:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/supl/nc/NetworkController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const/4 v0, -0x1

    sput v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    return-void
.end method

.method public constructor <init>(Lcom/android/supl/commprocessor/ServerCommProcessor;)V
    .locals 1
    .param p1, "cp"    # Lcom/android/supl/commprocessor/ServerCommProcessor;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    .line 59
    iput-object v0, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->scp:Lcom/android/supl/commprocessor/ServerCommProcessor;

    .line 61
    iput-object v0, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->netWorkIDSet:Ljava/util/HashSet;

    .line 64
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->configManager:Lcom/android/supl/config/ConfigManager;

    .line 66
    iput-object p1, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->scp:Lcom/android/supl/commprocessor/ServerCommProcessor;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/supl/commprocessor/NetworkCommandProcessor;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .line 54
    iget-object v0, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->netWorkIDSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/supl/commprocessor/NetworkCommandProcessor;Lcom/android/supl/nc/NetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/supl/commprocessor/NetworkCommandProcessor;
    .param p1, "x1"    # Lcom/android/supl/nc/NetworkController;
    .param p2, "x2"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->removeConnectFailerSession(Lcom/android/supl/nc/NetworkController;Ljava/lang/String;)V

    return-void
.end method

.method private removeConnectFailerSession(Lcom/android/supl/nc/NetworkController;Ljava/lang/String;)V
    .locals 5
    .param p1, "nc"    # Lcom/android/supl/nc/NetworkController;
    .param p2, "stKey"    # Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    monitor-enter v0

    .line 449
    :try_start_0
    invoke-virtual {p1}, Lcom/android/supl/nc/NetworkController;->getConnectionCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 450
    iget-object v1, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/supl/nc/NetworkController;

    .line 451
    .local v1, "networkController":Lcom/android/supl/nc/NetworkController;
    const-string v2, "SUPL20_NetCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed Session  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .end local v1    # "networkController":Lcom/android/supl/nc/NetworkController;
    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {p1}, Lcom/android/supl/nc/NetworkController;->decrementConnectionCount()V

    .line 456
    :goto_0
    monitor-exit v0

    .line 457
    return-void

    .line 456
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public connect(Ljava/lang/String;IIIIII)Z
    .locals 15
    .param p1, "stIP"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "iSecure"    # I
    .param p4, "iSessionID"    # I
    .param p5, "iReqID"    # I
    .param p6, "iHandShakeTimeOut"    # I
    .param p7, "iConnTimeOut"    # I

    move-object v10, p0

    move/from16 v11, p4

    move/from16 v12, p5

    .line 255
    invoke-virtual/range {p0 .. p3}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->getSNC(Ljava/lang/String;II)Lcom/android/supl/nc/NetworkController;

    move-result-object v13

    .line 257
    .local v13, "networkController":Lcom/android/supl/nc/NetworkController;
    new-instance v14, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;

    move-object v0, v14

    move-object v1, v10

    move-object v2, v13

    move v3, v11

    move v4, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;-><init>(Lcom/android/supl/commprocessor/NetworkCommandProcessor;Lcom/android/supl/nc/NetworkController;IILjava/lang/String;IIII)V

    .line 289
    .local v0, "connThread":Ljava/lang/Thread;
    const/4 v1, 0x0

    if-eqz v13, :cond_1

    .line 290
    invoke-virtual {v13, v10}, Lcom/android/supl/nc/NetworkController;->setNetworkCommProceeor(Lcom/android/supl/commprocessor/NetworkCommandProcessor;)V

    .line 291
    invoke-virtual {v13}, Lcom/android/supl/nc/NetworkController;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetCM connection thread SID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 295
    :cond_0
    const-string v2, "SUPL20_NetCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Req id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is connected to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v13}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v13}, Lcom/android/supl/nc/NetworkController;->getNetWorkID()I

    move-result v2

    invoke-virtual {v10, v11, v12, v2}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sendOnConnectionStatus(III)V

    goto :goto_0

    .line 301
    :cond_1
    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 302
    .local v3, "iFailStatus":[I
    const-string v4, "SUPL20_NetCP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Req id :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is not connect for no more connection allowed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    aput v2, v3, v1

    .line 305
    invoke-virtual {v10, v11, v12, v3}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sendNotConnectionStatus(II[I)V

    .line 307
    .end local v3    # "iFailStatus":[I
    :goto_0
    return v1
.end method

.method public disConnectAllNetWork()V
    .locals 8

    .line 204
    const-string v0, "SUPL20_NetCP"

    const-string v1, "disConnectAllNetWork Entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    monitor-enter v0

    .line 207
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 208
    .local v1, "ncSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 209
    .local v3, "stNetKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/supl/nc/NetworkController;

    .line 210
    .local v4, "nc":Lcom/android/supl/nc/NetworkController;
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/supl/nc/NetworkController;->stop(ZLjava/lang/Object;Z)Z

    .line 211
    const-string v5, "SUPL20_NetCP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stop network "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v3    # "stNetKey":Ljava/lang/String;
    .end local v4    # "nc":Lcom/android/supl/nc/NetworkController;
    goto :goto_0

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 214
    const-string v2, "SUPL20_NetCP"

    const-string v3, "Cleared slpSession"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v2, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->netWorkIDSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 216
    .end local v1    # "ncSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 218
    :cond_1
    :goto_1
    const-string v0, "SUPL20_NetCP"

    const-string v1, "disConnectAllNetWork Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method public disconnectByNetworkID(I)V
    .locals 7
    .param p1, "iNeworkID"    # I

    .line 226
    iget-object v0, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    monitor-enter v0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 229
    .local v1, "ncSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 230
    .local v3, "stNetKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/supl/nc/NetworkController;

    .line 231
    .local v4, "nc":Lcom/android/supl/nc/NetworkController;
    invoke-virtual {v4, p1}, Lcom/android/supl/nc/NetworkController;->isNetWorkMatch(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 232
    const-string v2, "SUPL20_NetCP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stop network by NeworkID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/supl/nc/NetworkController;->stop(ZLjava/lang/Object;Z)Z

    .line 236
    goto :goto_1

    .line 238
    .end local v3    # "stNetKey":Ljava/lang/String;
    .end local v4    # "nc":Lcom/android/supl/nc/NetworkController;
    :cond_0
    goto :goto_0

    .line 239
    .end local v1    # "ncSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 241
    :cond_2
    :goto_2
    return-void
.end method

.method public getNetKey(Ljava/lang/String;III)Ljava/lang/String;
    .locals 3
    .param p1, "stIP"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "iSecure"    # I
    .param p4, "iNetWID"    # I

    .line 161
    const-string v0, "SUPL20_NetCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetKey Entry with stIP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "iSecure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "NWID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "st_key":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 164
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 166
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    return-object v0
.end method

.method public getSNC(Ljava/lang/String;II)Lcom/android/supl/nc/NetworkController;
    .locals 27
    .param p1, "stIP"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "iSecure"    # I

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 77
    move/from16 v12, p3

    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v13

    .line 78
    .local v13, "configManager":Lcom/android/supl/config/ConfigManager;
    const/4 v0, 0x0

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lcom/android/supl/config/ConfigManager;->getLocationSwitchEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const-string v1, "SUPL20_NetCP"

    const-string v2, "getSNC location disable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-object v0

    .line 83
    :cond_0
    const-string v1, "SUPL20_NetCP"

    const-string v2, "getSNC Entry"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "nc":Lcom/android/supl/nc/NetworkController;
    iget-object v2, v9, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 86
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v9, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    .line 88
    :cond_1
    iget-object v2, v9, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->netWorkIDSet:Ljava/util/HashSet;

    const/4 v14, 0x1

    if-nez v2, :cond_2

    .line 89
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v14}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, v9, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->netWorkIDSet:Ljava/util/HashSet;

    .line 91
    :cond_2
    const/4 v15, 0x0

    .line 92
    .local v15, "isNoMoreFreeNetwork":Z
    const/16 v16, 0x0

    move-object/from16 v17, v1

    move/from16 v1, v16

    .line 94
    .local v1, "iNoNetIterateCount":I
    .local v17, "nc":Lcom/android/supl/nc/NetworkController;
    :goto_0
    sget v2, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    const/16 v18, -0x1

    const/16 v8, 0xff

    if-ne v2, v8, :cond_3

    .line 95
    sput v18, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    .line 97
    :cond_3
    sget v2, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    add-int/2addr v2, v14

    sput v2, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    .line 98
    add-int/lit8 v19, v1, 0x1

    .line 99
    .end local v1    # "iNoNetIterateCount":I
    .local v19, "iNoNetIterateCount":I
    sget v1, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    invoke-virtual {v9, v10, v11, v12, v1}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->getNetKey(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v7

    .line 100
    .local v7, "st_key":Ljava/lang/String;
    iget-object v6, v9, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    monitor-enter v6

    .line 101
    :try_start_0
    iget-object v1, v9, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-nez v1, :cond_8

    .line 103
    :try_start_1
    new-instance v20, Lcom/android/supl/nc/NetworkController;

    const-string v21, "NetCM read thread"

    const-string v22, "NetCM write thread"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v23, 0x0

    move-object/from16 v1, v20

    move v2, v12

    move-object v3, v10

    move v4, v11

    move-object v5, v9

    move-object/from16 v24, v6

    move-object/from16 v6, v21

    move-object/from16 v25, v7

    move-object/from16 v7, v22

    .end local v7    # "st_key":Ljava/lang/String;
    .local v25, "st_key":Ljava/lang/String;
    move v0, v8

    move/from16 v8, v23

    :try_start_2
    invoke-direct/range {v1 .. v8}, Lcom/android/supl/nc/NetworkController;-><init>(ILjava/lang/String;ILcom/android/supl/commprocessor/CommandProcessor;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, v20

    .line 108
    .end local v17    # "nc":Lcom/android/supl/nc/NetworkController;
    .local v1, "nc":Lcom/android/supl/nc/NetworkController;
    const/4 v2, 0x0

    .line 109
    .local v2, "iIterateCount":I
    move v3, v2

    move/from16 v2, v16

    .line 112
    .local v2, "isFreeNetWorkIDFound":Z
    .local v3, "iIterateCount":I
    :cond_4
    :try_start_3
    iget-object v4, v9, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->netWorkIDSet:Ljava/util/HashSet;

    sget v5, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 113
    iget-object v4, v9, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->netWorkIDSet:Ljava/util/HashSet;

    sget v5, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    const/4 v2, 0x1

    .line 130
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 116
    :cond_6
    const/4 v2, 0x0

    .line 117
    sget v4, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    add-int/2addr v4, v14

    sput v4, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    .line 118
    add-int/lit8 v3, v3, 0x1

    .line 119
    sget v4, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    if-ne v4, v0, :cond_7

    .line 120
    sput v18, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    .line 122
    :cond_7
    const-string v4, "SUPL20_NetCP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No free Network id :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-ne v3, v0, :cond_5

    .line 124
    const-string v0, "SUPL20_NetCP"

    const-string v4, "Never obtained free Network id "

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    monitor-exit v24

    const/4 v4, 0x0

    return-object v4

    .line 130
    :goto_1
    if-eqz v2, :cond_4

    .line 131
    const-string v0, "SUPL20_NetCP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New Network id :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is created"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    invoke-virtual {v1, v0}, Lcom/android/supl/nc/NetworkController;->setNetWorkID(I)V

    .line 133
    sget v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    invoke-virtual {v9, v10, v11, v12, v0}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->getNetKey(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v7, v0

    .line 134
    .end local v25    # "st_key":Ljava/lang/String;
    .restart local v7    # "st_key":Ljava/lang/String;
    :try_start_4
    iget-object v0, v9, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 135
    .end local v2    # "isFreeNetWorkIDFound":Z
    .end local v3    # "iIterateCount":I
    goto :goto_3

    .line 154
    .end local v7    # "st_key":Ljava/lang/String;
    .restart local v25    # "st_key":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_2

    .end local v1    # "nc":Lcom/android/supl/nc/NetworkController;
    .restart local v17    # "nc":Lcom/android/supl/nc/NetworkController;
    :catchall_1
    move-exception v0

    .end local v25    # "st_key":Ljava/lang/String;
    .restart local v7    # "st_key":Ljava/lang/String;
    :goto_2
    move-object/from16 v7, v25

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    .end local v7    # "st_key":Ljava/lang/String;
    .restart local v25    # "st_key":Ljava/lang/String;
    goto :goto_4

    .line 148
    .end local v25    # "st_key":Ljava/lang/String;
    .restart local v7    # "st_key":Ljava/lang/String;
    :cond_8
    move-object v4, v0

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    .end local v7    # "st_key":Ljava/lang/String;
    .restart local v25    # "st_key":Ljava/lang/String;
    :try_start_5
    sget v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    sub-int/2addr v0, v14

    sput v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    .line 149
    iget-object v0, v9, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object/from16 v1, v25

    :try_start_6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v25    # "st_key":Ljava/lang/String;
    .local v1, "st_key":Ljava/lang/String;
    check-cast v0, Lcom/android/supl/nc/NetworkController;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 152
    .end local v17    # "nc":Lcom/android/supl/nc/NetworkController;
    .local v0, "nc":Lcom/android/supl/nc/NetworkController;
    move-object v7, v1

    move-object v1, v0

    .end local v0    # "nc":Lcom/android/supl/nc/NetworkController;
    .local v1, "nc":Lcom/android/supl/nc/NetworkController;
    .restart local v7    # "st_key":Ljava/lang/String;
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->upDateConnectionCount()V

    .line 153
    const-string v0, "SUPL20_NetCP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSNC Exit with concount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->getConnectionCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    monitor-exit v24
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 155
    .end local v7    # "st_key":Ljava/lang/String;
    if-nez v15, :cond_9

    .line 156
    return-object v1

    .line 92
    :cond_9
    move-object/from16 v17, v1

    move-object v0, v4

    move/from16 v1, v19

    goto/16 :goto_0

    .line 154
    .restart local v7    # "st_key":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_4

    .end local v7    # "st_key":Ljava/lang/String;
    .local v1, "st_key":Ljava/lang/String;
    .restart local v17    # "nc":Lcom/android/supl/nc/NetworkController;
    :catchall_4
    move-exception v0

    move-object v7, v1

    goto :goto_4

    .end local v1    # "st_key":Ljava/lang/String;
    .restart local v25    # "st_key":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v1, v25

    move-object v7, v1

    .end local v25    # "st_key":Ljava/lang/String;
    .restart local v1    # "st_key":Ljava/lang/String;
    goto :goto_4

    .end local v1    # "st_key":Ljava/lang/String;
    .restart local v7    # "st_key":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 v24, v6

    move-object v1, v7

    :goto_4
    :try_start_8
    monitor-exit v24
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_4
.end method

.method public init()Z
    .locals 1

    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public process(Lcom/android/supl/commprocessor/FromServer;)V
    .locals 0
    .param p1, "fromServer"    # Lcom/android/supl/commprocessor/FromServer;

    .line 437
    return-void
.end method

.method public removeFailerSession(Ljava/lang/String;)V
    .locals 5
    .param p1, "stKey"    # Ljava/lang/String;

    .line 460
    iget-object v0, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    monitor-enter v0

    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/supl/nc/NetworkController;

    .line 462
    .local v1, "networkController":Lcom/android/supl/nc/NetworkController;
    const-string v2, "SUPL20_NetCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed Session  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .end local v1    # "networkController":Lcom/android/supl/nc/NetworkController;
    monitor-exit v0

    .line 464
    return-void

    .line 463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendByeMessage()V
    .locals 0

    .line 422
    return-void
.end method

.method public sendDataByNetworkID([BI)Z
    .locals 9
    .param p1, "bData"    # [B
    .param p2, "iNeworkID"    # I

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "isFindSLPSession":Z
    iget-object v1, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 184
    .local v2, "ncSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 185
    .local v4, "stNetKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/supl/nc/NetworkController;

    .line 186
    .local v5, "nc":Lcom/android/supl/nc/NetworkController;
    const-string v6, "SUPL20_NetCP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nc stNetKey"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v6, "SUPL20_NetCP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "incoming network id ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "session networkid ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/supl/nc/NetworkController;->getNetWorkID()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v5, p2}, Lcom/android/supl/nc/NetworkController;->isNetWorkMatch(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    new-instance v3, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v3}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 190
    .local v3, "sendToServer":Lcom/android/supl/nc/SendToServer;
    iput-object p1, v3, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 191
    const-string v6, "SUPL20_NetCP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NetworkCP Send to server "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v5, v3}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 193
    const/4 v0, 0x1

    .line 194
    goto :goto_1

    .line 196
    .end local v3    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    .end local v4    # "stNetKey":Ljava/lang/String;
    .end local v5    # "nc":Lcom/android/supl/nc/NetworkController;
    :cond_0
    goto :goto_0

    .line 197
    .end local v2    # "ncSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    monitor-exit v1

    .line 198
    return v0

    .line 197
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public sendHelloMessage()V
    .locals 0

    .line 417
    return-void
.end method

.method public sendNotConnectionStatus(II[I)V
    .locals 3
    .param p1, "iSessionID"    # I
    .param p2, "iReqID"    # I
    .param p3, "iFailStatus"    # [I

    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "bSendConnect":[B
    const/4 v1, 0x0

    .line 340
    .local v1, "offset":I
    const/16 v2, 0xf

    new-array v0, v2, [B

    .line 342
    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 343
    const/16 v2, 0x207

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 344
    invoke-static {v0, v1, p1}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 345
    invoke-static {v0, v1, p2}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 346
    const/4 v2, 0x0

    aget v2, p3, v2

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 347
    new-instance v2, Lcom/android/supl/commprocessor/FromServer;

    invoke-direct {v2}, Lcom/android/supl/commprocessor/FromServer;-><init>()V

    .line 348
    .local v2, "fromServer":Lcom/android/supl/commprocessor/FromServer;
    iput-object v0, v2, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    .line 349
    invoke-virtual {p0, v2}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->writePacket(Lcom/android/supl/commprocessor/FromServer;)V

    .line 351
    return-void
.end method

.method public sendOnConnectionStatus(III)V
    .locals 4
    .param p1, "iSessionID"    # I
    .param p2, "iReqID"    # I
    .param p3, "iNwSID"    # I

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "bSendConnect":[B
    const/4 v1, 0x0

    .line 318
    .local v1, "offset":I
    const-string v2, "SUPL20_NetCP"

    const-string v3, "send sendOnConnectionStatus "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/16 v2, 0xc

    new-array v0, v2, [B

    .line 320
    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 321
    const/16 v2, 0x206

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 322
    invoke-static {v0, v1, p1}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 323
    invoke-static {v0, v1, p2}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 324
    invoke-static {v0, v1, p3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 326
    new-instance v2, Lcom/android/supl/commprocessor/FromServer;

    invoke-direct {v2}, Lcom/android/supl/commprocessor/FromServer;-><init>()V

    .line 327
    .local v2, "fromServer":Lcom/android/supl/commprocessor/FromServer;
    iput-object v0, v2, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    .line 328
    invoke-virtual {p0, v2}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->writePacket(Lcom/android/supl/commprocessor/FromServer;)V

    .line 330
    return-void
.end method

.method public sendOnNetWorkSessionClose(I)V
    .locals 10
    .param p1, "iNwSID"    # I

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "bSendConnect":[B
    const/4 v1, 0x0

    .line 379
    .local v1, "offset":I
    const-string v2, "SUPL20_NetCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is closed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/16 v2, 0xd

    new-array v0, v2, [B

    .line 382
    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 383
    const/16 v3, 0x209

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 384
    invoke-static {v0, v1, p1}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 385
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 386
    add-int/lit8 v3, v1, -0x4

    if-eq v3, v2, :cond_0

    .line 387
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " invalid length"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 389
    :cond_0
    new-instance v2, Lcom/android/supl/commprocessor/FromServer;

    invoke-direct {v2}, Lcom/android/supl/commprocessor/FromServer;-><init>()V

    .line 390
    .local v2, "fromServer":Lcom/android/supl/commprocessor/FromServer;
    iput-object v0, v2, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    .line 391
    invoke-virtual {p0, v2}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->writePacket(Lcom/android/supl/commprocessor/FromServer;)V

    .line 392
    iget-object v3, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    monitor-enter v3

    .line 393
    :try_start_0
    iget-object v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 394
    .local v4, "ncSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 395
    .local v6, "stNetKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/supl/nc/NetworkController;

    .line 396
    .local v7, "nc":Lcom/android/supl/nc/NetworkController;
    invoke-virtual {v7, p1}, Lcom/android/supl/nc/NetworkController;->isNetWorkMatch(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 397
    iget-object v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->netWorkIDSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 399
    const-string v5, "SUPL20_NetCP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " remove from SLP session "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v5, 0x0

    .line 402
    .end local v7    # "nc":Lcom/android/supl/nc/NetworkController;
    .local v5, "nc":Lcom/android/supl/nc/NetworkController;
    goto :goto_1

    .line 404
    .end local v5    # "nc":Lcom/android/supl/nc/NetworkController;
    .end local v6    # "stNetKey":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 405
    .end local v4    # "ncSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    monitor-exit v3

    .line 406
    return-void

    .line 405
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writePacket(Lcom/android/supl/commprocessor/FromServer;)V
    .locals 2
    .param p1, "fromServer"    # Lcom/android/supl/commprocessor/FromServer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 428
    new-instance v0, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v0}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 429
    .local v0, "sendToServer":Lcom/android/supl/nc/SendToServer;
    iget-object v1, p1, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    iput-object v1, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 430
    iget-object v1, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->scp:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-virtual {v1, v0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 432
    return-void
.end method

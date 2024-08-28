.class Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;
.super Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;
.source "SUPLHIDLInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/SUPLHIDLInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HiSuplCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/SUPLHIDLInterface;


# direct methods
.method constructor <init>(Lcom/android/supl/SUPLHIDLInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/SUPLHIDLInterface;

    .line 137
    iput-object p1, p0, Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-direct {p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public suplPcmCb(Lvendor/huawei/hardware/hisupl/V1_0/server2client;)V
    .locals 6
    .param p1, "pcmMsg"    # Lvendor/huawei/hardware/hisupl/V1_0/server2client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-static {v0}, Lcom/android/supl/SUPLHIDLInterface;->access$300(Lcom/android/supl/SUPLHIDLInterface;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 141
    :try_start_0
    const-string v1, "SUPLHIDL"

    const-string v2, "suplPcmCb enter"

    invoke-static {v1, v2}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v1, Lcom/android/supl/commprocessor/FromServer;

    invoke-direct {v1}, Lcom/android/supl/commprocessor/FromServer;-><init>()V

    .line 143
    .local v1, "s2c":Lcom/android/supl/commprocessor/FromServer;
    iget v2, p1, Lvendor/huawei/hardware/hisupl/V1_0/server2client;->packetSize:I

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    .line 144
    iget-object v2, p1, Lvendor/huawei/hardware/hisupl/V1_0/server2client;->s2c_packet:[B

    iget-object v3, v1, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    iget v4, p1, Lvendor/huawei/hardware/hisupl/V1_0/server2client;->packetSize:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 145
    iget-object v2, p0, Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-static {v2}, Lcom/android/supl/SUPLHIDLInterface;->access$400(Lcom/android/supl/SUPLHIDLInterface;)Lcom/android/supl/nc/SuplServiceMgr;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-static {v2}, Lcom/android/supl/SUPLHIDLInterface;->access$400(Lcom/android/supl/SUPLHIDLInterface;)Lcom/android/supl/nc/SuplServiceMgr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/supl/nc/SuplServiceMgr;->addPcmPacket(Lcom/android/supl/commprocessor/FromServer;)V

    goto :goto_0

    .line 148
    :cond_0
    const-string v2, "SUPLHIDL"

    const-string v3, "mSuplServiceMgr is null"

    invoke-static {v2, v3}, Lcom/android/supl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v1    # "s2c":Lcom/android/supl/commprocessor/FromServer;
    :goto_0
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public suplScmCb(Lvendor/huawei/hardware/hisupl/V1_0/server2client;)V
    .locals 6
    .param p1, "scmMsg"    # Lvendor/huawei/hardware/hisupl/V1_0/server2client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-static {v0}, Lcom/android/supl/SUPLHIDLInterface;->access$300(Lcom/android/supl/SUPLHIDLInterface;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 156
    :try_start_0
    const-string v1, "SUPLHIDL"

    const-string v2, "suplScmCb enter."

    invoke-static {v1, v2}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v1, Lcom/android/supl/commprocessor/FromServer;

    invoke-direct {v1}, Lcom/android/supl/commprocessor/FromServer;-><init>()V

    .line 158
    .local v1, "s2c":Lcom/android/supl/commprocessor/FromServer;
    iget v2, p1, Lvendor/huawei/hardware/hisupl/V1_0/server2client;->packetSize:I

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    .line 159
    iget-object v2, p1, Lvendor/huawei/hardware/hisupl/V1_0/server2client;->s2c_packet:[B

    iget-object v3, v1, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    iget v4, p1, Lvendor/huawei/hardware/hisupl/V1_0/server2client;->packetSize:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 160
    iget-object v2, p0, Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-static {v2}, Lcom/android/supl/SUPLHIDLInterface;->access$400(Lcom/android/supl/SUPLHIDLInterface;)Lcom/android/supl/nc/SuplServiceMgr;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-static {v2}, Lcom/android/supl/SUPLHIDLInterface;->access$400(Lcom/android/supl/SUPLHIDLInterface;)Lcom/android/supl/nc/SuplServiceMgr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/supl/nc/SuplServiceMgr;->addScmPacket(Lcom/android/supl/commprocessor/FromServer;)V

    goto :goto_0

    .line 163
    :cond_0
    const-string v2, "SUPLHIDL"

    const-string v3, "mSuplServiceMgr is null"

    invoke-static {v2, v3}, Lcom/android/supl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v1    # "s2c":Lcom/android/supl/commprocessor/FromServer;
    :goto_0
    monitor-exit v0

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

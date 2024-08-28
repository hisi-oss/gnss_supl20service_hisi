.class public Lcom/android/supl/nc/WriterThread;
.super Ljava/lang/Object;
.source "WriterThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SUPL20_SPIMESLP-SENDING"

.field private static final m_iBufferSize:I = 0xa


# instance fields
.field private deque:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/supl/nc/SendToServer;",
            ">;"
        }
    .end annotation
.end field

.field private iNetWorkID:I

.field private iNumberOfMessageOnQueue:I

.field private transient isBrokenPipe:Z

.field private isReadyForColse:Z

.field private isStopWrite:Z

.field private m_CilentSocket:Ljava/net/Socket;

.field private nc:Lcom/android/supl/nc/NetworkController;

.field private objMyWriteLock:Ljava/lang/Object;

.field private out:Ljava/io/OutputStream;

.field private workerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/supl/nc/NetworkController;I)V
    .locals 3
    .param p2, "nc"    # Lcom/android/supl/nc/NetworkController;
    .param p3, "iNetWorkID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/supl/nc/SendToServer;",
            ">;",
            "Lcom/android/supl/nc/NetworkController;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 68
    .local p1, "deque":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/android/supl/nc/SendToServer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/nc/WriterThread;->deque:Ljava/util/concurrent/BlockingQueue;

    .line 56
    iput-object v0, p0, Lcom/android/supl/nc/WriterThread;->m_CilentSocket:Ljava/net/Socket;

    .line 57
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/nc/WriterThread;->isStopWrite:Z

    .line 58
    iput-object v0, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    .line 59
    iput-object v0, p0, Lcom/android/supl/nc/WriterThread;->nc:Lcom/android/supl/nc/NetworkController;

    .line 61
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/supl/nc/WriterThread;->iNetWorkID:I

    .line 62
    iput-object v0, p0, Lcom/android/supl/nc/WriterThread;->out:Ljava/io/OutputStream;

    .line 63
    iput-boolean v1, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    .line 142
    iput v1, p0, Lcom/android/supl/nc/WriterThread;->iNumberOfMessageOnQueue:I

    .line 143
    iput-object v0, p0, Lcom/android/supl/nc/WriterThread;->objMyWriteLock:Ljava/lang/Object;

    .line 144
    iput-boolean v1, p0, Lcom/android/supl/nc/WriterThread;->isReadyForColse:Z

    .line 69
    if-eqz p1, :cond_0

    .line 73
    iput-object p1, p0, Lcom/android/supl/nc/WriterThread;->deque:Ljava/util/concurrent/BlockingQueue;

    .line 74
    iput p3, p0, Lcom/android/supl/nc/WriterThread;->iNetWorkID:I

    .line 75
    iput-object p2, p0, Lcom/android/supl/nc/WriterThread;->nc:Lcom/android/supl/nc/NetworkController;

    .line 77
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deque object  must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private notifyToCloseConnection()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/supl/nc/WriterThread;->objMyWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/supl/nc/WriterThread;->isReadyForColse:Z

    .line 153
    iget-object v1, p0, Lcom/android/supl/nc/WriterThread;->objMyWriteLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 154
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendError()V
    .locals 8

    .line 228
    iget-object v0, p0, Lcom/android/supl/nc/WriterThread;->nc:Lcom/android/supl/nc/NetworkController;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/supl/nc/WriterThread;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v0}, Lcom/android/supl/nc/NetworkController;->getNetworkCommandProcessor()Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    move-result-object v0

    .line 230
    .local v0, "cp":Lcom/android/supl/commprocessor/CommandProcessor;
    iget v1, p0, Lcom/android/supl/nc/WriterThread;->iNetWorkID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 231
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    if-eqz v1, :cond_0

    .line 232
    const/16 v1, 0x9

    .line 233
    .local v1, "iSize":I
    const/4 v2, 0x4

    add-int/2addr v2, v1

    new-array v2, v2, [B

    .line 234
    .local v2, "bData":[B
    const/4 v3, 0x0

    .line 235
    .local v3, "iOffset":I
    invoke-static {v2, v3, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 236
    const/16 v4, 0x209

    invoke-static {v2, v3, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 237
    iget v4, p0, Lcom/android/supl/nc/WriterThread;->iNetWorkID:I

    invoke-static {v2, v3, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v3

    .line 238
    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 239
    new-instance v4, Lcom/android/supl/commprocessor/FromServer;

    invoke-direct {v4}, Lcom/android/supl/commprocessor/FromServer;-><init>()V

    .line 240
    .local v4, "fs":Lcom/android/supl/commprocessor/FromServer;
    iput-object v2, v4, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    .line 241
    const-string v5, "SUPL20_SPIMESLP-SENDING"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " send connection error msg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-interface {v0, v4}, Lcom/android/supl/commprocessor/CommandProcessor;->writePacket(Lcom/android/supl/commprocessor/FromServer;)V

    .line 246
    .end local v0    # "cp":Lcom/android/supl/commprocessor/CommandProcessor;
    .end local v1    # "iSize":I
    .end local v2    # "bData":[B
    .end local v3    # "iOffset":I
    .end local v4    # "fs":Lcom/android/supl/commprocessor/FromServer;
    :cond_0
    return-void
.end method

.method private write(Lcom/android/supl/nc/SendToServer;)V
    .locals 4
    .param p1, "sendToServer"    # Lcom/android/supl/nc/SendToServer;

    .line 173
    :try_start_0
    iget v0, p0, Lcom/android/supl/nc/WriterThread;->iNetWorkID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/supl/nc/WriterThread;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v0}, Lcom/android/supl/nc/NetworkController;->IsSCM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/android/supl/nc/SuplServiceMgr;->getInstance()Lcom/android/supl/nc/SuplServiceMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/supl/nc/SuplServiceMgr;->writeToScm(Lcom/android/supl/nc/SendToServer;)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-static {}, Lcom/android/supl/nc/SuplServiceMgr;->getInstance()Lcom/android/supl/nc/SuplServiceMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/supl/nc/SuplServiceMgr;->writeToPcm(Lcom/android/supl/nc/SendToServer;)V

    goto :goto_0

    .line 181
    :cond_1
    const-string v0, "SUPL20_SPIMESLP-SENDING"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onSendData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/supl/nc/WriterThread;->out:Ljava/io/OutputStream;

    iget-object v1, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 186
    iget-object v0, p0, Lcom/android/supl/nc/WriterThread;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 187
    const-string v0, "SUPL20_SPIMESLP-SENDING"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_bPacket.length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :goto_0
    const-string v0, "SUPL20_SPIMESLP-SENDING"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bBrokenPipe = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v0, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 220
    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    const-string v1, "SUPL20_SPIMESLP-SENDING"

    const-string v2, "Inside the IOException block of write--brokenpipe"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0}, Lcom/android/supl/nc/WriterThread;->sendError()V

    .line 214
    const-string v1, "SUPL20_SPIMESLP-SENDING"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    .line 216
    const-string v2, "SUPL20_SPIMESLP-SENDING"

    const-string v3, "calling nc.stop with reconnect as true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v2, p0, Lcom/android/supl/nc/WriterThread;->nc:Lcom/android/supl/nc/NetworkController;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v1}, Lcom/android/supl/nc/NetworkController;->stop(ZLjava/lang/Object;Z)Z

    .line 218
    const-string v1, "SUPL20_SPIMESLP-SENDING"

    const-string v2, "addPacket after broken pipe"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    .end local v0    # "ex":Ljava/io/IOException;
    const-string v0, "SUPL20_SPIMESLP-SENDING"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bBrokenPipe = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v0, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 203
    :catch_1
    move-exception v0

    .line 204
    .local v0, "ex":Ljava/net/SocketException;
    :try_start_2
    invoke-direct {p0}, Lcom/android/supl/nc/WriterThread;->sendError()V

    .line 205
    const-string v1, "SUPL20_SPIMESLP-SENDING"

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    iget-boolean v1, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    .end local v0    # "ex":Ljava/net/SocketException;
    const-string v0, "SUPL20_SPIMESLP-SENDING"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bBrokenPipe = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v0, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    if-eqz v0, :cond_3

    goto :goto_1

    .line 196
    :catch_2
    move-exception v0

    .line 197
    .local v0, "e":Ljavax/net/ssl/SSLProtocolException;
    :try_start_3
    const-string v1, "SUPL20_SPIMESLP-SENDING"

    invoke-virtual {v0}, Ljavax/net/ssl/SSLProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    invoke-direct {p0}, Lcom/android/supl/nc/WriterThread;->sendError()V

    .line 199
    iget-object v1, p0, Lcom/android/supl/nc/WriterThread;->nc:Lcom/android/supl/nc/NetworkController;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    if-nez v1, :cond_2

    .line 200
    const-string v1, "SUPL20_SPIMESLP-SENDING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing SLP Session for nc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/supl/nc/WriterThread;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, p0, Lcom/android/supl/nc/WriterThread;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->removeSLPSession()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    .end local v0    # "e":Ljavax/net/ssl/SSLProtocolException;
    :cond_2
    const-string v0, "SUPL20_SPIMESLP-SENDING"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bBrokenPipe = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v0, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    if-eqz v0, :cond_3

    .line 222
    :goto_1
    const-string v0, "SUPL20_SPIMESLP-SENDING"

    const-string v1, "Adding packet to queue since pipe is broken"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/supl/nc/WriterThread;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 226
    :cond_3
    return-void

    .line 220
    :goto_2
    const-string v1, "SUPL20_SPIMESLP-SENDING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bBrokenPipe = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v1, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    if-eqz v1, :cond_4

    .line 222
    const-string v1, "SUPL20_SPIMESLP-SENDING"

    const-string v2, "Adding packet to queue since pipe is broken"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/supl/nc/WriterThread;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    :cond_4
    throw v0
.end method


# virtual methods
.method public addPacket(Lcom/android/supl/nc/SendToServer;)V
    .locals 3
    .param p1, "sendToServer"    # Lcom/android/supl/nc/SendToServer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 88
    if-eqz p1, :cond_1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/android/supl/nc/WriterThread;->deque:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 94
    const-string v0, "SUPL20_SPIMESLP-SENDING"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBrokenPipe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "isStopWrite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/supl/nc/WriterThread;->isStopWrite:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/supl/nc/WriterThread;->incrementMessageCount()V

    .line 98
    iget-object v0, p0, Lcom/android/supl/nc/WriterThread;->deque:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 101
    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "packet must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v1, "SUPL20_SPIMESLP-SENDING"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public closeWrite()V
    .locals 3

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/android/supl/nc/WriterThread;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 256
    iget v0, p0, Lcom/android/supl/nc/WriterThread;->iNetWorkID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/supl/nc/WriterThread;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 258
    const-string v0, "SUPL20_SPIMESLP-SENDING"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " close the write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SUPL20_SPIMESLP-SENDING"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public declared-synchronized decrementMessageCount()V
    .locals 1

    monitor-enter p0

    .line 109
    :try_start_0
    iget v0, p0, Lcom/android/supl/nc/WriterThread;->iNumberOfMessageOnQueue:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/supl/nc/WriterThread;->iNumberOfMessageOnQueue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/supl/nc/WriterThread;
    throw v0
.end method

.method public declared-synchronized getMessageCount()I
    .locals 1

    monitor-enter p0

    .line 113
    :try_start_0
    iget v0, p0, Lcom/android/supl/nc/WriterThread;->iNumberOfMessageOnQueue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/supl/nc/WriterThread;
    throw v0
.end method

.method public declared-synchronized incrementMessageCount()V
    .locals 1

    monitor-enter p0

    .line 105
    :try_start_0
    iget v0, p0, Lcom/android/supl/nc/WriterThread;->iNumberOfMessageOnQueue:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/supl/nc/WriterThread;->iNumberOfMessageOnQueue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/supl/nc/WriterThread;
    throw v0
.end method

.method public isReadyForColse()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/android/supl/nc/WriterThread;->isReadyForColse:Z

    return v0
.end method

.method public isSessionRunning()Z
    .locals 5

    .line 248
    iget-object v0, p0, Lcom/android/supl/nc/WriterThread;->deque:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 249
    .local v0, "isRunning":Z
    const-string v2, "SUPL20_SPIMESLP-SENDING"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSessionRunning deque size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/supl/nc/WriterThread;->deque:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", getMessageCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p0}, Lcom/android/supl/nc/WriterThread;->getMessageCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isBrokenPipe : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/supl/nc/WriterThread;->getMessageCount()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public run()V
    .locals 4

    .line 120
    :goto_0
    iget-boolean v0, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/supl/nc/WriterThread;->isStopWrite:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/supl/nc/WriterThread;->isSessionRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/supl/nc/WriterThread;->deque:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/nc/SendToServer;

    .line 123
    .local v0, "sendToServer":Lcom/android/supl/nc/SendToServer;
    if-nez v0, :cond_1

    .line 124
    goto :goto_0

    .line 126
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/supl/nc/WriterThread;->write(Lcom/android/supl/nc/SendToServer;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/supl/nc/WriterThread;->decrementMessageCount()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v1, "SUPL20_SPIMESLP-SENDING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Allowed to exit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    nop

    .line 135
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_2
    iget-boolean v0, p0, Lcom/android/supl/nc/WriterThread;->isStopWrite:Z

    if-eqz v0, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/android/supl/nc/WriterThread;->isSessionRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 137
    invoke-direct {p0}, Lcom/android/supl/nc/WriterThread;->notifyToCloseConnection()V

    .line 140
    :cond_3
    return-void
.end method

.method public setClientSocket(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 3
    .param p1, "m_CilentSocket"    # Ljava/net/Socket;
    .param p2, "stThreadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 290
    if-eqz p1, :cond_4

    .line 293
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 296
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 300
    if-nez p2, :cond_0

    .line 301
    const-string p2, "WriterThread"

    .line 303
    :cond_0
    iget v0, p0, Lcom/android/supl/nc/WriterThread;->iNetWorkID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " NW:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/nc/WriterThread;->iNetWorkID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 305
    const-string v0, "SUPL20_SPIMESLP-SENDING"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClientSocket :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/supl/nc/WriterThread;->iNetWorkID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_1
    iput-object p1, p0, Lcom/android/supl/nc/WriterThread;->m_CilentSocket:Ljava/net/Socket;

    .line 309
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/nc/WriterThread;->out:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 313
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    .line 314
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    .line 315
    iget-object v0, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 316
    iput-object p1, p0, Lcom/android/supl/nc/WriterThread;->m_CilentSocket:Ljava/net/Socket;

    .line 317
    return-void

    .line 297
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "socket is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "socket is not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket object must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStopLock(Ljava/lang/Object;)V
    .locals 0
    .param p1, "objLock"    # Ljava/lang/Object;

    .line 163
    iput-object p1, p0, Lcom/android/supl/nc/WriterThread;->objMyWriteLock:Ljava/lang/Object;

    .line 164
    return-void
.end method

.method public startThread()V
    .locals 2

    .line 320
    const-string v0, "SUPL20_SPIMESLP-SENDING"

    const-string v1, "startThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget v0, p0, Lcom/android/supl/nc/WriterThread;->iNetWorkID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    .line 323
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "WriterThread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    .line 324
    iget-object v0, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 326
    invoke-static {}, Lcom/android/supl/nc/SuplServiceMgr;->getInstance()Lcom/android/supl/nc/SuplServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/supl/nc/SuplServiceMgr;->getSUPLHILDInterface()V

    goto :goto_0

    .line 328
    :cond_0
    const-string v0, "SUPL20_SPIMESLP-SENDING"

    const-string v1, "socket don\'t start write thread here."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_0
    return-void
.end method

.method public stopWrite()V
    .locals 1

    .line 270
    iget-boolean v0, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/supl/nc/WriterThread;->isSessionRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 274
    :cond_1
    invoke-direct {p0}, Lcom/android/supl/nc/WriterThread;->notifyToCloseConnection()V

    .line 276
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/supl/nc/WriterThread;->isStopWrite:Z

    .line 278
    return-void
.end method

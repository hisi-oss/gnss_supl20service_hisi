.class public Lcom/android/supl/nc/ReaderThread;
.super Ljava/lang/Object;
.source "ReaderThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SUPL20_SLP-RECEIVING"


# instance fields
.field private cp:Lcom/android/supl/commprocessor/CommandProcessor;

.field private iNetworkID:I

.field private in:Ljava/io/BufferedInputStream;

.field private isRead:Z

.field private isReadyForClose:Z

.field private m_CilentSocket:Ljava/net/Socket;

.field private nc:Lcom/android/supl/nc/NetworkController;

.field public objMyReadLock:Ljava/lang/Object;

.field private workerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/android/supl/commprocessor/CommandProcessor;I)V
    .locals 3
    .param p1, "cp"    # Lcom/android/supl/commprocessor/CommandProcessor;
    .param p2, "iNetworkID"    # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/nc/ReaderThread;->m_CilentSocket:Ljava/net/Socket;

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    .line 61
    iput-object v0, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    .line 63
    iput-object v0, p0, Lcom/android/supl/nc/ReaderThread;->in:Ljava/io/BufferedInputStream;

    .line 65
    iput-object v0, p0, Lcom/android/supl/nc/ReaderThread;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    .line 67
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    .line 69
    iput-object v0, p0, Lcom/android/supl/nc/ReaderThread;->nc:Lcom/android/supl/nc/NetworkController;

    .line 203
    iput-object v0, p0, Lcom/android/supl/nc/ReaderThread;->objMyReadLock:Ljava/lang/Object;

    .line 204
    iput-boolean v1, p0, Lcom/android/supl/nc/ReaderThread;->isReadyForClose:Z

    .line 71
    iput-object p1, p0, Lcom/android/supl/nc/ReaderThread;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    .line 72
    iput p2, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    .line 74
    return-void
.end method

.method private closeInputStream()V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/android/supl/nc/ReaderThread;->in:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_1

    .line 246
    :try_start_0
    iget v0, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/supl/nc/ReaderThread;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 248
    const-string v0, "SUPL20_SLP-RECEIVING"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " InputStream closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SUPL20_SLP-RECEIVING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " close exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    const-string v0, "SUPL20_SLP-RECEIVING"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " close"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_1
    return-void
.end method

.method private sendError()V
    .locals 7

    .line 211
    iget v0, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/supl/nc/ReaderThread;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/supl/nc/ReaderThread;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    instance-of v0, v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    if-eqz v0, :cond_0

    .line 213
    const/16 v0, 0x9

    .line 214
    .local v0, "iSize":I
    const/4 v1, 0x4

    add-int/2addr v1, v0

    new-array v1, v1, [B

    .line 215
    .local v1, "bData":[B
    const/4 v2, 0x0

    .line 216
    .local v2, "iOffset":I
    invoke-static {v1, v2, v0}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 217
    const/16 v3, 0x209

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 218
    iget v3, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 219
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 220
    new-instance v3, Lcom/android/supl/commprocessor/FromServer;

    invoke-direct {v3}, Lcom/android/supl/commprocessor/FromServer;-><init>()V

    .line 221
    .local v3, "fs":Lcom/android/supl/commprocessor/FromServer;
    iput-object v1, v3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    .line 222
    const-string v4, "SUPL20_SLP-RECEIVING"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " send connection error msg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v4, p0, Lcom/android/supl/nc/ReaderThread;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    invoke-interface {v4, v3}, Lcom/android/supl/commprocessor/CommandProcessor;->writePacket(Lcom/android/supl/commprocessor/FromServer;)V

    .line 226
    .end local v0    # "iSize":I
    .end local v1    # "bData":[B
    .end local v2    # "iOffset":I
    .end local v3    # "fs":Lcom/android/supl/commprocessor/FromServer;
    :cond_0
    return-void
.end method

.method private sendOnReceiveData(I[BLcom/android/supl/commprocessor/FromServer;)V
    .locals 5
    .param p1, "iReadDataLen"    # I
    .param p2, "bdata"    # [B
    .param p3, "fs"    # Lcom/android/supl/commprocessor/FromServer;

    .line 188
    const/16 v0, 0x8

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 190
    .local v0, "iPacketSize":I
    add-int/lit8 v1, v0, 0x4

    new-array v1, v1, [B

    iput-object v1, p3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    .line 191
    const/4 v1, 0x0

    .line 193
    .local v1, "offset":I
    iget-object v2, p3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    invoke-static {v2, v1, v0}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 194
    iget-object v2, p3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    const/16 v3, 0x208

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 195
    iget-object v2, p3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    invoke-static {v2, v1, p1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 196
    iget-object v2, p3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    const/4 v3, 0x0

    invoke-static {p2, v3, v2, v1, p1}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 197
    add-int/2addr v1, p1

    .line 198
    iget-object v2, p3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    iget v3, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 199
    const-string v2, "SUPL20_SLP-RECEIVING"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " OnReceiveData from the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/supl/nc/ReaderThread;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    .line 200
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method


# virtual methods
.method public closeConnection()V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/android/supl/nc/ReaderThread;->objMyReadLock:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/supl/nc/ReaderThread;->objMyReadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/supl/nc/ReaderThread;->isReadyForClose:Z

    .line 231
    const-string v1, "SUPL20_SLP-RECEIVING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " notify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v1, p0, Lcom/android/supl/nc/ReaderThread;->objMyReadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 233
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 236
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/android/supl/nc/ReaderThread;->closeInputStream()V

    .line 242
    return-void
.end method

.method public isReadyForColse()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/android/supl/nc/ReaderThread;->isReadyForClose:Z

    return v0
.end method

.method public run()V
    .locals 6

    .line 81
    :try_start_0
    iget v0, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I
    :try_end_0
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    .line 84
    return-void

    .line 88
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/android/supl/nc/ReaderThread;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/supl/nc/ReaderThread;->in:Ljava/io/BufferedInputStream;

    .line 90
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 91
    .local v0, "bdata":[B
    :goto_0
    iget-boolean v2, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    if-eqz v2, :cond_8

    .line 92
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    const-string v1, "SUPL20_SLP-RECEIVING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " received the interrupt so breaking out and closing the thread."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    goto/16 :goto_3

    .line 97
    :cond_1
    move v2, v1

    .line 103
    .local v2, "iReadData":I
    :try_start_2
    iget-object v3, p0, Lcom/android/supl/nc/ReaderThread;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    move v2, v3

    if-eq v3, v1, :cond_3

    .line 105
    new-instance v3, Lcom/android/supl/commprocessor/FromServer;

    invoke-direct {v3}, Lcom/android/supl/commprocessor/FromServer;-><init>()V

    .line 106
    .local v3, "fs":Lcom/android/supl/commprocessor/FromServer;
    iget v4, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    const/4 v5, 0x0

    if-ne v4, v1, :cond_2

    .line 107
    new-array v4, v2, [B

    iput-object v4, v3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    .line 108
    iget-object v4, v3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 109
    iget-object v4, v3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    invoke-static {v0, v5, v4, v5, v2}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    goto :goto_1

    .line 111
    :cond_2
    invoke-direct {p0, v2, v0, v3}, Lcom/android/supl/nc/ReaderThread;->sendOnReceiveData(I[BLcom/android/supl/commprocessor/FromServer;)V

    .line 116
    :goto_1
    iget-object v4, p0, Lcom/android/supl/nc/ReaderThread;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    invoke-interface {v4, v3}, Lcom/android/supl/commprocessor/CommandProcessor;->writePacket(Lcom/android/supl/commprocessor/FromServer;)V

    .line 117
    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 119
    .end local v3    # "fs":Lcom/android/supl/commprocessor/FromServer;
    goto :goto_2

    .line 122
    :cond_3
    const-string v3, "SUPL20_SLP-RECEIVING"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iReadData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v3, "SUPL20_SLP-RECEIVING"

    const-string v4, "Socket closed on other side so closing the read thread"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    goto/16 :goto_3

    .line 131
    :catch_0
    move-exception v3

    .line 133
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Try Again"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    if-eq v4, v1, :cond_4

    .line 135
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    invoke-virtual {p0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    .line 136
    return-void

    .line 127
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 140
    .end local v2    # "iReadData":I
    :goto_2
    nop

    .line 141
    :cond_4
    goto/16 :goto_0

    .line 177
    .end local v0    # "bdata":[B
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 168
    :catch_2
    move-exception v0

    .line 170
    .local v0, "ex":Ljava/io/IOException;
    :try_start_4
    iget-boolean v1, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    if-eqz v1, :cond_5

    .line 171
    invoke-direct {p0}, Lcom/android/supl/nc/ReaderThread;->sendError()V

    .line 172
    const-string v1, "SUPL20_SLP-RECEIVING"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 174
    :cond_5
    const-string v1, "SUPL20_SLP-RECEIVING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "! ignore this error.Read is finished. Caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ex":Ljava/io/IOException;
    goto/16 :goto_3

    .line 156
    :catch_3
    move-exception v0

    .line 158
    .local v0, "ex":Ljava/net/SocketException;
    const-string v1, "SUPL20_SLP-RECEIVING"

    const-string v2, "Calling nc.stop with reconnect as true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/android/supl/nc/ReaderThread;->nc:Lcom/android/supl/nc/NetworkController;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v3}, Lcom/android/supl/nc/NetworkController;->stop(ZLjava/lang/Object;Z)Z

    .line 161
    iget-boolean v1, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    if-eqz v1, :cond_6

    .line 162
    invoke-direct {p0}, Lcom/android/supl/nc/ReaderThread;->sendError()V

    .line 163
    const-string v1, "SUPL20_SLP-RECEIVING"

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 165
    :cond_6
    const-string v1, "SUPL20_SLP-RECEIVING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " colsed by socket close"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/net/SocketException;
    goto :goto_3

    .line 149
    :catch_4
    move-exception v0

    .line 150
    .local v0, "ex":Ljava/net/SocketTimeoutException;
    iget-boolean v1, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    if-eqz v1, :cond_7

    .line 151
    const-string v1, "SUPL20_SLP-RECEIVING"

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 153
    :cond_7
    const-string v1, "SUPL20_SLP-RECEIVING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "! ignore this error.Read is finished.Caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ex":Ljava/net/SocketTimeoutException;
    goto :goto_3

    .line 143
    :catch_5
    move-exception v0

    .line 144
    .local v0, "e":Ljavax/net/ssl/SSLProtocolException;
    const-string v1, "SUPL20_SLP-RECEIVING"

    invoke-virtual {v0}, Ljavax/net/ssl/SSLProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    invoke-direct {p0}, Lcom/android/supl/nc/ReaderThread;->sendError()V

    .line 146
    iget-object v1, p0, Lcom/android/supl/nc/ReaderThread;->nc:Lcom/android/supl/nc/NetworkController;

    if-eqz v1, :cond_8

    .line 147
    iget-object v1, p0, Lcom/android/supl/nc/ReaderThread;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->removeSLPSession()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    .end local v0    # "e":Ljavax/net/ssl/SSLProtocolException;
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    .line 178
    nop

    .line 179
    return-void

    .line 177
    :goto_4
    invoke-virtual {p0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    throw v0
.end method

.method public setClientSocket(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 2
    .param p1, "m_CilentSocket"    # Ljava/net/Socket;
    .param p2, "stThreadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 293
    if-eqz p1, :cond_4

    .line 296
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 299
    invoke-virtual {p1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 302
    if-nez p2, :cond_0

    .line 303
    const-string p2, "ReadThread"

    .line 305
    :cond_0
    iget v0, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 306
    const-string v0, "SUPL20_SLP-RECEIVING"

    const-string v1, "readerThread initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " NW:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 310
    :cond_1
    const/16 v0, 0xc8

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 316
    .end local v0    # "e":Ljava/net/SocketException;
    :goto_0
    iput-object p1, p0, Lcom/android/supl/nc/ReaderThread;->m_CilentSocket:Ljava/net/Socket;

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    .line 318
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    .line 319
    iget-object v0, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 321
    return-void

    .line 300
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "socket is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "socket is not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket object must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNetworkController(Lcom/android/supl/nc/NetworkController;)V
    .locals 0
    .param p1, "networkController"    # Lcom/android/supl/nc/NetworkController;

    .line 327
    iput-object p1, p0, Lcom/android/supl/nc/ReaderThread;->nc:Lcom/android/supl/nc/NetworkController;

    .line 328
    return-void
.end method

.method public setStopLock(Ljava/lang/Object;)V
    .locals 0
    .param p1, "objLock"    # Ljava/lang/Object;

    .line 258
    iput-object p1, p0, Lcom/android/supl/nc/ReaderThread;->objMyReadLock:Ljava/lang/Object;

    .line 259
    return-void
.end method

.method public stopRead()V
    .locals 3

    .line 268
    :try_start_0
    const-string v0, "SUPL20_SLP-RECEIVING"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " stopRead invoked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    .line 270
    const-string v0, "SUPL20_SLP-RECEIVING"

    const-string v1, " stopRead by invoke closeInputStream()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0}, Lcom/android/supl/nc/ReaderThread;->closeInputStream()V

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/supl/nc/ReaderThread;->isReadyForClose:Z

    .line 273
    iget-object v0, p0, Lcom/android/supl/nc/ReaderThread;->m_CilentSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/supl/nc/ReaderThread;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 277
    const-string v0, "SUPL20_SLP-RECEIVING"

    const-string v1, " stopRead by isReadyForClose is true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "SUPL20_SLP-RECEIVING"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

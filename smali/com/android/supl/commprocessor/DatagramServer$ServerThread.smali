.class Lcom/android/supl/commprocessor/DatagramServer$ServerThread;
.super Ljava/lang/Thread;
.source "DatagramServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/commprocessor/DatagramServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerThread"
.end annotation


# instance fields
.field private isStop:Z

.field private receiveData:[B

.field private serverSocket:Ljava/net/DatagramSocket;

.field final synthetic this$0:Lcom/android/supl/commprocessor/DatagramServer;


# direct methods
.method public constructor <init>(Lcom/android/supl/commprocessor/DatagramServer;Ljava/lang/String;)V
    .locals 1
    .param p2, "stThreadName"    # Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->this$0:Lcom/android/supl/commprocessor/DatagramServer;

    .line 110
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 103
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->receiveData:[B

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->isStop:Z

    .line 107
    iput-object p1, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    .line 111
    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->receiveData:[B

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/supl/commprocessor/DatagramServer$ServerThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/supl/commprocessor/DatagramServer$ServerThread;

    .line 101
    invoke-direct {p0}, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->stopThread()V

    return-void
.end method

.method private stopThread()V
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->interrupt()V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->isStop:Z

    .line 186
    iget-object v0, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 120
    :try_start_0
    const-string v0, "SUPL20_DGS"

    const-string v1, "UDP server thread execution"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->this$0:Lcom/android/supl/commprocessor/DatagramServer;

    invoke-static {v1}, Lcom/android/supl/commprocessor/DatagramServer;->access$100(Lcom/android/supl/commprocessor/DatagramServer;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    .line 123
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->receiveData:[B

    iget-object v2, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->receiveData:[B

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 125
    .local v0, "receivePacket":Ljava/net/DatagramPacket;
    :goto_0
    iget-boolean v1, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->isStop:Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v1, :cond_4

    .line 128
    :try_start_1
    const-string v1, "SUPL20_DGS"

    const-string v2, " Datagram ServerThread start receive"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 130
    const-string v1, "SUPL20_DGS"

    const-string v2, " Datagram ServerThread after receive"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v1

    .line 133
    .local v1, "iOffset":I
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    .line 134
    .local v2, "iLength":I
    const-string v3, "SUPL20_DGS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Receive Offset= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Length= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 137
    .local v3, "IPAddress":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v4

    .line 138
    .local v4, "port":I
    if-eqz v3, :cond_0

    .line 139
    const-string v5, "SUPL20_DGS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RECEIVED IP Address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " port="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    iget-object v5, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->this$0:Lcom/android/supl/commprocessor/DatagramServer;

    invoke-static {v5}, Lcom/android/supl/commprocessor/DatagramServer;->access$200(Lcom/android/supl/commprocessor/DatagramServer;)Lcom/android/supl/commprocessor/ServerCommProcessor;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 143
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    .line 144
    .local v5, "src":[B
    new-instance v6, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v6}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 145
    .local v6, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/4 v7, 0x0

    .line 146
    .local v7, "offset":I
    const/16 v8, 0xc

    add-int/2addr v8, v2

    .line 150
    .local v8, "iSize":I
    new-array v9, v8, [B

    .line 152
    .local v9, "bData":[B
    add-int/lit8 v10, v8, -0x4

    invoke-static {v9, v7, v10}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v10

    move v7, v10

    .line 153
    const/16 v10, 0x20d

    invoke-static {v9, v7, v10}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v10

    move v7, v10

    .line 154
    invoke-static {v9, v7, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v10

    move v7, v10

    .line 155
    invoke-static {v5, v1, v9, v7, v2}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 157
    iput-object v9, v6, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 158
    iget-object v10, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->this$0:Lcom/android/supl/commprocessor/DatagramServer;

    invoke-static {v10}, Lcom/android/supl/commprocessor/DatagramServer;->access$200(Lcom/android/supl/commprocessor/DatagramServer;)Lcom/android/supl/commprocessor/ServerCommProcessor;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/android/supl/commprocessor/ServerCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "iOffset":I
    .end local v2    # "iLength":I
    .end local v3    # "IPAddress":Ljava/net/InetAddress;
    .end local v4    # "port":I
    .end local v5    # "src":[B
    .end local v6    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    .end local v7    # "offset":I
    .end local v8    # "iSize":I
    .end local v9    # "bData":[B
    goto :goto_1

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    iget-boolean v2, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->isStop:Z

    if-eqz v2, :cond_1

    .line 170
    const-string v2, "SUPL20_DGS"

    const-string v3, " DatagramSocket closed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 172
    :cond_1
    const-string v2, "SUPL20_DGS"

    const-string v3, " DatagramSocket exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 161
    :catch_1
    move-exception v1

    .line 162
    .local v1, "e1":Ljava/net/SocketException;
    iget-boolean v2, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->isStop:Z

    if-eqz v2, :cond_2

    .line 163
    const-string v2, "SUPL20_DGS"

    const-string v3, " DatagramSocket closed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 165
    :cond_2
    const-string v2, "SUPL20_DGS"

    const-string v3, " DatagramSocket exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2

    .line 174
    .end local v1    # "e1":Ljava/net/SocketException;
    :cond_3
    :goto_1
    goto/16 :goto_0

    .line 179
    .end local v0    # "receivePacket":Ljava/net/DatagramPacket;
    :cond_4
    goto :goto_2

    .line 176
    :catch_2
    move-exception v0

    .line 177
    .local v0, "e2":Ljava/net/SocketException;
    const-string v1, "SUPL20_DGS"

    const-string v2, " DatagramSocket create exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v0    # "e2":Ljava/net/SocketException;
    :goto_2
    return-void
.end method

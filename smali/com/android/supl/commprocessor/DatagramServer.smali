.class public Lcom/android/supl/commprocessor/DatagramServer;
.super Ljava/lang/Object;
.source "DatagramServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/commprocessor/DatagramServer$ServerThread;
    }
.end annotation


# static fields
.field public static final D_PORT_NO:I = 0x1c6b

.field public static final D_SERVER_ADDRESS:Ljava/lang/String; = "127.0.0.1"

.field private static final LOG:Ljava/lang/String; = "SUPL20_DGS"


# instance fields
.field private iPortNo:I

.field private scm:Lcom/android/supl/commprocessor/ServerCommProcessor;

.field private serverThread:Lcom/android/supl/commprocessor/DatagramServer$ServerThread;

.field private stServerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/supl/commprocessor/ServerCommProcessor;)V
    .locals 1
    .param p1, "iPortNo"    # I
    .param p2, "stServerName"    # Ljava/lang/String;
    .param p3, "scm"    # Lcom/android/supl/commprocessor/ServerCommProcessor;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/16 v0, 0x1c6b

    iput v0, p0, Lcom/android/supl/commprocessor/DatagramServer;->iPortNo:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/commprocessor/DatagramServer;->stServerName:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/android/supl/commprocessor/DatagramServer;->scm:Lcom/android/supl/commprocessor/ServerCommProcessor;

    .line 68
    iput-object v0, p0, Lcom/android/supl/commprocessor/DatagramServer;->serverThread:Lcom/android/supl/commprocessor/DatagramServer$ServerThread;

    .line 76
    iput p1, p0, Lcom/android/supl/commprocessor/DatagramServer;->iPortNo:I

    .line 77
    iput-object p2, p0, Lcom/android/supl/commprocessor/DatagramServer;->stServerName:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/android/supl/commprocessor/DatagramServer;->scm:Lcom/android/supl/commprocessor/ServerCommProcessor;

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/android/supl/commprocessor/DatagramServer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/commprocessor/DatagramServer;

    .line 54
    iget v0, p0, Lcom/android/supl/commprocessor/DatagramServer;->iPortNo:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/supl/commprocessor/DatagramServer;)Lcom/android/supl/commprocessor/ServerCommProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/commprocessor/DatagramServer;

    .line 54
    iget-object v0, p0, Lcom/android/supl/commprocessor/DatagramServer;->scm:Lcom/android/supl/commprocessor/ServerCommProcessor;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized startServer()V
    .locals 2

    monitor-enter p0

    .line 82
    :try_start_0
    const-string v0, "SUPL20_DGS"

    const-string v1, "startServer invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/supl/commprocessor/DatagramServer;->serverThread:Lcom/android/supl/commprocessor/DatagramServer$ServerThread;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;

    const-string v1, "UDP Server thread"

    invoke-direct {v0, p0, v1}, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;-><init>(Lcom/android/supl/commprocessor/DatagramServer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/DatagramServer;->serverThread:Lcom/android/supl/commprocessor/DatagramServer$ServerThread;

    .line 86
    iget-object v0, p0, Lcom/android/supl/commprocessor/DatagramServer;->serverThread:Lcom/android/supl/commprocessor/DatagramServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/supl/commprocessor/DatagramServer;
    throw v0
.end method

.method public stop()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/supl/commprocessor/DatagramServer;->serverThread:Lcom/android/supl/commprocessor/DatagramServer$ServerThread;

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "SUPL20_DGS"

    const-string v1, "stop invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/supl/commprocessor/DatagramServer;->serverThread:Lcom/android/supl/commprocessor/DatagramServer$ServerThread;

    invoke-static {v0}, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->access$000(Lcom/android/supl/commprocessor/DatagramServer$ServerThread;)V

    .line 99
    :cond_0
    return-void
.end method

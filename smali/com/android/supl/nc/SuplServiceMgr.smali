.class public Lcom/android/supl/nc/SuplServiceMgr;
.super Ljava/lang/Object;
.source "SuplServiceMgr.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SuplServiceMgr"

.field private static mInstance:Lcom/android/supl/nc/SuplServiceMgr;


# instance fields
.field private mPcmCommandProcessor:Lcom/android/supl/commprocessor/CommandProcessor;

.field private mScmCommandProcessor:Lcom/android/supl/commprocessor/CommandProcessor;

.field private mSuplHidl:Lcom/android/supl/SUPLHIDLInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/android/supl/nc/SuplServiceMgr;->mInstance:Lcom/android/supl/nc/SuplServiceMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mScmCommandProcessor:Lcom/android/supl/commprocessor/CommandProcessor;

    .line 13
    iput-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mPcmCommandProcessor:Lcom/android/supl/commprocessor/CommandProcessor;

    .line 15
    iput-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mSuplHidl:Lcom/android/supl/SUPLHIDLInterface;

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/supl/nc/SuplServiceMgr;
    .locals 3

    const-class v0, Lcom/android/supl/nc/SuplServiceMgr;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/android/supl/nc/SuplServiceMgr;->mInstance:Lcom/android/supl/nc/SuplServiceMgr;

    if-nez v1, :cond_0

    .line 19
    const-string v1, "SuplServiceMgr"

    const-string v2, "new one"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v1, Lcom/android/supl/nc/SuplServiceMgr;

    invoke-direct {v1}, Lcom/android/supl/nc/SuplServiceMgr;-><init>()V

    sput-object v1, Lcom/android/supl/nc/SuplServiceMgr;->mInstance:Lcom/android/supl/nc/SuplServiceMgr;

    .line 22
    :cond_0
    sget-object v1, Lcom/android/supl/nc/SuplServiceMgr;->mInstance:Lcom/android/supl/nc/SuplServiceMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 17
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addPcmPacket(Lcom/android/supl/commprocessor/FromServer;)V
    .locals 2
    .param p1, "fromServer"    # Lcom/android/supl/commprocessor/FromServer;

    .line 62
    iget-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mPcmCommandProcessor:Lcom/android/supl/commprocessor/CommandProcessor;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mPcmCommandProcessor:Lcom/android/supl/commprocessor/CommandProcessor;

    invoke-interface {v0, p1}, Lcom/android/supl/commprocessor/CommandProcessor;->writePacket(Lcom/android/supl/commprocessor/FromServer;)V

    goto :goto_0

    .line 65
    :cond_0
    const-string v0, "SuplServiceMgr"

    const-string v1, "mPcmCommandProcessor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    return-void
.end method

.method public addScmPacket(Lcom/android/supl/commprocessor/FromServer;)V
    .locals 2
    .param p1, "fromServer"    # Lcom/android/supl/commprocessor/FromServer;

    .line 73
    iget-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mScmCommandProcessor:Lcom/android/supl/commprocessor/CommandProcessor;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mScmCommandProcessor:Lcom/android/supl/commprocessor/CommandProcessor;

    invoke-interface {v0, p1}, Lcom/android/supl/commprocessor/CommandProcessor;->writePacket(Lcom/android/supl/commprocessor/FromServer;)V

    goto :goto_0

    .line 76
    :cond_0
    const-string v0, "SuplServiceMgr"

    const-string v1, "mScmCommandProcessor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-void
.end method

.method public getSUPLHILDInterface()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mSuplHidl:Lcom/android/supl/SUPLHIDLInterface;

    if-nez v0, :cond_0

    .line 31
    const-string v0, "SuplServiceMgr"

    const-string v1, "getSUPLHILDInterface"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {}, Lcom/android/supl/SuplApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/supl/SUPLHIDLInterface;->createSUPLHIDLInterface(Landroid/content/Context;)Lcom/android/supl/SUPLHIDLInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mSuplHidl:Lcom/android/supl/SUPLHIDLInterface;

    .line 33
    iget-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mSuplHidl:Lcom/android/supl/SUPLHIDLInterface;

    invoke-virtual {v0, p0}, Lcom/android/supl/SUPLHIDLInterface;->setSuplServiceMgr(Lcom/android/supl/nc/SuplServiceMgr;)V

    goto :goto_0

    .line 35
    :cond_0
    const-string v0, "SuplServiceMgr"

    const-string v1, "SUPLHIDL interface already exist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_0
    return-void
.end method

.method public setPcmCommandProcessor(Lcom/android/supl/commprocessor/CommandProcessor;)V
    .locals 0
    .param p1, "cp"    # Lcom/android/supl/commprocessor/CommandProcessor;

    .line 55
    iput-object p1, p0, Lcom/android/supl/nc/SuplServiceMgr;->mPcmCommandProcessor:Lcom/android/supl/commprocessor/CommandProcessor;

    .line 56
    return-void
.end method

.method public setScmCommandProcessor(Lcom/android/supl/commprocessor/CommandProcessor;)V
    .locals 0
    .param p1, "cp"    # Lcom/android/supl/commprocessor/CommandProcessor;

    .line 48
    iput-object p1, p0, Lcom/android/supl/nc/SuplServiceMgr;->mScmCommandProcessor:Lcom/android/supl/commprocessor/CommandProcessor;

    .line 49
    return-void
.end method

.method public writeToPcm(Lcom/android/supl/nc/SendToServer;)V
    .locals 2
    .param p1, "sendToServer"    # Lcom/android/supl/nc/SendToServer;

    .line 84
    iget-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mSuplHidl:Lcom/android/supl/SUPLHIDLInterface;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mSuplHidl:Lcom/android/supl/SUPLHIDLInterface;

    invoke-virtual {v0, p1}, Lcom/android/supl/SUPLHIDLInterface;->SendMsg2PCM(Lcom/android/supl/nc/SendToServer;)V

    goto :goto_0

    .line 87
    :cond_0
    const-string v0, "SuplServiceMgr"

    const-string v1, "mSuplHidl is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    return-void
.end method

.method public writeToScm(Lcom/android/supl/nc/SendToServer;)V
    .locals 2
    .param p1, "sendToServer"    # Lcom/android/supl/nc/SendToServer;

    .line 95
    iget-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mSuplHidl:Lcom/android/supl/SUPLHIDLInterface;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mSuplHidl:Lcom/android/supl/SUPLHIDLInterface;

    invoke-virtual {v0, p1}, Lcom/android/supl/SUPLHIDLInterface;->SendMsg2SCM(Lcom/android/supl/nc/SendToServer;)V

    goto :goto_0

    .line 98
    :cond_0
    const-string v0, "SuplServiceMgr"

    const-string v1, "mSuplHidl is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-void
.end method

.class public Lcom/android/supl/receiver/ShutdownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 55
    const-string v0, "ro.connectivity.chiptype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "chipType":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const-string v1, "ro.boot.odm.conn.chiptype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_0
    const-string v1, "hisi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    const-string v1, "HISI_LOG"

    const-string v2, "ShutdownReceiver onReceive called, but quit now"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 66
    :cond_1
    const-string v1, "ro.connectivity.sub_chiptype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    const-string v1, "ro.boot.odm.conn.schiptype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_2
    const-string v1, "hi1102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 72
    const-string v1, "HISI_LOG"

    const-string v2, "It\'s not hi1102 chip, supl application quit now"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 76
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/supl/loc/SUPLPlatformService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v1, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 81
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/supl/commprocessor/SUPLSCMService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v2

    .line 82
    invoke-virtual {p1, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 84
    const-string v2, "HISI_LOG"

    const-string v3, "ShutdownReceiver onReceive called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_4
    return-void
.end method

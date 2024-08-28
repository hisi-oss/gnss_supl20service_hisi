.class public Lcom/android/supl/receiver/BootUpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootUpReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static is_service_start:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/android/supl/receiver/BootUpReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/supl/receiver/BootUpReceiver;->TAG:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/supl/receiver/BootUpReceiver;->is_service_start:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/receiver/BootUpReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/supl/receiver/BootUpReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/receiver/BootUpReceiver;

    .line 53
    iget-object v0, p0, Lcom/android/supl/receiver/BootUpReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/supl/receiver/BootUpReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private startSuplServices(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    iput-object p1, p0, Lcom/android/supl/receiver/BootUpReceiver;->mContext:Landroid/content/Context;

    .line 98
    new-instance v0, Lcom/android/supl/receiver/BootUpReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/supl/receiver/BootUpReceiver$1;-><init>(Lcom/android/supl/receiver/BootUpReceiver;)V

    .line 111
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 112
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 61
    const-string v0, "ro.connectivity.chiptype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "chipType":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "ro.boot.odm.conn.chiptype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_0
    const-string v1, "hisi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    sget-object v1, Lcom/android/supl/receiver/BootUpReceiver;->TAG:Ljava/lang/String;

    const-string v2, "BootUpReceiver onReceive called, but quit now"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 72
    :cond_1
    const-string v1, "ro.connectivity.sub_chiptype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    const-string v1, "ro.boot.odm.conn.schiptype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_2
    const-string v1, "hi1102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 78
    sget-object v1, Lcom/android/supl/receiver/BootUpReceiver;->TAG:Ljava/lang/String;

    const-string v2, "supl application quit now"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void

    .line 82
    :cond_3
    sget-object v1, Lcom/android/supl/receiver/BootUpReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BootUpReceiver got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 86
    .local v1, "ACTION_SIM_STATE_CHANGED":Ljava/lang/String;
    sget-boolean v2, Lcom/android/supl/receiver/BootUpReceiver;->is_service_start:Z

    if-nez v2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 90
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/supl/receiver/BootUpReceiver;->startSuplServices(Landroid/content/Context;)V

    .line 91
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/supl/receiver/BootUpReceiver;->is_service_start:Z

    .line 94
    :cond_5
    return-void
.end method

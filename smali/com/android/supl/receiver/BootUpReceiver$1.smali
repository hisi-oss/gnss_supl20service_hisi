.class Lcom/android/supl/receiver/BootUpReceiver$1;
.super Ljava/lang/Thread;
.source "BootUpReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/supl/receiver/BootUpReceiver;->startSuplServices(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/receiver/BootUpReceiver;


# direct methods
.method constructor <init>(Lcom/android/supl/receiver/BootUpReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/receiver/BootUpReceiver;

    .line 98
    iput-object p1, p0, Lcom/android/supl/receiver/BootUpReceiver$1;->this$0:Lcom/android/supl/receiver/BootUpReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 101
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/supl/receiver/BootUpReceiver$1;->this$0:Lcom/android/supl/receiver/BootUpReceiver;

    invoke-static {v1}, Lcom/android/supl/receiver/BootUpReceiver;->access$000(Lcom/android/supl/receiver/BootUpReceiver;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/supl/loc/SUPLPlatformService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, "serviceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/supl/receiver/BootUpReceiver$1;->this$0:Lcom/android/supl/receiver/BootUpReceiver;

    invoke-static {v1}, Lcom/android/supl/receiver/BootUpReceiver;->access$000(Lcom/android/supl/receiver/BootUpReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 103
    invoke-static {}, Lcom/android/supl/receiver/BootUpReceiver;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Starting platform service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/supl/receiver/BootUpReceiver$1;->this$0:Lcom/android/supl/receiver/BootUpReceiver;

    invoke-static {v2}, Lcom/android/supl/receiver/BootUpReceiver;->access$000(Lcom/android/supl/receiver/BootUpReceiver;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/supl/commprocessor/SUPLSCMService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, v1

    .line 106
    iget-object v1, p0, Lcom/android/supl/receiver/BootUpReceiver$1;->this$0:Lcom/android/supl/receiver/BootUpReceiver;

    invoke-static {v1}, Lcom/android/supl/receiver/BootUpReceiver;->access$000(Lcom/android/supl/receiver/BootUpReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 107
    invoke-static {}, Lcom/android/supl/receiver/BootUpReceiver;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Starting scm service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

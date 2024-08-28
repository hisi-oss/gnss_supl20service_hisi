.class Lcom/android/supl/SuplApplication$1;
.super Ljava/lang/Thread;
.source "SuplApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/supl/SuplApplication;->startSuplServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/SuplApplication;


# direct methods
.method constructor <init>(Lcom/android/supl/SuplApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/SuplApplication;

    .line 48
    iput-object p1, p0, Lcom/android/supl/SuplApplication$1;->this$0:Lcom/android/supl/SuplApplication;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/android/supl/SuplApplication;->access$000()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/supl/loc/SUPLPlatformService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/supl/SuplApplication;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 53
    const-string v1, "SUPL20_Main"

    const-string v2, "Starting platform service"

    invoke-static {v1, v2}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/android/supl/SuplApplication;->access$000()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/supl/commprocessor/SUPLSCMService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, v1

    .line 56
    invoke-static {}, Lcom/android/supl/SuplApplication;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 57
    const-string v1, "SUPL20_Main"

    const-string v2, "Starting scm service"

    invoke-static {v1, v2}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

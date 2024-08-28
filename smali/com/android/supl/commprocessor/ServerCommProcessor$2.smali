.class Lcom/android/supl/commprocessor/ServerCommProcessor$2;
.super Ljava/lang/Thread;
.source "ServerCommProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/supl/commprocessor/ServerCommProcessor;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;


# direct methods
.method constructor <init>(Lcom/android/supl/commprocessor/ServerCommProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/commprocessor/ServerCommProcessor;

    .line 561
    iput-object p1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 565
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-static {v0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->access$300(Lcom/android/supl/commprocessor/ServerCommProcessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor;->access$400(Lcom/android/supl/commprocessor/ServerCommProcessor;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 567
    const-string v1, "SUPL20_SCM"

    const-string v2, "SCM pause invoked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor;->access$500(Lcom/android/supl/commprocessor/ServerCommProcessor;)Lcom/android/supl/nc/NetworkController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-static {v2}, Lcom/android/supl/commprocessor/ServerCommProcessor;->access$300(Lcom/android/supl/commprocessor/ServerCommProcessor;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lcom/android/supl/nc/NetworkController;->stop(ZLjava/lang/Object;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    :try_start_1
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor;->access$300(Lcom/android/supl/commprocessor/ServerCommProcessor;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    goto :goto_0

    .line 571
    :catch_0
    move-exception v1

    .line 572
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 574
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const-string v1, "SUPL20_SCM"

    const-string v2, "SCM pauseLock release"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor;->access$600(Lcom/android/supl/commprocessor/ServerCommProcessor;)Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->stopRead()V

    .line 577
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-virtual {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor;->stopListening()V

    .line 578
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor;->access$700(Lcom/android/supl/commprocessor/ServerCommProcessor;)Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->disConnectAllNetWork()V

    .line 579
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/supl/commprocessor/ServerCommProcessor;->access$402(Lcom/android/supl/commprocessor/ServerCommProcessor;Z)Z

    .line 581
    :cond_0
    monitor-exit v0

    .line 582
    return-void

    .line 581
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

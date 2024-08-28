.class Lcom/android/supl/commprocessor/NDKCommProcessor$2;
.super Ljava/lang/Thread;
.source "NDKCommProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/supl/commprocessor/NDKCommProcessor;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;


# direct methods
.method constructor <init>(Lcom/android/supl/commprocessor/NDKCommProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 754
    iput-object p1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 758
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->access$200(Lcom/android/supl/commprocessor/NDKCommProcessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->access$300(Lcom/android/supl/commprocessor/NDKCommProcessor;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 760
    const-string v1, "SUPL20_PCM"

    const-string v2, "PCM pause invoked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->access$400(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/nc/NetworkController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v2}, Lcom/android/supl/commprocessor/NDKCommProcessor;->access$200(Lcom/android/supl/commprocessor/NDKCommProcessor;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lcom/android/supl/nc/NetworkController;->stop(ZLjava/lang/Object;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    :try_start_1
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->access$200(Lcom/android/supl/commprocessor/NDKCommProcessor;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 766
    goto :goto_0

    .line 764
    :catch_0
    move-exception v1

    .line 765
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 767
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const-string v1, "SUPL20_PCM"

    const-string v2, "PCM pauseLock release"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->access$500(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->stopRead()V

    .line 770
    invoke-static {}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->getInstance()Lcom/android/supl/trigger/PeriodicTriggerHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->pause()V

    .line 771
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/supl/commprocessor/NDKCommProcessor;->access$302(Lcom/android/supl/commprocessor/NDKCommProcessor;Z)Z

    .line 773
    :cond_0
    monitor-exit v0

    .line 774
    return-void

    .line 773
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

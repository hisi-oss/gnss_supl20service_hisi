.class Lcom/android/supl/nc/NetworkController$2;
.super Ljava/lang/Thread;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/supl/nc/NetworkController;->stop(ZLjava/lang/Object;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/nc/NetworkController;

.field final synthetic val$ConnectAgain:Z

.field final synthetic val$isStop:Z

.field final synthetic val$pauseLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/supl/nc/NetworkController;ZZLjava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/nc/NetworkController;

    .line 762
    iput-object p1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    iput-boolean p2, p0, Lcom/android/supl/nc/NetworkController$2;->val$ConnectAgain:Z

    iput-boolean p3, p0, Lcom/android/supl/nc/NetworkController$2;->val$isStop:Z

    iput-object p4, p0, Lcom/android/supl/nc/NetworkController$2;->val$pauseLock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 766
    iget-boolean v0, p0, Lcom/android/supl/nc/NetworkController$2;->val$ConnectAgain:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v0}, Lcom/android/supl/nc/NetworkController;->access$000(Lcom/android/supl/nc/NetworkController;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    const-string v0, "SUPL20_NC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Close connection Thread Connection Count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v2}, Lcom/android/supl/nc/NetworkController;->access$000(Lcom/android/supl/nc/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 768
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v0}, Lcom/android/supl/nc/NetworkController;->access$100(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 769
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v0}, Lcom/android/supl/nc/NetworkController;->access$100(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v1, v1, Lcom/android/supl/nc/NetworkController;->objLock:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/supl/nc/WriterThread;->setStopLock(Ljava/lang/Object;)V

    .line 770
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v0}, Lcom/android/supl/nc/NetworkController;->access$100(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/supl/nc/WriterThread;->stopWrite()V

    .line 772
    :cond_2
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v0, v0, Lcom/android/supl/nc/NetworkController;->objLock:Ljava/lang/Object;

    monitor-enter v0

    .line 775
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->access$100(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    .line 776
    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->access$100(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/nc/WriterThread;->isReadyForColse()Z

    move-result v1

    if-nez v1, :cond_3

    .line 778
    const-string v1, "SUPL20_NC"

    const-string v2, "On write wait"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v1, v1, Lcom/android/supl/nc/NetworkController;->objLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 780
    const-string v1, "SUPL20_NC"

    const-string v2, "On write notified"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 786
    :cond_3
    goto :goto_2

    .line 787
    :catchall_0
    move-exception v1

    goto/16 :goto_8

    .line 783
    :catch_0
    move-exception v1

    .line 785
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 787
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v0}, Lcom/android/supl/nc/NetworkController;->access$100(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 789
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v0}, Lcom/android/supl/nc/NetworkController;->access$100(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/supl/nc/WriterThread;->closeWrite()V

    .line 791
    :cond_4
    const-string v0, "SUPL20_NC"

    const-string v1, "On write wait release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v0}, Lcom/android/supl/nc/NetworkController;->access$200(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/ReaderThread;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 794
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v0}, Lcom/android/supl/nc/NetworkController;->access$200(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/ReaderThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v1, v1, Lcom/android/supl/nc/NetworkController;->objLock:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/supl/nc/ReaderThread;->setStopLock(Ljava/lang/Object;)V

    .line 795
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v0}, Lcom/android/supl/nc/NetworkController;->access$200(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/ReaderThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/supl/nc/ReaderThread;->stopRead()V

    .line 798
    :cond_5
    iget-boolean v0, p0, Lcom/android/supl/nc/NetworkController$2;->val$isStop:Z

    if-eqz v0, :cond_6

    .line 799
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v0}, Lcom/android/supl/nc/NetworkController;->closeConnection()V

    .line 802
    :cond_6
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v1, v0, Lcom/android/supl/nc/NetworkController;->objLock:Ljava/lang/Object;

    monitor-enter v1

    .line 805
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v0}, Lcom/android/supl/nc/NetworkController;->access$200(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/ReaderThread;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v0}, Lcom/android/supl/nc/NetworkController;->access$200(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/ReaderThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/supl/nc/ReaderThread;->isReadyForColse()Z

    move-result v0

    if-nez v0, :cond_7

    .line 807
    const-string v0, "SUPL20_NC"

    const-string v2, "On read wait"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v0, v0, Lcom/android/supl/nc/NetworkController;->objLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 809
    const-string v0, "SUPL20_NC"

    const-string v2, "On read notified"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 815
    :cond_7
    goto :goto_4

    .line 816
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 812
    :catch_1
    move-exception v0

    .line 814
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 816
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 817
    const-string v0, "SUPL20_NC"

    const-string v1, "On read wait release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController$2;->val$pauseLock:Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 820
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController$2;->val$pauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 821
    :try_start_4
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->val$pauseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 822
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 823
    const-string v0, "SUPL20_NC"

    const-string v1, "On pauseLock notify"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 822
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 826
    :cond_8
    :goto_5
    iget-boolean v0, p0, Lcom/android/supl/nc/NetworkController$2;->val$ConnectAgain:Z

    if-eqz v0, :cond_9

    .line 828
    const-string v0, "SUPL20_NC"

    const-string v1, "Trying to reconnect again"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v0}, Lcom/android/supl/nc/NetworkController;->access$300(Lcom/android/supl/nc/NetworkController;)V

    .line 835
    :cond_9
    :goto_6
    return-void

    .line 816
    :goto_7
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 787
    :goto_8
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v1
.end method

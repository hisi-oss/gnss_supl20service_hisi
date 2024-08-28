.class Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;
.super Ljava/lang/Thread;
.source "ServerCommProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/commprocessor/ServerCommProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadPacket"
.end annotation


# instance fields
.field private isStopRead:Z

.field private myJobDeque:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/supl/commprocessor/FromServer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;


# direct methods
.method public constructor <init>(Lcom/android/supl/commprocessor/ServerCommProcessor;Ljava/lang/String;)V
    .locals 0
    .param p2, "stThreadName"    # Ljava/lang/String;

    .line 616
    iput-object p1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 614
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->isStopRead:Z

    .line 615
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->myJobDeque:Ljava/util/concurrent/BlockingQueue;

    .line 617
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->myJobDeque:Ljava/util/concurrent/BlockingQueue;

    .line 618
    invoke-virtual {p0, p2}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->setName(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->start()V

    .line 620
    return-void
.end method

.method static synthetic access$200(Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    .line 612
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->myJobDeque:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public getThreadName()Ljava/lang/String;
    .locals 1

    .line 656
    invoke-virtual {p0}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 632
    :goto_0
    iget-boolean v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->isStopRead:Z

    if-nez v0, :cond_2

    .line 634
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    goto :goto_1

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->myJobDeque:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/commprocessor/FromServer;

    .line 638
    .local v0, "fromServer":Lcom/android/supl/commprocessor/FromServer;
    if-nez v0, :cond_1

    .line 639
    goto :goto_0

    .line 642
    :cond_1
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-virtual {v1, v0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->process(Lcom/android/supl/commprocessor/FromServer;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    .end local v0    # "fromServer":Lcom/android/supl/commprocessor/FromServer;
    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v1, "SUPL20_SCM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " allowed to exit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    nop

    .line 653
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_2
    :goto_1
    return-void
.end method

.method public stopRead()V
    .locals 1

    .line 626
    invoke-virtual {p0}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->interrupt()V

    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->isStopRead:Z

    .line 628
    return-void
.end method

.class Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;
.super Ljava/lang/Thread;
.source "NetworkCommandProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/supl/commprocessor/NetworkCommandProcessor;->connect(Ljava/lang/String;IIIIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

.field final synthetic val$iConnTimeOut:I

.field final synthetic val$iHandShakeTimeOut:I

.field final synthetic val$iReqID:I

.field final synthetic val$iSecure:I

.field final synthetic val$iSessionID:I

.field final synthetic val$networkController:Lcom/android/supl/nc/NetworkController;

.field final synthetic val$port:I

.field final synthetic val$stIP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/supl/commprocessor/NetworkCommandProcessor;Lcom/android/supl/nc/NetworkController;IILjava/lang/String;IIII)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .line 257
    iput-object p1, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->this$0:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    iput-object p2, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    iput p3, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iSessionID:I

    iput p4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iReqID:I

    iput-object p5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$stIP:Ljava/lang/String;

    iput p6, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$port:I

    iput p7, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iSecure:I

    iput p8, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iHandShakeTimeOut:I

    iput p9, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iConnTimeOut:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "isConnected":Z
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 263
    .local v2, "iFailStatus":[I
    iget-object v3, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    if-nez v3, :cond_0

    .line 264
    const-string v1, "SUPL20_NetCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iSessionID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Req id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iReqID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not connect for no more connection allowed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->this$0:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    iget v3, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iSessionID:I

    iget v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iReqID:I

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sendNotConnectionStatus(II[I)V

    .line 267
    return-void

    .line 269
    :cond_0
    iget-object v3, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->this$0:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    iget-object v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$stIP:Ljava/lang/String;

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$port:I

    iget v6, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iSecure:I

    iget-object v7, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v7}, Lcom/android/supl/nc/NetworkController;->getNetWorkID()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->getNetKey(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "stKey":Ljava/lang/String;
    const-string v4, "SUPL20_NetCP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iSessionID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Req id :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iReqID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is trying to connect to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v6}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iHandShakeTimeOut:I

    iget v6, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iConnTimeOut:I

    invoke-virtual {v4, v5, v6}, Lcom/android/supl/nc/NetworkController;->SetTimeOuts(II)V

    .line 275
    iget-object v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iConnTimeOut:I

    invoke-virtual {v4, v5, v1}, Lcom/android/supl/nc/NetworkController;->setServer_conn_Timeout_Retries(II)V

    .line 277
    iget-object v1, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/android/supl/nc/NetworkController;->connect([IZ)Z

    move-result v0

    .line 278
    if-eqz v0, :cond_1

    .line 279
    const-string v1, "SUPL20_NetCP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iSessionID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Req id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iReqID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is connected to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v5}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v1, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->this$0:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    iget v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iSessionID:I

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iReqID:I

    iget-object v6, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v6}, Lcom/android/supl/nc/NetworkController;->getNetWorkID()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sendOnConnectionStatus(III)V

    goto :goto_0

    .line 282
    :cond_1
    const-string v1, "SUPL20_NetCP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iSessionID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Req id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iReqID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is not connected to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v5}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v1, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->this$0:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->access$000(Lcom/android/supl/commprocessor/NetworkCommandProcessor;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v4}, Lcom/android/supl/nc/NetworkController;->getNetWorkID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 284
    iget-object v1, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->this$0:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    iget-object v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1, v4, v3}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->access$100(Lcom/android/supl/commprocessor/NetworkCommandProcessor;Lcom/android/supl/nc/NetworkController;Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->this$0:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    iget v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iSessionID:I

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iReqID:I

    invoke-virtual {v1, v4, v5, v2}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sendNotConnectionStatus(II[I)V

    .line 287
    :goto_0
    return-void
.end method

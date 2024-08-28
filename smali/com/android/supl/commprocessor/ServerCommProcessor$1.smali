.class Lcom/android/supl/commprocessor/ServerCommProcessor$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ServerCommProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/commprocessor/ServerCommProcessor;
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

    .line 167
    iput-object p1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 170
    const-string v0, "SUPL20_SCM"

    const-string v1, "Network onAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-static {v0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->access$000(Lcom/android/supl/commprocessor/ServerCommProcessor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/supl/commprocessor/ServerCommProcessor;->access$100(Lcom/android/supl/commprocessor/ServerCommProcessor;Z)V

    .line 177
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 181
    const-string v0, "SUPL20_SCM"

    const-string v1, "Network onLost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-static {v0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->access$000(Lcom/android/supl/commprocessor/ServerCommProcessor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/supl/commprocessor/ServerCommProcessor;->access$100(Lcom/android/supl/commprocessor/ServerCommProcessor;Z)V

    .line 188
    return-void
.end method

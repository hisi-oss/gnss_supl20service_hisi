.class Lcom/android/supl/nc/NetworkController$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/nc/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/nc/NetworkController;


# direct methods
.method constructor <init>(Lcom/android/supl/nc/NetworkController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/nc/NetworkController;

    .line 1113
    iput-object p1, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 6
    .param p1, "network"    # Landroid/net/Network;

    .line 1116
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v0}, Lcom/android/supl/nc/NetworkController;->access$400(Lcom/android/supl/nc/NetworkController;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1117
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 1118
    return-void

    .line 1120
    :cond_0
    const-string v1, "SUPL20_NC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network onAvailable NetworkInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 1122
    .local v1, "isConnected":Z
    if-eqz v1, :cond_2

    .line 1124
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v2}, Lcom/android/supl/nc/NetworkController;->access$500(Lcom/android/supl/nc/NetworkController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1125
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v2, v2, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-nez v2, :cond_1

    .line 1127
    :try_start_0
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v2}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 1128
    .local v2, "inetList":[Ljava/net/InetAddress;
    iget-object v3, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    iput-object v4, v3, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 1129
    const-string v3, "SUPL20_NC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DNS query(use network.getAllByName) success: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v5, v5, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    .end local v2    # "inetList":[Ljava/net/InetAddress;
    goto :goto_0

    .line 1130
    :catch_0
    move-exception v2

    .line 1131
    .local v2, "e":Ljava/net/UnknownHostException;
    const-string v3, "SUPL20_NC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DNS query(use network.getAllByName) fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v5}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1132
    iget-object v3, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 1133
    return-void

    .line 1137
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/supl/nc/NetworkController;->access$602(Lcom/android/supl/nc/NetworkController;Z)Z

    .line 1139
    :cond_2
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 1143
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v0}, Lcom/android/supl/nc/NetworkController;->access$400(Lcom/android/supl/nc/NetworkController;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1144
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 1145
    return-void

    .line 1147
    :cond_0
    const-string v1, "SUPL20_NC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network onLost NetworkInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 1152
    const-string v0, "SUPL20_NC"

    const-string v1, "Network onUnavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    return-void
.end method

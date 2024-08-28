.class public Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SETLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/SETLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/loc/SETLocationManager;


# direct methods
.method public constructor <init>(Lcom/android/supl/loc/SETLocationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/loc/SETLocationManager;

    .line 1049
    iput-object p1, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1052
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1053
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1054
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v1}, Lcom/android/supl/loc/SETLocationManager;->access$400(Lcom/android/supl/loc/SETLocationManager;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1055
    const-string v1, "wifi"

    .line 1056
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1057
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 1058
    .local v2, "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " num scan results="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    if-nez v2, :cond_0

    const-string v4, "0"

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1060
    .local v3, "updateMsg":Ljava/lang/String;
    const-string v4, "SUPL20_LocMan"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WIFI_STATE result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v4, v2}, Lcom/android/supl/loc/SETLocationManager;->access$900(Lcom/android/supl/loc/SETLocationManager;Ljava/util/List;)V

    .line 1062
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v2    # "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v3    # "updateMsg":Ljava/lang/String;
    goto/16 :goto_3

    .line 1063
    :cond_1
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1064
    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1067
    .local v1, "state":I
    const-string v2, "unknown"

    .line 1068
    .local v2, "stateString":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 1077
    :pswitch_0
    const-string v2, "enabled"

    .line 1078
    iget-object v3, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v3}, Lcom/android/supl/loc/SETLocationManager;->access$400(Lcom/android/supl/loc/SETLocationManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1079
    iget-object v3, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v3}, Lcom/android/supl/loc/SETLocationManager;->access$800(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/loc/NetInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/supl/loc/NetInfo;->getWiFiMACAddress()Ljava/lang/String;

    move-result-object v3

    .line 1080
    .local v3, "stMACAddress":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1081
    iget-object v5, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x15

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/supl/loc/SETLocationManager;->access$600(Lcom/android/supl/loc/SETLocationManager;Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    goto :goto_1

    .line 1083
    :cond_2
    const-string v4, "SUPL20_LocMan"

    const-string v5, "WIFI_STATE not have mac address"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    .end local v3    # "stMACAddress":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 1088
    :pswitch_1
    const-string v2, "enabling"

    goto :goto_2

    .line 1070
    :pswitch_2
    const-string v2, "disabled"

    .line 1071
    iget-object v3, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v3}, Lcom/android/supl/loc/SETLocationManager;->access$800(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/loc/NetInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v4}, Lcom/android/supl/loc/SETLocationManager;->access$200(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/commprocessor/NDKCommProcessor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/supl/loc/NetInfo;->sendStaleLocationInfo(Lcom/android/supl/commprocessor/NDKCommProcessor;)V

    .line 1072
    goto :goto_2

    .line 1074
    :pswitch_3
    const-string v2, "disabling"

    .line 1075
    nop

    .line 1092
    :cond_3
    :goto_2
    const-string v3, "SUPL20_LocMan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WIFI_STATE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    .end local v1    # "state":I
    .end local v2    # "stateString":Ljava/lang/String;
    goto :goto_3

    :cond_4
    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1094
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v2, p1}, Lcom/android/supl/loc/SETLocationManager;->access$1000(Lcom/android/supl/loc/SETLocationManager;Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/supl/loc/SETLocationManager;->access$402(Lcom/android/supl/loc/SETLocationManager;Z)Z

    .line 1095
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v1}, Lcom/android/supl/loc/SETLocationManager;->access$1100(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/config/ConfigManager;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1096
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v1}, Lcom/android/supl/loc/SETLocationManager;->access$1100(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/config/ConfigManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v2}, Lcom/android/supl/loc/SETLocationManager;->access$400(Lcom/android/supl/loc/SETLocationManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/supl/config/ConfigManager;->updateLocationSwitch(Z)V

    .line 1098
    :cond_5
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v1}, Lcom/android/supl/loc/SETLocationManager;->access$400(Lcom/android/supl/loc/SETLocationManager;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v1}, Lcom/android/supl/loc/SETLocationManager;->isGlobalVersion()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1100
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v1}, Lcom/android/supl/loc/SETLocationManager;->forceCellLocationUpdate()V

    .line 1102
    :cond_6
    const-string v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location switch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v3}, Lcom/android/supl/loc/SETLocationManager;->access$400(Lcom/android/supl/loc/SETLocationManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_7
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/android/supl/loc/SETLocationManager$3;
.super Ljava/lang/Thread;
.source "SETLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/supl/loc/SETLocationManager;->readPrivacyApprovedFlag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/loc/SETLocationManager;


# direct methods
.method constructor <init>(Lcom/android/supl/loc/SETLocationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/loc/SETLocationManager;

    .line 1147
    iput-object p1, p0, Lcom/android/supl/loc/SETLocationManager$3;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1150
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 1152
    const-string v2, "SUPL20_LocMan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to read privacy flag times: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager$3;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v2}, Lcom/android/supl/loc/SETLocationManager;->access$1200(Lcom/android/supl/loc/SETLocationManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1157
    goto :goto_2

    .line 1161
    :cond_0
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    goto :goto_1

    .line 1162
    :catch_0
    move-exception v2

    .line 1163
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "SUPL20_LocMan"

    const-string v4, "sleep interrupt, again"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1167
    .end local v1    # "i":I
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$3;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v1}, Lcom/android/supl/loc/SETLocationManager;->access$1300(Lcom/android/supl/loc/SETLocationManager;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 1168
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$3;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v1, v0}, Lcom/android/supl/loc/SETLocationManager;->access$1302(Lcom/android/supl/loc/SETLocationManager;I)I

    .line 1169
    const-string v0, "SUPL20_LocMan"

    const-string v1, "Set NOT Approved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    return-void

    .line 1173
    :cond_2
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager$3;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v0}, Lcom/android/supl/loc/SETLocationManager;->access$400(Lcom/android/supl/loc/SETLocationManager;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1174
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager$3;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v0}, Lcom/android/supl/loc/SETLocationManager;->access$1400(Lcom/android/supl/loc/SETLocationManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1176
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 1177
    .local v1, "gps":Z
    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 1178
    .local v2, "network":Z
    if-nez v1, :cond_3

    if-eqz v2, :cond_5

    .line 1179
    :cond_3
    iget-object v3, p0, Lcom/android/supl/loc/SETLocationManager$3;->this$0:Lcom/android/supl/loc/SETLocationManager;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/supl/loc/SETLocationManager;->access$402(Lcom/android/supl/loc/SETLocationManager;Z)Z

    .line 1180
    iget-object v3, p0, Lcom/android/supl/loc/SETLocationManager$3;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v3}, Lcom/android/supl/loc/SETLocationManager;->access$1100(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/config/ConfigManager;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1181
    iget-object v3, p0, Lcom/android/supl/loc/SETLocationManager$3;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v3}, Lcom/android/supl/loc/SETLocationManager;->access$1100(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/config/ConfigManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager$3;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v4}, Lcom/android/supl/loc/SETLocationManager;->access$400(Lcom/android/supl/loc/SETLocationManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/supl/config/ConfigManager;->updateLocationSwitch(Z)V

    .line 1184
    :cond_4
    iget-object v3, p0, Lcom/android/supl/loc/SETLocationManager$3;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v3}, Lcom/android/supl/loc/SETLocationManager;->forceCellLocationUpdate()V

    .line 1186
    :cond_5
    const-string v3, "SUPL20_LocMan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gps switch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " network switch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " privacy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/supl/loc/SETLocationManager$3;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v5}, Lcom/android/supl/loc/SETLocationManager;->access$1300(Lcom/android/supl/loc/SETLocationManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    .end local v0    # "locationManager":Landroid/location/LocationManager;
    .end local v1    # "gps":Z
    .end local v2    # "network":Z
    :cond_6
    return-void
.end method

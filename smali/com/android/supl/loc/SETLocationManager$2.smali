.class Lcom/android/supl/loc/SETLocationManager$2;
.super Ljava/lang/Thread;
.source "SETLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/supl/loc/SETLocationManager;->forceCellLocationUpdate()V
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

    .line 361
    iput-object p1, p0, Lcom/android/supl/loc/SETLocationManager$2;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 364
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager$2;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v0}, Lcom/android/supl/loc/SETLocationManager;->access$300(Lcom/android/supl/loc/SETLocationManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$2;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v1}, Lcom/android/supl/loc/SETLocationManager;->access$400(Lcom/android/supl/loc/SETLocationManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$2;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v1}, Lcom/android/supl/loc/SETLocationManager;->access$500(Lcom/android/supl/loc/SETLocationManager;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    .line 367
    .local v5, "iNetWorkType":I
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$2;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v1}, Lcom/android/supl/loc/SETLocationManager;->access$500(Lcom/android/supl/loc/SETLocationManager;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 368
    .local v1, "cellLoc":Landroid/telephony/CellLocation;
    if-nez v1, :cond_0

    .line 369
    const-string v2, "SUPL20_LocMan"

    const-string v3, "tm.getCellLocation() returned null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    :cond_0
    const-string v2, "SUPL20_LocMan"

    const-string v3, "tm.getCellLocation() returned non-null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager$2;->this$0:Lcom/android/supl/loc/SETLocationManager;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lcom/android/supl/loc/SETLocationManager;->access$600(Lcom/android/supl/loc/SETLocationManager;Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    .line 374
    .end local v1    # "cellLoc":Landroid/telephony/CellLocation;
    .end local v5    # "iNetWorkType":I
    :goto_0
    goto :goto_1

    .line 375
    :cond_1
    const-string v1, "SUPL20_LocMan"

    const-string v2, "Location switch is OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_1
    monitor-exit v0

    .line 378
    return-void

    .line 377
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

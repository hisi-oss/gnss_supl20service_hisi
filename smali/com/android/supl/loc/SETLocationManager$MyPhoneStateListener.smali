.class Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "SETLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/SETLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/loc/SETLocationManager;


# direct methods
.method private constructor <init>(Lcom/android/supl/loc/SETLocationManager;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/supl/loc/SETLocationManager;Lcom/android/supl/loc/SETLocationManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/supl/loc/SETLocationManager;
    .param p2, "x1"    # Lcom/android/supl/loc/SETLocationManager$1;

    .line 461
    invoke-direct {p0, p1}, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;-><init>(Lcom/android/supl/loc/SETLocationManager;)V

    return-void
.end method


# virtual methods
.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 476
    .local p1, "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v0}, Lcom/android/supl/loc/SETLocationManager;->access$500(Lcom/android/supl/loc/SETLocationManager;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 477
    .local v0, "iNetWorkType":I
    const-string v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCellInfoChanged network type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v4, v0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/supl/loc/SETLocationManager;->access$600(Lcom/android/supl/loc/SETLocationManager;Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    .line 481
    :cond_0
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V

    .line 482
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 7
    .param p1, "cellLoc"    # Landroid/telephony/CellLocation;

    .line 468
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v0}, Lcom/android/supl/loc/SETLocationManager;->access$500(Lcom/android/supl/loc/SETLocationManager;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 469
    .local v0, "iNetWorkType":I
    const-string v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCellLocationChanged network type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v4, v0

    invoke-static/range {v1 .. v6}, Lcom/android/supl/loc/SETLocationManager;->access$600(Lcom/android/supl/loc/SETLocationManager;Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    .line 471
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    .line 472
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .line 562
    const-string v0, "Unknown"

    .line 564
    .local v0, "connectionState":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 575
    :pswitch_0
    const-string v0, "Suspended"

    .line 576
    goto :goto_0

    .line 566
    :pswitch_1
    const-string v0, "Connected"

    .line 567
    goto :goto_0

    .line 569
    :pswitch_2
    const-string v0, "Connecting"

    .line 570
    goto :goto_0

    .line 572
    :pswitch_3
    const-string v0, "Disconnected"

    .line 573
    nop

    .line 582
    :goto_0
    const-string v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataConnectionStateChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v1}, Lcom/android/supl/loc/SETLocationManager;->forceCellLocationUpdate()V

    .line 585
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    .line 586
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .line 527
    const-string v0, "Unknown"

    .line 529
    .local v0, "connectionState":Ljava/lang/String;
    const-string v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataConnectionStateChanged networkType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    packed-switch p1, :pswitch_data_0

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    const-string v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataConnectionStateChanged state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 544
    :pswitch_0
    const-string v0, "Suspended"

    .line 545
    const-string v1, "SUPL20_LocMan"

    const-string v2, "onDataConnectionStateChanged TelephonyManager.DATA_SUSPENDED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    goto :goto_0

    .line 532
    :pswitch_1
    const-string v0, "Connected"

    .line 533
    const-string v1, "SUPL20_LocMan"

    const-string v2, "onDataConnectionStateChanged TelephonyManager.DATA_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    goto :goto_0

    .line 536
    :pswitch_2
    const-string v0, "Connecting"

    .line 537
    const-string v1, "SUPL20_LocMan"

    const-string v2, "onDataConnectionStateChanged TelephonyManager.DATA_CONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    goto :goto_0

    .line 540
    :pswitch_3
    const-string v0, "Disconnected"

    .line 541
    const-string v1, "SUPL20_LocMan"

    const-string v2, "onDataConnectionStateChanged TelephonyManager.DATA_DISCONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    nop

    .line 552
    :goto_0
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v1}, Lcom/android/supl/loc/SETLocationManager;->forceCellLocationUpdate()V

    .line 554
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    .line 555
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, "iNotInService":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 508
    const/4 v0, 0x1

    .line 509
    const-string v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    :pswitch_0
    const/4 v0, 0x1

    .line 505
    const-string v1, "SUPL20_LocMan"

    const-string v2, "onServiceStateChanged ServiceState.STATE_POWER_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    goto :goto_0

    .line 496
    :pswitch_1
    const/4 v0, 0x1

    .line 497
    const-string v1, "SUPL20_LocMan"

    const-string v2, "onServiceStateChanged ServiceState.STATE_EMERGENCY_ONLY"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    goto :goto_0

    .line 500
    :pswitch_2
    const/4 v0, 0x1

    .line 501
    const-string v1, "SUPL20_LocMan"

    const-string v2, "onServiceStateChanged ServiceState.STATE_OUT_OF_SERVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    goto :goto_0

    .line 493
    :pswitch_3
    const-string v1, "SUPL20_LocMan"

    const-string v2, "onServiceStateChanged ServiceState.STATE_IN_SERVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    nop

    .line 513
    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v1}, Lcom/android/supl/loc/SETLocationManager;->sendCellStaleLocation()V

    .line 515
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v1}, Lcom/android/supl/loc/SETLocationManager;->access$800(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/loc/NetInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v2}, Lcom/android/supl/loc/SETLocationManager;->access$200(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/commprocessor/NDKCommProcessor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/supl/loc/NetInfo;->sendStaleLocationInfo(Lcom/android/supl/commprocessor/NDKCommProcessor;)V

    goto :goto_1

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v1}, Lcom/android/supl/loc/SETLocationManager;->forceCellLocationUpdate()V

    .line 520
    :goto_1
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 521
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

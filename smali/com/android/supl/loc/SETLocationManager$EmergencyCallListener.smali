.class Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;
.super Landroid/telephony/PhoneStateListener;
.source "SETLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/SETLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyCallListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/loc/SETLocationManager;


# direct methods
.method private constructor <init>(Lcom/android/supl/loc/SETLocationManager;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/supl/loc/SETLocationManager;Lcom/android/supl/loc/SETLocationManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/supl/loc/SETLocationManager;
    .param p2, "x1"    # Lcom/android/supl/loc/SETLocationManager$1;

    .line 406
    invoke-direct {p0, p1}, Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;-><init>(Lcom/android/supl/loc/SETLocationManager;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 411
    const-string v0, "UNKNOWN"

    .line 413
    .local v0, "callState":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 440
    :pswitch_0
    const-string v0, "Offhook"

    goto/16 :goto_0

    .line 437
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ringing ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    goto :goto_0

    .line 415
    :pswitch_2
    const-string v0, "IDLE"

    .line 416
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v1}, Lcom/android/supl/loc/SETLocationManager;->access$100(Lcom/android/supl/loc/SETLocationManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/supl/loc/SETLocationManager;->access$102(Lcom/android/supl/loc/SETLocationManager;Z)Z

    .line 418
    new-instance v1, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v1}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 419
    .local v1, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/16 v2, 0xc

    .line 421
    .local v2, "iSize":I
    new-array v3, v2, [B

    iput-object v3, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 422
    const/4 v3, 0x0

    .line 423
    .local v3, "iOffset":I
    iget-object v4, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    add-int/lit8 v5, v2, -0x4

    invoke-static {v4, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 425
    iget-object v4, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    const/16 v5, 0x116

    invoke-static {v4, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 427
    iget-object v4, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 428
    iget-object v5, p0, Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v5}, Lcom/android/supl/loc/SETLocationManager;->access$100(Lcom/android/supl/loc/SETLocationManager;)Z

    move-result v5

    .line 427
    invoke-static {v4, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 429
    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v4}, Lcom/android/supl/loc/SETLocationManager;->access$200(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/commprocessor/NDKCommProcessor;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 430
    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v4}, Lcom/android/supl/loc/SETLocationManager;->access$200(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/commprocessor/NDKCommProcessor;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 432
    :cond_0
    const-string v4, "SUPL20_LocMan"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCallStateChanged "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " on Emergency call End"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .end local v1    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    .end local v2    # "iSize":I
    .end local v3    # "iOffset":I
    nop

    .line 445
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 446
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

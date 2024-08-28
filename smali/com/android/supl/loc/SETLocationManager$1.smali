.class Lcom/android/supl/loc/SETLocationManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SETLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/SETLocationManager;
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

    .line 197
    iput-object p1, p0, Lcom/android/supl/loc/SETLocationManager$1;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 201
    const-string v0, "android.intent.extra.PHONE_NUMBER"

    .line 202
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "outgoingno":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$1;->this$0:Lcom/android/supl/loc/SETLocationManager;

    .line 206
    invoke-static {v0}, Lcom/android/supl/loc/EmergencyUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 207
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 205
    :goto_1
    invoke-static {v1, v2}, Lcom/android/supl/loc/SETLocationManager;->access$102(Lcom/android/supl/loc/SETLocationManager;Z)Z

    .line 209
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$1;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v1}, Lcom/android/supl/loc/SETLocationManager;->access$100(Lcom/android/supl/loc/SETLocationManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    const-string v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " on Emergency call is going.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v1, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v1}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 212
    .local v1, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/16 v2, 0xc

    .line 214
    .local v2, "iSize":I
    new-array v3, v2, [B

    iput-object v3, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 215
    const/4 v3, 0x0

    .line 216
    .local v3, "iOffset":I
    iget-object v4, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    add-int/lit8 v5, v2, -0x4

    invoke-static {v4, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 218
    iget-object v4, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    const/16 v5, 0x116

    invoke-static {v4, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 220
    iget-object v4, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 221
    iget-object v5, p0, Lcom/android/supl/loc/SETLocationManager$1;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v5}, Lcom/android/supl/loc/SETLocationManager;->access$100(Lcom/android/supl/loc/SETLocationManager;)Z

    move-result v5

    .line 220
    invoke-static {v4, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 222
    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager$1;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v4}, Lcom/android/supl/loc/SETLocationManager;->access$200(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/commprocessor/NDKCommProcessor;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 223
    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager$1;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v4}, Lcom/android/supl/loc/SETLocationManager;->access$200(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/commprocessor/NDKCommProcessor;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 226
    .end local v1    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    .end local v2    # "iSize":I
    .end local v3    # "iOffset":I
    :cond_2
    return-void
.end method

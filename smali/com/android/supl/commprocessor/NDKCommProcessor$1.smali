.class Lcom/android/supl/commprocessor/NDKCommProcessor$1;
.super Landroid/os/Handler;
.source "NDKCommProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/commprocessor/NDKCommProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;


# direct methods
.method constructor <init>(Lcom/android/supl/commprocessor/NDKCommProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 217
    iput-object p1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 222
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 247
    :pswitch_0
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->access$000(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/loc/SETLocationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->access$000(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/loc/SETLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/supl/loc/SETLocationManager;->stopListening()V

    goto :goto_2

    .line 242
    :pswitch_1
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->access$000(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/loc/SETLocationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->access$000(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/loc/SETLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/supl/loc/SETLocationManager;->startLocationIdListener()V

    goto :goto_2

    .line 233
    :pswitch_2
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->access$000(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/loc/SETLocationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->access$000(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/loc/SETLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/supl/loc/SETLocationManager;->unregisterEmergencyReceiver()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 238
    :goto_0
    goto :goto_2

    .line 224
    :pswitch_3
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->access$000(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/loc/SETLocationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    :try_start_1
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->access$000(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/loc/SETLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/supl/loc/SETLocationManager;->registerEmergencyReceiver()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 227
    :catch_1
    move-exception v0

    .line 229
    :goto_1
    nop

    .line 255
    :cond_0
    :goto_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 256
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

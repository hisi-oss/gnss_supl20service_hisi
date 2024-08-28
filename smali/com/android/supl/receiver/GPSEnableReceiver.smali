.class public Lcom/android/supl/receiver/GPSEnableReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GPSEnableReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 48
    const-string v0, "GPSEnableReceiver"

    const-string v1, "GPSEnableReceiver invoked"

    invoke-static {v0, v1}, Lcom/android/supl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 52
    .local v1, "isGPSEnabled":Z
    nop

    .line 59
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "isGPSEnabled":Z
    :cond_0
    return-void
.end method

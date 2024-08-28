.class Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;
.super Ljava/lang/Object;
.source "SUPLHIDLInterface.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/SUPLHIDLInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HidlServiceDeathHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/SUPLHIDLInterface;


# direct methods
.method private constructor <init>(Lcom/android/supl/SUPLHIDLInterface;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/supl/SUPLHIDLInterface;Lcom/android/supl/SUPLHIDLInterface$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/supl/SUPLHIDLInterface;
    .param p2, "x1"    # Lcom/android/supl/SUPLHIDLInterface$1;

    .line 120
    invoke-direct {p0, p1}, Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;-><init>(Lcom/android/supl/SUPLHIDLInterface;)V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 124
    :try_start_0
    const-string v0, "SUPLHIDL"

    const-string v1, "HISUPL server died."

    invoke-static {v0, v1}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-static {v0}, Lcom/android/supl/SUPLHIDLInterface;->access$100(Lcom/android/supl/SUPLHIDLInterface;)Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "SUPLHIDL"

    const-string v1, "HISUPL server died 00."

    invoke-static {v0, v1}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-static {v0}, Lcom/android/supl/SUPLHIDLInterface;->access$100(Lcom/android/supl/SUPLHIDLInterface;)Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-static {v1}, Lcom/android/supl/SUPLHIDLInterface;->access$200(Lcom/android/supl/SUPLHIDLInterface;)Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    .line 128
    const-string v0, "SUPLHIDL"

    const-string v1, "HISUPL server died 01."

    invoke-static {v0, v1}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/supl/SUPLHIDLInterface;->access$102(Lcom/android/supl/SUPLHIDLInterface;Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;)Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SUPLHIDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception unlinkToDeath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/supl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

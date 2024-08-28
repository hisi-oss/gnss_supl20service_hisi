.class final Lcom/android/supl/SUPLManager$SettingsObserver;
.super Ljava/lang/Object;
.source "SUPLManager.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/SUPLManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/SUPLManager;


# direct methods
.method private constructor <init>(Lcom/android/supl/SUPLManager;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/supl/SUPLManager$SettingsObserver;->this$0:Lcom/android/supl/SUPLManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/supl/SUPLManager;Lcom/android/supl/SUPLManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/supl/SUPLManager;
    .param p2, "x1"    # Lcom/android/supl/SUPLManager$1;

    .line 169
    invoke-direct {p0, p1}, Lcom/android/supl/SUPLManager$SettingsObserver;-><init>(Lcom/android/supl/SUPLManager;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/android/supl/SUPLManager$SettingsObserver;->this$0:Lcom/android/supl/SUPLManager;

    const-string v1, "gps"

    invoke-static {v0, v1}, Lcom/android/supl/SUPLManager;->access$100(Lcom/android/supl/SUPLManager;Ljava/lang/String;)V

    .line 175
    return-void
.end method

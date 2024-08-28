.class public Lcom/android/supl/commprocessor/SUPLSCMService$SCMConnectionThread;
.super Ljava/lang/Object;
.source "SUPLSCMService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/commprocessor/SUPLSCMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SCMConnectionThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/commprocessor/SUPLSCMService;


# direct methods
.method public constructor <init>(Lcom/android/supl/commprocessor/SUPLSCMService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/commprocessor/SUPLSCMService;

    .line 108
    iput-object p1, p0, Lcom/android/supl/commprocessor/SUPLSCMService$SCMConnectionThread;->this$0:Lcom/android/supl/commprocessor/SUPLSCMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 111
    const/4 v0, 0x1

    .line 112
    .local v0, "isLogEnable":Z
    const/4 v1, 0x0

    .line 115
    .local v1, "connected":Z
    const/4 v2, 0x1

    .line 116
    .local v2, "isOneTimeLog":Z
    :goto_0
    if-nez v1, :cond_4

    .line 118
    if-nez v1, :cond_1

    .line 119
    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    const-string v3, "SUPL20_SCMService"

    const-string v4, "SCM is trying to connect.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v3, "SUPL20_SCMService"

    const-string v4, "SUPL Services version: 2.13.2.3"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 125
    const/4 v2, 0x1

    .line 128
    :cond_1
    iget-object v3, p0, Lcom/android/supl/commprocessor/SUPLSCMService$SCMConnectionThread;->this$0:Lcom/android/supl/commprocessor/SUPLSCMService;

    invoke-static {v3}, Lcom/android/supl/commprocessor/SUPLSCMService;->access$000(Lcom/android/supl/commprocessor/SUPLSCMService;)Lcom/android/supl/commprocessor/ServerCommProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/supl/commprocessor/ServerCommProcessor;->init()Z

    move-result v3

    move v1, v3

    .line 130
    if-eqz v1, :cond_2

    .line 131
    if-eqz v2, :cond_3

    .line 132
    const/4 v2, 0x0

    .line 133
    const-string v3, "SUPL20_SCMService"

    const-string v4, "SCM connect.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 138
    :cond_2
    const-string v3, "SUPL20_SCMService"

    const-string v4, "SCM not connect.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_2

    .line 144
    :catch_0
    move-exception v3

    .line 145
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "SUPL20_SCMService"

    const-string v5, "SCM: Error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    goto :goto_0

    .line 141
    :catch_1
    move-exception v3

    .line 142
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v4, "SUPL20_SCMService"

    const-string v5, "SCM: connection exit"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 143
    goto :goto_2

    .line 150
    .end local v2    # "isOneTimeLog":Z
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SUPL20_SCMService"

    const-string v4, "SCM Connection: Error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    const/4 v1, 0x0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 153
    :cond_4
    :goto_2
    nop

    .line 154
    :goto_3
    return-void
.end method

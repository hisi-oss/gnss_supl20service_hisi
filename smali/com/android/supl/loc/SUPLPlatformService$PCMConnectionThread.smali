.class public Lcom/android/supl/loc/SUPLPlatformService$PCMConnectionThread;
.super Ljava/lang/Object;
.source "SUPLPlatformService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/SUPLPlatformService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PCMConnectionThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/loc/SUPLPlatformService;


# direct methods
.method public constructor <init>(Lcom/android/supl/loc/SUPLPlatformService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/loc/SUPLPlatformService;

    .line 138
    iput-object p1, p0, Lcom/android/supl/loc/SUPLPlatformService$PCMConnectionThread;->this$0:Lcom/android/supl/loc/SUPLPlatformService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 141
    const/4 v0, 0x1

    .line 142
    .local v0, "isLogEnable":Z
    const/4 v1, 0x0

    .line 144
    .local v1, "connected":Z
    if-eqz v0, :cond_0

    .line 146
    :try_start_0
    const-string v2, "SUPL20_PCMService"

    const-string v3, "PCM try to connect.."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v2, "SUPL20_PCMService"

    const-string v3, "SUPL Services version:2.13.2.3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :catch_0
    move-exception v2

    goto :goto_4

    .line 150
    :cond_0
    :goto_0
    const-string v2, "SUPL20_PCMService"

    const-string v3, "running"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    const/4 v2, 0x1

    .line 152
    .local v2, "isOneTimeLog":Z
    :goto_1
    if-nez v1, :cond_5

    .line 155
    if-nez v1, :cond_2

    .line 156
    if-eqz v0, :cond_1

    .line 158
    :try_start_1
    const-string v3, "SUPL20_PCMService"

    const-string v4, "PCM try to connect.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v3, "SUPL20_PCMService"

    const-string v4, "SUPL Services version:2.13.2.3"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_1
    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 162
    const/4 v2, 0x1

    .line 164
    :cond_2
    iget-object v3, p0, Lcom/android/supl/loc/SUPLPlatformService$PCMConnectionThread;->this$0:Lcom/android/supl/loc/SUPLPlatformService;

    invoke-static {v3}, Lcom/android/supl/loc/SUPLPlatformService;->access$000(Lcom/android/supl/loc/SUPLPlatformService;)Lcom/android/supl/commprocessor/NDKCommProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/supl/commprocessor/NDKCommProcessor;->init()Z

    move-result v3

    move v1, v3

    .line 166
    if-eqz v1, :cond_3

    .line 167
    if-eqz v2, :cond_4

    .line 168
    const/4 v2, 0x0

    .line 169
    const-string v3, "SUPL20_PCMService"

    const-string v4, "PCM connect.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 174
    :cond_3
    const-string v3, "SUPL20_PCMService"

    const-string v4, "PCM not connect.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    goto :goto_3

    .line 181
    :catch_1
    move-exception v3

    .line 182
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "SUPL20_PCMService"

    const-string v5, "PCM: Error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    goto :goto_1

    .line 178
    :catch_2
    move-exception v3

    .line 179
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v4, "SUPL20_PCMService"

    const-string v5, "PCM: connection exit"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    nop

    .line 190
    .end local v2    # "isOneTimeLog":Z
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_5
    :goto_3
    goto :goto_5

    .line 187
    :goto_4
    nop

    .line 188
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SUPL20_PCMService"

    const-string v4, "PCM Connection: Error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    const/4 v1, 0x0

    .line 191
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

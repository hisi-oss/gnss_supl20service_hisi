.class Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
.super Ljava/util/TimerTask;
.source "PeriodicTriggerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/trigger/PeriodicTriggerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemainderTask"
.end annotation


# instance fields
.field private mTimer:Ljava/util/Timer;

.field private m_ucTriggerId:S

.field private m_unPeriod:I

.field private m_unTime:I

.field private sSessionID:I

.field final synthetic this$0:Lcom/android/supl/trigger/PeriodicTriggerHandler;


# direct methods
.method public constructor <init>(Lcom/android/supl/trigger/PeriodicTriggerHandler;IIISI)V
    .locals 7
    .param p2, "sSessionID"    # I
    .param p3, "iDelayToStart"    # I
    .param p4, "iIntervelTimeMin"    # I
    .param p5, "m_ucTriggerId"    # S
    .param p6, "m_unTime"    # I

    .line 210
    iput-object p1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->this$0:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 199
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->sSessionID:I

    .line 201
    const/4 p1, 0x0

    iput-short p1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_ucTriggerId:S

    .line 203
    iput p1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unPeriod:I

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->mTimer:Ljava/util/Timer;

    .line 207
    iput p1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unTime:I

    .line 212
    iput p2, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->sSessionID:I

    .line 213
    iput p4, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unPeriod:I

    .line 214
    iput-short p5, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_ucTriggerId:S

    .line 215
    iput p6, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unTime:I

    .line 216
    new-instance p1, Ljava/util/Timer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trigger thr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->mTimer:Ljava/util/Timer;

    .line 218
    iget-object v1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->mTimer:Ljava/util/Timer;

    int-to-long v3, p3

    iget p1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unPeriod:I

    int-to-long v5, p1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 219
    const-string p1, "SUPL20_Trigger"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start Trigger SID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " TI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " TimeCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Delay to Start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Interval Time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 226
    const-string v0, "SUPL20_Trigger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendOnTriggerPeriodic SID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->sSessionID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " TI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_ucTriggerId:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " TimeIX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->this$0:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    iget v1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->sSessionID:I

    iget-short v2, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_ucTriggerId:S

    iget v3, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unTime:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->sendOnTriggerPeriodic(III)V

    .line 229
    iget v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unTime:I

    if-eqz v0, :cond_0

    .line 230
    iget v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unTime:I

    .line 231
    iget v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unTime:I

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->stopTrigger()V

    .line 235
    :cond_0
    return-void
.end method

.method public stopTrigger()V
    .locals 3

    .line 238
    const-string v0, "SUPL20_Trigger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopTrigger SID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->sSessionID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " TI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_ucTriggerId:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " TimeIX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unTime:I

    .line 241
    iget-object v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->this$0:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    iget v1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->sSessionID:I

    iget-short v2, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_ucTriggerId:S

    invoke-static {v0, v1, v2}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->access$000(Lcom/android/supl/trigger/PeriodicTriggerHandler;IS)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "stKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->this$0:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    invoke-static {v1}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->access$100(Lcom/android/supl/trigger/PeriodicTriggerHandler;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 244
    invoke-virtual {p0}, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->cancel()Z

    .line 246
    return-void
.end method

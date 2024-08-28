.class public Lcom/android/supl/trigger/PeriodicTriggerHandler;
.super Ljava/lang/Object;
.source "PeriodicTriggerHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SUPL20_Trigger"

.field public static final MSG_PCM_ON_ERROR_TRIGGER_PERIODIC:I = 0x110

.field public static final MSG_PCM_ON_TRIGGER_PERIODIC:I = 0x10c

.field public static final MSG_PCM_START_TRIGGER_PERIODIC:I = 0x104

.field public static final MSG_PCM_STOP_TRIGGER_PERIODIC:I = 0x105

.field private static final PERIODIC_TRIGGER_ERROR_CODE_CANT_SET_TRIGGER:I = 0x1

.field private static final PERIODIC_TRIGGER_ERROR_CODE_OTHER:I = 0x2

.field private static final PERIODIC_TRIGGER_ERROR_CODE_TRIGGER_NOT_AVAILABLE:I

.field private static sPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;


# instance fields
.field private hsTrigger:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;",
            ">;"
        }
    .end annotation
.end field

.field private mNdkCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->sPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    .line 73
    iput-object v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->mNdkCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/supl/trigger/PeriodicTriggerHandler;IS)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/trigger/PeriodicTriggerHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # S

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->makeKey(IS)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/supl/trigger/PeriodicTriggerHandler;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/supl/trigger/PeriodicTriggerHandler;

    .line 51
    iget-object v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance()Lcom/android/supl/trigger/PeriodicTriggerHandler;
    .locals 1

    .line 86
    sget-object v0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->sPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/android/supl/trigger/PeriodicTriggerHandler;

    invoke-direct {v0}, Lcom/android/supl/trigger/PeriodicTriggerHandler;-><init>()V

    sput-object v0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->sPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    .line 89
    :cond_0
    sget-object v0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->sPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    return-object v0
.end method

.method private makeKey(IS)Ljava/lang/String;
    .locals 2
    .param p1, "sSessionID"    # I
    .param p2, "m_ucTriggerId"    # S

    .line 191
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 192
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 193
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public OnErrorTriggerPeriodic(III)V
    .locals 6
    .param p1, "m_usSessionId"    # I
    .param p2, "m_ucTriggerId"    # I
    .param p3, "iErrorCode"    # I

    .line 173
    const/16 v0, 0xb

    .line 175
    .local v0, "iSize":I
    add-int/lit8 v1, v0, 0x4

    new-array v1, v1, [B

    .line 176
    .local v1, "bData":[B
    const/4 v2, 0x0

    .line 177
    .local v2, "iOffset":I
    invoke-static {v1, v2, v0}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 178
    const/16 v3, 0x110

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 179
    invoke-static {v1, v2, p1}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v2

    .line 180
    invoke-static {v1, v2, p2}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 181
    invoke-static {v1, v2, p3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 182
    add-int/lit8 v3, v2, -0x4

    if-eq v3, v0, :cond_0

    .line 183
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "OnErrorTriggerPeriodic length invalid"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 185
    :cond_0
    const-string v3, "SUPL20_Trigger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnErrorTriggerPeriodic "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v3, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v3}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 187
    .local v3, "sendToServer":Lcom/android/supl/nc/SendToServer;
    iput-object v1, v3, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 188
    iget-object v4, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->mNdkCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-virtual {v4, v3}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 189
    return-void
.end method

.method public clear()V
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 251
    .local v0, "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 252
    .local v2, "stSessionTriggerID":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;

    .line 253
    .local v3, "remainderTask":Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
    invoke-virtual {v3}, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->stopTrigger()V

    .line 254
    .end local v2    # "stSessionTriggerID":Ljava/lang/String;
    .end local v3    # "remainderTask":Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
    goto :goto_0

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 257
    const/4 v1, 0x0

    sput-object v1, Lcom/android/supl/trigger/PeriodicTriggerHandler;->sPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    .line 258
    return-void
.end method

.method public pause()V
    .locals 4

    .line 260
    iget-object v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 261
    .local v0, "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 262
    .local v2, "stSessionTriggerID":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;

    .line 263
    .local v3, "remainderTask":Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
    invoke-virtual {v3}, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->stopTrigger()V

    .line 264
    .end local v2    # "stSessionTriggerID":Ljava/lang/String;
    .end local v3    # "remainderTask":Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
    goto :goto_0

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 268
    return-void
.end method

.method public sendOnTriggerPeriodic(III)V
    .locals 5
    .param p1, "m_usSessionId"    # I
    .param p2, "m_nTriggerId"    # I
    .param p3, "m_unTime"    # I

    .line 155
    const/16 v0, 0xb

    .line 157
    .local v0, "iSize":I
    add-int/lit8 v1, v0, 0x4

    new-array v1, v1, [B

    .line 158
    .local v1, "bData":[B
    const/4 v2, 0x0

    .line 159
    .local v2, "iOffset":I
    invoke-static {v1, v2, v0}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 160
    const/16 v3, 0x10c

    invoke-static {v1, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 161
    invoke-static {v1, v2, p1}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v2

    .line 162
    invoke-static {v1, v2, p2}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 163
    invoke-static {v1, v2, p3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 164
    add-int/lit8 v3, v2, -0x4

    if-eq v3, v0, :cond_0

    .line 165
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "sendOnTriggerPeriodic length invalid"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    :cond_0
    new-instance v3, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v3}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 168
    .local v3, "sendToServer":Lcom/android/supl/nc/SendToServer;
    iput-object v1, v3, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 169
    iget-object v4, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->mNdkCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-virtual {v4, v3}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 170
    return-void
.end method

.method public setNdkCommProcessor(Lcom/android/supl/commprocessor/NDKCommProcessor;)V
    .locals 0
    .param p1, "ndkCommProcessor"    # Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 96
    iput-object p1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->mNdkCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 97
    return-void
.end method

.method public startTriggerPeriodic(Ljava/io/DataInputStream;)Z
    .locals 16
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    .line 100
    const/4 v8, 0x0

    .line 104
    .local v8, "isReadSuccess":Z
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    .line 106
    .local v9, "m_usSessionId":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-short v10, v0

    .line 108
    .local v10, "m_ucTriggerId":S
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 110
    .local v11, "m_unPeriod":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 111
    .local v12, "m_unTriggers":I
    invoke-direct {v7, v9, v10}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->makeKey(IS)Ljava/lang/String;

    move-result-object v13

    .line 112
    .local v13, "stKey":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;

    .line 113
    .local v14, "remainderTask":Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
    if-eqz v14, :cond_1

    if-lez v11, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v7, v9, v10, v0}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->OnErrorTriggerPeriodic(III)V

    goto :goto_1

    .line 114
    :cond_1
    :goto_0
    new-instance v15, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;

    move-object v0, v15

    move-object v1, v7

    move v2, v9

    move v3, v11

    move v4, v11

    move v5, v10

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;-><init>(Lcom/android/supl/trigger/PeriodicTriggerHandler;IIISI)V

    move-object v14, v15

    .line 116
    iget-object v0, v7, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :goto_1
    const/4 v0, 0x1

    .line 123
    .end local v8    # "isReadSuccess":Z
    .end local v9    # "m_usSessionId":I
    .end local v10    # "m_ucTriggerId":S
    .end local v11    # "m_unPeriod":I
    .end local v12    # "m_unTriggers":I
    .end local v13    # "stKey":Ljava/lang/String;
    .end local v14    # "remainderTask":Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
    .local v0, "isReadSuccess":Z
    return v0
.end method

.method public stopTriggerPeriodic(Ljava/io/DataInputStream;)Z
    .locals 7
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    .line 132
    .local v0, "isReadSuccess":Z
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 134
    .local v1, "m_usSessionId":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    int-to-short v2, v2

    .line 136
    .local v2, "m_ucTriggerId":S
    invoke-direct {p0, v1, v2}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->makeKey(IS)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "stKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;

    .line 139
    .local v4, "remainderTask":Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
    if-nez v4, :cond_0

    .line 140
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v2, v5}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->OnErrorTriggerPeriodic(III)V

    .line 141
    const-string v5, "SUPL20_Trigger"

    const-string v6, "stopTriggerPeriodic invalid id or trigger id"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v4}, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->stopTrigger()V

    .line 144
    iget-object v5, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler;->hsTrigger:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/4 v4, 0x0

    .line 147
    :goto_0
    const/4 v0, 0x1

    .line 149
    .end local v1    # "m_usSessionId":I
    .end local v2    # "m_ucTriggerId":S
    .end local v3    # "stKey":Ljava/lang/String;
    .end local v4    # "remainderTask":Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
    return v0
.end method

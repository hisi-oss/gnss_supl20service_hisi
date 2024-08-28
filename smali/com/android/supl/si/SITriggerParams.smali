.class public Lcom/android/supl/si/SITriggerParams;
.super Ljava/lang/Object;
.source "SITriggerParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/supl/si/SITriggerParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_PCM_START_SI:I = 0x10d


# instance fields
.field private mGanssAssistCapabilities:Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;

.field private mGanssPOSCapabilities:Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;

.field private m_bIsAppIdPresent:Z

.field private m_bIsAssitancePresent:Z

.field private m_bIsPOSPresent:Z

.field private m_bIsQOPPresent:Z

.field private m_bIsTriggerParamsPresent:Z

.field private m_st3rdPartyIds:Lcom/android/supl/si/SUPLThirdPartyIDs;

.field private m_stAppId:Lcom/android/supl/si/ApplicationID;

.field private m_stQoP:Lcom/android/supl/si/SUPLQOPParams;

.field private m_stTriggerParams:Lcom/android/supl/si/SUPLTriggerParams;

.field private m_usPlatformSessionId:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 248
    new-instance v0, Lcom/android/supl/si/SITriggerParams$1;

    invoke-direct {v0}, Lcom/android/supl/si/SITriggerParams$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SITriggerParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsQOPPresent:Z

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/supl/si/SITriggerParams;->m_stQoP:Lcom/android/supl/si/SUPLQOPParams;

    .line 61
    iput-object v1, p0, Lcom/android/supl/si/SITriggerParams;->m_stTriggerParams:Lcom/android/supl/si/SUPLTriggerParams;

    .line 65
    iput-object v1, p0, Lcom/android/supl/si/SITriggerParams;->m_stAppId:Lcom/android/supl/si/ApplicationID;

    .line 67
    iput-object v1, p0, Lcom/android/supl/si/SITriggerParams;->m_st3rdPartyIds:Lcom/android/supl/si/SUPLThirdPartyIDs;

    .line 69
    iput-boolean v0, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsPOSPresent:Z

    .line 71
    iput-object v1, p0, Lcom/android/supl/si/SITriggerParams;->mGanssPOSCapabilities:Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;

    .line 73
    iput-boolean v0, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsAssitancePresent:Z

    .line 75
    iput-object v1, p0, Lcom/android/supl/si/SITriggerParams;->mGanssAssistCapabilities:Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SITriggerParams;->readFromParcel(Landroid/os/Parcel;)V

    .line 265
    return-void
.end method

.method public constructor <init>(ZLcom/android/supl/si/SUPLQOPParams;ZLcom/android/supl/si/SUPLTriggerParams;ZLcom/android/supl/si/ApplicationID;Lcom/android/supl/si/SUPLThirdPartyIDs;ZLcom/android/supl/si/ganss/SuplGanssPOSCapabilities;ZLcom/android/supl/si/ganss/SuplGanssAssistCapabilities;)V
    .locals 2
    .param p1, "m_bIsQOPPresent"    # Z
    .param p2, "m_stQoP"    # Lcom/android/supl/si/SUPLQOPParams;
    .param p3, "m_bIsTriggerParamsPresent"    # Z
    .param p4, "m_stTriggerParams"    # Lcom/android/supl/si/SUPLTriggerParams;
    .param p5, "m_bIsAppIdPresent"    # Z
    .param p6, "m_stAppId"    # Lcom/android/supl/si/ApplicationID;
    .param p7, "m_st3rdPartyIds"    # Lcom/android/supl/si/SUPLThirdPartyIDs;
    .param p8, "m_bIsPOSPresent"    # Z
    .param p9, "ganssPOSCapabilities"    # Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;
    .param p10, "m_bIsAssitancePresent"    # Z
    .param p11, "assistCapabilities"    # Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsQOPPresent:Z

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/supl/si/SITriggerParams;->m_stQoP:Lcom/android/supl/si/SUPLQOPParams;

    .line 61
    iput-object v1, p0, Lcom/android/supl/si/SITriggerParams;->m_stTriggerParams:Lcom/android/supl/si/SUPLTriggerParams;

    .line 65
    iput-object v1, p0, Lcom/android/supl/si/SITriggerParams;->m_stAppId:Lcom/android/supl/si/ApplicationID;

    .line 67
    iput-object v1, p0, Lcom/android/supl/si/SITriggerParams;->m_st3rdPartyIds:Lcom/android/supl/si/SUPLThirdPartyIDs;

    .line 69
    iput-boolean v0, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsPOSPresent:Z

    .line 71
    iput-object v1, p0, Lcom/android/supl/si/SITriggerParams;->mGanssPOSCapabilities:Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;

    .line 73
    iput-boolean v0, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsAssitancePresent:Z

    .line 75
    iput-object v1, p0, Lcom/android/supl/si/SITriggerParams;->mGanssAssistCapabilities:Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;

    .line 93
    const/4 v0, -0x1

    iput-short v0, p0, Lcom/android/supl/si/SITriggerParams;->m_usPlatformSessionId:S

    .line 94
    iput-boolean p1, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsQOPPresent:Z

    .line 95
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "QOP paramerter should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/supl/si/SITriggerParams;->m_stQoP:Lcom/android/supl/si/SUPLQOPParams;

    .line 99
    iput-boolean p3, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsTriggerParamsPresent:Z

    .line 100
    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    goto :goto_1

    .line 101
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trigger paramerter should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_3
    :goto_1
    iput-object p4, p0, Lcom/android/supl/si/SITriggerParams;->m_stTriggerParams:Lcom/android/supl/si/SUPLTriggerParams;

    .line 104
    iput-boolean p5, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsAppIdPresent:Z

    .line 105
    if-eqz p5, :cond_5

    if-eqz p6, :cond_4

    goto :goto_2

    .line 106
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppID should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_5
    :goto_2
    iput-object p6, p0, Lcom/android/supl/si/SITriggerParams;->m_stAppId:Lcom/android/supl/si/ApplicationID;

    .line 109
    if-eqz p7, :cond_a

    .line 112
    iput-object p7, p0, Lcom/android/supl/si/SITriggerParams;->m_st3rdPartyIds:Lcom/android/supl/si/SUPLThirdPartyIDs;

    .line 113
    iput-boolean p8, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsPOSPresent:Z

    .line 114
    if-eqz p8, :cond_7

    if-eqz p9, :cond_6

    goto :goto_3

    .line 115
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GanssPOSCapabilities should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_7
    :goto_3
    iput-object p9, p0, Lcom/android/supl/si/SITriggerParams;->mGanssPOSCapabilities:Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;

    .line 119
    iput-boolean p10, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsAssitancePresent:Z

    .line 120
    if-eqz p10, :cond_9

    if-eqz p11, :cond_8

    goto :goto_4

    .line 121
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GanssAssistCapabilities should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_9
    :goto_4
    iput-object p11, p0, Lcom/android/supl/si/SITriggerParams;->mGanssAssistCapabilities:Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;

    .line 124
    return-void

    .line 110
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "3rd PartyID  should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public get3rdPartyIds()Lcom/android/supl/si/SUPLThirdPartyIDs;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/supl/si/SITriggerParams;->m_st3rdPartyIds:Lcom/android/supl/si/SUPLThirdPartyIDs;

    return-object v0
.end method

.method public getAppId()Lcom/android/supl/si/ApplicationID;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/android/supl/si/SITriggerParams;->m_stAppId:Lcom/android/supl/si/ApplicationID;

    return-object v0
.end method

.method public getStartSI()[B
    .locals 12

    .line 143
    const/16 v0, 0x1a

    .line 144
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 146
    .local v1, "iOffset":I
    const/4 v2, 0x0

    .line 147
    .local v2, "bQOP":[B
    iget-boolean v3, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsQOPPresent:Z

    if-eqz v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/android/supl/si/SITriggerParams;->m_stQoP:Lcom/android/supl/si/SUPLQOPParams;

    invoke-virtual {v3}, Lcom/android/supl/si/SUPLQOPParams;->getQOPParams()[B

    move-result-object v2

    .line 149
    array-length v3, v2

    add-int/2addr v0, v3

    .line 151
    :cond_0
    const/4 v3, 0x0

    .line 152
    .local v3, "bTriggerParam":[B
    iget-boolean v4, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsTriggerParamsPresent:Z

    if-eqz v4, :cond_1

    .line 153
    iget-object v4, p0, Lcom/android/supl/si/SITriggerParams;->m_stTriggerParams:Lcom/android/supl/si/SUPLTriggerParams;

    invoke-virtual {v4}, Lcom/android/supl/si/SUPLTriggerParams;->getTriggerParam()[B

    move-result-object v3

    .line 154
    if-eqz v3, :cond_1

    .line 155
    array-length v4, v3

    add-int/2addr v0, v4

    .line 157
    :cond_1
    const/4 v4, 0x0

    .line 158
    .local v4, "bAppID":[B
    iget-boolean v5, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsAppIdPresent:Z

    if-eqz v5, :cond_2

    .line 159
    iget-object v5, p0, Lcom/android/supl/si/SITriggerParams;->m_stAppId:Lcom/android/supl/si/ApplicationID;

    invoke-virtual {v5}, Lcom/android/supl/si/ApplicationID;->getApplicationIDInfo()[B

    move-result-object v4

    .line 160
    array-length v5, v4

    add-int/2addr v0, v5

    .line 162
    :cond_2
    iget-object v5, p0, Lcom/android/supl/si/SITriggerParams;->m_st3rdPartyIds:Lcom/android/supl/si/SUPLThirdPartyIDs;

    invoke-virtual {v5}, Lcom/android/supl/si/SUPLThirdPartyIDs;->getSUPLThirdPartyIDs()[B

    move-result-object v5

    .line 163
    .local v5, "bThirdPartyData":[B
    array-length v6, v5

    add-int/2addr v0, v6

    .line 165
    const/4 v6, 0x0

    .line 166
    .local v6, "bPOSData":[B
    iget-boolean v7, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsPOSPresent:Z

    if-eqz v7, :cond_3

    .line 167
    iget-object v7, p0, Lcom/android/supl/si/SITriggerParams;->mGanssPOSCapabilities:Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;

    invoke-virtual {v7}, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->getPOSCapabilities()[B

    move-result-object v6

    .line 168
    if-eqz v6, :cond_3

    .line 169
    array-length v7, v6

    add-int/2addr v0, v7

    .line 172
    :cond_3
    const/4 v7, 0x0

    .line 173
    .local v7, "bAssistData":[B
    iget-boolean v8, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsAssitancePresent:Z

    if-eqz v8, :cond_4

    .line 174
    iget-object v8, p0, Lcom/android/supl/si/SITriggerParams;->mGanssAssistCapabilities:Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;

    invoke-virtual {v8}, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->getAsstCapElem()[B

    move-result-object v7

    .line 175
    if-eqz v7, :cond_4

    .line 176
    array-length v8, v7

    add-int/2addr v0, v8

    .line 179
    :cond_4
    add-int/lit8 v8, v0, 0x4

    new-array v8, v8, [B

    .line 181
    .local v8, "bData":[B
    add-int/lit8 v1, v1, 0x4

    .line 183
    const/16 v9, 0x10d

    invoke-static {v8, v1, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 184
    iget-short v9, p0, Lcom/android/supl/si/SITriggerParams;->m_usPlatformSessionId:S

    invoke-static {v8, v1, v9}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 185
    iget-boolean v9, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsQOPPresent:Z

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_5

    .line 186
    invoke-static {v8, v1, v10}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 187
    array-length v9, v2

    invoke-static {v2, v11, v8, v1, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 188
    array-length v9, v2

    add-int/2addr v1, v9

    goto :goto_0

    .line 190
    :cond_5
    invoke-static {v8, v1, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 192
    :goto_0
    iget-boolean v9, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsTriggerParamsPresent:Z

    if-eqz v9, :cond_6

    .line 193
    invoke-static {v8, v1, v10}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 194
    if-eqz v3, :cond_7

    .line 195
    array-length v9, v3

    invoke-static {v3, v11, v8, v1, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 196
    array-length v9, v3

    add-int/2addr v1, v9

    goto :goto_1

    .line 199
    :cond_6
    invoke-static {v8, v1, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 201
    :cond_7
    :goto_1
    iget-boolean v9, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsAppIdPresent:Z

    if-eqz v9, :cond_8

    .line 202
    invoke-static {v8, v1, v10}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 203
    array-length v9, v4

    invoke-static {v4, v11, v8, v1, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 204
    array-length v9, v4

    add-int/2addr v1, v9

    goto :goto_2

    .line 206
    :cond_8
    invoke-static {v8, v1, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 208
    :goto_2
    array-length v9, v5

    invoke-static {v5, v11, v8, v1, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 209
    array-length v9, v5

    add-int/2addr v1, v9

    .line 211
    iget-boolean v9, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsPOSPresent:Z

    if-eqz v9, :cond_9

    .line 212
    invoke-static {v8, v1, v10}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 213
    array-length v9, v6

    invoke-static {v6, v11, v8, v1, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 214
    array-length v9, v6

    add-int/2addr v1, v9

    goto :goto_3

    .line 216
    :cond_9
    invoke-static {v8, v1, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 219
    :goto_3
    iget-boolean v9, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsAssitancePresent:Z

    if-eqz v9, :cond_a

    .line 220
    invoke-static {v8, v1, v10}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 221
    array-length v9, v7

    invoke-static {v7, v11, v8, v1, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 222
    array-length v9, v7

    add-int/2addr v1, v9

    goto :goto_4

    .line 224
    :cond_a
    invoke-static {v8, v1, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 227
    :goto_4
    add-int/lit8 v9, v1, -0x4

    if-eq v9, v0, :cond_b

    .line 228
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "Start SI length invalid"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    :cond_b
    invoke-static {v8, v11, v0}, Lcom/android/bytewriter/IO;->put4([BII)I

    .line 231
    return-object v8
.end method

.method public getTriggerParams()Lcom/android/supl/si/SUPLTriggerParams;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/supl/si/SITriggerParams;->m_stTriggerParams:Lcom/android/supl/si/SUPLTriggerParams;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/supl/si/SITriggerParams;->m_usPlatformSessionId:S

    .line 275
    const/4 v0, 0x1

    .line 276
    .local v0, "bTrue":B
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsQOPPresent:Z

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 278
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 279
    iput-boolean v2, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsQOPPresent:Z

    .line 280
    const-class v3, Lcom/android/supl/si/SUPLQOPParams;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/supl/si/SUPLQOPParams;

    iput-object v3, p0, Lcom/android/supl/si/SITriggerParams;->m_stQoP:Lcom/android/supl/si/SUPLQOPParams;

    .line 282
    :cond_0
    iput-boolean v1, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsTriggerParamsPresent:Z

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 284
    if-ne v0, v2, :cond_1

    .line 285
    iput-boolean v2, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsTriggerParamsPresent:Z

    .line 286
    const-class v3, Lcom/android/supl/si/SUPLTriggerParams;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/supl/si/SUPLTriggerParams;

    iput-object v3, p0, Lcom/android/supl/si/SITriggerParams;->m_stTriggerParams:Lcom/android/supl/si/SUPLTriggerParams;

    .line 289
    :cond_1
    iput-boolean v1, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsAppIdPresent:Z

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 291
    if-ne v0, v2, :cond_2

    .line 292
    iput-boolean v2, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsAppIdPresent:Z

    .line 293
    const-class v3, Lcom/android/supl/si/ApplicationID;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/supl/si/ApplicationID;

    iput-object v3, p0, Lcom/android/supl/si/SITriggerParams;->m_stAppId:Lcom/android/supl/si/ApplicationID;

    .line 295
    :cond_2
    const-class v3, Lcom/android/supl/si/SUPLThirdPartyIDs;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/supl/si/SUPLThirdPartyIDs;

    iput-object v3, p0, Lcom/android/supl/si/SITriggerParams;->m_st3rdPartyIds:Lcom/android/supl/si/SUPLThirdPartyIDs;

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 298
    iput-boolean v1, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsPOSPresent:Z

    .line 299
    if-ne v0, v2, :cond_3

    .line 300
    iput-boolean v2, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsPOSPresent:Z

    .line 301
    const-class v3, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;

    iput-object v3, p0, Lcom/android/supl/si/SITriggerParams;->mGanssPOSCapabilities:Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;

    .line 304
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 305
    iput-boolean v1, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsAssitancePresent:Z

    .line 306
    if-ne v0, v2, :cond_4

    .line 307
    iput-boolean v2, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsAssitancePresent:Z

    .line 308
    const-class v1, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;

    iput-object v1, p0, Lcom/android/supl/si/SITriggerParams;->mGanssAssistCapabilities:Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;

    .line 310
    :cond_4
    return-void
.end method

.method public setPlatformSessionId(I)V
    .locals 1
    .param p1, "iSessionID"    # I

    .line 398
    int-to-short v0, p1

    iput-short v0, p0, Lcom/android/supl/si/SITriggerParams;->m_usPlatformSessionId:S

    .line 399
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 356
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 357
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "SID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    iget-short v1, p0, Lcom/android/supl/si/SITriggerParams;->m_usPlatformSessionId:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 359
    iget-boolean v1, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsQOPPresent:Z

    if-eqz v1, :cond_0

    .line 360
    const-string v1, "QOP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    iget-object v1, p0, Lcom/android/supl/si/SITriggerParams;->m_stQoP:Lcom/android/supl/si/SUPLQOPParams;

    invoke-virtual {v1}, Lcom/android/supl/si/SUPLQOPParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    :cond_0
    iget-boolean v1, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsTriggerParamsPresent:Z

    if-eqz v1, :cond_1

    .line 364
    const-string v1, "TP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    iget-object v1, p0, Lcom/android/supl/si/SITriggerParams;->m_stTriggerParams:Lcom/android/supl/si/SUPLTriggerParams;

    invoke-virtual {v1}, Lcom/android/supl/si/SUPLTriggerParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    :cond_1
    iget-boolean v1, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsAppIdPresent:Z

    if-eqz v1, :cond_2

    .line 368
    const-string v1, "AppID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    iget-object v1, p0, Lcom/android/supl/si/SITriggerParams;->m_stAppId:Lcom/android/supl/si/ApplicationID;

    invoke-virtual {v1}, Lcom/android/supl/si/ApplicationID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    :cond_2
    iget-object v1, p0, Lcom/android/supl/si/SITriggerParams;->m_st3rdPartyIds:Lcom/android/supl/si/SUPLThirdPartyIDs;

    invoke-virtual {v1}, Lcom/android/supl/si/SUPLThirdPartyIDs;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    iget-boolean v1, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsPOSPresent:Z

    if-eqz v1, :cond_3

    .line 373
    const-string v1, "POSCap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    iget-object v1, p0, Lcom/android/supl/si/SITriggerParams;->mGanssPOSCapabilities:Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;

    invoke-virtual {v1}, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    :cond_3
    iget-boolean v1, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsAssitancePresent:Z

    if-eqz v1, :cond_4

    .line 378
    const-string v1, "AsCap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    iget-object v1, p0, Lcom/android/supl/si/SITriggerParams;->mGanssAssistCapabilities:Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;

    invoke-virtual {v1}, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 319
    iget-short v0, p0, Lcom/android/supl/si/SITriggerParams;->m_usPlatformSessionId:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/4 v0, 0x1

    .line 321
    .local v0, "bTrue":B
    const/4 v1, 0x0

    .line 322
    .local v1, "bFalse":B
    iget-boolean v2, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsQOPPresent:Z

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 323
    iget-boolean v2, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsQOPPresent:Z

    if-eqz v2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/android/supl/si/SITriggerParams;->m_stQoP:Lcom/android/supl/si/SUPLQOPParams;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 327
    :cond_1
    iget-boolean v2, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsTriggerParamsPresent:Z

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 328
    iget-boolean v2, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsTriggerParamsPresent:Z

    if-eqz v2, :cond_3

    .line 329
    iget-object v2, p0, Lcom/android/supl/si/SITriggerParams;->m_stTriggerParams:Lcom/android/supl/si/SUPLTriggerParams;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 332
    :cond_3
    iget-boolean v2, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsAppIdPresent:Z

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 333
    iget-boolean v2, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsAppIdPresent:Z

    if-eqz v2, :cond_5

    .line 334
    iget-object v2, p0, Lcom/android/supl/si/SITriggerParams;->m_stAppId:Lcom/android/supl/si/ApplicationID;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 337
    :cond_5
    iget-object v2, p0, Lcom/android/supl/si/SITriggerParams;->m_st3rdPartyIds:Lcom/android/supl/si/SUPLThirdPartyIDs;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 339
    iget-boolean v2, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsPOSPresent:Z

    if-eqz v2, :cond_6

    move v2, v0

    goto :goto_3

    :cond_6
    move v2, v1

    :goto_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 340
    iget-boolean v2, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsPOSPresent:Z

    if-eqz v2, :cond_7

    .line 341
    iget-object v2, p0, Lcom/android/supl/si/SITriggerParams;->mGanssPOSCapabilities:Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 344
    :cond_7
    iget-boolean v2, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsAssitancePresent:Z

    if-eqz v2, :cond_8

    move v2, v0

    goto :goto_4

    :cond_8
    move v2, v1

    :goto_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 345
    iget-boolean v2, p0, Lcom/android/supl/si/SITriggerParams;->m_bIsAssitancePresent:Z

    if-eqz v2, :cond_9

    .line 346
    iget-object v2, p0, Lcom/android/supl/si/SITriggerParams;->mGanssAssistCapabilities:Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 348
    :cond_9
    return-void
.end method

.class public Lcom/android/supl/loc/SetID;
.super Ljava/lang/Object;
.source "SetID.java"


# static fields
.field private static final SET_ID_DATA_LEN:I = 0xe

.field private static final SET_ID_NODATA_LEN:I = 0xa

.field public static final SUPL_SETID_TYPE_IMSI:I = 0x4

.field public static final SUPL_SETID_TYPE_IPADDRESSV4:I = 0x6

.field public static final SUPL_SETID_TYPE_IPADDRESSV6:I = 0x7

.field public static final SUPL_SETID_TYPE_MDN:I = 0x2

.field public static final SUPL_SETID_TYPE_MIN:I = 0x3

.field public static final SUPL_SETID_TYPE_MSISDN:I = 0x1

.field public static final SUPL_SETID_TYPE_NAI:I = 0x5

.field public static final SUPL_SETID_TYPE_NONE:I = 0x8


# instance fields
.field private iNumBytes:I

.field private m_iSetIDType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "iSetIDType"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    .line 82
    packed-switch p1, :pswitch_data_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid SETTYPE "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :pswitch_0
    iput v0, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    .line 106
    goto :goto_0

    .line 102
    :pswitch_1
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    .line 103
    goto :goto_0

    .line 99
    :pswitch_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    .line 100
    goto :goto_0

    .line 96
    :pswitch_3
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    .line 97
    goto :goto_0

    .line 93
    :pswitch_4
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    .line 94
    goto :goto_0

    .line 90
    :pswitch_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    .line 91
    goto :goto_0

    .line 87
    :pswitch_6
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    .line 88
    goto :goto_0

    .line 84
    :pswitch_7
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    .line 85
    nop

    .line 111
    :goto_0
    iput p1, p0, Lcom/android/supl/loc/SetID;->m_iSetIDType:I

    .line 113
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addLeadingData(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "storiginal"    # Ljava/lang/String;
    .param p2, "stPadd"    # Ljava/lang/String;
    .param p3, "padd"    # I

    .line 226
    if-nez p1, :cond_0

    .line 227
    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 230
    .local v0, "stReturn":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 231
    .local v1, "iLength":I
    if-lt v1, p3, :cond_1

    .line 232
    return-object p1

    .line 235
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sub-int v3, p3, v1

    if-ge v2, v3, :cond_2

    .line 236
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isValidSetIDRequest(I)Z
    .locals 1
    .param p0, "iSetIDType"    # I

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "isValid":Z
    packed-switch p0, :pswitch_data_0

    .line 130
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    :pswitch_0
    const/4 v0, 0x0

    .line 128
    goto :goto_0

    .line 124
    :pswitch_1
    const/4 v0, 0x1

    .line 125
    nop

    .line 134
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getSetIDBuff(ILjava/lang/String;)[B
    .locals 12
    .param p1, "sSessionId"    # I
    .param p2, "stData"    # Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "bData":[B
    const/4 v1, 0x0

    .line 141
    .local v1, "offset":I
    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 142
    :cond_0
    iput v2, p0, Lcom/android/supl/loc/SetID;->m_iSetIDType:I

    .line 143
    iput v3, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    .line 145
    :cond_1
    const/4 v4, 0x0

    .line 147
    .local v4, "iPacketSize":I
    iget v5, p0, Lcom/android/supl/loc/SetID;->m_iSetIDType:I

    const/16 v6, 0xe

    if-eq v5, v2, :cond_2

    .line 149
    const/16 v5, 0x12

    iget v7, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    add-int/2addr v5, v7

    new-array v0, v5, [B

    .line 150
    iget v5, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    add-int/2addr v6, v5

    .end local v4    # "iPacketSize":I
    .local v6, "iPacketSize":I
    :goto_0
    goto :goto_1

    .line 152
    .end local v6    # "iPacketSize":I
    .restart local v4    # "iPacketSize":I
    :cond_2
    new-array v0, v6, [B

    .line 153
    const/16 v5, 0xa

    iget v6, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    add-int/2addr v6, v5

    goto :goto_0

    .line 155
    .end local v4    # "iPacketSize":I
    .restart local v6    # "iPacketSize":I
    :goto_1
    invoke-static {v0, v1, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 156
    const/16 v4, 0x10a

    invoke-static {v0, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 157
    iget v4, p0, Lcom/android/supl/loc/SetID;->m_iSetIDType:I

    invoke-static {v0, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 158
    iget v4, p0, Lcom/android/supl/loc/SetID;->m_iSetIDType:I

    if-eq v4, v2, :cond_5

    .line 159
    iget v2, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 160
    iget v2, p0, Lcom/android/supl/loc/SetID;->m_iSetIDType:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 192
    :pswitch_0
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "stHex":[Ljava/lang/String;
    array-length v4, v2

    move v5, v1

    move v1, v3

    .end local v1    # "offset":I
    .local v5, "offset":I
    :goto_2
    if-ge v1, v4, :cond_3

    aget-object v7, v2, v1

    .line 194
    .local v7, "string":Ljava/lang/String;
    const-string v8, "0"

    const/4 v9, 0x4

    invoke-direct {p0, v7, v8, v9}, Lcom/android/supl/loc/SetID;->addLeadingData(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 195
    .local v8, "stIp":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v8, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 196
    .local v10, "iMsb":I
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 197
    .local v9, "iLsb":I
    invoke-static {v0, v5, v10}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v5

    .line 198
    invoke-static {v0, v5, v9}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v5

    .line 193
    .end local v7    # "string":Ljava/lang/String;
    .end local v8    # "stIp":Ljava/lang/String;
    .end local v9    # "iLsb":I
    .end local v10    # "iMsb":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 200
    :cond_3
    nop

    .line 216
    move v1, v5

    goto/16 :goto_4

    .line 171
    .end local v2    # "stHex":[Ljava/lang/String;
    .end local v5    # "offset":I
    .restart local v1    # "offset":I
    :pswitch_1
    const-string v2, "\\."

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "stIPAddrss":[Ljava/lang/String;
    array-length v4, v2

    :goto_3
    if-ge v3, v4, :cond_4

    aget-object v5, v2, v3

    .line 173
    .local v5, "stIp":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 174
    .local v7, "iIp":I
    invoke-static {v0, v1, v7}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 172
    .end local v5    # "stIp":Ljava/lang/String;
    .end local v7    # "iIp":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 176
    :cond_4
    goto :goto_4

    .line 206
    .end local v2    # "stIPAddrss":[Ljava/lang/String;
    :pswitch_2
    const-string v2, "0"

    const/16 v4, 0x3e8

    invoke-direct {p0, p2, v2, v4}, Lcom/android/supl/loc/SetID;->addLeadingData(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 207
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 208
    .local v2, "nai":[B
    const-string v4, "SUPL20_SETID"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NAI "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget v4, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 210
    iget v3, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    add-int/2addr v1, v3

    .line 211
    goto :goto_4

    .line 163
    .end local v2    # "nai":[B
    :pswitch_3
    const-string v2, "0"

    const/16 v4, 0xf

    invoke-direct {p0, p2, v2, v4}, Lcom/android/supl/loc/SetID;->addLeadingData(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 164
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 166
    .local v2, "imsi":[B
    iget v4, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 167
    iget v3, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    add-int/2addr v1, v3

    .line 168
    goto :goto_4

    .line 179
    .end local v2    # "imsi":[B
    :pswitch_4
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 180
    .local v2, "lData":J
    invoke-static {v0, v1, v2, v3}, Lcom/android/bytewriter/IO;->put5([BIJ)I

    move-result v1

    .line 181
    goto :goto_4

    .line 202
    .end local v2    # "lData":J
    :pswitch_5
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 203
    .restart local v2    # "lData":J
    invoke-static {v0, v1, v2, v3}, Lcom/android/bytewriter/IO;->put8([BIJ)I

    move-result v1

    .line 204
    goto :goto_4

    .line 184
    .end local v2    # "lData":J
    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 185
    .local v2, "msisdn":[B
    const-string v4, "0"

    const/16 v5, 0xc

    invoke-direct {p0, p2, v4, v5}, Lcom/android/supl/loc/SetID;->addLeadingData(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 187
    array-length v4, v2

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 188
    add-int/lit8 v1, v1, 0xc

    .line 189
    nop

    .line 216
    .end local v2    # "msisdn":[B
    :cond_5
    :goto_4
    invoke-static {v0, v1, p1}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 217
    add-int/lit8 v2, v1, -0x4

    if-eq v6, v2, :cond_6

    .line 218
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid setid packet size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    :cond_6
    const-string v2, "SUPL20_SETID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " set id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/supl/loc/SetID;->m_iSetIDType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " send for id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

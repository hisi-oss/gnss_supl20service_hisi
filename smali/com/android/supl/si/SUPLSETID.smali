.class public Lcom/android/supl/si/SUPLSETID;
.super Ljava/lang/Object;
.source "SUPLSETID.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/supl/si/SUPLSETID;",
            ">;"
        }
    .end annotation
.end field

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

.field private stData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 231
    new-instance v0, Lcom/android/supl/si/SUPLSETID$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLSETID$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLSETID;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 2
    .param p1, "iSetIDType"    # I
    .param p2, "stData"    # Ljava/lang/String;
    .param p3, "iNumBytes"    # I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    packed-switch p1, :pswitch_data_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid SETTYPE "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :pswitch_0
    iput p3, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    .line 126
    goto :goto_0

    .line 121
    :pswitch_1
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    .line 122
    goto :goto_0

    .line 118
    :pswitch_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    .line 119
    goto :goto_0

    .line 115
    :pswitch_3
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    .line 116
    goto :goto_0

    .line 112
    :pswitch_4
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    .line 113
    goto :goto_0

    .line 109
    :pswitch_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    .line 110
    goto :goto_0

    .line 106
    :pswitch_6
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    .line 107
    goto :goto_0

    .line 103
    :pswitch_7
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    .line 104
    nop

    .line 131
    :goto_0
    iput p1, p0, Lcom/android/supl/si/SUPLSETID;->m_iSetIDType:I

    .line 132
    iput-object p2, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    .line 133
    return-void

    nop

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

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLSETID;->readFromParcel(Landroid/os/Parcel;)V

    .line 246
    return-void
.end method

.method private addLeadingData(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "storiginal"    # Ljava/lang/String;
    .param p2, "stPadd"    # Ljava/lang/String;
    .param p3, "padd"    # I

    .line 212
    if-nez p1, :cond_0

    .line 213
    const/4 v0, 0x0

    return-object v0

    .line 215
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 216
    .local v0, "iLength":I
    if-lt v0, p3, :cond_1

    .line 217
    return-object p1

    .line 219
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 221
    .local v1, "stReturn":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sub-int v3, p3, v0

    if-ge v2, v3, :cond_2

    .line 222
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public getSETID()[B
    .locals 12

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "bData":[B
    const/4 v1, 0x0

    .line 145
    .local v1, "offset":I
    iget v2, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    const/16 v3, 0x8

    add-int/2addr v3, v2

    .line 146
    .local v3, "iPacketSize":I
    new-array v0, v3, [B

    .line 147
    iget v2, p0, Lcom/android/supl/si/SUPLSETID;->m_iSetIDType:I

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 149
    iget v2, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 151
    iget v2, p0, Lcom/android/supl/si/SUPLSETID;->m_iSetIDType:I

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 178
    :pswitch_0
    iget-object v2, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "stHex":[Ljava/lang/String;
    array-length v5, v2

    move v6, v1

    move v1, v4

    .end local v1    # "offset":I
    .local v6, "offset":I
    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v7, v2, v1

    .line 180
    .local v7, "string":Ljava/lang/String;
    const-string v8, "0"

    const/4 v9, 0x4

    invoke-direct {p0, v7, v8, v9}, Lcom/android/supl/si/SUPLSETID;->addLeadingData(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 181
    .local v8, "stIp":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 182
    .local v10, "iMsb":I
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 183
    .local v9, "iLsb":I
    invoke-static {v0, v6, v10}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v6

    .line 184
    invoke-static {v0, v6, v9}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v6

    .line 179
    .end local v7    # "string":Ljava/lang/String;
    .end local v8    # "stIp":Ljava/lang/String;
    .end local v9    # "iLsb":I
    .end local v10    # "iMsb":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_0
    nop

    .line 203
    move v1, v6

    goto/16 :goto_2

    .line 160
    .end local v2    # "stHex":[Ljava/lang/String;
    .end local v6    # "offset":I
    .restart local v1    # "offset":I
    :pswitch_1
    iget-object v2, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    const-string v5, "\\."

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "stIPAddrss":[Ljava/lang/String;
    array-length v5, v2

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v6, v2, v4

    .line 162
    .local v6, "stIp":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 163
    .local v7, "iIp":I
    invoke-static {v0, v1, v7}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 161
    .end local v6    # "stIp":Ljava/lang/String;
    .end local v7    # "iIp":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 165
    :cond_1
    goto/16 :goto_2

    .line 192
    .end local v2    # "stIPAddrss":[Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    const-string v5, "0"

    const/16 v6, 0x3e8

    invoke-direct {p0, v2, v5, v6}, Lcom/android/supl/si/SUPLSETID;->addLeadingData(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    .line 193
    iget-object v2, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 194
    .local v2, "nai":[B
    const-string v5, "SUPL20_SETID"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NAI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget v5, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    invoke-static {v2, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 196
    iget v4, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    add-int/2addr v1, v4

    .line 197
    goto :goto_2

    .line 153
    .end local v2    # "nai":[B
    :pswitch_3
    iget-object v2, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    const-string v5, "0"

    const/16 v6, 0x14

    invoke-direct {p0, v2, v5, v6}, Lcom/android/supl/si/SUPLSETID;->addLeadingData(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    .line 154
    iget-object v2, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 156
    .local v2, "imsi":[B
    iget v5, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    invoke-static {v2, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 157
    iget v4, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    add-int/2addr v1, v4

    .line 158
    goto :goto_2

    .line 167
    .end local v2    # "imsi":[B
    :pswitch_4
    iget-object v2, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 168
    .local v4, "lData":J
    invoke-static {v0, v1, v4, v5}, Lcom/android/bytewriter/IO;->put5([BIJ)I

    move-result v1

    .line 169
    goto :goto_2

    .line 188
    .end local v4    # "lData":J
    :pswitch_5
    iget-object v2, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 189
    .restart local v4    # "lData":J
    invoke-static {v0, v1, v4, v5}, Lcom/android/bytewriter/IO;->put8([BIJ)I

    move-result v1

    .line 190
    goto :goto_2

    .line 171
    .end local v4    # "lData":J
    :pswitch_6
    iget-object v2, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 172
    .local v2, "msisdn":[B
    iget-object v5, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    const-string v6, "0"

    const/16 v7, 0xc

    invoke-direct {p0, v5, v6, v7}, Lcom/android/supl/si/SUPLSETID;->addLeadingData(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    .line 173
    const-string v5, "SUPL20_SETID"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSISDN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    array-length v5, v2

    invoke-static {v2, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 175
    add-int/lit8 v1, v1, 0xc

    .line 176
    nop

    .line 203
    .end local v2    # "msisdn":[B
    :goto_2
    if-eq v3, v1, :cond_2

    .line 204
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid setid packet size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, -0x4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    :cond_2
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

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLSETID;->m_iSetIDType:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",SID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SUPLSETID;->m_iSetIDType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 275
    iget v0, p0, Lcom/android/supl/si/SUPLSETID;->m_iSetIDType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget v0, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget-object v0, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    return-void
.end method

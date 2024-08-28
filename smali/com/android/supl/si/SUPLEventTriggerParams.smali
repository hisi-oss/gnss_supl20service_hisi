.class public Lcom/android/supl/si/SUPLEventTriggerParams;
.super Ljava/lang/Object;
.source "SUPLEventTriggerParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/supl/si/SUPLEventTriggerParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bRepeatedReportingPresent:Z

.field private dwStartTime:J

.field private dwStopTime:J

.field private dwValidcount:J

.field private eAreaEventType:Lcom/android/supl/si/SUPLAreaEventType;

.field private stGeoTargetArea:[Lcom/android/supl/si/SUPLGeoTargetArea;

.field private stRepeatedReportingParams:Lcom/android/supl/si/SUPLRepeatedReportingParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 172
    new-instance v0, Lcom/android/supl/si/SUPLEventTriggerParams$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLEventTriggerParams$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLEventTriggerParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->eAreaEventType:Lcom/android/supl/si/SUPLAreaEventType;

    .line 60
    iput-object v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stRepeatedReportingParams:Lcom/android/supl/si/SUPLRepeatedReportingParams;

    .line 66
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStartTime:J

    .line 72
    const-wide/32 v1, 0x83d5ff

    iput-wide v1, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStopTime:J

    .line 78
    iput-object v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stGeoTargetArea:[Lcom/android/supl/si/SUPLGeoTargetArea;

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLEventTriggerParams;->readFromParcel(Landroid/os/Parcel;)V

    .line 188
    return-void
.end method

.method public constructor <init>(ZLcom/android/supl/si/SUPLAreaEventType;Lcom/android/supl/si/SUPLRepeatedReportingParams;JJJ[Lcom/android/supl/si/SUPLGeoTargetArea;)V
    .locals 5
    .param p1, "bRepeatedReportingPresent"    # Z
    .param p2, "eAreaEventType"    # Lcom/android/supl/si/SUPLAreaEventType;
    .param p3, "stRepeatedReportingParams"    # Lcom/android/supl/si/SUPLRepeatedReportingParams;
    .param p4, "dwStartTime"    # J
    .param p6, "dwStopTime"    # J
    .param p8, "dwValidcount"    # J
    .param p10, "stGeoTargetArea"    # [Lcom/android/supl/si/SUPLGeoTargetArea;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->eAreaEventType:Lcom/android/supl/si/SUPLAreaEventType;

    .line 60
    iput-object v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stRepeatedReportingParams:Lcom/android/supl/si/SUPLRepeatedReportingParams;

    .line 66
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStartTime:J

    .line 72
    const-wide/32 v3, 0x83d5ff

    iput-wide v3, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStopTime:J

    .line 78
    iput-object v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stGeoTargetArea:[Lcom/android/supl/si/SUPLGeoTargetArea;

    .line 94
    iput-boolean p1, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->bRepeatedReportingPresent:Z

    .line 95
    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Repeated Reporting Parameter shold not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->eAreaEventType:Lcom/android/supl/si/SUPLAreaEventType;

    .line 99
    iput-object p3, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stRepeatedReportingParams:Lcom/android/supl/si/SUPLRepeatedReportingParams;

    .line 100
    iput-wide p4, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStartTime:J

    .line 101
    cmp-long v0, p6, v1

    if-eqz v0, :cond_2

    .line 102
    iput-wide p6, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStopTime:J

    .line 105
    :cond_2
    if-eqz p10, :cond_3

    .line 108
    iput-object p10, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stGeoTargetArea:[Lcom/android/supl/si/SUPLGeoTargetArea;

    .line 109
    array-length v0, p10

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwValidcount:J

    .line 111
    return-void

    .line 106
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GeoTargetArea shold not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public getEventTriggerParams()[B
    .locals 12

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 120
    .local v1, "iOffset":I
    add-int/lit8 v0, v0, 0x10

    .line 121
    iget-object v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->eAreaEventType:Lcom/android/supl/si/SUPLAreaEventType;

    invoke-virtual {v2}, Lcom/android/supl/si/SUPLAreaEventType;->getAreaEventType()[B

    move-result-object v2

    .line 122
    .local v2, "bAreaType":[B
    array-length v3, v2

    add-int/2addr v0, v3

    .line 123
    const/4 v3, 0x0

    .line 124
    .local v3, "bRepeatParam":[B
    iget-boolean v4, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->bRepeatedReportingPresent:Z

    if-eqz v4, :cond_0

    .line 125
    iget-object v4, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stRepeatedReportingParams:Lcom/android/supl/si/SUPLRepeatedReportingParams;

    invoke-virtual {v4}, Lcom/android/supl/si/SUPLRepeatedReportingParams;->getRepeatedReportingParamsInfo()[B

    move-result-object v3

    .line 126
    array-length v4, v3

    add-int/2addr v0, v4

    .line 128
    :cond_0
    iget-object v4, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stGeoTargetArea:[Lcom/android/supl/si/SUPLGeoTargetArea;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v0

    move v0, v6

    .end local v0    # "iSize":I
    .local v7, "iSize":I
    :goto_0
    if-ge v0, v5, :cond_2

    aget-object v8, v4, v0

    .line 129
    .local v8, "geoTargetArea":Lcom/android/supl/si/SUPLGeoTargetArea;
    invoke-virtual {v8}, Lcom/android/supl/si/SUPLGeoTargetArea;->getGeoTargetArea()[B

    move-result-object v9

    .line 130
    .local v9, "bGeoTargetArea":[B
    if-eqz v9, :cond_1

    .line 131
    array-length v10, v9

    add-int/2addr v7, v10

    .line 128
    .end local v8    # "geoTargetArea":Lcom/android/supl/si/SUPLGeoTargetArea;
    .end local v9    # "bGeoTargetArea":[B
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_2
    new-array v0, v7, [B

    .line 135
    .local v0, "bData":[B
    iget-boolean v4, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->bRepeatedReportingPresent:Z

    invoke-static {v0, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 136
    array-length v4, v2

    invoke-static {v2, v6, v0, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 137
    array-length v4, v2

    add-int/2addr v1, v4

    .line 138
    iget-boolean v4, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->bRepeatedReportingPresent:Z

    if-eqz v4, :cond_3

    .line 139
    array-length v4, v3

    invoke-static {v3, v6, v0, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 140
    array-length v4, v3

    add-int/2addr v1, v4

    .line 142
    :cond_3
    iget-wide v4, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStartTime:J

    long-to-int v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 143
    iget-wide v4, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStopTime:J

    long-to-int v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 144
    iget-wide v4, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwValidcount:J

    long-to-int v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 145
    iget-object v4, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stGeoTargetArea:[Lcom/android/supl/si/SUPLGeoTargetArea;

    array-length v5, v4

    move v8, v1

    move v1, v6

    .end local v1    # "iOffset":I
    .local v8, "iOffset":I
    :goto_1
    if-ge v1, v5, :cond_5

    aget-object v9, v4, v1

    .line 146
    .local v9, "geoTargetArea":Lcom/android/supl/si/SUPLGeoTargetArea;
    invoke-virtual {v9}, Lcom/android/supl/si/SUPLGeoTargetArea;->getGeoTargetArea()[B

    move-result-object v10

    .line 147
    .local v10, "bGeoTargetArea":[B
    if-eqz v10, :cond_4

    .line 148
    array-length v11, v10

    invoke-static {v10, v6, v0, v8, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 149
    array-length v11, v10

    add-int/2addr v8, v11

    .line 145
    .end local v9    # "geoTargetArea":Lcom/android/supl/si/SUPLGeoTargetArea;
    .end local v10    # "bGeoTargetArea":[B
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 152
    :cond_5
    if-eq v8, v7, :cond_6

    .line 153
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "EventTriggerParams length invalid"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    :cond_6
    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 196
    const/4 v0, 0x1

    .line 198
    .local v0, "bTrue":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 199
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->bRepeatedReportingPresent:Z

    .line 200
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 201
    iput-boolean v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->bRepeatedReportingPresent:Z

    .line 203
    :cond_0
    const-class v2, Lcom/android/supl/si/SUPLAreaEventType;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/supl/si/SUPLAreaEventType;

    iput-object v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->eAreaEventType:Lcom/android/supl/si/SUPLAreaEventType;

    .line 204
    iget-boolean v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->bRepeatedReportingPresent:Z

    if-eqz v2, :cond_1

    .line 205
    const-class v2, Lcom/android/supl/si/SUPLRepeatedReportingParams;

    .line 206
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 205
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/supl/si/SUPLRepeatedReportingParams;

    iput-object v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stRepeatedReportingParams:Lcom/android/supl/si/SUPLRepeatedReportingParams;

    .line 208
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStartTime:J

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStopTime:J

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwValidcount:J

    .line 212
    const-class v2, Lcom/android/supl/si/SUPLGeoTargetArea;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 213
    .local v2, "parcels":[Landroid/os/Parcelable;
    array-length v3, v2

    new-array v3, v3, [Lcom/android/supl/si/SUPLGeoTargetArea;

    iput-object v3, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stGeoTargetArea:[Lcom/android/supl/si/SUPLGeoTargetArea;

    .line 214
    const/4 v3, 0x0

    .line 215
    .local v3, "i":I
    array-length v4, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v2, v1

    .line 216
    .local v5, "par":Landroid/os/Parcelable;
    iget-object v6, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stGeoTargetArea:[Lcom/android/supl/si/SUPLGeoTargetArea;

    add-int/lit8 v7, v3, 0x1

    .local v7, "i":I
    move-object v8, v5

    check-cast v8, Lcom/android/supl/si/SUPLGeoTargetArea;

    aput-object v8, v6, v3

    .line 215
    .end local v3    # "i":I
    .end local v5    # "par":Landroid/os/Parcelable;
    add-int/lit8 v1, v1, 0x1

    move v3, v7

    goto :goto_0

    .line 218
    .end local v7    # "i":I
    .restart local v3    # "i":I
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 245
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 246
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "AE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    iget-object v1, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->eAreaEventType:Lcom/android/supl/si/SUPLAreaEventType;

    invoke-virtual {v1}, Lcom/android/supl/si/SUPLAreaEventType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    iget-boolean v1, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->bRepeatedReportingPresent:Z

    if-eqz v1, :cond_0

    .line 249
    const-string v1, "Rp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    iget-object v1, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stRepeatedReportingParams:Lcom/android/supl/si/SUPLRepeatedReportingParams;

    invoke-virtual {v1}, Lcom/android/supl/si/SUPLRepeatedReportingParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    :cond_0
    iget-wide v1, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 253
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    iget-wide v1, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStopTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 255
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    iget-wide v1, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwValidcount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 257
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    const-string v1, "GTA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    iget-object v1, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stGeoTargetArea:[Lcom/android/supl/si/SUPLGeoTargetArea;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 226
    const/4 v0, 0x1

    .line 227
    .local v0, "bTrue":B
    const/4 v1, 0x0

    .line 228
    .local v1, "bFalse":B
    iget-boolean v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->bRepeatedReportingPresent:Z

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 229
    iget-object v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->eAreaEventType:Lcom/android/supl/si/SUPLAreaEventType;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 230
    iget-boolean v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->bRepeatedReportingPresent:Z

    if-eqz v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stRepeatedReportingParams:Lcom/android/supl/si/SUPLRepeatedReportingParams;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 233
    :cond_1
    iget-wide v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStartTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 234
    iget-wide v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStopTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 235
    iget-wide v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwValidcount:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 236
    iget-object v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stGeoTargetArea:[Lcom/android/supl/si/SUPLGeoTargetArea;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 237
    return-void
.end method

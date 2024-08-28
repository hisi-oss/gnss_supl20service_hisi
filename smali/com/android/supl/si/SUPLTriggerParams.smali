.class public Lcom/android/supl/si/SUPLTriggerParams;
.super Ljava/lang/Object;
.source "SUPLTriggerParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/supl/si/SUPLTriggerParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPL_TRIGGERTYPE_EVENT:I = 0x1

.field public static final SUPL_TRIGGERTYPE_PERIODIC:I


# instance fields
.field private eTriggerReqType:I

.field private objTriggerParam:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 141
    new-instance v0, Lcom/android/supl/si/SUPLTriggerParams$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLTriggerParams$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLTriggerParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 2
    .param p1, "eTriggerReqType"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    .line 64
    if-eqz p2, :cond_2

    .line 68
    packed-switch p1, :pswitch_data_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trigger parameter value invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    .line 77
    instance-of v0, p2, Lcom/android/supl/si/SUPLEventTriggerParams;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TriggerParamater object is not a SUPLEventTriggerParams type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    .line 71
    instance-of v0, p2, Lcom/android/supl/si/SUPLPeriodicParams;

    if-eqz v0, :cond_1

    .line 85
    :goto_0
    iput-object p2, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    .line 87
    return-void

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TriggerParamater object is not a SUPLPeriodicParams type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TriggerParamater object should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLTriggerParams;->readFromParcel(Landroid/os/Parcel;)V

    .line 157
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getTriggerParam()[B
    .locals 6

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "iOffSet":I
    const/4 v1, 0x4

    .line 101
    .local v1, "iSize":I
    const/4 v2, 0x0

    .line 102
    .local v2, "bTriggerPara":[B
    iget v3, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 107
    :pswitch_0
    iget-object v3, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    check-cast v3, Lcom/android/supl/si/SUPLEventTriggerParams;

    invoke-virtual {v3}, Lcom/android/supl/si/SUPLEventTriggerParams;->getEventTriggerParams()[B

    move-result-object v2

    .line 108
    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v3, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    check-cast v3, Lcom/android/supl/si/SUPLPeriodicParams;

    invoke-virtual {v3}, Lcom/android/supl/si/SUPLPeriodicParams;->getPeriodicParams()[B

    move-result-object v2

    .line 105
    nop

    .line 112
    :goto_0
    const/4 v3, 0x0

    .line 113
    .local v3, "bData":[B
    if-eqz v2, :cond_0

    .line 114
    array-length v4, v2

    add-int/2addr v1, v4

    .line 116
    new-array v3, v1, [B

    .line 117
    iget v4, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    invoke-static {v3, v0, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 118
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 119
    array-length v4, v2

    add-int/2addr v0, v4

    .line 121
    :cond_0
    if-eq v0, v1, :cond_1

    .line 122
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "TriggerParam length invalid"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    :cond_1
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTriggerReqType()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    .line 165
    iget v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 170
    :pswitch_0
    const-class v0, Lcom/android/supl/si/SUPLEventTriggerParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    goto :goto_0

    .line 167
    :pswitch_1
    const-class v0, Lcom/android/supl/si/SUPLPeriodicParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    .line 168
    nop

    .line 174
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "stData":Ljava/lang/String;
    iget v1, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 206
    :pswitch_0
    iget-object v1, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    check-cast v1, Lcom/android/supl/si/SUPLEventTriggerParams;

    invoke-virtual {v1}, Lcom/android/supl/si/SUPLEventTriggerParams;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    goto :goto_0

    .line 203
    :pswitch_1
    iget-object v1, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    check-cast v1, Lcom/android/supl/si/SUPLPeriodicParams;

    invoke-virtual {v1}, Lcom/android/supl/si/SUPLPeriodicParams;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    nop

    .line 211
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 182
    iget v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 188
    :pswitch_0
    iget-object v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/supl/si/SUPLEventTriggerParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 185
    :pswitch_1
    iget-object v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/supl/si/SUPLPeriodicParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 186
    nop

    .line 192
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

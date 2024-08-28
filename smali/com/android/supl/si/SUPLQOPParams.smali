.class public Lcom/android/supl/si/SUPLQOPParams;
.super Ljava/lang/Object;
.source "SUPLQOPParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/supl/si/SUPLQOPParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bMaxLocAgePresent:Z

.field private bVeraccPresent:Z

.field private bdelayPresent:Z

.field public byDelay:I

.field public byHorAcc:I

.field public byVerAcc:I

.field public wMaxLocAge:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 156
    new-instance v0, Lcom/android/supl/si/SUPLQOPParams$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLQOPParams$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLQOPParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLQOPParams;->readFromParcel(Landroid/os/Parcel;)V

    .line 172
    return-void
.end method

.method public constructor <init>(ZZZIIII)V
    .locals 0
    .param p1, "bVeraccPresent"    # Z
    .param p2, "bMaxLocAgePresent"    # Z
    .param p3, "bdelayPresent"    # Z
    .param p4, "byHorAcc"    # I
    .param p5, "byVerAcc"    # I
    .param p6, "wMaxLocAge"    # I
    .param p7, "byDelay"    # I

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-boolean p1, p0, Lcom/android/supl/si/SUPLQOPParams;->bVeraccPresent:Z

    .line 99
    iput-boolean p2, p0, Lcom/android/supl/si/SUPLQOPParams;->bMaxLocAgePresent:Z

    .line 100
    iput-boolean p3, p0, Lcom/android/supl/si/SUPLQOPParams;->bdelayPresent:Z

    .line 101
    iput p4, p0, Lcom/android/supl/si/SUPLQOPParams;->byHorAcc:I

    .line 102
    iput p5, p0, Lcom/android/supl/si/SUPLQOPParams;->byVerAcc:I

    .line 103
    iput p6, p0, Lcom/android/supl/si/SUPLQOPParams;->wMaxLocAge:I

    .line 104
    iput p7, p0, Lcom/android/supl/si/SUPLQOPParams;->byDelay:I

    .line 105
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public getQOPParams()[B
    .locals 4

    .line 112
    const/16 v0, 0xd

    .line 113
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 114
    .local v1, "iOffset":I
    iget-boolean v2, p0, Lcom/android/supl/si/SUPLQOPParams;->bVeraccPresent:Z

    if-eqz v2, :cond_0

    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 117
    :cond_0
    iget-boolean v2, p0, Lcom/android/supl/si/SUPLQOPParams;->bMaxLocAgePresent:Z

    if-eqz v2, :cond_1

    .line 118
    add-int/lit8 v0, v0, 0x2

    .line 120
    :cond_1
    iget-boolean v2, p0, Lcom/android/supl/si/SUPLQOPParams;->bdelayPresent:Z

    if-eqz v2, :cond_2

    .line 121
    add-int/lit8 v0, v0, 0x4

    .line 123
    :cond_2
    new-array v2, v0, [B

    .line 124
    .local v2, "bData":[B
    iget-boolean v3, p0, Lcom/android/supl/si/SUPLQOPParams;->bVeraccPresent:Z

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 125
    iget-boolean v3, p0, Lcom/android/supl/si/SUPLQOPParams;->bMaxLocAgePresent:Z

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 126
    iget-boolean v3, p0, Lcom/android/supl/si/SUPLQOPParams;->bdelayPresent:Z

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 127
    iget v3, p0, Lcom/android/supl/si/SUPLQOPParams;->byHorAcc:I

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 128
    iget-boolean v3, p0, Lcom/android/supl/si/SUPLQOPParams;->bVeraccPresent:Z

    if-eqz v3, :cond_3

    .line 129
    iget v3, p0, Lcom/android/supl/si/SUPLQOPParams;->byVerAcc:I

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 131
    :cond_3
    iget-boolean v3, p0, Lcom/android/supl/si/SUPLQOPParams;->bMaxLocAgePresent:Z

    if-eqz v3, :cond_4

    .line 132
    iget v3, p0, Lcom/android/supl/si/SUPLQOPParams;->wMaxLocAge:I

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 134
    :cond_4
    iget-boolean v3, p0, Lcom/android/supl/si/SUPLQOPParams;->bdelayPresent:Z

    if-eqz v3, :cond_5

    .line 135
    iget v3, p0, Lcom/android/supl/si/SUPLQOPParams;->byDelay:I

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 138
    :cond_5
    return-object v2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 179
    const/4 v0, 0x1

    .line 180
    .local v0, "bTrue":B
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/si/SUPLQOPParams;->bVeraccPresent:Z

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 182
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 183
    iput-boolean v2, p0, Lcom/android/supl/si/SUPLQOPParams;->bVeraccPresent:Z

    .line 185
    :cond_0
    iput-boolean v1, p0, Lcom/android/supl/si/SUPLQOPParams;->bMaxLocAgePresent:Z

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 187
    if-ne v0, v2, :cond_1

    .line 188
    iput-boolean v2, p0, Lcom/android/supl/si/SUPLQOPParams;->bMaxLocAgePresent:Z

    .line 190
    :cond_1
    iput-boolean v1, p0, Lcom/android/supl/si/SUPLQOPParams;->bdelayPresent:Z

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 192
    if-ne v0, v2, :cond_2

    .line 193
    iput-boolean v2, p0, Lcom/android/supl/si/SUPLQOPParams;->bdelayPresent:Z

    .line 195
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/supl/si/SUPLQOPParams;->byHorAcc:I

    .line 196
    iget-boolean v1, p0, Lcom/android/supl/si/SUPLQOPParams;->bVeraccPresent:Z

    if-eqz v1, :cond_3

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/supl/si/SUPLQOPParams;->byVerAcc:I

    .line 199
    :cond_3
    iget-boolean v1, p0, Lcom/android/supl/si/SUPLQOPParams;->bMaxLocAgePresent:Z

    if-eqz v1, :cond_4

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/supl/si/SUPLQOPParams;->wMaxLocAge:I

    .line 202
    :cond_4
    iget-boolean v1, p0, Lcom/android/supl/si/SUPLQOPParams;->bdelayPresent:Z

    if-eqz v1, :cond_5

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/supl/si/SUPLQOPParams;->byDelay:I

    .line 206
    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/supl/si/SUPLQOPParams;->byHorAcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SUPLQOPParams;->byVerAcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SUPLQOPParams;->wMaxLocAge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/si/SUPLQOPParams;->byDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 214
    const/4 v0, 0x1

    .line 215
    .local v0, "bTrue":B
    const/4 v1, 0x0

    .line 216
    .local v1, "bFalse":B
    iget-boolean v2, p0, Lcom/android/supl/si/SUPLQOPParams;->bVeraccPresent:Z

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 217
    iget-boolean v2, p0, Lcom/android/supl/si/SUPLQOPParams;->bMaxLocAgePresent:Z

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 218
    iget-boolean v2, p0, Lcom/android/supl/si/SUPLQOPParams;->bdelayPresent:Z

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 219
    iget v2, p0, Lcom/android/supl/si/SUPLQOPParams;->byHorAcc:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-boolean v2, p0, Lcom/android/supl/si/SUPLQOPParams;->bVeraccPresent:Z

    if-eqz v2, :cond_3

    .line 221
    iget v2, p0, Lcom/android/supl/si/SUPLQOPParams;->byVerAcc:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    :cond_3
    iget-boolean v2, p0, Lcom/android/supl/si/SUPLQOPParams;->bMaxLocAgePresent:Z

    if-eqz v2, :cond_4

    .line 224
    iget v2, p0, Lcom/android/supl/si/SUPLQOPParams;->wMaxLocAge:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    :cond_4
    iget-boolean v2, p0, Lcom/android/supl/si/SUPLQOPParams;->bdelayPresent:Z

    if-eqz v2, :cond_5

    .line 227
    iget v2, p0, Lcom/android/supl/si/SUPLQOPParams;->byDelay:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    :cond_5
    return-void
.end method

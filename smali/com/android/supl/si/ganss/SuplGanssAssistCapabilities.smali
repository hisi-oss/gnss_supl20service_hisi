.class public Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;
.super Ljava/lang/Object;
.source "SuplGanssAssistCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private asstCapElem:[Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

.field private ucGanssCnt:I

.field private uiAsstCmnCapBitmap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities$1;

    invoke-direct {v0}, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->asstCapElem:[Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->readFromParcel(Landroid/os/Parcel;)V

    .line 133
    return-void
.end method

.method public constructor <init>([Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;I)V
    .locals 2
    .param p1, "asstCapElem"    # [Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;
    .param p2, "uiAsstCmnCapBitmap"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->asstCapElem:[Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

    .line 70
    if-eqz p1, :cond_1

    .line 73
    array-length v0, p1

    iput v0, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->ucGanssCnt:I

    .line 74
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->ucGanssCnt:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 78
    iput-object p1, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->asstCapElem:[Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

    .line 79
    iput p2, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->uiAsstCmnCapBitmap:I

    .line 80
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Count should not exceed to8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuplGanssAsstCapElement should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getAsstCapElem()[B
    .locals 10

    .line 82
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->ucGanssCnt:I

    .line 83
    invoke-static {}, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->getPacketSize()I

    move-result v1

    mul-int/2addr v0, v1

    const/4 v1, 0x5

    add-int/2addr v1, v0

    .line 84
    .local v1, "iSize":I
    const/4 v0, 0x0

    .line 85
    .local v0, "offset":I
    new-array v2, v1, [B

    .line 86
    .local v2, "bytes":[B
    iget v3, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->uiAsstCmnCapBitmap:I

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 87
    iget v3, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->ucGanssCnt:I

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 88
    iget-object v3, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->asstCapElem:[Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v0

    move v0, v5

    .end local v0    # "offset":I
    .local v6, "offset":I
    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v7, v3, v0

    .line 89
    .local v7, "ganssAsstCapElem":Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;
    invoke-virtual {v7}, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->getAsstCapElem()[B

    move-result-object v8

    .line 90
    .local v8, "bAsstCapElem":[B
    array-length v9, v8

    invoke-static {v8, v5, v2, v6, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 91
    array-length v9, v8

    add-int/2addr v6, v9

    .line 88
    .end local v7    # "ganssAsstCapElem":Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;
    .end local v8    # "bAsstCapElem":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    if-eq v1, v6, :cond_1

    .line 94
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "getAsstCapElem size invalid"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    :cond_1
    return-object v2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->uiAsstCmnCapBitmap:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->ucGanssCnt:I

    .line 142
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->ucGanssCnt:I

    if-lez v0, :cond_0

    .line 144
    const-class v0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    .line 145
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 144
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 146
    .local v0, "parcels":[Landroid/os/Parcelable;
    array-length v1, v0

    new-array v1, v1, [Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

    iput-object v1, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->asstCapElem:[Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, "i":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 149
    .local v4, "par":Landroid/os/Parcelable;
    iget-object v5, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->asstCapElem:[Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

    add-int/lit8 v6, v1, 0x1

    .local v6, "i":I
    move-object v7, v4

    check-cast v7, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

    aput-object v7, v5, v1

    .line 148
    .end local v1    # "i":I
    .end local v4    # "par":Landroid/os/Parcelable;
    add-int/lit8 v3, v3, 0x1

    move v1, v6

    goto :goto_0

    .line 153
    .end local v0    # "parcels":[Landroid/os/Parcelable;
    .end local v6    # "i":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->uiAsstCmnCapBitmap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    iget-object v1, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->asstCapElem:[Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 104
    .local v4, "a":Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;
    invoke-virtual {v4}, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    .end local v4    # "a":Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 166
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->uiAsstCmnCapBitmap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->ucGanssCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->ucGanssCnt:I

    if-lez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->asstCapElem:[Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 172
    :cond_0
    return-void
.end method

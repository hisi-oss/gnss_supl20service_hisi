.class public Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;
.super Ljava/lang/Object;
.source "SuplGanssPOSCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPL_GANSS_TYPE_MAX_CNT:I = 0x8


# instance fields
.field elem:[Lcom/android/supl/si/ganss/SuplGanssPOSElem;

.field private ucGanssCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities$1;

    invoke-direct {v0}, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->elem:[Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->readFromParcel(Landroid/os/Parcel;)V

    .line 127
    return-void
.end method

.method public constructor <init>([Lcom/android/supl/si/ganss/SuplGanssPOSElem;)V
    .locals 2
    .param p1, "elem"    # [Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->elem:[Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    .line 65
    if-eqz p1, :cond_1

    .line 68
    array-length v0, p1

    iput v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->ucGanssCnt:I

    .line 69
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->ucGanssCnt:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 73
    iput-object p1, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->elem:[Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    .line 74
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Count should not exceed to8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuplGanssPOSElement should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public getPOSCapabilities()[B
    .locals 10

    .line 77
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->ucGanssCnt:I

    .line 78
    invoke-static {}, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->getPacketSize()I

    move-result v1

    mul-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v1, v0

    .line 79
    .local v1, "iSize":I
    const/4 v0, 0x0

    .line 80
    .local v0, "offset":I
    new-array v2, v1, [B

    .line 82
    .local v2, "bytes":[B
    iget v3, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->ucGanssCnt:I

    invoke-static {v2, v0, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 83
    iget-object v3, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->elem:[Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v0

    move v0, v5

    .end local v0    # "offset":I
    .local v6, "offset":I
    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v7, v3, v0

    .line 84
    .local v7, "eleGanssPOSElem":Lcom/android/supl/si/ganss/SuplGanssPOSElem;
    invoke-virtual {v7}, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->getPOSElem()[B

    move-result-object v8

    .line 85
    .local v8, "eleData":[B
    array-length v9, v8

    invoke-static {v8, v5, v2, v6, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 86
    array-length v9, v8

    add-int/2addr v6, v9

    .line 83
    .end local v7    # "eleGanssPOSElem":Lcom/android/supl/si/ganss/SuplGanssPOSElem;
    .end local v8    # "eleData":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    if-eq v1, v6, :cond_1

    .line 90
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "getPOSCapabilities size invalid"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    :cond_1
    return-object v2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->ucGanssCnt:I

    .line 135
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->ucGanssCnt:I

    if-lez v0, :cond_0

    .line 137
    const-class v0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    .line 138
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 137
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 139
    .local v0, "parcels":[Landroid/os/Parcelable;
    array-length v1, v0

    new-array v1, v1, [Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    iput-object v1, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->elem:[Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "i":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 142
    .local v4, "par":Landroid/os/Parcelable;
    iget-object v5, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->elem:[Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    add-int/lit8 v6, v1, 0x1

    .local v6, "i":I
    move-object v7, v4

    check-cast v7, Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    aput-object v7, v5, v1

    .line 141
    .end local v1    # "i":I
    .end local v4    # "par":Landroid/os/Parcelable;
    add-int/lit8 v3, v3, 0x1

    move v1, v6

    goto :goto_0

    .line 147
    .end local v0    # "parcels":[Landroid/os/Parcelable;
    .end local v6    # "i":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->ucGanssCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    iget-object v1, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->elem:[Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 100
    .local v4, "posElem":Lcom/android/supl/si/ganss/SuplGanssPOSElem;
    invoke-virtual {v4}, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    .end local v4    # "posElem":Lcom/android/supl/si/ganss/SuplGanssPOSElem;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 157
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->ucGanssCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->ucGanssCnt:I

    if-lez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->elem:[Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 162
    :cond_0
    return-void
.end method

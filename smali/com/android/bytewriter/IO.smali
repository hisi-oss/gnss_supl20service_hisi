.class public Lcom/android/bytewriter/IO;
.super Ljava/lang/Object;
.source "IO.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get1([BI)I
    .locals 4
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 206
    const/4 v0, 0x0

    .line 209
    .local v0, "r":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 211
    add-int/lit8 v2, p1, 0x1

    .local v2, "index":I
    aget-byte p1, p0, p1

    .line 212
    .local p1, "n":I
    if-gez p1, :cond_0

    .line 213
    add-int/lit16 p1, p1, 0x100

    .line 214
    :cond_0
    shl-int/lit8 v3, v0, 0x8

    add-int v0, v3, p1

    .line 209
    add-int/lit8 v1, v1, 0x1

    move p1, v2

    goto :goto_0

    .line 217
    .end local v1    # "i":I
    .end local v2    # "index":I
    .local p1, "index":I
    :cond_1
    return v0
.end method

.method public static get2([BI)I
    .locals 4
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 172
    const/4 v0, 0x0

    .line 175
    .local v0, "r":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 177
    add-int/lit8 v2, p1, 0x1

    .local v2, "index":I
    aget-byte p1, p0, p1

    .line 178
    .local p1, "n":I
    if-gez p1, :cond_0

    .line 179
    add-int/lit16 p1, p1, 0x100

    .line 180
    :cond_0
    shl-int/lit8 v3, v0, 0x8

    add-int v0, v3, p1

    .line 175
    add-int/lit8 v1, v1, 0x1

    move p1, v2

    goto :goto_0

    .line 183
    .end local v1    # "i":I
    .end local v2    # "index":I
    .local p1, "index":I
    :cond_1
    return v0
.end method

.method public static get2r([BI)I
    .locals 4
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 190
    const/4 v0, 0x0

    .line 193
    .local v0, "r":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 195
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    .line 196
    .local v2, "n":I
    if-gez v2, :cond_0

    .line 197
    add-int/lit16 v2, v2, 0x100

    .line 198
    :cond_0
    shl-int/lit8 v3, v0, 0x8

    add-int v0, v3, v2

    .line 193
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 201
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return v0
.end method

.method public static get3([BI)I
    .locals 4
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 157
    const/4 v0, 0x0

    .line 160
    .local v0, "r":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 161
    add-int/lit8 v2, p1, 0x1

    .local v2, "index":I
    aget-byte p1, p0, p1

    .line 162
    .local p1, "n":I
    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x100

    .line 163
    :cond_0
    shl-int/lit8 v3, v0, 0x8

    add-int v0, v3, p1

    .line 160
    add-int/lit8 v1, v1, 0x1

    move p1, v2

    goto :goto_0

    .line 166
    .end local v1    # "i":I
    .end local v2    # "index":I
    .local p1, "index":I
    :cond_1
    return v0
.end method

.method public static get4([BI)I
    .locals 4
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 122
    const/4 v0, 0x0

    .line 125
    .local v0, "r":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 127
    add-int/lit8 v2, p1, 0x1

    .local v2, "index":I
    aget-byte p1, p0, p1

    .line 128
    .local p1, "n":I
    if-gez p1, :cond_0

    .line 129
    add-int/lit16 p1, p1, 0x100

    .line 130
    :cond_0
    shl-int/lit8 v3, v0, 0x8

    add-int v0, v3, p1

    .line 125
    add-int/lit8 v1, v1, 0x1

    move p1, v2

    goto :goto_0

    .line 133
    .end local v1    # "i":I
    .end local v2    # "index":I
    .local p1, "index":I
    :cond_1
    return v0
.end method

.method public static get4l([BI)I
    .locals 4
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 50
    const/4 v0, 0x0

    .line 53
    .local v0, "r":I
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 54
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    .line 55
    .local v2, "n":I
    if-gez v2, :cond_0

    .line 56
    add-int/lit16 v2, v2, 0x100

    .line 58
    :cond_0
    shl-int/lit8 v3, v0, 0x8

    add-int v0, v3, v2

    .line 53
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 61
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return v0
.end method

.method public static get4r([BI)I
    .locals 4
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 140
    const/4 v0, 0x0

    .line 143
    .local v0, "r":I
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 145
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    .line 146
    .local v2, "n":I
    if-gez v2, :cond_0

    .line 147
    add-int/lit16 v2, v2, 0x100

    .line 148
    :cond_0
    shl-int/lit8 v3, v0, 0x8

    add-int v0, v3, v2

    .line 143
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 151
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return v0
.end method

.method public static get8([BI)J
    .locals 9
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 86
    const-wide/16 v0, 0x0

    .line 89
    .local v0, "r":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 91
    add-int/lit8 v4, p1, 0x1

    .local v4, "index":I
    aget-byte p1, p0, p1

    .end local p1    # "index":I
    int-to-long v5, p1

    .line 92
    .local v5, "n":J
    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-gez p1, :cond_0

    .line 93
    const-wide/16 v7, 0x100

    add-long/2addr v5, v7

    .line 94
    :cond_0
    shl-long v7, v0, v3

    add-long v0, v7, v5

    .line 89
    add-int/lit8 v2, v2, 0x1

    move p1, v4

    goto :goto_0

    .line 97
    .end local v2    # "i":I
    .end local v4    # "index":I
    .end local v5    # "n":J
    .restart local p1    # "index":I
    :cond_1
    return-wide v0
.end method

.method public static get8l([BI)J
    .locals 7
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 65
    const-wide/16 v0, 0x0

    .line 68
    .local v0, "r":J
    const/4 v2, 0x7

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 69
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    int-to-long v3, v3

    .line 73
    .local v3, "n":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 74
    const-wide/16 v5, 0x100

    add-long/2addr v3, v5

    .line 76
    :cond_0
    const/16 v5, 0x8

    shl-long v5, v0, v5

    add-long v0, v5, v3

    .line 68
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 81
    .end local v2    # "i":I
    .end local v3    # "n":J
    :cond_1
    return-wide v0
.end method

.method public static get8r([BI)J
    .locals 7
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 104
    const-wide/16 v0, 0x0

    .line 107
    .local v0, "r":J
    const/4 v2, 0x7

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 109
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    int-to-long v3, v3

    .line 110
    .local v3, "n":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 111
    const-wide/16 v5, 0x100

    add-long/2addr v3, v5

    .line 112
    :cond_0
    const/16 v5, 0x8

    shl-long v5, v0, v5

    add-long v0, v5, v3

    .line 107
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 115
    .end local v2    # "i":I
    .end local v3    # "n":J
    :cond_1
    return-wide v0
.end method

.method public static put1([BII)I
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "data"    # I

    .line 223
    add-int/lit8 v0, p1, 0x1

    .local v0, "offset":I
    int-to-byte v1, p2

    aput-byte v1, p0, p1

    .line 224
    .end local p1    # "offset":I
    return v0
.end method

.method public static put2([BII)I
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "data"    # I

    .line 231
    add-int/lit8 v0, p1, 0x1

    .local v0, "offset":I
    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 232
    .end local p1    # "offset":I
    add-int/lit8 p1, v0, 0x1

    .restart local p1    # "offset":I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 233
    .end local v0    # "offset":I
    return p1
.end method

.method public static put3([BII)I
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "data"    # I

    .line 239
    add-int/lit8 v0, p1, 0x1

    .local v0, "offset":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 240
    .end local p1    # "offset":I
    add-int/lit8 p1, v0, 0x1

    .restart local p1    # "offset":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 241
    .end local v0    # "offset":I
    add-int/lit8 v0, p1, 0x1

    .restart local v0    # "offset":I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 242
    .end local p1    # "offset":I
    return v0
.end method

.method public static put4([BII)I
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "data"    # I

    .line 248
    add-int/lit8 v0, p1, 0x1

    .local v0, "offset":I
    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 249
    .end local p1    # "offset":I
    add-int/lit8 p1, v0, 0x1

    .restart local p1    # "offset":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 250
    .end local v0    # "offset":I
    add-int/lit8 v0, p1, 0x1

    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 251
    .end local p1    # "offset":I
    add-int/lit8 p1, v0, 0x1

    .restart local p1    # "offset":I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 252
    .end local v0    # "offset":I
    return p1
.end method

.method public static put5([BIJ)I
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "data"    # J

    .line 257
    add-int/lit8 v0, p1, 0x1

    .local v0, "offset":I
    const/16 v1, 0x20

    shr-long v1, p2, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 258
    .end local p1    # "offset":I
    add-int/lit8 p1, v0, 0x1

    .restart local p1    # "offset":I
    const/16 v1, 0x18

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 259
    .end local v0    # "offset":I
    add-int/lit8 v0, p1, 0x1

    .restart local v0    # "offset":I
    const/16 v1, 0x10

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 260
    .end local p1    # "offset":I
    add-int/lit8 p1, v0, 0x1

    .restart local p1    # "offset":I
    const/16 v1, 0x8

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 261
    .end local v0    # "offset":I
    add-int/lit8 v0, p1, 0x1

    .restart local v0    # "offset":I
    and-long v1, p2, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 262
    .end local p1    # "offset":I
    return v0
.end method

.method public static put8([BIJ)I
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "data"    # J

    .line 267
    add-int/lit8 v0, p1, 0x1

    .local v0, "offset":I
    const/16 v1, 0x38

    shr-long v1, p2, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 268
    .end local p1    # "offset":I
    add-int/lit8 p1, v0, 0x1

    .restart local p1    # "offset":I
    const/16 v1, 0x30

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 269
    .end local v0    # "offset":I
    add-int/lit8 v0, p1, 0x1

    .restart local v0    # "offset":I
    const/16 v1, 0x28

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 270
    .end local p1    # "offset":I
    add-int/lit8 p1, v0, 0x1

    .restart local p1    # "offset":I
    const/16 v1, 0x20

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 271
    .end local v0    # "offset":I
    add-int/lit8 v0, p1, 0x1

    .restart local v0    # "offset":I
    const/16 v1, 0x18

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 272
    .end local p1    # "offset":I
    add-int/lit8 p1, v0, 0x1

    .restart local p1    # "offset":I
    const/16 v1, 0x10

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 273
    .end local v0    # "offset":I
    add-int/lit8 v0, p1, 0x1

    .restart local v0    # "offset":I
    const/16 v1, 0x8

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 274
    .end local p1    # "offset":I
    add-int/lit8 p1, v0, 0x1

    .restart local p1    # "offset":I
    and-long v1, p2, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 275
    .end local v0    # "offset":I
    return p1
.end method

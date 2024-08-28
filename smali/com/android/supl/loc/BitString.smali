.class public Lcom/android/supl/loc/BitString;
.super Ljava/lang/Object;
.source "BitString.java"


# instance fields
.field nBitsUnused:I

.field public ucBuffer:[B

.field ucLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "stData"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/loc/BitString;->ucLength:I

    .line 43
    iput v0, p0, Lcom/android/supl/loc/BitString;->nBitsUnused:I

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/supl/loc/BitString;->ucBuffer:[B

    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/supl/loc/BitString;->ucBuffer:[B

    .line 50
    iget-object v1, p0, Lcom/android/supl/loc/BitString;->ucBuffer:[B

    array-length v1, v1

    iput v1, p0, Lcom/android/supl/loc/BitString;->ucLength:I

    .line 51
    iput v0, p0, Lcom/android/supl/loc/BitString;->nBitsUnused:I

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public getBitStringInfo()[B
    .locals 6

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "iOffset":I
    iget v1, p0, Lcom/android/supl/loc/BitString;->ucLength:I

    const/4 v2, 0x5

    add-int/2addr v2, v1

    .line 59
    .local v2, "iSize":I
    new-array v1, v2, [B

    .line 60
    .local v1, "bData":[B
    iget v3, p0, Lcom/android/supl/loc/BitString;->ucLength:I

    invoke-static {v1, v0, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v0

    .line 61
    iget v3, p0, Lcom/android/supl/loc/BitString;->nBitsUnused:I

    invoke-static {v1, v0, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 62
    iget-object v3, p0, Lcom/android/supl/loc/BitString;->ucBuffer:[B

    iget v4, p0, Lcom/android/supl/loc/BitString;->ucLength:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v0, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 63
    iget v3, p0, Lcom/android/supl/loc/BitString;->ucLength:I

    add-int/2addr v0, v3

    .line 64
    if-eq v0, v2, :cond_0

    .line 65
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "BitString length error"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BitString length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/supl/loc/BitString;->ucLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    return-object v1
.end method

.class public Lcom/android/supl/nc/SSLX509TrustManager;
.super Ljava/lang/Object;
.source "SSLX509TrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final LOG:Ljava/lang/String; = "SUPL20_TrustManager"


# instance fields
.field private allx509TrustManager:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljavax/net/ssl/X509TrustManager;",
            ">;"
        }
    .end annotation
.end field

.field private factories:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljavax/net/ssl/TrustManagerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fqdn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/KeyStore;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 76
    .local p1, "keystoreList":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyStore;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/nc/SSLX509TrustManager;->allx509TrustManager:Ljava/util/Vector;

    .line 67
    iput-object v0, p0, Lcom/android/supl/nc/SSLX509TrustManager;->factories:Ljava/util/Vector;

    .line 69
    iput-object v0, p0, Lcom/android/supl/nc/SSLX509TrustManager;->fqdn:Ljava/lang/String;

    .line 77
    if-eqz p2, :cond_2

    .line 82
    iput-object p2, p0, Lcom/android/supl/nc/SSLX509TrustManager;->fqdn:Ljava/lang/String;

    .line 83
    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lcom/android/supl/nc/SSLX509TrustManager;->allx509TrustManager:Ljava/util/Vector;

    .line 85
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/KeyStore;

    .line 88
    .local v3, "keystore":Ljava/security/KeyStore;
    invoke-virtual {p0, v3, v1}, Lcom/android/supl/nc/SSLX509TrustManager;->addKeyStore(Ljava/security/KeyStore;Z)V

    .line 89
    .end local v3    # "keystore":Ljava/security/KeyStore;
    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/supl/nc/SSLX509TrustManager;->addKeyStore(Ljava/security/KeyStore;Z)V

    .line 95
    iget-object v0, p0, Lcom/android/supl/nc/SSLX509TrustManager;->allx509TrustManager:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    const-string v0, "SUPL20_TrustManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/nc/SSLX509TrustManager;->allx509TrustManager:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Trust Managers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void

    .line 96
    :cond_1
    const-string v0, "No Trust Manager Found"

    .line 97
    .local v0, "error":Ljava/lang/String;
    const-string v1, "SUPL20_TrustManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    .end local v0    # "error":Ljava/lang/String;
    :cond_2
    const-string v0, "fqdn == null"

    .line 79
    .restart local v0    # "error":Ljava/lang/String;
    const-string v1, "SUPL20_TrustManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private splitByIssuers([Ljava/security/cert/X509Certificate;)Ljava/util/Vector;
    .locals 11
    .param p1, "x509Certificates"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Vector<",
            "[",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 221
    .local v0, "certificates":Ljava/util/Vector;, "Ljava/util/Vector<[Ljava/security/cert/X509Certificate;>;"
    const/4 v2, 0x0

    .line 222
    .local v2, "isMatch":Z
    const/4 v3, 0x0

    .line 223
    .local v3, "iMatchIndex":I
    const/4 v4, 0x0

    move v5, v3

    move v3, v2

    move v2, v4

    .local v2, "i":I
    .local v3, "isMatch":Z
    .local v5, "iMatchIndex":I
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_4

    .line 224
    if-nez v3, :cond_0

    .line 225
    move v5, v2

    .line 227
    :cond_0
    aget-object v6, p1, v2

    .line 228
    .local v6, "xcPre":Ljava/security/cert/X509Certificate;
    add-int/lit8 v7, v2, 0x1

    .line 229
    .local v7, "iNextIndex":I
    const/4 v8, 0x0

    .line 230
    .local v8, "xcNext":Ljava/security/cert/X509Certificate;
    array-length v9, p1

    sub-int/2addr v9, v1

    if-eq v2, v9, :cond_1

    .line 231
    aget-object v8, p1, v7

    .line 233
    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v9

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 234
    const/4 v3, 0x1

    goto :goto_1

    .line 236
    :cond_2
    const/4 v3, 0x0

    .line 238
    :goto_1
    if-nez v3, :cond_3

    .line 239
    sub-int v9, v2, v5

    add-int/2addr v9, v1

    new-array v9, v9, [Ljava/security/cert/X509Certificate;

    .line 240
    .local v9, "newChain":[Ljava/security/cert/X509Certificate;
    array-length v10, v9

    invoke-static {p1, v5, v9, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v6    # "xcPre":Ljava/security/cert/X509Certificate;
    .end local v7    # "iNextIndex":I
    .end local v8    # "xcNext":Ljava/security/cert/X509Certificate;
    .end local v9    # "newChain":[Ljava/security/cert/X509Certificate;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    .end local v2    # "i":I
    :cond_4
    return-object v0
.end method


# virtual methods
.method public addKeyStore(Ljava/security/KeyStore;Z)V
    .locals 17
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "bIsPrintCerts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 105
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 106
    .local v0, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 108
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 109
    .local v6, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v7, v6, Ljavax/net/ssl/X509TrustManager;

    if-nez v7, :cond_0

    .line 110
    nop

    .line 108
    move-object/from16 v8, p0

    goto :goto_2

    .line 112
    :cond_0
    move-object v7, v6

    check-cast v7, Ljavax/net/ssl/X509TrustManager;

    .line 113
    .local v7, "xtm":Ljavax/net/ssl/X509TrustManager;
    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/android/supl/nc/SSLX509TrustManager;->allx509TrustManager:Ljava/util/Vector;

    invoke-virtual {v9, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 114
    if-eqz p2, :cond_1

    .line 115
    const-string v10, "SUPL20_TrustManager"

    const-string v11, "Added new Trust Manager. It contains the following Accepted Issuer Certificates:"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-interface {v7}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_1

    aget-object v13, v10, v12

    .line 117
    .local v13, "cert":Ljava/security/cert/X509Certificate;
    const-string v14, "SUPL20_TrustManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate: "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 120
    :cond_1
    const-string v4, "SUPL20_TrustManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Number of accepted issuers: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v11

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v6    # "tm":Ljavax/net/ssl/TrustManager;
    .end local v7    # "xtm":Ljavax/net/ssl/X509TrustManager;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 122
    :cond_2
    move-object/from16 v8, p0

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 9
    .param p1, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 139
    if-eqz p1, :cond_6

    array-length v0, p1

    if-eqz v0, :cond_6

    .line 153
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v1}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    iget-object v2, p0, Lcom/android/supl/nc/SSLX509TrustManager;->fqdn:Ljava/lang/String;

    aget-object v3, p1, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 160
    nop

    .line 163
    const/4 v1, 0x0

    .line 165
    .local v1, "ce":Ljava/security/cert/CertificateException;
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 166
    invoke-direct {p0, p1}, Lcom/android/supl/nc/SSLX509TrustManager;->splitByIssuers([Ljava/security/cert/X509Certificate;)Ljava/util/Vector;

    move-result-object v2

    .local v2, "vecChains":Ljava/util/Vector;, "Ljava/util/Vector<[Ljava/security/cert/X509Certificate;>;"
    goto :goto_0

    .line 168
    .end local v2    # "vecChains":Ljava/util/Vector;, "Ljava/util/Vector<[Ljava/security/cert/X509Certificate;>;"
    :cond_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    .line 169
    .restart local v2    # "vecChains":Ljava/util/Vector;, "Ljava/util/Vector<[Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 172
    :goto_0
    const/4 v3, 0x0

    .line 173
    .local v3, "bIsChainValid":Z
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;

    .line 174
    .local v5, "x509CertificatesChain":[Ljava/security/cert/X509Certificate;
    iget-object v6, p0, Lcom/android/supl/nc/SSLX509TrustManager;->allx509TrustManager:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/X509TrustManager;

    .line 176
    .local v7, "tm":Ljavax/net/ssl/X509TrustManager;
    :try_start_1
    invoke-interface {v7, v5, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    const/4 v3, 0x1

    .line 178
    goto :goto_3

    .line 179
    :catch_0
    move-exception v8

    .line 181
    .local v8, "e":Ljava/security/cert/CertificateException;
    move-object v1, v8

    .line 183
    .end local v7    # "tm":Ljavax/net/ssl/X509TrustManager;
    .end local v8    # "e":Ljava/security/cert/CertificateException;
    goto :goto_2

    .line 184
    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    .line 185
    goto :goto_4

    .line 187
    .end local v5    # "x509CertificatesChain":[Ljava/security/cert/X509Certificate;
    :cond_2
    goto :goto_1

    .line 189
    :cond_3
    :goto_4
    if-eqz v3, :cond_5

    .line 196
    array-length v4, p1

    :goto_5
    if-ge v0, v4, :cond_4

    aget-object v5, p1, v0

    .line 198
    .local v5, "certificate":Ljava/security/cert/X509Certificate;
    :try_start_2
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 202
    nop

    .line 196
    .end local v5    # "certificate":Ljava/security/cert/X509Certificate;
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 199
    .restart local v5    # "certificate":Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v0

    .line 200
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The following certificate in the chain is invalid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SUPL20_TrustManager"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    throw v0

    .line 204
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    .end local v5    # "certificate":Ljava/security/cert/X509Certificate;
    :cond_4
    return-void

    .line 190
    :cond_5
    const-string v0, "SUPL20_TrustManager"

    const-string v4, "Couldn\'t find trusted anchor for certificate chain"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    throw v1

    .line 155
    .end local v1    # "ce":Ljava/security/cert/CertificateException;
    .end local v2    # "vecChains":Ljava/util/Vector;, "Ljava/util/Vector<[Ljava/security/cert/X509Certificate;>;"
    .end local v3    # "bIsChainValid":Z
    :catch_2
    move-exception v1

    .line 157
    .local v1, "e":Ljavax/net/ssl/SSLException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Certificate SubjectDN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SUPL20_TrustManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "But trying to connect to FQDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/nc/SSLX509TrustManager;->fqdn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SUPL20_TrustManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 140
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    :cond_6
    const-string v0, "Server didn\'t provide any certificate"

    .line 141
    .local v0, "error":Ljava/lang/String;
    const-string v1, "SUPL20_TrustManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 4

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v0, "certificateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    iget-object v1, p0, Lcom/android/supl/nc/SSLX509TrustManager;->allx509TrustManager:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    .line 212
    .local v2, "tm":Ljavax/net/ssl/X509TrustManager;
    invoke-interface {v2}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 213
    .end local v2    # "tm":Ljavax/net/ssl/X509TrustManager;
    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    return-object v1
.end method

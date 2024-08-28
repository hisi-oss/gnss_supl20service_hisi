.class public Lcom/android/supl/config/NetworkConnectionParam;
.super Ljava/lang/Object;
.source "NetworkConnectionParam.java"


# instance fields
.field public m_iConnectionRetries:I

.field public m_iConnectionTimeOut:I

.field public m_iPCMPort:I

.field public m_iSCMPort:I

.field public m_sPCMUnixSocPath:Ljava/lang/String;

.field public m_sSCMUnixSocPath:Ljava/lang/String;

.field public m_stPCMFQDN:Ljava/lang/String;

.field public m_stSCMFQDN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_iConnectionTimeOut:I

    .line 43
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_iConnectionRetries:I

    .line 44
    const/16 v0, 0x2329

    iput v0, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_iPCMPort:I

    .line 45
    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_stPCMFQDN:Ljava/lang/String;

    .line 46
    const/16 v0, 0x232a

    iput v0, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_iSCMPort:I

    .line 47
    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_stSCMFQDN:Ljava/lang/String;

    .line 48
    const-string v0, "/data/gnss/pcm_soc"

    iput-object v0, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_sPCMUnixSocPath:Ljava/lang/String;

    .line 49
    const-string v0, "/data/gnss/scm_soc"

    iput-object v0, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_sSCMUnixSocPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionTimeOut :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_iConnectionTimeOut:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nConnectionRetries:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_iConnectionRetries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nPCMPort:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_iPCMPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nPCMFQDN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_stPCMFQDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nSCMPort:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_iSCMPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSCMFQDN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_stSCMFQDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nPCMUnixSocPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_sPCMUnixSocPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nSCMUnixSocPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/supl/config/NetworkConnectionParam;->m_sSCMUnixSocPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

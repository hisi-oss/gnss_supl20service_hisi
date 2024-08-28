.class public Lcom/android/supl/loc/NetInfo;
.super Ljava/lang/Object;
.source "NetInfo.java"


# instance fields
.field private connManager:Landroid/net/ConnectivityManager;

.field private context:Landroid/content/Context;

.field private mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

.field private wifiInfo:Landroid/net/wifi/WifiInfo;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/NetInfo;->connManager:Landroid/net/ConnectivityManager;

    .line 60
    iput-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 62
    iput-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 64
    iput-object v0, p0, Lcom/android/supl/loc/NetInfo;->context:Landroid/content/Context;

    .line 66
    iput-object v0, p0, Lcom/android/supl/loc/NetInfo;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    .line 68
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/supl/loc/NetInfo;->connManager:Landroid/net/ConnectivityManager;

    .line 69
    iput-object p1, p0, Lcom/android/supl/loc/NetInfo;->context:Landroid/content/Context;

    .line 70
    invoke-virtual {p0}, Lcom/android/supl/loc/NetInfo;->initWIFIManager()V

    .line 71
    return-void
.end method


# virtual methods
.method public getCurrentNetworkType()I
    .locals 2

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "iConnType":I
    iget-object v1, p0, Lcom/android/supl/loc/NetInfo;->connManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 96
    return v0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/android/supl/loc/NetInfo;->connManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 99
    .local v1, "netinfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 102
    :cond_1
    return v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 6

    .line 206
    const-string v0, ""

    .line 209
    .local v0, "ipaddress":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 210
    .local v1, "enumnet":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    const/4 v2, 0x0

    .line 211
    .local v2, "netinterface":Ljava/net/NetworkInterface;
    if-eqz v1, :cond_2

    .line 212
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    move-object v2, v3

    .line 215
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 216
    .local v3, "enumip":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 219
    .local v4, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    .line 220
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 222
    goto :goto_0

    .line 224
    .end local v4    # "inetAddress":Ljava/net/InetAddress;
    :cond_1
    goto :goto_1

    .line 229
    .end local v1    # "enumnet":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2    # "netinterface":Ljava/net/NetworkInterface;
    .end local v3    # "enumip":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    goto :goto_2

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    .line 231
    .end local v1    # "e":Ljava/net/SocketException;
    :goto_2
    return-object v0
.end method

.method public getLinkSpeed()Ljava/lang/String;
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Mbs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :cond_1
    :goto_0
    const-string v0, "0Mbs"

    return-object v0
.end method

.method public getSupplicantDeatils()Ljava/lang/String;
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 186
    .local v0, "ss":Landroid/net/wifi/SupplicantState;
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 187
    .local v1, "detailedState":Landroid/net/NetworkInfo$DetailedState;
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getWiFiBSSID()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 158
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getWiFiMACAddress()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getWiFiRssi()I
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    return v0

    .line 148
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWiFiSSID()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 138
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getWifiIpAddress()Ljava/lang/String;
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 122
    .local v0, "ipAddress":I
    const-string v1, "%d.%d.%d.%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    and-int/lit16 v4, v0, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    .line 123
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    shr-int/lit8 v4, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 122
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 118
    .end local v0    # "ipAddress":I
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public initWIFIManager()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->context:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 77
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 78
    return-void
.end method

.method public isNetworkOn()Z
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 111
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    .line 112
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    .line 113
    .local v1, "connected":Z
    :goto_1
    return v1
.end method

.method public isOnline()Z
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 86
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 87
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const/4 v2, 0x1

    return v2

    .line 90
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isWiFiEnabled()Z
    .locals 2

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "isEnabled":Z
    iget-object v1, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 182
    :cond_0
    return v0
.end method

.method public sendStaleLocationInfo(Lcom/android/supl/commprocessor/NDKCommProcessor;)V
    .locals 2
    .param p1, "commandProcessor"    # Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 190
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v0}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 192
    .local v0, "sendToServer":Lcom/android/supl/nc/SendToServer;
    iget-object v1, p0, Lcom/android/supl/loc/NetInfo;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    invoke-virtual {v1}, Lcom/android/supl/loc/StaleLocationInfo;->getStaleLocation()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 193
    invoke-virtual {p1, v0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 195
    .end local v0    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    :cond_0
    return-void
.end method

.method public setStaleLocationInfo([BI)V
    .locals 1
    .param p1, "bData"    # [B
    .param p2, "iStaleBitLocation"    # I

    .line 198
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/android/supl/loc/StaleLocationInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/supl/loc/StaleLocationInfo;-><init>([BI)V

    iput-object v0, p0, Lcom/android/supl/loc/NetInfo;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/supl/loc/StaleLocationInfo;->upDateInfo([BI)V

    .line 204
    :goto_0
    return-void
.end method

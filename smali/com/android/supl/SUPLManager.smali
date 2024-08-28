.class public Lcom/android/supl/SUPLManager;
.super Ljava/lang/Object;
.source "SUPLManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/SUPLManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SUPL20_SUPLManager"

.field public static final SUPL_SI:Ljava/lang/String; = "supl20mgr"

.field private static suplManager:Lcom/android/supl/SUPLManager;


# instance fields
.field private isGpsEnableReceReg:Z

.field private mContext:Landroid/content/Context;

.field private mPlatformService:Lcom/android/supl/loc/SUPLPlatformService;

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mSuplscmService:Lcom/android/supl/commprocessor/SUPLSCMService;

.field private m_Handler:Landroid/os/Handler;

.field private settingsObserver:Lcom/android/supl/SUPLManager$SettingsObserver;

.field private vecGpsListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/supl/GpsOnOffListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/android/supl/SUPLManager;->suplManager:Lcom/android/supl/SUPLManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/SUPLManager;->mPlatformService:Lcom/android/supl/loc/SUPLPlatformService;

    .line 65
    iput-object v0, p0, Lcom/android/supl/SUPLManager;->mSettings:Landroid/content/ContentQueryMap;

    .line 66
    iput-object v0, p0, Lcom/android/supl/SUPLManager;->mSuplscmService:Lcom/android/supl/commprocessor/SUPLSCMService;

    .line 67
    iput-object v0, p0, Lcom/android/supl/SUPLManager;->settingsObserver:Lcom/android/supl/SUPLManager$SettingsObserver;

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/SUPLManager;->isGpsEnableReceReg:Z

    .line 69
    iput-object v0, p0, Lcom/android/supl/SUPLManager;->mContext:Landroid/content/Context;

    .line 71
    iput-object v0, p0, Lcom/android/supl/SUPLManager;->m_Handler:Landroid/os/Handler;

    .line 73
    iput-object v0, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/SUPLManager;->mPlatformService:Lcom/android/supl/loc/SUPLPlatformService;

    .line 65
    iput-object v0, p0, Lcom/android/supl/SUPLManager;->mSettings:Landroid/content/ContentQueryMap;

    .line 66
    iput-object v0, p0, Lcom/android/supl/SUPLManager;->mSuplscmService:Lcom/android/supl/commprocessor/SUPLSCMService;

    .line 67
    iput-object v0, p0, Lcom/android/supl/SUPLManager;->settingsObserver:Lcom/android/supl/SUPLManager$SettingsObserver;

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/SUPLManager;->isGpsEnableReceReg:Z

    .line 69
    iput-object v0, p0, Lcom/android/supl/SUPLManager;->mContext:Landroid/content/Context;

    .line 71
    iput-object v0, p0, Lcom/android/supl/SUPLManager;->m_Handler:Landroid/os/Handler;

    .line 73
    iput-object v0, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    .line 79
    sget-object v0, Lcom/android/supl/SUPLManager;->suplManager:Lcom/android/supl/SUPLManager;

    if-nez v0, :cond_0

    .line 80
    sput-object p0, Lcom/android/supl/SUPLManager;->suplManager:Lcom/android/supl/SUPLManager;

    .line 84
    iput-object p1, p0, Lcom/android/supl/SUPLManager;->mContext:Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Lcom/android/supl/SUPLManager;->init()V

    .line 86
    new-instance v0, Lcom/android/supl/loc/SUPLPlatformService;

    invoke-direct {v0, p1}, Lcom/android/supl/loc/SUPLPlatformService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/supl/SUPLManager;->mPlatformService:Lcom/android/supl/loc/SUPLPlatformService;

    .line 87
    new-instance v0, Lcom/android/supl/commprocessor/SUPLSCMService;

    invoke-direct {v0, p1}, Lcom/android/supl/commprocessor/SUPLSCMService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/supl/SUPLManager;->mSuplscmService:Lcom/android/supl/commprocessor/SUPLSCMService;

    .line 88
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Instance already created. call getIntance method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lcom/android/supl/SUPLManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/supl/SUPLManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/supl/SUPLManager;->startCommnMgrs(Ljava/lang/String;)V

    return-void
.end method

.method private static delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .locals 6
    .param p0, "delimitedString"    # Ljava/lang/String;
    .param p1, "delimiter"    # C
    .param p2, "item"    # Ljava/lang/String;

    .line 207
    invoke-static {p0}, Lcom/android/supl/SUPLManager;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-static {p2}, Lcom/android/supl/SUPLManager;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 210
    :cond_0
    const/4 v0, -0x1

    .line 211
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 212
    .local v2, "length":I
    :goto_0
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    move v0, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 213
    if-lez v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, p1, :cond_1

    .line 214
    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    .line 217
    .local v3, "expectedDelimiterPos":I
    const/4 v4, 0x1

    if-ne v3, v2, :cond_2

    .line 219
    return v4

    .line 221
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_3

    .line 222
    return v4

    .line 224
    .end local v3    # "expectedDelimiterPos":I
    :cond_3
    goto :goto_0

    .line 225
    :cond_4
    return v1

    .line 208
    .end local v0    # "pos":I
    .end local v2    # "length":I
    :cond_5
    :goto_1
    return v1
.end method

.method private deregisterSettingObserver()V
    .locals 2

    .line 164
    iget-boolean v0, p0, Lcom/android/supl/SUPLManager;->isGpsEnableReceReg:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/supl/SUPLManager;->mSettings:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/supl/SUPLManager;->settingsObserver:Lcom/android/supl/SUPLManager$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/SUPLManager;->isGpsEnableReceReg:Z

    .line 168
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/supl/SUPLManager;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    const-class v0, Lcom/android/supl/SUPLManager;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-object v1, Lcom/android/supl/SUPLManager;->suplManager:Lcom/android/supl/SUPLManager;

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Lcom/android/supl/SUPLManager;

    invoke-direct {v1}, Lcom/android/supl/SUPLManager;-><init>()V

    sput-object v1, Lcom/android/supl/SUPLManager;->suplManager:Lcom/android/supl/SUPLManager;

    .line 95
    sget-object v1, Lcom/android/supl/SUPLManager;->suplManager:Lcom/android/supl/SUPLManager;

    iput-object p0, v1, Lcom/android/supl/SUPLManager;->mContext:Landroid/content/Context;

    .line 96
    sget-object v1, Lcom/android/supl/SUPLManager;->suplManager:Lcom/android/supl/SUPLManager;

    invoke-direct {v1}, Lcom/android/supl/SUPLManager;->init()V

    .line 98
    :cond_0
    sget-object v1, Lcom/android/supl/SUPLManager;->suplManager:Lcom/android/supl/SUPLManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 92
    .end local p0    # "mContext":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private init()V
    .locals 3

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/supl/SUPLManager;->m_Handler:Landroid/os/Handler;

    .line 102
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    .line 103
    .local v0, "configManager":Lcom/android/supl/config/ConfigManager;
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->getSUPLVersion()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 104
    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    .line 105
    invoke-direct {p0}, Lcom/android/supl/SUPLManager;->registerSettingObserver()V

    .line 107
    :cond_0
    return-void
.end method

.method private static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 200
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 201
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "provider"    # Ljava/lang/String;

    .line 195
    const-string v0, "location_providers_allowed"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "allowedProviders":Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-static {v0, v1, p2}, Lcom/android/supl/SUPLManager;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private notifytoALLGpsDisableChanges()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/supl/GpsOnOffListener;

    .line 132
    .local v1, "gpsOnOffListener":Lcom/android/supl/GpsOnOffListener;
    if-eqz v1, :cond_0

    .line 133
    invoke-interface {v1}, Lcom/android/supl/GpsOnOffListener;->onGPSLocationProviderDisabled()V

    .line 135
    .end local v1    # "gpsOnOffListener":Lcom/android/supl/GpsOnOffListener;
    :cond_0
    goto :goto_0

    .line 137
    :cond_1
    return-void
.end method

.method private notifytoALLGpsEnableChanges()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/supl/GpsOnOffListener;

    .line 123
    .local v1, "gpsOnOffListener":Lcom/android/supl/GpsOnOffListener;
    if-eqz v1, :cond_0

    .line 124
    invoke-interface {v1}, Lcom/android/supl/GpsOnOffListener;->onGPSLocationProviderEnabled()V

    .line 126
    .end local v1    # "gpsOnOffListener":Lcom/android/supl/GpsOnOffListener;
    :cond_0
    goto :goto_0

    .line 128
    :cond_1
    return-void
.end method

.method private registerSettingObserver()V
    .locals 7

    .line 140
    iget-boolean v0, p0, Lcom/android/supl/SUPLManager;->isGpsEnableReceReg:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/supl/SUPLManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 143
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "(name=?)"

    const-string v1, "location_providers_allowed"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 147
    .local v1, "settingsCursor":Landroid/database/Cursor;
    new-instance v2, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/supl/SUPLManager;->m_Handler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-direct {v2, v1, v3, v5, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/supl/SUPLManager;->mSettings:Landroid/content/ContentQueryMap;

    .line 148
    new-instance v2, Lcom/android/supl/SUPLManager$SettingsObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/supl/SUPLManager$SettingsObserver;-><init>(Lcom/android/supl/SUPLManager;Lcom/android/supl/SUPLManager$1;)V

    iput-object v2, p0, Lcom/android/supl/SUPLManager;->settingsObserver:Lcom/android/supl/SUPLManager$SettingsObserver;

    .line 149
    iget-object v2, p0, Lcom/android/supl/SUPLManager;->mSettings:Landroid/content/ContentQueryMap;

    iget-object v3, p0, Lcom/android/supl/SUPLManager;->settingsObserver:Lcom/android/supl/SUPLManager$SettingsObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 150
    iput-boolean v5, p0, Lcom/android/supl/SUPLManager;->isGpsEnableReceReg:Z

    .line 152
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "settingsCursor":Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method private startCommnMgrs(Ljava/lang/String;)V
    .locals 3
    .param p1, "stProvider"    # Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/android/supl/SUPLManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 180
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, v0, p1}, Lcom/android/supl/SUPLManager;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const-string v1, "SUPL20_SUPLManager"

    const-string v2, "Send GPS enable info"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/android/supl/SUPLManager;->notifytoALLGpsEnableChanges()V

    goto :goto_0

    .line 184
    :cond_0
    const-string v1, "SUPL20_SUPLManager"

    const-string v2, "Send GPS disable info"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0}, Lcom/android/supl/SUPLManager;->notifytoALLGpsDisableChanges()V

    .line 187
    :goto_0
    return-void
.end method


# virtual methods
.method public addGpsListener(Lcom/android/supl/GpsOnOffListener;)Z
    .locals 2
    .param p1, "gpsOnOffListener"    # Lcom/android/supl/GpsOnOffListener;

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "isAdded":Z
    iget-object v1, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/android/supl/SUPLManager;->registerSettingObserver()V

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 117
    :cond_1
    return v0
.end method

.method public removeGpsListener(Lcom/android/supl/GpsOnOffListener;)Z
    .locals 2
    .param p1, "gpsOnOffListener"    # Lcom/android/supl/GpsOnOffListener;

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "isRemoved":Z
    iget-object v1, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/android/supl/SUPLManager;->deregisterSettingObserver()V

    .line 161
    :cond_0
    return v0
.end method

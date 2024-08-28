.class public Lcom/android/supl/SuplApplication;
.super Landroid/app/Application;
.source "SuplApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SUPL20_Main"

.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 12
    sget-object v0, Lcom/android/supl/SuplApplication;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 65
    sget-object v0, Lcom/android/supl/SuplApplication;->context:Landroid/content/Context;

    return-object v0
.end method

.method private startSuplServices()V
    .locals 3

    .line 26
    const-string v0, "ro.connectivity.chiptype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "chipType":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    const-string v1, "ro.boot.odm.conn.chiptype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_0
    const-string v1, "hisi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 34
    const-string v1, "SUPL20_Main"

    const-string v2, "Is not hisi chip, quit now!"

    invoke-static {v1, v2}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void

    .line 38
    :cond_1
    const-string v1, "ro.connectivity.sub_chiptype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    const-string v1, "ro.boot.odm.conn.schiptype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_2
    const-string v1, "hi1102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 44
    const-string v1, "SUPL20_Main"

    const-string v2, "It\'s not hi1102 chip, supl application quit now"

    invoke-static {v1, v2}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void

    .line 48
    :cond_3
    new-instance v1, Lcom/android/supl/SuplApplication$1;

    invoke-direct {v1, p0}, Lcom/android/supl/SuplApplication$1;-><init>(Lcom/android/supl/SuplApplication;)V

    .line 61
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 62
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 19
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 20
    const-string v0, "SUPL20_Main"

    const-string v1, "Starting supl application"

    invoke-static {v0, v1}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0}, Lcom/android/supl/SuplApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/supl/SuplApplication;->context:Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Lcom/android/supl/SuplApplication;->startSuplServices()V

    .line 23
    return-void
.end method

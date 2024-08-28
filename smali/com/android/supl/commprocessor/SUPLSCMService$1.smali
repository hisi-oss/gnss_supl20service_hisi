.class Lcom/android/supl/commprocessor/SUPLSCMService$1;
.super Ljava/lang/Thread;
.source "SUPLSCMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/supl/commprocessor/SUPLSCMService;->checkSupportMultiBearer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/commprocessor/SUPLSCMService;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/supl/commprocessor/SUPLSCMService;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/commprocessor/SUPLSCMService;

    .line 206
    iput-object p1, p0, Lcom/android/supl/commprocessor/SUPLSCMService$1;->this$0:Lcom/android/supl/commprocessor/SUPLSCMService;

    iput-object p2, p0, Lcom/android/supl/commprocessor/SUPLSCMService$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 210
    const-string v0, "SUPL20_SCMService"

    const-string v1, "Support for MultiBearer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService$1;->this$0:Lcom/android/supl/commprocessor/SUPLSCMService;

    iget-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/supl/commprocessor/SUPLSCMService;->access$100(Lcom/android/supl/commprocessor/SUPLSCMService;Landroid/content/Context;)V

    .line 213
    return-void
.end method

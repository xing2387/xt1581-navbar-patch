.class Lcom/android/server/MasterClearReceiver$1;
.super Ljava/lang/Thread;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MasterClearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$shutdown:Z

.field final synthetic val$wipeBp:Z

.field final synthetic val$wipeDataCacheOnly:Z


# direct methods
.method constructor <init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;ZZLandroid/content/Context;ZLjava/lang/String;)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/server/MasterClearReceiver;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$wipeDataCacheOnly"    # Z
    .param p4, "val$wipeBp"    # Z
    .param p5, "val$context"    # Landroid/content/Context;
    .param p6, "val$shutdown"    # Z
    .param p7, "val$reason"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iput-boolean p3, p0, Lcom/android/server/MasterClearReceiver$1;->val$wipeDataCacheOnly:Z

    iput-boolean p4, p0, Lcom/android/server/MasterClearReceiver$1;->val$wipeBp:Z

    iput-object p5, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iput-boolean p6, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iput-object p7, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 71
    :try_start_0
    sget v2, Landroid/os/RecoverySystem;->WIPE_FLAG_NONE:I

    .line 72
    .local v2, "flag":I
    iget-boolean v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$wipeDataCacheOnly:Z

    if-eqz v3, :cond_9

    .line 73
    sget v3, Landroid/os/RecoverySystem;->WIPE_FLAG_DATA_CACHE_ONLY:I

    or-int/2addr v2, v3

    .line 76
    :cond_9
    iget-boolean v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$wipeBp:Z

    if-eqz v3, :cond_10

    .line 77
    sget v3, Landroid/os/RecoverySystem;->WIPE_FLAG_BP:I

    or-int/2addr v2, v3

    .line 80
    :cond_10
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iget-object v5, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-static {v3, v2, v4, v5}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;IZLjava/lang/String;)V

    .line 82
    const-string/jumbo v3, "MasterClear"

    const-string/jumbo v4, "Still running after master clear?!"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_22} :catch_2e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_22} :catch_23

    .line 68
    .end local v2    # "flag":I
    :goto_22
    return-void

    .line 85
    :catch_23
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "MasterClear"

    const-string/jumbo v4, "Can\'t perform master clear/factory reset"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 83
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_2e
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "MasterClear"

    const-string/jumbo v4, "Can\'t perform master clear/factory reset"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

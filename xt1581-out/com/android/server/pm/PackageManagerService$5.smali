.class Lcom/android/server/pm/PackageManagerService$5;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$freeStorageSize:J

.field final synthetic val$pi:Landroid/content/IntentSender;

.field final synthetic val$volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;JLandroid/content/IntentSender;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$volumeUuid"    # Ljava/lang/String;
    .param p3, "val$freeStorageSize"    # J
    .param p5, "val$pi"    # Landroid/content/IntentSender;

    .prologue
    .line 3629
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$5;->val$volumeUuid:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/pm/PackageManagerService$5;->val$freeStorageSize:J

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$5;->val$pi:Landroid/content/IntentSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 3631
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3632
    const/4 v8, 0x1

    .line 3633
    .local v8, "success":Z
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3635
    :try_start_d
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$5;->val$volumeUuid:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/server/pm/PackageManagerService$5;->val$freeStorageSize:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)V
    :try_end_18
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_d .. :try_end_18} :catch_2a
    .catchall {:try_start_d .. :try_end_18} :catchall_47

    :goto_18
    monitor-exit v1

    .line 3641
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->val$pi:Landroid/content/IntentSender;

    if-eqz v0, :cond_29

    .line 3644
    if-eqz v8, :cond_4a

    const/4 v2, 0x1

    .line 3645
    .local v2, "code":I
    :goto_20
    :try_start_20
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->val$pi:Landroid/content/IntentSender;

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3646
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3645
    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_29
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_20 .. :try_end_29} :catch_4c

    .line 3630
    .end local v2    # "code":I
    :cond_29
    :goto_29
    return-void

    .line 3636
    :catch_2a
    move-exception v6

    .line 3637
    .local v6, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    :try_start_2b
    const-string/jumbo v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t clear application caches: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_47

    .line 3638
    const/4 v8, 0x0

    goto :goto_18

    .line 3633
    .end local v6    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    :catchall_47
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3644
    :cond_4a
    const/4 v2, 0x0

    .restart local v2    # "code":I
    goto :goto_20

    .line 3647
    :catch_4c
    move-exception v7

    .line 3648
    .local v7, "e1":Landroid/content/IntentSender$SendIntentException;
    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v1, "Failed to send pending intent"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.class Lcom/android/server/job/JobSchedulerService$1;
.super Landroid/content/BroadcastReceiver;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 402
    const-string/jumbo v10, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_86

    .line 405
    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v10, p2}, Lcom/android/server/job/JobSchedulerService;->-wrap2(Lcom/android/server/job/JobSchedulerService;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, "pkgName":Ljava/lang/String;
    const-string/jumbo v10, "android.intent.extra.UID"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 407
    .local v5, "pkgUid":I
    if-eqz v4, :cond_60

    const/4 v10, -0x1

    if-eq v5, v10, :cond_60

    .line 409
    const-string/jumbo v10, "android.intent.extra.changed_component_name_list"

    .line 408
    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "changedComponents":[Ljava/lang/String;
    if-eqz v0, :cond_53

    .line 411
    const/4 v10, 0x0

    array-length v11, v0

    :goto_2b
    if-ge v10, v11, :cond_53

    aget-object v1, v0, v10

    .line 412
    .local v1, "component":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5d

    .line 417
    :try_start_35
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 418
    .local v9, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 420
    .local v6, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v6, v4, v9}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v3

    .line 421
    .local v3, "isAvailable":Z
    if-eqz v3, :cond_54

    .line 422
    invoke-interface {v6, v4, v9}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v7

    .line 423
    .local v7, "state":I
    const/4 v10, 0x2

    if-eq v7, v10, :cond_4d

    .line 424
    const/4 v10, 0x3

    if-ne v7, v10, :cond_53

    .line 429
    :cond_4d
    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v11, 0x1

    invoke-virtual {v10, v5, v11}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZ)V

    .line 398
    .end local v0    # "changedComponents":[Ljava/lang/String;
    .end local v1    # "component":Ljava/lang/String;
    .end local v3    # "isAvailable":Z
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgUid":I
    .end local v6    # "pm":Landroid/content/pm/IPackageManager;
    .end local v7    # "state":I
    .end local v9    # "userId":I
    :cond_53
    :goto_53
    return-void

    .line 432
    .restart local v0    # "changedComponents":[Ljava/lang/String;
    .restart local v1    # "component":Ljava/lang/String;
    .restart local v3    # "isAvailable":Z
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v5    # "pkgUid":I
    .restart local v6    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v9    # "userId":I
    :cond_54
    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v11, 0x1

    invoke-virtual {v10, v5, v11}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZ)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_5a} :catch_5b

    goto :goto_53

    .line 435
    .end local v3    # "isAvailable":Z
    .end local v6    # "pm":Landroid/content/pm/IPackageManager;
    .end local v9    # "userId":I
    :catch_5b
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_53

    .line 411
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_5d
    add-int/lit8 v10, v10, 0x1

    goto :goto_2b

    .line 441
    .end local v0    # "changedComponents":[Ljava/lang/String;
    .end local v1    # "component":Ljava/lang/String;
    :cond_60
    const-string/jumbo v10, "JobSchedulerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "PACKAGE_CHANGED for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " / uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 443
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgUid":I
    :cond_86
    const-string/jumbo v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ac

    .line 446
    const-string/jumbo v10, "android.intent.extra.REPLACING"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_53

    .line 447
    const-string/jumbo v10, "android.intent.extra.UID"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 451
    .local v8, "uidRemoved":I
    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v11, 0x1

    invoke-virtual {v10, v8, v11}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZ)V

    goto :goto_53

    .line 453
    .end local v8    # "uidRemoved":I
    :cond_ac
    const-string/jumbo v10, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_53

    .line 454
    const-string/jumbo v10, "android.intent.extra.user_handle"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 458
    .restart local v9    # "userId":I
    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v10, v9}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUser(I)V

    goto :goto_53
.end method

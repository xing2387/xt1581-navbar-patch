.class Lcom/android/server/pm/UserManagerService$4;
.super Ljava/lang/Object;
.source "UserManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 1408
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1414
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getRunningUserIds()[I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_1d

    move-result-object v2

    .line 1423
    .local v2, "runningUsers":[I
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->-get6(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1424
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    :try_start_10
    array-length v3, v2

    if-ge v1, v3, :cond_28

    .line 1425
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    aget v5, v2, v1

    invoke-virtual {v3, v5}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_2a

    .line 1424
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1415
    .end local v1    # "i":I
    .end local v2    # "runningUsers":[I
    :catch_1d
    move-exception v0

    .line 1416
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "UserManagerService"

    const-string/jumbo v4, "Unable to access ActivityManagerNative"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    return-void

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "i":I
    .restart local v2    # "runningUsers":[I
    :cond_28
    monitor-exit v4

    .line 1410
    return-void

    .line 1423
    :catchall_2a
    move-exception v3

    monitor-exit v4

    throw v3
.end method

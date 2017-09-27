.class Lcom/android/server/MountService$UnmountObbAction;
.super Lcom/android/server/MountService$ObbAction;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmountObbAction"
.end annotation


# instance fields
.field private final mForceUnmount:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/MountService;
    .param p2, "obbState"    # Lcom/android/server/MountService$ObbState;
    .param p3, "force"    # Z

    .prologue
    .line 3569
    iput-object p1, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    .line 3570
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService$ObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 3571
    iput-boolean p3, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    .line 3569
    return-void
.end method


# virtual methods
.method public handleError()V
    .registers 2

    .prologue
    .line 3629
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3628
    return-void
.end method

.method public handleExecute()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    .line 3576
    iget-object v5, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v5}, Lcom/android/server/MountService;->-wrap16(Lcom/android/server/MountService;)V

    .line 3577
    iget-object v5, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v5}, Lcom/android/server/MountService;->-wrap17(Lcom/android/server/MountService;)V

    .line 3580
    iget-object v5, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v5}, Lcom/android/server/MountService;->-get9(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v6

    monitor-enter v6

    .line 3581
    :try_start_12
    iget-object v5, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v5}, Lcom/android/server/MountService;->-get10(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v7, v7, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_2b

    .local v3, "existingState":Lcom/android/server/MountService$ObbState;
    monitor-exit v6

    .line 3584
    if-nez v3, :cond_2e

    .line 3585
    const/16 v5, 0x17

    invoke-virtual {p0, v5}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3586
    return-void

    .line 3580
    .end local v3    # "existingState":Lcom/android/server/MountService$ObbState;
    :catchall_2b
    move-exception v5

    monitor-exit v6

    throw v5

    .line 3589
    .restart local v3    # "existingState":Lcom/android/server/MountService$ObbState;
    :cond_2e
    iget v5, v3, Lcom/android/server/MountService$ObbState;->ownerGid:I

    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget v6, v6, Lcom/android/server/MountService$ObbState;->ownerGid:I

    if-eq v5, v6, :cond_6c

    .line 3590
    const-string/jumbo v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Permission denied attempting to unmount OBB "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3591
    const-string/jumbo v7, " (owned by GID "

    .line 3590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3591
    iget v7, v3, Lcom/android/server/MountService$ObbState;->ownerGid:I

    .line 3590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3591
    const-string/jumbo v7, ")"

    .line 3590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    const/16 v5, 0x19

    invoke-virtual {p0, v5}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3593
    return-void

    .line 3596
    :cond_6c
    const/4 v4, 0x0

    .line 3598
    .local v4, "rc":I
    :try_start_6d
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v5, "obb"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "unmount"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v7, v7, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3599
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    iget-boolean v5, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    if-eqz v5, :cond_8f

    .line 3600
    const-string/jumbo v5, "force"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3602
    :cond_8f
    iget-object v5, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v5}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_98
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6d .. :try_end_98} :catch_ab

    .line 3615
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_98
    if-nez v4, :cond_c1

    .line 3616
    iget-object v5, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v5}, Lcom/android/server/MountService;->-get9(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v6

    monitor-enter v6

    .line 3617
    :try_start_a1
    iget-object v5, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v5, v3}, Lcom/android/server/MountService;->-wrap12(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    :try_end_a6
    .catchall {:try_start_a1 .. :try_end_a6} :catchall_be

    monitor-exit v6

    .line 3620
    invoke-virtual {p0, v9}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3575
    :goto_aa
    return-void

    .line 3603
    :catch_ab
    move-exception v2

    .line 3604
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 3605
    .local v1, "code":I
    const/16 v5, 0x195

    if-ne v1, v5, :cond_b6

    .line 3606
    const/4 v4, -0x7

    goto :goto_98

    .line 3607
    :cond_b6
    const/16 v5, 0x196

    if-ne v1, v5, :cond_bc

    .line 3609
    const/4 v4, 0x0

    goto :goto_98

    .line 3611
    :cond_bc
    const/4 v4, -0x1

    goto :goto_98

    .line 3616
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_be
    move-exception v5

    monitor-exit v6

    throw v5

    .line 3622
    :cond_c1
    const-string/jumbo v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not unmount OBB: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3623
    const/16 v5, 0x16

    invoke-virtual {p0, v5}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    goto :goto_aa
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3635
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "UnmountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3636
    iget-object v1, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3637
    const-string/jumbo v1, ",force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3638
    iget-boolean v1, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3639
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3640
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
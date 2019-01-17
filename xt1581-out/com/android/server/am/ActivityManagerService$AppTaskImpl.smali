.class Lcom/android/server/am/ActivityManagerService$AppTaskImpl;
.super Landroid/app/IAppTask$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppTaskImpl"
.end annotation


# instance fields
.field private mCallingUid:I

.field private mTaskId:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;II)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "taskId"    # I
    .param p3, "callingUid"    # I

    .prologue
    .line 22474
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/app/IAppTask$Stub;-><init>()V

    .line 22475
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    .line 22476
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mCallingUid:I

    .line 22474
    return-void
.end method

.method private checkCaller()V
    .registers 4

    .prologue
    .line 22480
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mCallingUid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq v0, v1, :cond_33

    .line 22481
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mCallingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 22482
    const-string/jumbo v2, " does not match caller of getAppTasks(): "

    .line 22481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 22482
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 22481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22479
    :cond_33
    return-void
.end method


# virtual methods
.method public finishAndRemoveTask()V
    .registers 8

    .prologue
    .line 22488
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->checkCaller()V

    .line 22490
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 22491
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_3a

    move-result-wide v0

    .line 22494
    .local v0, "origId":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v4, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v2, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->-wrap1(Lcom/android/server/am/ActivityManagerService;IZZ)Z

    move-result v2

    if-nez v2, :cond_40

    .line 22495
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to find task ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_35

    .line 22497
    :catchall_35
    move-exception v2

    .line 22498
    :try_start_36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22497
    throw v2
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3a

    .line 22490
    .end local v0    # "origId":J
    :catchall_3a
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 22498
    .restart local v0    # "origId":J
    :cond_40
    :try_start_40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_3a

    monitor-exit v3

    .line 22490
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 22487
    return-void
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 8

    .prologue
    .line 22505
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->checkCaller()V

    .line 22507
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 22508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_3a

    move-result-wide v0

    .line 22510
    .local v0, "origId":J
    :try_start_d
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 22511
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v2, :cond_40

    .line 22512
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to find task ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_35

    .line 22515
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_35
    move-exception v3

    .line 22516
    :try_start_36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22515
    throw v3
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3a

    .line 22507
    .end local v0    # "origId":J
    :catchall_3a
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 22514
    .restart local v0    # "origId":J
    .restart local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_40
    :try_start_40
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3, v2}, Lcom/android/server/am/ActivityManagerService;->-wrap0(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_35

    move-result-object v3

    .line 22516
    :try_start_46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_3a

    monitor-exit v4

    .line 22507
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 22514
    return-object v3
.end method

.method public moveToFront()V
    .registers 6

    .prologue
    .line 22523
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->checkCaller()V

    .line 22525
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 22527
    .local v0, "origId":J
    :try_start_7
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_1a

    .line 22528
    :try_start_8
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityFromRecentsInner(ILandroid/os/Bundle;)I
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_17

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_1a

    .line 22531
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22522
    return-void

    .line 22527
    :catchall_17
    move-exception v2

    :try_start_18
    monitor-exit p0

    throw v2
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_1a

    .line 22530
    :catchall_1a
    move-exception v2

    .line 22531
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22530
    throw v2
.end method

.method public setExcludeFromRecents(Z)V
    .registers 10
    .param p1, "exclude"    # Z

    .prologue
    .line 22560
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->checkCaller()V

    .line 22562
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 22563
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_3a

    move-result-wide v2

    .line 22565
    .local v2, "origId":J
    :try_start_d
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 22566
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v1, :cond_40

    .line 22567
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to find task ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_35

    .line 22576
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_35
    move-exception v4

    .line 22577
    :try_start_36
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22576
    throw v4
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3a

    .line 22562
    .end local v2    # "origId":J
    :catchall_3a
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 22569
    .restart local v1    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "origId":J
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 22570
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_53

    .line 22571
    const/high16 v4, 0x800000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_35

    .line 22577
    :goto_4b
    :try_start_4b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_3a

    monitor-exit v5

    .line 22562
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 22559
    return-void

    .line 22573
    :cond_53
    :try_start_53
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v4

    .line 22574
    const v6, -0x800001

    .line 22573
    and-int/2addr v4, v6

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_5e
    .catchall {:try_start_53 .. :try_end_5e} :catchall_35

    goto :goto_4b
.end method

.method public startActivity(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 27
    .param p1, "whoThread"    # Landroid/os/IBinder;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "bOptions"    # Landroid/os/Bundle;

    .prologue
    .line 22538
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->checkCaller()V

    .line 22540
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v18

    .line 22543
    .local v18, "callingUser":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 22544
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v20

    .line 22545
    .local v20, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v20, :cond_43

    .line 22546
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to find task ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3d
    .catchall {:try_start_c .. :try_end_3d} :catchall_3d

    .line 22543
    .end local v20    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_3d
    move-exception v1

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 22548
    .restart local v20    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_43
    :try_start_43
    invoke-static/range {p1 .. p1}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 22549
    .local v2, "appThread":Landroid/app/IApplicationThread;
    if-nez v2, :cond_63

    .line 22550
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad app thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_63
    .catchall {:try_start_43 .. :try_end_63} :catchall_3d

    :cond_63
    monitor-exit v3

    .line 22543
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 22553
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    const/4 v3, -0x1

    .line 22554
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 22555
    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v16, p5

    .line 22553
    invoke-virtual/range {v1 .. v20}, Lcom/android/server/am/ActivityStarter;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ZILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v1

    return v1
.end method

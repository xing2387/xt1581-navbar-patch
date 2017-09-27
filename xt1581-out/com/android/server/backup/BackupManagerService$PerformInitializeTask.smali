.class Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformInitializeTask"
.end annotation


# instance fields
.field mQueue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/util/HashSet;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9035
    .local p2, "transportNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9036
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->mQueue:Ljava/util/HashSet;

    .line 9035
    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 9041
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->mQueue:Ljava/util/HashSet;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "transportName$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_168

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 9042
    .local v11, "transportName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v13, v11}, Lcom/android/server/backup/BackupManagerService;->-wrap9(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v10

    .line 9043
    .local v10, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v10, :cond_4b

    .line 9044
    const-string/jumbo v13, "BackupManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Requested init for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " but not found"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3f} :catch_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_d4
    .catchall {:try_start_0 .. :try_end_3f} :catchall_ec

    goto :goto_8

    .line 9082
    .end local v10    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v11    # "transportName":Ljava/lang/String;
    .end local v12    # "transportName$iterator":Ljava/util/Iterator;
    :catch_40
    move-exception v4

    .line 9088
    .local v4, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v13, v13, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 9039
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_4a
    return-void

    .line 9048
    .restart local v10    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v11    # "transportName":Ljava/lang/String;
    .restart local v12    # "transportName$iterator":Ljava/util/Iterator;
    :cond_4b
    :try_start_4b
    const-string/jumbo v13, "BackupManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Initializing (wiping) backup transport storage: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9049
    invoke-interface {v10}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xb05

    invoke-static {v14, v13}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 9050
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 9051
    .local v8, "startRealtime":J
    invoke-interface {v10}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v7

    .line 9053
    .local v7, "status":I
    if-nez v7, :cond_7c

    .line 9054
    invoke-interface {v10}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v7

    .line 9058
    :cond_7c
    if-nez v7, :cond_f7

    .line 9059
    const-string/jumbo v13, "BackupManagerService"

    const-string/jumbo v14, "Device init successful"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9060
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v14, v8

    long-to-int v6, v14

    .line 9061
    .local v6, "millis":I
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    const/16 v14, 0xb0b

    invoke-static {v14, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 9062
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v15, v15, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-interface {v10}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 9063
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const/16 v14, 0xb09

    invoke-static {v14, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 9064
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v14, v13, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_c9} :catch_40
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_c9} :catch_d4
    .catchall {:try_start_4b .. :try_end_c9} :catchall_ec

    .line 9065
    :try_start_c9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v11}, Lcom/android/server/backup/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V
    :try_end_d1
    .catchall {:try_start_c9 .. :try_end_d1} :catchall_e9

    :try_start_d1
    monitor-exit v14
    :try_end_d2
    .catch Landroid/os/RemoteException; {:try_start_d1 .. :try_end_d2} :catch_40
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d2} :catch_d4
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_ec

    goto/16 :goto_8

    .line 9084
    .end local v6    # "millis":I
    .end local v7    # "status":I
    .end local v8    # "startRealtime":J
    .end local v10    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v11    # "transportName":Ljava/lang/String;
    .end local v12    # "transportName$iterator":Ljava/util/Iterator;
    :catch_d4
    move-exception v5

    .line 9085
    .local v5, "e":Ljava/lang/Exception;
    :try_start_d5
    const-string/jumbo v13, "BackupManagerService"

    const-string/jumbo v14, "Unexpected error performing init"

    invoke-static {v13, v14, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_de
    .catchall {:try_start_d5 .. :try_end_de} :catchall_ec

    .line 9088
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v13, v13, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_4a

    .line 9064
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "millis":I
    .restart local v7    # "status":I
    .restart local v8    # "startRealtime":J
    .restart local v10    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v11    # "transportName":Ljava/lang/String;
    .restart local v12    # "transportName$iterator":Ljava/util/Iterator;
    :catchall_e9
    move-exception v13

    :try_start_ea
    monitor-exit v14

    throw v13
    :try_end_ec
    .catch Landroid/os/RemoteException; {:try_start_ea .. :try_end_ec} :catch_40
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ec} :catch_d4
    .catchall {:try_start_ea .. :try_end_ec} :catchall_ec

    .line 9086
    .end local v6    # "millis":I
    .end local v7    # "status":I
    .end local v8    # "startRealtime":J
    .end local v10    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v11    # "transportName":Ljava/lang/String;
    .end local v12    # "transportName$iterator":Ljava/util/Iterator;
    :catchall_ec
    move-exception v13

    .line 9088
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v14, v14, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 9086
    throw v13

    .line 9070
    .restart local v7    # "status":I
    .restart local v8    # "startRealtime":J
    .restart local v10    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v11    # "transportName":Ljava/lang/String;
    .restart local v12    # "transportName$iterator":Ljava/util/Iterator;
    :cond_f7
    :try_start_f7
    const-string/jumbo v13, "BackupManagerService"

    const-string/jumbo v14, "Transport error in initializeDevice()"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9071
    const-string/jumbo v13, "(initialize)"

    const/16 v14, 0xb06

    invoke-static {v14, v13}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 9072
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v14, v13, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_10f
    .catch Landroid/os/RemoteException; {:try_start_f7 .. :try_end_10f} :catch_40
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_10f} :catch_d4
    .catchall {:try_start_f7 .. :try_end_10f} :catchall_ec

    .line 9073
    :try_start_10f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v15, 0x1

    invoke-virtual {v13, v15, v11}, Lcom/android/server/backup/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V
    :try_end_117
    .catchall {:try_start_10f .. :try_end_117} :catchall_165

    :try_start_117
    monitor-exit v14

    .line 9076
    invoke-interface {v10}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v2

    .line 9077
    .local v2, "delay":J
    const-string/jumbo v13, "BackupManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Init failed on "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " resched in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9078
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v13}, Lcom/android/server/backup/BackupManagerService;->-get1(Lcom/android/server/backup/BackupManagerService;)Landroid/app/AlarmManager;

    move-result-object v13

    .line 9079
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    add-long/2addr v14, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    .line 9078
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v14, v15, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_8

    .line 9072
    .end local v2    # "delay":J
    :catchall_165
    move-exception v13

    monitor-exit v14

    throw v13
    :try_end_168
    .catch Landroid/os/RemoteException; {:try_start_117 .. :try_end_168} :catch_40
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_168} :catch_d4
    .catchall {:try_start_117 .. :try_end_168} :catchall_ec

    .line 9088
    .end local v7    # "status":I
    .end local v8    # "startRealtime":J
    .end local v10    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v11    # "transportName":Ljava/lang/String;
    :cond_168
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v13, v13, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_4a
.end method

.class Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
.super Lcom/android/server/backup/BackupManagerService$FullBackupTask;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformFullTransportBackupTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;,
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PFTBT"


# instance fields
.field mBackupObserver:Landroid/app/backup/IBackupObserver;

.field mJob:Lcom/android/server/backup/FullBackupJob;

.field mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mLatch:Ljava/util/concurrent/CountDownLatch;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUpdateSchedule:Z

.field mUserInitiated:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Z)V
    .registers 18
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p3, "whichPackages"    # [Ljava/lang/String;
    .param p4, "updateSchedule"    # Z
    .param p5, "runningJob"    # Lcom/android/server/backup/FullBackupJob;
    .param p6, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p7, "backupObserver"    # Landroid/app/backup/IBackupObserver;
    .param p8, "userInitiated"    # Z

    .prologue
    .line 4367
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 4371
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$FullBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 4372
    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 4373
    iput-object p6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 4374
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4375
    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 4376
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 4377
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 4378
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUserInitiated:Z

    .line 4380
    const/4 v4, 0x0

    array-length v5, p3

    :goto_25
    if-ge v4, v5, :cond_8c

    aget-object v3, p3, v4

    .line 4382
    .local v3, "pkg":Ljava/lang/String;
    :try_start_29
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 4383
    const/16 v7, 0x40

    .line 4382
    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 4384
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-nez v6, :cond_45

    .line 4392
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 4393
    const/16 v7, -0x7d1

    .line 4392
    invoke-static {v6, v3, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 4380
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 4395
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_45
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-nez v6, :cond_76

    .line 4402
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 4403
    const/16 v7, -0x7d1

    .line 4402
    invoke-static {v6, v3, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    :try_end_52
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_52} :catch_53

    goto :goto_42

    .line 4417
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_53
    move-exception v1

    .line 4418
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Requested package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not found; ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 4405
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_76
    :try_start_76
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->-wrap2(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_86

    .line 4412
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 4413
    const/16 v7, -0x7d1

    .line 4412
    invoke-static {v6, v3, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_42

    .line 4416
    :cond_86
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_76 .. :try_end_8b} :catch_53

    goto :goto_42

    .line 4370
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_8c
    return-void
.end method


# virtual methods
.method cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V
    .registers 8
    .param p1, "pipes"    # [Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4687
    if-eqz p1, :cond_1b

    .line 4688
    aget-object v2, p1, v3

    if-eqz v2, :cond_10

    .line 4689
    aget-object v1, p1, v3

    .line 4690
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v3

    .line 4692
    :try_start_d
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_1c

    .line 4697
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_10
    :goto_10
    aget-object v2, p1, v5

    if-eqz v2, :cond_1b

    .line 4698
    aget-object v1, p1, v5

    .line 4699
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v5

    .line 4701
    :try_start_18
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_27

    .line 4686
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1b
    :goto_1b
    return-void

    .line 4693
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_1c
    move-exception v0

    .line 4694
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "PFTBT"

    const-string/jumbo v3, "Unable to close pipe!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 4702
    .end local v0    # "e":Ljava/io/IOException;
    :catch_27
    move-exception v0

    .line 4703
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "PFTBT"

    const-string/jumbo v3, "Unable to close pipe!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public run()V
    .registers 37

    .prologue
    .line 4430
    const/16 v16, 0x0

    .line 4433
    .local v16, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    const/16 v31, 0x0

    .line 4435
    .local v31, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    const-wide/16 v8, 0x0

    .line 4436
    .local v8, "backoff":J
    const/4 v10, 0x0

    .line 4439
    .local v10, "backupRunStatus":I
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    move/from16 v32, v0

    if-eqz v32, :cond_dd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    move/from16 v32, v0

    if-eqz v32, :cond_dd

    .line 4450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/android/server/backup/BackupManagerService;->-wrap9(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v30

    .line 4451
    .local v30, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v30, :cond_1c8

    .line 4452
    const-string/jumbo v32, "PFTBT"

    const-string/jumbo v33, "Transport not present; full data backup not performed"

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_44} :catch_402
    .catchall {:try_start_7 .. :try_end_44} :catchall_550

    .line 4453
    const/16 v10, -0x3e8

    .line 4659
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Full backup completed with status: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    .line 4663
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4664
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v32, v0

    if-eqz v32, :cond_8c

    .line 4667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4670
    :cond_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 4671
    :try_start_99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_a7
    .catchall {:try_start_99 .. :try_end_a7} :catchall_1c5

    monitor-exit v33

    .line 4674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4678
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v32, v0

    if-eqz v32, :cond_c4

    .line 4679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4681
    :cond_c4
    const-string/jumbo v32, "BackupManagerService"

    const-string/jumbo v33, "Full data backup pass finished."

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4454
    return-void

    .line 4442
    .end local v30    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_dd
    :try_start_dd
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "full backup requested but e="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 4443
    const-string/jumbo v34, " p="

    .line 4442
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 4443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    move/from16 v34, v0

    .line 4442
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 4443
    const-string/jumbo v34, "; ignoring"

    .line 4442
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4445
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_129} :catch_402
    .catchall {:try_start_dd .. :try_end_129} :catchall_550

    .line 4446
    const/16 v10, -0x7d1

    .line 4659
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Full backup completed with status: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    .line 4663
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4664
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v32, v0

    if-eqz v32, :cond_171

    .line 4667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4670
    :cond_171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 4671
    :try_start_17e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_18c
    .catchall {:try_start_17e .. :try_end_18c} :catchall_1c2

    monitor-exit v33

    .line 4674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4678
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1a9

    .line 4679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4681
    :cond_1a9
    const-string/jumbo v32, "BackupManagerService"

    const-string/jumbo v33, "Full data backup pass finished."

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4447
    return-void

    .line 4670
    :catchall_1c2
    move-exception v32

    monitor-exit v33

    throw v32

    .restart local v30    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_1c5
    move-exception v32

    monitor-exit v33

    throw v32

    .line 4458
    :cond_1c8
    :try_start_1c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4459
    .local v6, "N":I
    const/16 v32, 0x2000

    move/from16 v0, v32

    new-array v13, v0, [B

    .line 4460
    .local v13, "buffer":[B
    const/16 v19, 0x0

    .end local v16    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v31    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v19, "i":I
    :goto_1da
    move/from16 v0, v19

    if-ge v0, v6, :cond_73a

    .line 4461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageInfo;

    .line 4462
    .local v14, "currentPackage":Landroid/content/pm/PackageInfo;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 4464
    .local v23, "packageName":Ljava/lang/String;
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Initiating full-data transport backup of "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4466
    const/16 v32, 0xb18

    move/from16 v0, v32

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4468
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v31

    .line 4471
    .local v31, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUserInitiated:Z

    move/from16 v32, v0

    if-eqz v32, :cond_390

    const/16 v18, 0x1

    .line 4473
    .local v18, "flags":I
    :goto_227
    const/16 v32, 0x0

    aget-object v32, v31, v32

    .line 4472
    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move/from16 v2, v18

    invoke-interface {v0, v14, v1, v2}, Lcom/android/internal/backup/IBackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v7

    .line 4474
    .local v7, "backupPackageStatus":I
    if-nez v7, :cond_30b

    .line 4477
    const/16 v32, 0x0

    aget-object v32, v31, v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4478
    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-object v32, v31, v33

    .line 4481
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 4483
    .local v16, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    new-instance v11, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const/16 v32, 0x1

    aget-object v32, v16, v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v30

    invoke-direct {v11, v0, v1, v14, v2}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/IBackupTransport;)V

    .line 4486
    .local v11, "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    const/16 v32, 0x1

    aget-object v32, v16, v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4487
    const/16 v32, 0x0

    const/16 v33, 0x1

    aput-object v32, v16, v33

    .line 4491
    new-instance v32, Ljava/lang/Thread;

    const-string/jumbo v33, "package-backup-bridge"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v0, v11, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Thread;->start()V

    .line 4496
    new-instance v20, Ljava/io/FileInputStream;

    .line 4497
    const/16 v32, 0x0

    aget-object v32, v16, v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v32

    .line 4496
    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4498
    .local v20, "in":Ljava/io/FileInputStream;
    new-instance v22, Ljava/io/FileOutputStream;

    .line 4499
    const/16 v32, 0x1

    aget-object v32, v31, v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v32

    .line 4498
    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4500
    .local v22, "out":Ljava/io/FileOutputStream;
    const-wide/16 v28, 0x0

    .line 4501
    .local v28, "totalRead":J
    invoke-virtual {v11}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->getPreflightResultBlocking()J

    move-result-wide v24

    .line 4503
    .local v24, "preflightResult":J
    const-wide/16 v32, 0x0

    cmp-long v32, v24, v32

    if-gez v32, :cond_394

    .line 4509
    move-wide/from16 v0, v24

    long-to-int v7, v0

    .line 4547
    :cond_2a4
    :goto_2a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v32

    if-nez v32, :cond_4f9

    .line 4548
    const/16 v7, -0x3e8

    .line 4549
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V

    .line 4570
    :cond_2b5
    :goto_2b5
    if-nez v7, :cond_2be

    .line 4572
    invoke-virtual {v11}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->getBackupResultBlocking()I

    move-result v12

    .line 4573
    .local v12, "backupRunnerResult":I
    if-eqz v12, :cond_2be

    .line 4576
    move v7, v12

    .line 4589
    .end local v12    # "backupRunnerResult":I
    :cond_2be
    if-eqz v7, :cond_2eb

    .line 4590
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Error "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " backing up "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4596
    :cond_2eb
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/backup/IBackupTransport;->requestFullBackupTime()J

    move-result-wide v8

    .line 4598
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Transport suggested backoff="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4605
    .end local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v16    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v20    # "in":Ljava/io/FileInputStream;
    .end local v22    # "out":Ljava/io/FileOutputStream;
    .end local v24    # "preflightResult":J
    .end local v28    # "totalRead":J
    :cond_30b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v32, v0

    if-eqz v32, :cond_326

    .line 4606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 4609
    :cond_326
    const/16 v32, -0x3ea

    move/from16 v0, v32

    if-ne v7, v0, :cond_503

    .line 4610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    .line 4611
    const/16 v33, -0x3ea

    .line 4610
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 4613
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Transport rejected backup of "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 4614
    const-string/jumbo v34, ", skipping"

    .line 4613
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4616
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v23, v32, v33

    .line 4617
    const-string/jumbo v33, "transport rejected"

    const/16 v34, 0x1

    aput-object v33, v32, v34

    .line 4616
    const/16 v33, 0xb19

    move/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4651
    :goto_37e
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4652
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4460
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1da

    .line 4471
    .end local v7    # "backupPackageStatus":I
    .end local v18    # "flags":I
    :cond_390
    const/16 v18, 0x0

    .restart local v18    # "flags":I
    goto/16 :goto_227

    .line 4511
    .restart local v7    # "backupPackageStatus":I
    .restart local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .restart local v16    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "in":Ljava/io/FileInputStream;
    .restart local v22    # "out":Ljava/io/FileOutputStream;
    .restart local v24    # "preflightResult":J
    .restart local v28    # "totalRead":J
    :cond_394
    const/16 v21, 0x0

    .line 4513
    .local v21, "nRead":I
    :goto_396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v32

    if-nez v32, :cond_4a9

    .line 4515
    const-string/jumbo v32, "PFTBT"

    const-string/jumbo v33, "Full backup task told to stop"

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4536
    :cond_3ab
    const/16 v32, -0x3ed

    move/from16 v0, v32

    if-ne v7, v0, :cond_2a4

    .line 4537
    const/16 v32, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    move/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v26

    .line 4538
    .local v26, "quota":J
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Package hit quota limit in-flight "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 4539
    const-string/jumbo v34, ": "

    .line 4538
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 4539
    const-string/jumbo v34, " of "

    .line 4538
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4540
    move-wide/from16 v0, v28

    move-wide/from16 v2, v26

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->sendQuotaExceeded(JJ)V
    :try_end_400
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_400} :catch_402
    .catchall {:try_start_1c8 .. :try_end_400} :catchall_550

    goto/16 :goto_2a4

    .line 4654
    .end local v6    # "N":I
    .end local v7    # "backupPackageStatus":I
    .end local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v13    # "buffer":[B
    .end local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v16    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v18    # "flags":I
    .end local v19    # "i":I
    .end local v20    # "in":Ljava/io/FileInputStream;
    .end local v21    # "nRead":I
    .end local v22    # "out":Ljava/io/FileOutputStream;
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v24    # "preflightResult":J
    .end local v26    # "quota":J
    .end local v28    # "totalRead":J
    .end local v30    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v31    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catch_402
    move-exception v15

    .line 4655
    .local v15, "e":Ljava/lang/Exception;
    const/16 v10, -0x3e8

    .line 4656
    :try_start_405
    const-string/jumbo v32, "PFTBT"

    const-string/jumbo v33, "Exception trying full transport backup"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_412
    .catchall {:try_start_405 .. :try_end_412} :catchall_550

    .line 4659
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Full backup completed with status: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    .line 4663
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4664
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v32, v0

    if-eqz v32, :cond_458

    .line 4667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4670
    :cond_458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 4671
    :try_start_465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_473
    .catchall {:try_start_465 .. :try_end_473} :catchall_7d5

    monitor-exit v33

    .line 4674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4678
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v32, v0

    if-eqz v32, :cond_490

    .line 4679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4681
    :cond_490
    const-string/jumbo v32, "BackupManagerService"

    const-string/jumbo v33, "Full data backup pass finished."

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4428
    .end local v15    # "e":Ljava/lang/Exception;
    :goto_4a8
    return-void

    .line 4519
    .restart local v6    # "N":I
    .restart local v7    # "backupPackageStatus":I
    .restart local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .restart local v13    # "buffer":[B
    .restart local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v16    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v18    # "flags":I
    .restart local v19    # "i":I
    .restart local v20    # "in":Ljava/io/FileInputStream;
    .restart local v21    # "nRead":I
    .restart local v22    # "out":Ljava/io/FileOutputStream;
    .restart local v23    # "packageName":Ljava/lang/String;
    .restart local v24    # "preflightResult":J
    .restart local v28    # "totalRead":J
    .restart local v30    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v31    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :cond_4a9
    :try_start_4a9
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/io/FileInputStream;->read([B)I

    move-result v21

    .line 4523
    if-lez v21, :cond_4f3

    .line 4524
    const/16 v32, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v32

    move/from16 v2, v21

    invoke-virtual {v0, v13, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4525
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/internal/backup/IBackupTransport;->sendBackupData(I)I

    move-result v7

    .line 4526
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v32, v0

    add-long v28, v28, v32

    .line 4527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    if-eqz v32, :cond_4f3

    const-wide/16 v32, 0x0

    cmp-long v32, v24, v32

    if-lez v32, :cond_4f3

    .line 4528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    .line 4529
    new-instance v33, Landroid/app/backup/BackupProgress;

    move-object/from16 v0, v33

    move-wide/from16 v1, v24

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/backup/BackupProgress;-><init>(JJ)V

    .line 4528
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap19(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V

    .line 4532
    :cond_4f3
    if-lez v21, :cond_3ab

    .line 4533
    if-nez v7, :cond_3ab

    goto/16 :goto_396

    .line 4555
    .end local v21    # "nRead":I
    :cond_4f9
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v17

    .line 4556
    .local v17, "finishResult":I
    if-nez v7, :cond_2b5

    .line 4557
    move/from16 v7, v17

    goto/16 :goto_2b5

    .line 4619
    .end local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v16    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v17    # "finishResult":I
    .end local v20    # "in":Ljava/io/FileInputStream;
    .end local v22    # "out":Ljava/io/FileOutputStream;
    .end local v24    # "preflightResult":J
    .end local v28    # "totalRead":J
    :cond_503
    const/16 v32, -0x3ed

    move/from16 v0, v32

    if-ne v7, v0, :cond_5e8

    .line 4620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    .line 4621
    const/16 v33, -0x3ed

    .line 4620
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 4623
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Transport quota exceeded for package: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4624
    const/16 v32, 0xb1d

    move/from16 v0, v32

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_54e
    .catch Ljava/lang/Exception; {:try_start_4a9 .. :try_end_54e} :catch_402
    .catchall {:try_start_4a9 .. :try_end_54e} :catchall_550

    goto/16 :goto_37e

    .line 4657
    .end local v6    # "N":I
    .end local v7    # "backupPackageStatus":I
    .end local v13    # "buffer":[B
    .end local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v18    # "flags":I
    .end local v19    # "i":I
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v30    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v31    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_550
    move-exception v32

    .line 4659
    const-string/jumbo v33, "PFTBT"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Full backup completed with status: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    .line 4663
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4664
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v33, v0

    if-eqz v33, :cond_597

    .line 4667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4670
    :cond_597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 4671
    :try_start_5a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_5b2
    .catchall {:try_start_5a4 .. :try_end_5b2} :catchall_7d8

    monitor-exit v33

    .line 4674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4678
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v33, v0

    if-eqz v33, :cond_5cf

    .line 4679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4681
    :cond_5cf
    const-string/jumbo v33, "BackupManagerService"

    const-string/jumbo v34, "Full data backup pass finished."

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4657
    throw v32

    .line 4629
    .restart local v6    # "N":I
    .restart local v7    # "backupPackageStatus":I
    .restart local v13    # "buffer":[B
    .restart local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v18    # "flags":I
    .restart local v19    # "i":I
    .restart local v23    # "packageName":Ljava/lang/String;
    .restart local v30    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v31    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :cond_5e8
    const/16 v32, -0x3eb

    move/from16 v0, v32

    if-ne v7, v0, :cond_635

    .line 4630
    :try_start_5ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    .line 4631
    const/16 v33, -0x3eb

    .line 4630
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 4632
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Application failure for package: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4633
    const/16 v32, 0xb07

    move/from16 v0, v32

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    goto/16 :goto_37e

    .line 4636
    :cond_635
    if-eqz v7, :cond_711

    .line 4637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    .line 4638
    const/16 v33, -0x3e8

    .line 4637
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 4639
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Transport failed; aborting backup: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4640
    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0xb1a

    move/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_675
    .catch Ljava/lang/Exception; {:try_start_5ee .. :try_end_675} :catch_402
    .catchall {:try_start_5ee .. :try_end_675} :catchall_550

    .line 4642
    const/16 v10, -0x3e8

    .line 4659
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Full backup completed with status: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    .line 4663
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4664
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v32, v0

    if-eqz v32, :cond_6bd

    .line 4667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4670
    :cond_6bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 4671
    :try_start_6ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_6d8
    .catchall {:try_start_6ca .. :try_end_6d8} :catchall_70e

    monitor-exit v33

    .line 4674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4678
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v32, v0

    if-eqz v32, :cond_6f5

    .line 4679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4681
    :cond_6f5
    const-string/jumbo v32, "BackupManagerService"

    const-string/jumbo v33, "Full data backup pass finished."

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4643
    return-void

    .line 4670
    :catchall_70e
    move-exception v32

    monitor-exit v33

    throw v32

    .line 4646
    :cond_711
    :try_start_711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    .line 4647
    const/16 v33, 0x0

    .line 4646
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 4648
    const/16 v32, 0xb1b

    move/from16 v0, v32

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_738
    .catch Ljava/lang/Exception; {:try_start_711 .. :try_end_738} :catch_402
    .catchall {:try_start_711 .. :try_end_738} :catchall_550

    goto/16 :goto_37e

    .line 4659
    .end local v7    # "backupPackageStatus":I
    .end local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v18    # "flags":I
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v31    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :cond_73a
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Full backup completed with status: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    .line 4663
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4664
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v32, v0

    if-eqz v32, :cond_780

    .line 4667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4670
    :cond_780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 4671
    :try_start_78d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_79b
    .catchall {:try_start_78d .. :try_end_79b} :catchall_7d2

    monitor-exit v33

    .line 4674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4678
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v32, v0

    if-eqz v32, :cond_7b8

    .line 4679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4681
    :cond_7b8
    const-string/jumbo v32, "BackupManagerService"

    const-string/jumbo v33, "Full data backup pass finished."

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_4a8

    .line 4670
    :catchall_7d2
    move-exception v32

    monitor-exit v33

    throw v32

    .end local v6    # "N":I
    .end local v13    # "buffer":[B
    .end local v19    # "i":I
    .end local v30    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v15    # "e":Ljava/lang/Exception;
    :catchall_7d5
    move-exception v32

    monitor-exit v33

    throw v32

    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_7d8
    move-exception v32

    monitor-exit v33

    throw v32
.end method

.method public setRunning(Z)V
    .registers 3
    .param p1, "running"    # Z

    .prologue
    .line 4424
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4423
    return-void
.end method

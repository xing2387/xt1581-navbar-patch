.class public final Lcom/android/server/job/JobSchedulerService;
.super Lcom/android/server/SystemService;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/android/server/job/StateChangedListener;
.implements Lcom/android/server/job/JobCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobSchedulerService$1;,
        Lcom/android/server/job/JobSchedulerService$2;,
        Lcom/android/server/job/JobSchedulerService$Constants;,
        Lcom/android/server/job/JobSchedulerService$JobHandler;,
        Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;,
        Lcom/android/server/job/JobSchedulerService$LocalService;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final ENFORCE_MAX_JOBS:Z = true

.field private static final MAX_JOBS_PER_APP:I = 0x64

.field private static final MAX_JOB_CONTEXTS_COUNT:I = 0x10

.field static final MSG_CHECK_JOB:I = 0x1

.field static final MSG_CHECK_JOB_GREEDY:I = 0x3

.field static final MSG_JOB_EXPIRED:I = 0x0

.field static final MSG_STOP_JOB:I = 0x2

.field static final TAG:Ljava/lang/String; = "JobSchedulerService"


# instance fields
.field final mActiveServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/JobServiceContext;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

.field mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/StateController;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

.field final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field final mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

.field final mJobs:Lcom/android/server/job/JobStore;

.field mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

.field final mLock:Ljava/lang/Object;

.field mMaxActiveJobs:I

.field final mPendingJobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field mPowerManager:Landroid/os/PowerManager;

.field mReadyToRock:Z

.field mReportedActive:Z

.field mStartedUsers:[I

.field mTmpAssignAct:[Z

.field mTmpAssignContextIdToJobMap:[Lcom/android/server/job/controllers/JobStatus;

.field mTmpAssignPreferredUidForContext:[I

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPriorityOverride:Landroid/util/SparseIntArray;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;I)Z
    .registers 4
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "reason"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/job/JobSchedulerService;Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/job/JobSchedulerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->assignJobsToContextsLocked()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3
    .param p1, "cancelled"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService;->cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x10

    .line 733
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 119
    new-instance v0, Lcom/android/server/job/JobPackageTracker;

    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    .line 139
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 162
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    .line 167
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    .line 177
    new-array v0, v1, [Lcom/android/server/job/controllers/JobStatus;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mTmpAssignContextIdToJobMap:[Lcom/android/server/job/controllers/JobStatus;

    .line 181
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mTmpAssignAct:[Z

    .line 185
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mTmpAssignPreferredUidForContext:[I

    .line 396
    new-instance v0, Lcom/android/server/job/JobSchedulerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$1;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 469
    new-instance v0, Lcom/android/server/job/JobSchedulerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$2;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 734
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 735
    new-instance v0, Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/JobSchedulerService$Constants;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 736
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    .line 737
    invoke-static {p0}, Lcom/android/server/job/JobStore;->initAndGet(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 740
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 741
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/job/controllers/ConnectivityController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/ConnectivityController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/job/controllers/TimeController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/TimeController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/job/controllers/IdleController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/IdleController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/job/controllers/BatteryController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/BatteryController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/job/controllers/AppIdleController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/AppIdleController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/job/controllers/ContentObserverController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/ContentObserverController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    return-void
.end method

.method private adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I
    .registers 5
    .param p1, "curPriority"    # I
    .param p2, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 1291
    const/16 v1, 0x28

    if-ge p1, v1, :cond_14

    .line 1292
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v1, p2}, Lcom/android/server/job/JobPackageTracker;->getLoadFactor(Lcom/android/server/job/controllers/JobStatus;)F

    move-result v0

    .line 1293
    .local v0, "factor":F
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_15

    .line 1294
    add-int/lit8 p1, p1, -0x50

    .line 1299
    .end local v0    # "factor":F
    :cond_14
    :goto_14
    return p1

    .line 1295
    .restart local v0    # "factor":F
    :cond_15
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_14

    .line 1296
    add-int/lit8 p1, p1, -0x28

    goto :goto_14
.end method

.method private assignJobsToContextsLocked()V
    .registers 29

    .prologue
    .line 1327
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/app/IActivityManager;->getMemoryTrimLevel()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_6b

    move-result v13

    .line 1331
    .local v13, "memLevel":I
    :goto_8
    packed-switch v13, :pswitch_data_252

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_NORMAL_JOB_COUNT:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    .line 1346
    :goto_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mTmpAssignContextIdToJobMap:[Lcom/android/server/job/controllers/JobStatus;

    .line 1347
    .local v4, "contextIdToJobMap":[Lcom/android/server/job/controllers/JobStatus;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mTmpAssignAct:[Z

    .line 1348
    .local v3, "act":[Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mTmpAssignPreferredUidForContext:[I

    move-object/from16 v21, v0

    .line 1349
    .local v21, "preferredUidForContext":[I
    const/16 v17, 0x0

    .line 1350
    .local v17, "numActive":I
    const/16 v18, 0x0

    .line 1351
    .local v18, "numForeground":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_30
    const/16 v25, 0x10

    move/from16 v0, v25

    if-ge v6, v0, :cond_a8

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/JobServiceContext;

    .line 1353
    .local v11, "js":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v11}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v24

    .line 1354
    .local v24, "status":Lcom/android/server/job/controllers/JobStatus;
    aput-object v24, v4, v6

    if-eqz v24, :cond_5e

    .line 1355
    add-int/lit8 v17, v17, 0x1

    .line 1356
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    move/from16 v25, v0

    const/16 v26, 0x28

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_5e

    .line 1357
    add-int/lit8 v18, v18, 0x1

    .line 1360
    :cond_5e
    const/16 v25, 0x0

    aput-boolean v25, v3, v6

    .line 1361
    invoke-virtual {v11}, Lcom/android/server/job/JobServiceContext;->getPreferredUid()I

    move-result v25

    aput v25, v21, v6

    .line 1351
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 1328
    .end local v3    # "act":[Z
    .end local v4    # "contextIdToJobMap":[Lcom/android/server/job/controllers/JobStatus;
    .end local v6    # "i":I
    .end local v11    # "js":Lcom/android/server/job/JobServiceContext;
    .end local v13    # "memLevel":I
    .end local v17    # "numActive":I
    .end local v18    # "numForeground":I
    .end local v21    # "preferredUidForContext":[I
    .end local v24    # "status":Lcom/android/server/job/controllers/JobStatus;
    :catch_6b
    move-exception v5

    .line 1329
    .local v5, "e":Landroid/os/RemoteException;
    const/4 v13, 0x0

    .restart local v13    # "memLevel":I
    goto :goto_8

    .line 1333
    .end local v5    # "e":Landroid/os/RemoteException;
    :pswitch_6e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_MODERATE_JOB_COUNT:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    goto :goto_1d

    .line 1336
    :pswitch_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_LOW_JOB_COUNT:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    goto :goto_1d

    .line 1339
    :pswitch_94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_CRITICAL_JOB_COUNT:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    goto/16 :goto_1d

    .line 1366
    .restart local v3    # "act":[Z
    .restart local v4    # "contextIdToJobMap":[Lcom/android/server/job/controllers/JobStatus;
    .restart local v6    # "i":I
    .restart local v17    # "numActive":I
    .restart local v18    # "numForeground":I
    .restart local v21    # "preferredUidForContext":[I
    :cond_a8
    const/4 v6, 0x0

    :goto_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v6, v0, :cond_17a

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/job/controllers/JobStatus;

    .line 1370
    .local v16, "nextPending":Lcom/android/server/job/controllers/JobStatus;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Lcom/android/server/job/JobSchedulerService;->findJobContextIdFromMap(Lcom/android/server/job/controllers/JobStatus;[Lcom/android/server/job/controllers/JobStatus;)I

    move-result v10

    .line 1371
    .local v10, "jobRunningContext":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v10, v0, :cond_d6

    .line 1366
    :cond_d3
    :goto_d3
    add-int/lit8 v6, v6, 0x1

    goto :goto_a9

    .line 1375
    :cond_d6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v23

    .line 1376
    .local v23, "priority":I
    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    .line 1381
    const v14, 0x7fffffff

    .line 1382
    .local v14, "minPriority":I
    const/4 v15, -0x1

    .line 1383
    .local v15, "minPriorityContextId":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_e9
    const/16 v25, 0x10

    move/from16 v0, v25

    if-ge v8, v0, :cond_12e

    .line 1384
    aget-object v9, v4, v8

    .line 1385
    .local v9, "job":Lcom/android/server/job/controllers/JobStatus;
    aget v20, v21, v8

    .line 1386
    .local v20, "preferredUid":I
    if-nez v9, :cond_147

    .line 1387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    move/from16 v25, v0

    move/from16 v0, v17

    move/from16 v1, v25

    if-lt v0, v1, :cond_11b

    .line 1388
    const/16 v25, 0x28

    move/from16 v0, v23

    move/from16 v1, v25

    if-lt v0, v1, :cond_155

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    move/from16 v25, v0

    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_155

    .line 1390
    :cond_11b
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v25

    move/from16 v0, v20

    move/from16 v1, v25

    if-eq v0, v1, :cond_12d

    .line 1391
    const/16 v25, -0x1

    move/from16 v0, v20

    move/from16 v1, v25

    if-ne v0, v1, :cond_155

    .line 1394
    :cond_12d
    move v15, v8

    .line 1413
    .end local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v20    # "preferredUid":I
    :cond_12e
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v15, v0, :cond_d3

    .line 1414
    aput-object v16, v4, v15

    .line 1415
    const/16 v25, 0x1

    aput-boolean v25, v3, v15

    .line 1416
    add-int/lit8 v17, v17, 0x1

    .line 1417
    const/16 v25, 0x28

    move/from16 v0, v23

    move/from16 v1, v25

    if-lt v0, v1, :cond_d3

    .line 1418
    add-int/lit8 v18, v18, 0x1

    goto :goto_d3

    .line 1402
    .restart local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v20    # "preferredUid":I
    :cond_147
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v25

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_158

    .line 1383
    :cond_155
    :goto_155
    add-int/lit8 v8, v8, 0x1

    goto :goto_e9

    .line 1405
    :cond_158
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v25

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_155

    .line 1408
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-le v14, v0, :cond_155

    .line 1409
    move-object/from16 v0, v16

    iget v14, v0, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    .line 1410
    move v15, v8

    goto :goto_155

    .line 1425
    .end local v8    # "j":I
    .end local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v10    # "jobRunningContext":I
    .end local v14    # "minPriority":I
    .end local v15    # "minPriorityContextId":I
    .end local v16    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .end local v20    # "preferredUid":I
    .end local v23    # "priority":I
    :cond_17a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobPackageTracker;->noteConcurrency(II)V

    .line 1426
    const/4 v6, 0x0

    :goto_18a
    const/16 v25, 0x10

    move/from16 v0, v25

    if-ge v6, v0, :cond_251

    .line 1427
    const/16 v22, 0x0

    .line 1428
    .local v22, "preservePreferredUid":Z
    aget-boolean v25, v3, v6

    if-eqz v25, :cond_1bd

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/job/JobServiceContext;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v12

    .line 1430
    .local v12, "js":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v12, :cond_1d3

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/job/JobServiceContext;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/job/JobServiceContext;->preemptExecutingJob()V

    .line 1436
    const/16 v22, 0x1

    .line 1454
    .end local v12    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_1bd
    :goto_1bd
    if-nez v22, :cond_1d0

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/job/JobServiceContext;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/job/JobServiceContext;->clearPreferredUid()V

    .line 1426
    :cond_1d0
    add-int/lit8 v6, v6, 0x1

    goto :goto_18a

    .line 1438
    .restart local v12    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_1d3
    aget-object v19, v4, v6

    .line 1443
    .local v19, "pendingJob":Lcom/android/server/job/controllers/JobStatus;
    const/4 v7, 0x0

    .local v7, "ic":I
    :goto_1d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v7, v0, :cond_1fc

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/job/controllers/StateController;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/StateController;->prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1443
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d6

    .line 1446
    :cond_1fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/job/JobServiceContext;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobServiceContext;->executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v25

    if-nez v25, :cond_232

    .line 1447
    const-string/jumbo v25, "JobSchedulerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Error executing "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1bd

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    goto/16 :goto_1bd

    .line 1320
    .end local v7    # "ic":I
    .end local v12    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v19    # "pendingJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v22    # "preservePreferredUid":Z
    :cond_251
    return-void

    .line 1331
    :pswitch_data_252
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_81
        :pswitch_94
    .end packed-switch
.end method

.method private cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5
    .param p1, "cancelled"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 641
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 642
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 644
    :try_start_7
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 645
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 648
    :cond_14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    .line 649
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActive()V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    .line 639
    return-void

    .line 642
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1738
    const-string/jumbo v0, "Job Scheduler (jobscheduler) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1739
    const-string/jumbo v0, "  [-h] [package] ..."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1740
    const-string/jumbo v0, "    -h: print this help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1741
    const-string/jumbo v0, "  [package] is an optional package name to limit the output to."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1737
    return-void
.end method

.method private evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I
    .registers 7
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    const/4 v4, 0x0

    .line 1303
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getPriority()I

    move-result v1

    .line 1304
    .local v1, "priority":I
    const/16 v2, 0x1e

    if-lt v1, v2, :cond_e

    .line 1305
    invoke-direct {p0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    return v2

    .line 1307
    :cond_e
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1308
    .local v0, "override":I
    if-eqz v0, :cond_1f

    .line 1309
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    return v2

    .line 1311
    :cond_1f
    invoke-direct {p0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    return v2
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 464
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 465
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "pkg":Ljava/lang/String;
    :cond_b
    return-object v0
.end method

.method private getRescheduleJobForFailure(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .registers 20
    .param p1, "failureToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 902
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 903
    .local v12, "elapsedNowMillis":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v15

    .line 905
    .local v15, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v15}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v16

    .line 906
    .local v16, "initialBackoffMillis":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v3

    add-int/lit8 v8, v3, 0x1

    .line 909
    .local v8, "backoffAttempts":I
    invoke-virtual {v15}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v3

    packed-switch v3, :pswitch_data_5a

    .line 919
    :pswitch_19
    move-wide/from16 v0, v16

    long-to-float v3, v0

    add-int/lit8 v4, v8, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->scalb(FI)F

    move-result v3

    float-to-long v10, v3

    .line 923
    .local v10, "delayMillis":J
    :goto_23
    const-wide/32 v4, 0x112a880

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 924
    new-instance v2, Lcom/android/server/job/controllers/JobStatus;

    add-long v4, v12, v10

    .line 925
    const-wide v6, 0x7fffffffffffffffL

    move-object/from16 v3, p1

    .line 924
    invoke-direct/range {v2 .. v8}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJI)V

    .line 926
    .local v2, "newJob":Lcom/android/server/job/controllers/JobStatus;
    const/4 v14, 0x0

    .local v14, "ic":I
    :goto_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_59

    .line 927
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/StateController;

    .line 928
    .local v9, "controller":Lcom/android/server/job/controllers/StateController;
    move-object/from16 v0, p1

    invoke-virtual {v9, v2, v0}, Lcom/android/server/job/controllers/StateController;->rescheduleForFailure(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 926
    add-int/lit8 v14, v14, 0x1

    goto :goto_39

    .line 911
    .end local v2    # "newJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v9    # "controller":Lcom/android/server/job/controllers/StateController;
    .end local v10    # "delayMillis":J
    .end local v14    # "ic":I
    :pswitch_55
    int-to-long v4, v8

    mul-long v10, v16, v4

    .line 912
    .restart local v10    # "delayMillis":J
    goto :goto_23

    .line 930
    .restart local v2    # "newJob":Lcom/android/server/job/controllers/JobStatus;
    .restart local v14    # "ic":I
    :cond_59
    return-object v2

    .line 909
    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_55
        :pswitch_19
    .end packed-switch
.end method

.method private getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .registers 18
    .param p1, "periodicToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 945
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 947
    .local v8, "elapsedNow":J
    const-wide/16 v14, 0x0

    .line 950
    .local v14, "runEarly":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 951
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v0

    sub-long/2addr v0, v8

    const-wide/16 v6, 0x0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 953
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v10

    .line 954
    .local v10, "flex":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v12

    .line 955
    .local v12, "period":J
    add-long v0, v8, v14

    add-long v4, v0, v12

    .line 956
    .local v4, "newLatestRuntimeElapsed":J
    sub-long v2, v4, v10

    .line 962
    .local v2, "newEarliestRunTimeElapsed":J
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    .line 963
    const/4 v6, 0x0

    move-object/from16 v1, p1

    .line 962
    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJI)V

    return-object v0
.end method

.method private isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 7
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 865
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2a

    .line 866
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 867
    .local v2, "serviceContext":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 868
    .local v1, "running":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_27

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 869
    const/4 v3, 0x1

    return v3

    .line 865
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 872
    .end local v1    # "running":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "serviceContext":Lcom/android/server/job/JobServiceContext;
    :cond_2a
    const/4 v3, 0x0

    return v3
.end method

.method private printContextIdToJobMap([Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "map"    # [Lcom/android/server/job/controllers/JobStatus;
    .param p2, "initial"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 1713
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1714
    .local v1, "s":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    array-length v2, p1

    if-ge v0, v2, :cond_4e

    .line 1715
    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1716
    aget-object v2, p1, v0

    if-nez v2, :cond_40

    move v2, v3

    .line 1715
    :goto_2a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1717
    aget-object v2, p1, v0

    if-nez v2, :cond_47

    move v2, v3

    .line 1715
    :goto_33
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1718
    const-string/jumbo v4, ")"

    .line 1715
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1716
    :cond_40
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    goto :goto_2a

    .line 1717
    :cond_47
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    goto :goto_33

    .line 1720
    :cond_4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private printPendingQueue()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1724
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Pending queue: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1725
    .local v2, "s":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1726
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1727
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 1728
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1729
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getId()I

    move-result v4

    .line 1728
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1730
    const-string/jumbo v4, ", "

    .line 1728
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1731
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    .line 1728
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1732
    const-string/jumbo v4, ") "

    .line 1728
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1734
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private startTrackingJob(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 9
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 814
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 815
    :try_start_3
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, p1}, Lcom/android/server/job/JobStore;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    .line 816
    .local v2, "update":Z
    iget-boolean v3, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v3, :cond_2b

    .line 817
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2b

    .line 818
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    .line 819
    .local v0, "controller":Lcom/android/server/job/controllers/StateController;
    if-eqz v2, :cond_25

    .line 820
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, p1, v3, v5}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 822
    :cond_25
    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2d

    .line 817
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .end local v0    # "controller":Lcom/android/server/job/controllers/StateController;
    .end local v1    # "i":I
    :cond_2b
    monitor-exit v4

    .line 813
    return-void

    .line 814
    .end local v2    # "update":Z
    :catchall_2d
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;I)Z
    .registers 8
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "reason"    # I

    .prologue
    .line 848
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2d

    .line 849
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 850
    .local v2, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 851
    .local v0, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 852
    invoke-virtual {v2, p2}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJob(I)V

    .line 853
    const/4 v3, 0x1

    return v3

    .line 848
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 856
    .end local v0    # "executing":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jsc":Lcom/android/server/job/JobServiceContext;
    :cond_2d
    const/4 v3, 0x0

    return v3
.end method

.method private stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z
    .registers 9
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "writeBack"    # Z

    .prologue
    .line 834
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 836
    :try_start_3
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/job/JobStore;->remove(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v2

    .line 837
    .local v2, "removed":Z
    if-eqz v2, :cond_27

    iget-boolean v3, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v3, :cond_27

    .line 838
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_27

    .line 839
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    .line 840
    .local v0, "controller":Lcom/android/server/job/controllers/StateController;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2, v3}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_29

    .line 838
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .end local v0    # "controller":Lcom/android/server/job/controllers/StateController;
    .end local v1    # "i":I
    :cond_27
    monitor-exit v4

    .line 843
    return v2

    .line 834
    .end local v2    # "removed":Z
    :catchall_29
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public cancelJob(II)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    .prologue
    const/4 v3, 0x0

    .line 631
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 632
    :try_start_4
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_11

    move-result-object v0

    .local v0, "toCancel":Lcom/android/server/job/controllers/JobStatus;
    monitor-exit v2

    .line 634
    if-eqz v0, :cond_10

    .line 635
    invoke-direct {p0, v0, v3}, Lcom/android/server/job/JobSchedulerService;->cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 629
    :cond_10
    return-void

    .line 631
    .end local v0    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    :catchall_11
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public cancelJobsForUid(IZ)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "forceAll"    # Z

    .prologue
    .line 603
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 604
    :try_start_3
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v5, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_2f

    move-result-object v2

    .local v2, "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    monitor-exit v6

    .line 606
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_38

    .line 607
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 608
    .local v4, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    if-nez p2, :cond_33

    .line 609
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 611
    .local v3, "packageName":Ljava/lang/String;
    :try_start_21
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, p1, v3}, Landroid/app/IActivityManager;->getAppStartMode(ILjava/lang/String;)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_32

    move-result v5

    .line 612
    const/4 v6, 0x2

    .line 611
    if-eq v5, v6, :cond_33

    .line 606
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 603
    .end local v1    # "i":I
    .end local v2    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    :catchall_2f
    move-exception v5

    monitor-exit v6

    throw v5

    .line 615
    .restart local v1    # "i":I
    .restart local v2    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    :catch_32
    move-exception v0

    .line 618
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_33
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/job/JobSchedulerService;->cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_2c

    .line 601
    .end local v4    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    :cond_38
    return-void
.end method

.method cancelJobsForUser(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    .line 584
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 585
    :try_start_3
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, p1}, Lcom/android/server/job/JobStore;->getJobsByUser(I)Ljava/util/List;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1e

    move-result-object v1

    .local v1, "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    monitor-exit v4

    .line 587
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_21

    .line 588
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 589
    .local v2, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/job/JobSchedulerService;->cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 584
    .end local v0    # "i":I
    .end local v1    # "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    :catchall_1e
    move-exception v3

    monitor-exit v4

    throw v3

    .line 582
    .restart local v0    # "i":I
    .restart local v1    # "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_21
    return-void
.end method

.method dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 27
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 1745
    const/4 v5, -0x1

    .line 1746
    .local v5, "filterUid":I
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_83

    .line 1747
    const/4 v13, 0x0

    .line 1748
    .local v13, "opti":I
    :goto_8
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_64

    .line 1749
    aget-object v4, p2, v13

    .line 1750
    .local v4, "arg":Ljava/lang/String;
    const-string/jumbo v19, "-h"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_22

    .line 1751
    invoke-static/range {p1 .. p1}, Lcom/android/server/job/JobSchedulerService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1752
    return-void

    .line 1753
    :cond_22
    const-string/jumbo v19, "-a"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_30

    .line 1761
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 1755
    :cond_30
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_64

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_64

    .line 1756
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Unknown option: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1757
    return-void

    .line 1763
    .end local v4    # "arg":Ljava/lang/String;
    :cond_64
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_83

    .line 1764
    aget-object v16, p2, v13

    .line 1766
    .local v16, "pkg":Ljava/lang/String;
    :try_start_6f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 1767
    const/16 v20, 0x2000

    .line 1766
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_82
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6f .. :try_end_82} :catch_1fe

    move-result v5

    .line 1775
    .end local v13    # "opti":I
    .end local v16    # "pkg":Ljava/lang/String;
    :cond_83
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 1776
    .local v6, "filterUidFinal":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 1777
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1778
    :try_start_92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 1779
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1780
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Started users: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1781
    const-string/jumbo v19, "Registered "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/job/JobStore;->size()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1783
    const-string/jumbo v19, " jobs:"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/job/JobStore;->size()I

    move-result v19

    if-lez v19, :cond_21f

    .line 1785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    move-result-object v11

    .line 1786
    .local v11, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v19, Lcom/android/server/job/JobSchedulerService$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/job/JobSchedulerService$4;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    move-object/from16 v0, v19

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1799
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "job$iterator":Ljava/util/Iterator;
    :cond_122
    :goto_122
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_229

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 1800
    .local v9, "job":Lcom/android/server/job/controllers/JobStatus;
    const-string/jumbo v19, "  JOB #"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string/jumbo v19, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1801
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->toShortStringExceptUniqueId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1804
    invoke-virtual {v9, v6}, Lcom/android/server/job/controllers/JobStatus;->shouldDump(I)Z

    move-result v19

    if-eqz v19, :cond_122

    .line 1808
    const-string/jumbo v19, "    "

    const/16 v21, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1809
    const-string/jumbo v19, "    Ready: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/android/server/job/JobSchedulerService$JobHandler;->-wrap1(Lcom/android/server/job/JobSchedulerService$JobHandler;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1811
    const-string/jumbo v19, " (job="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1812
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1813
    const-string/jumbo v19, " pending="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1815
    const-string/jumbo v19, " active="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1816
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1817
    const-string/jumbo v19, " user="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    move-object/from16 v19, v0

    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1819
    const-string/jumbo v19, ")"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1f9
    .catchall {:try_start_92 .. :try_end_1f9} :catchall_1fb

    goto/16 :goto_122

    .line 1777
    .end local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v10    # "job$iterator":Ljava/util/Iterator;
    .end local v11    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_1fb
    move-exception v19

    monitor-exit v20

    throw v19

    .line 1768
    .end local v6    # "filterUidFinal":I
    .end local v14    # "now":J
    .restart local v13    # "opti":I
    .restart local v16    # "pkg":Ljava/lang/String;
    :catch_1fe
    move-exception v8

    .line 1769
    .local v8, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Invalid package: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1770
    return-void

    .line 1822
    .end local v8    # "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "opti":I
    .end local v16    # "pkg":Ljava/lang/String;
    .restart local v6    # "filterUidFinal":I
    .restart local v14    # "now":J
    :cond_21f
    :try_start_21f
    const-string/jumbo v19, "  None."

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1824
    :cond_229
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_22a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_253

    .line 1825
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/job/controllers/StateController;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Ljava/io/PrintWriter;I)V

    .line 1824
    add-int/lit8 v7, v7, 0x1

    goto :goto_22a

    .line 1828
    :cond_253
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1829
    const-string/jumbo v19, "Uid priority overrides:"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1830
    const/4 v7, 0x0

    :goto_261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseIntArray;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_2be

    .line 1831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v18

    .line 1832
    .local v18, "uid":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_289

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v19

    move/from16 v0, v19

    if-ne v6, v0, :cond_2bb

    .line 1833
    :cond_289
    const-string/jumbo v19, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1834
    const-string/jumbo v19, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1830
    :cond_2bb
    add-int/lit8 v7, v7, 0x1

    goto :goto_261

    .line 1837
    .end local v18    # "uid":I
    :cond_2be
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    move-object/from16 v19, v0

    const-string/jumbo v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/server/job/JobPackageTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 1839
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    move-object/from16 v19, v0

    const-string/jumbo v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Ljava/io/PrintWriter;Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_2ee

    .line 1841
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1843
    :cond_2ee
    const-string/jumbo v19, "Pending queue:"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1844
    const/4 v7, 0x0

    :goto_2f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_378

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 1846
    .restart local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    const-string/jumbo v19, "  Pending #"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v19, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1847
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1848
    const-string/jumbo v19, "    "

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1849
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v17

    .line 1850
    .local v17, "priority":I
    if-eqz v17, :cond_360

    .line 1851
    const-string/jumbo v19, "    Evaluated priority: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1853
    :cond_360
    const-string/jumbo v19, "    Tag: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1844
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f9

    .line 1855
    .end local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v17    # "priority":I
    :cond_378
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1856
    const-string/jumbo v19, "Active jobs:"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1857
    const/4 v7, 0x0

    :goto_386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_442

    .line 1858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/JobServiceContext;

    .line 1859
    .local v12, "jsc":Lcom/android/server/job/JobServiceContext;
    const-string/jumbo v19, "  Slot #"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v19, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1860
    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v19

    if-nez v19, :cond_3ce

    .line 1861
    const-string/jumbo v19, "inactive"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1857
    :cond_3cb
    :goto_3cb
    add-int/lit8 v7, v7, 0x1

    goto :goto_386

    .line 1864
    :cond_3ce
    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1865
    const-string/jumbo v19, "    Running for: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1866
    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getExecutionStartTimeElapsed()J

    move-result-wide v22

    sub-long v22, v14, v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1867
    const-string/jumbo v19, ", timeout at: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1868
    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getTimeoutElapsed()J

    move-result-wide v22

    sub-long v22, v22, v14

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1869
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1870
    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v19

    const-string/jumbo v21, "    "

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1871
    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v17

    .line 1872
    .restart local v17    # "priority":I
    if-eqz v17, :cond_3cb

    .line 1873
    const-string/jumbo v19, "    Evaluated priority: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_3cb

    .line 1877
    .end local v12    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v17    # "priority":I
    :cond_442
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_490

    .line 1878
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1879
    const-string/jumbo v19, "mReadyToRock="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1880
    const-string/jumbo v19, "mReportedActive="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1881
    const-string/jumbo v19, "mMaxActiveJobs="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V
    :try_end_490
    .catchall {:try_start_21f .. :try_end_490} :catchall_1fb

    :cond_490
    monitor-exit v20

    .line 1884
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1744
    return-void
.end method

.method executeRunCommand(Ljava/lang/String;IIZ)I
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "jobId"    # I
    .param p4, "force"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1687
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    .line 1688
    .local v2, "uid":I
    if-gez v2, :cond_f

    .line 1689
    const/16 v3, -0x3e8

    return v3

    .line 1692
    :cond_f
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_41

    .line 1693
    :try_start_12
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, v2, p3}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_3e

    move-result-object v1

    .line 1694
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    if-nez v1, :cond_1e

    .line 1695
    const/16 v3, -0x3e9

    :try_start_1c
    monitor-exit v4
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1d} :catch_41

    return v3

    .line 1698
    :cond_1e
    if-eqz p4, :cond_30

    const/4 v3, 0x2

    :goto_21
    :try_start_21
    iput v3, v1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 1699
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied()Z

    move-result v3

    if-nez v3, :cond_32

    .line 1700
    const/4 v3, 0x0

    iput v3, v1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_3e

    .line 1701
    const/16 v3, -0x3ea

    :try_start_2e
    monitor-exit v4
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2f} :catch_41

    return v3

    .line 1698
    :cond_30
    const/4 v3, 0x1

    goto :goto_21

    .line 1704
    :cond_32
    :try_start_32
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3e

    :try_start_3c
    monitor-exit v4

    .line 1709
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "uid":I
    :goto_3d
    return v6

    .line 1692
    .restart local v2    # "uid":I
    :catchall_3e
    move-exception v3

    monitor-exit v4

    throw v3
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_41} :catch_41

    .line 1706
    .end local v2    # "uid":I
    :catch_41
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_3d
.end method

.method findJobContextIdFromMap(Lcom/android/server/job/controllers/JobStatus;[Lcom/android/server/job/controllers/JobStatus;)I
    .registers 7
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "map"    # [Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 1461
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1c

    .line 1462
    aget-object v1, p2, v0

    if-eqz v1, :cond_19

    aget-object v1, p2, v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1463
    return v0

    .line 1461
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1466
    :cond_1c
    const/4 v1, -0x1

    return v1
.end method

.method public getJobStore()Lcom/android/server/job/JobStore;
    .registers 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getPendingJob(II)Landroid/app/job/JobInfo;
    .registers 8
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    .prologue
    .line 570
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 571
    :try_start_3
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v2

    .line 572
    .local v2, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_f
    if-ltz v0, :cond_26

    .line 573
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 574
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v3

    if-ne v3, p2, :cond_23

    .line 575
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_29

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 572
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 578
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_26
    const/4 v3, 0x0

    monitor-exit v4

    return-object v3

    .line 570
    .end local v0    # "i":I
    .end local v2    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_29
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getPendingJobs(I)Ljava/util/List;
    .registers 8
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 559
    :try_start_3
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v4, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v2

    .line 560
    .local v2, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 561
    .local v3, "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_18
    if-ltz v0, :cond_2a

    .line 562
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 563
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_2c

    .line 561
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_2a
    monitor-exit v5

    .line 565
    return-object v3

    .line 558
    .end local v0    # "i":I
    .end local v2    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v3    # "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    :catchall_2c
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method noteJobsNonpending(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 883
    .local p1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_16

    .line 884
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 885
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 883
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 882
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_16
    return-void
.end method

.method noteJobsPending(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 876
    .local p1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_16

    .line 877
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 878
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 876
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 875
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_16
    return-void
.end method

.method public onBootPhase(I)V
    .registers 15
    .param p1, "phase"    # I

    .prologue
    const/4 v4, 0x0

    .line 758
    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_64

    .line 759
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$Constants;->start(Landroid/content/ContentResolver;)V

    .line 761
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 762
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 763
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 764
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 766
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    .line 765
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 767
    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 768
    .local v8, "userFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 769
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v9, v4

    move-object v10, v4

    .line 768
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 770
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPowerManager:Landroid/os/PowerManager;

    .line 772
    :try_start_59
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 773
    const/4 v2, 0x7

    .line 772
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;I)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_63} :catch_bc

    .line 757
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "userFilter":Landroid/content/IntentFilter;
    :cond_63
    :goto_63
    return-void

    .line 778
    :cond_64
    const/16 v0, 0x258

    if-ne p1, v0, :cond_63

    .line 779
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 781
    const/4 v0, 0x1

    :try_start_6c
    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 783
    const-string/jumbo v0, "batterystats"

    .line 782
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 785
    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleController$LocalService;

    .line 784
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 787
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_86
    const/16 v0, 0x10

    if-ge v12, v0, :cond_a3

    .line 788
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    .line 789
    new-instance v2, Lcom/android/server/job/JobServiceContext;

    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 790
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    .line 789
    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/server/job/JobServiceContext;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V

    .line 788
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    add-int/lit8 v12, v12, 0x1

    goto :goto_86

    .line 793
    :cond_a3
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v2, Lcom/android/server/job/JobSchedulerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobSchedulerService$3;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobStore;->forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V

    .line 803
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_b7
    .catchall {:try_start_6c .. :try_end_b7} :catchall_b9

    monitor-exit v1

    goto :goto_63

    .line 779
    .end local v12    # "i":I
    :catchall_b9
    move-exception v0

    monitor-exit v1

    throw v0

    .line 775
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v8    # "userFilter":Landroid/content/IntentFilter;
    :catch_bc
    move-exception v11

    .local v11, "e":Landroid/os/RemoteException;
    goto :goto_63
.end method

.method public onControllerStateChanged()V
    .registers 3

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1014
    return-void
.end method

.method public onDeviceIdleStateChanged(Z)V
    .registers 8
    .param p1, "deviceIdle"    # Z

    .prologue
    .line 670
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 671
    if-eqz p1, :cond_2b

    .line 674
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    :try_start_6
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4a

    .line 675
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 676
    .local v2, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 677
    .local v0, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_28

    .line 678
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_28

    .line 679
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJob(I)V

    .line 674
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 684
    .end local v0    # "executing":Lcom/android/server/job/controllers/JobStatus;
    .end local v1    # "i":I
    .end local v2    # "jsc":Lcom/android/server/job/JobServiceContext;
    :cond_2b
    iget-boolean v3, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v3, :cond_40

    .line 685
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    if-eqz v3, :cond_40

    .line 686
    iget-boolean v3, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-nez v3, :cond_40

    .line 687
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 688
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/DeviceIdleController$LocalService;->setJobsActive(Z)V

    .line 692
    :cond_40
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_4a
    .catchall {:try_start_6 .. :try_end_4a} :catchall_4c

    :cond_4a
    monitor-exit v4

    .line 669
    return-void

    .line 670
    :catchall_4c
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onJobCompleted(Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 8
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "needsReschedule"    # Z

    .prologue
    const/4 v4, 0x3

    .line 982
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x0

    :goto_c
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 988
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v2, v4}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 989
    return-void

    .line 982
    :cond_1d
    const/4 v2, 0x1

    goto :goto_c

    .line 995
    :cond_1f
    if-eqz p2, :cond_35

    .line 996
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForFailure(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 997
    .local v0, "rescheduled":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJob(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1002
    .end local v0    # "rescheduled":Lcom/android/server/job/controllers/JobStatus;
    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActive()V

    .line 1003
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v2, v4}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 976
    return-void

    .line 998
    :cond_35
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 999
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 1000
    .local v1, "rescheduledPeriodic":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJob(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_28
.end method

.method public onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1019
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 752
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    new-instance v1, Lcom/android/server/job/JobSchedulerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$LocalService;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobSchedulerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 753
    const-string/jumbo v0, "jobscheduler"

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobSchedulerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 751
    return-void
.end method

.method public onStartUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 498
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 495
    return-void
.end method

.method public onStopUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 508
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 502
    return-void
.end method

.method reportActive()V
    .registers 6

    .prologue
    .line 699
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3b

    const/4 v0, 0x1

    .line 700
    .local v0, "active":Z
    :goto_9
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_3e

    .line 701
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3e

    .line 702
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 703
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    .line 704
    .local v2, "job":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v2, :cond_38

    .line 705
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_38

    .line 706
    iget-boolean v4, v2, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    if-eqz v4, :cond_3d

    .line 701
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 699
    .end local v0    # "active":Z
    .end local v1    # "i":I
    .end local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    :cond_3b
    const/4 v0, 0x0

    .restart local v0    # "active":Z
    goto :goto_9

    .line 709
    .restart local v1    # "i":I
    .restart local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    :cond_3d
    const/4 v0, 0x1

    .line 715
    .end local v1    # "i":I
    .end local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    :cond_3e
    iget-boolean v4, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eq v4, v0, :cond_4d

    .line 716
    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 717
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    if-eqz v4, :cond_4d

    .line 718
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v4, v0}, Lcom/android/server/DeviceIdleController$LocalService;->setJobsActive(Z)V

    .line 697
    :cond_4d
    return-void
.end method

.method public schedule(Landroid/app/job/JobInfo;I)I
    .registers 9
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "uId"    # I

    .prologue
    const/4 v3, 0x0

    .line 520
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobSchedulerService;->scheduleAsPackage(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public scheduleAsPackage(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)I
    .registers 13
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "uId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 525
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/job/controllers/JobStatus;->createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 527
    .local v1, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 528
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 527
    invoke-interface {v3, p2, v4}, Landroid/app/IActivityManager;->getAppStartMode(ILjava/lang/String;)I

    move-result v3

    .line 528
    const/4 v4, 0x2

    .line 527
    if-ne v3, v4, :cond_4b

    .line 529
    const-string/jumbo v3, "JobSchedulerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not scheduling job "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 530
    const-string/jumbo v5, " -- package not allowed to start"

    .line 529
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_48} :catch_4a

    .line 531
    const/4 v3, 0x0

    return v3

    .line 533
    :catch_4a
    move-exception v0

    .line 537
    :cond_4b
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 539
    if-nez p3, :cond_80

    .line 540
    :try_start_50
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, p2}, Lcom/android/server/job/JobStore;->countJobsForUid(I)I

    move-result v3

    const/16 v5, 0x64

    if-le v3, v5, :cond_80

    .line 541
    const-string/jumbo v3, "JobSchedulerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Too many jobs for uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Apps may not schedule more than 100 distinct jobs"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7d
    .catchall {:try_start_50 .. :try_end_7d} :catchall_7d

    .line 537
    :catchall_7d
    move-exception v3

    monitor-exit v4

    throw v3

    .line 547
    :cond_80
    :try_start_80
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v5

    invoke-virtual {v3, p2, v5}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    .line 548
    .local v2, "toCancel":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v2, :cond_8f

    .line 549
    invoke-direct {p0, v2, v1}, Lcom/android/server/job/JobSchedulerService;->cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 551
    :cond_8f
    invoke-direct {p0, v1, v2}, Lcom/android/server/job/JobSchedulerService;->startTrackingJob(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_92
    .catchall {:try_start_80 .. :try_end_92} :catchall_7d

    monitor-exit v4

    .line 553
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v3, v6}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 554
    return v6
.end method

.method updateUidState(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .prologue
    .line 654
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 655
    const/4 v0, 0x2

    if-ne p2, v0, :cond_f

    .line 659
    :try_start_6
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    const/16 v2, 0x28

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_1a

    :goto_d
    monitor-exit v1

    .line 653
    return-void

    .line 660
    :cond_f
    const/4 v0, 0x4

    if-gt p2, v0, :cond_1d

    .line 661
    :try_start_12
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    const/16 v2, 0x1e

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1a

    goto :goto_d

    .line 654
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 663
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_1a

    goto :goto_d
.end method

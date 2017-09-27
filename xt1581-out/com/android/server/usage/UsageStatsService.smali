.class public Lcom/android/server/usage/UsageStatsService;
.super Lcom/android/server/SystemService;
.source "UsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsService$1;,
        Lcom/android/server/usage/UsageStatsService$BinderService;,
        Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;,
        Lcom/android/server/usage/UsageStatsService$H;,
        Lcom/android/server/usage/UsageStatsService$LocalService;,
        Lcom/android/server/usage/UsageStatsService$PackageReceiver;,
        Lcom/android/server/usage/UsageStatsService$SettingsObserver;,
        Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;
    }
.end annotation


# static fields
.field static final COMPRESS_TIME:Z = false

.field static final DEBUG:Z = false

.field private static final FLUSH_INTERVAL:J = 0x124f80L

.field static final MSG_CHECK_IDLE_STATES:I = 0x5

.field static final MSG_CHECK_PAROLE_TIMEOUT:I = 0x6

.field static final MSG_FLUSH_TO_DISK:I = 0x1

.field static final MSG_FORCE_IDLE_STATE:I = 0x4

.field static final MSG_INFORM_LISTENERS:I = 0x3

.field static final MSG_ONE_TIME_CHECK_IDLE_STATES:I = 0xa

.field static final MSG_PAROLE_END_TIMEOUT:I = 0x7

.field static final MSG_PAROLE_STATE_CHANGED:I = 0x9

.field static final MSG_REMOVE_USER:I = 0x2

.field static final MSG_REPORT_CONTENT_PROVIDER_USAGE:I = 0x8

.field static final MSG_REPORT_EVENT:I = 0x0

.field private static final ONE_MINUTE:J = 0xea60L

.field static final TAG:Ljava/lang/String; = "UsageStatsService"

.field private static final TEN_SECONDS:J = 0x2710L

.field private static final TIME_CHANGE_THRESHOLD_MILLIS:J = 0x7d0L

.field private static final TWENTY_MINUTES:J = 0x124f80L


# instance fields
.field mAppIdleEnabled:Z

.field private mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mAppIdleParoleDurationMillis:J

.field mAppIdleParoleIntervalMillis:J

.field mAppIdleParoled:Z

.field mAppIdleScreenThresholdMillis:J

.field mAppIdleWallclockThresholdMillis:J

.field mAppOps:Landroid/app/AppOpsManager;

.field mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCarrierPrivilegedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCheckIdleIntervalMillis:J

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mHandler:Landroid/os/Handler;

.field private mHaveCarrierPrivilegedApps:Z

.field private mLastAppIdleParoledTime:J

.field private final mLock:Ljava/lang/Object;

.field private mPackageAccessListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field mPackageManager:Landroid/content/pm/PackageManager;

.field private volatile mPendingOneTimeCheckIdleStates:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field mRealTimeSnapshot:J

.field private mScreenOn:Z

.field private mSystemServicesReady:Z

.field mSystemTimeSnapshot:J

.field private mUsageStatsDir:Ljava/io/File;

.field mUserManager:Landroid/os/UserManager;

.field private final mUserState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/usage/UserUsageStatsService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/AppIdleHistory;
    .registers 2

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;IIJ)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "elapsedRealtime"    # J

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/usage/UsageStatsService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->isDisplayOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/usage/UsageStatsService;IJ)Lcom/android/server/usage/UserUsageStatsService;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "currentTimeMillis"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/usage/UsageStatsService;)J
    .registers 3

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mSystemServicesReady:Z

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 297
    new-instance v0, Lcom/android/server/usage/UsageStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsService$1;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    .line 296
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 158
    return-void
.end method

.method private checkAndGetTimeLocked()J
    .registers 21

    .prologue
    .line 575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 576
    .local v8, "actualSystemTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 577
    .local v10, "actualRealtime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    move-wide/from16 v16, v0

    sub-long v16, v10, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    move-wide/from16 v18, v0

    add-long v6, v16, v18

    .line 578
    .local v6, "expectedSystemTime":J
    sub-long v12, v8, v6

    .line 579
    .local v12, "diffSystemTime":J
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    const-wide/16 v18, 0x7d0

    cmp-long v3, v16, v18

    if-lez v3, :cond_75

    .line 581
    const-string/jumbo v3, "UsageStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Time changed in UsageStats by "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v16, 0x3e8

    div-long v16, v12, v16

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v15, " seconds"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 583
    .local v14, "userCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_54
    if-ge v2, v14, :cond_6d

    .line 584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usage/UserUsageStatsService;

    .line 590
    .local v5, "service":Lcom/android/server/usage/UserUsageStatsService;
    new-instance v3, Lcom/android/server/usage/UsageStatsService$2;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsService$2;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UserUsageStatsService;JJ)V

    invoke-virtual {v3}, Lcom/android/server/usage/UsageStatsService$2;->start()V

    .line 583
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 597
    .end local v5    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_6d
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 598
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .line 600
    .end local v2    # "i":I
    .end local v14    # "userCount":I
    :cond_75
    return-wide v8
.end method

.method private cleanUpRemovedUsersLocked()V
    .registers 11

    .prologue
    .line 353
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    .line 354
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v6, :cond_f

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_18

    .line 355
    :cond_f
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "There can\'t be no users"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 358
    :cond_18
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 359
    .local v3, "toDelete":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "fileNames":[Ljava/lang/String;
    if-nez v1, :cond_26

    .line 362
    return-void

    .line 365
    :cond_26
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 367
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 368
    .local v4, "userCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    if-ge v2, v4, :cond_46

    .line 369
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 370
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 373
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_46
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 374
    .local v0, "deleteCount":I
    const/4 v2, 0x0

    :goto_4b
    if-ge v2, v0, :cond_60

    .line 375
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 374
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 352
    :cond_60
    return-void
.end method

.method private convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V
    .registers 8
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    .prologue
    .line 608
    const-wide/16 v0, 0x0

    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 607
    return-void
.end method

.method private static deleteRecursively(Ljava/io/File;)V
    .registers 6
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 547
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 548
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_12

    .line 549
    const/4 v2, 0x0

    array-length v3, v0

    :goto_8
    if-ge v2, v3, :cond_12

    aget-object v1, v0, v2

    .line 550
    .local v1, "subFile":Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 549
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 554
    .end local v1    # "subFile":Ljava/io/File;
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_32

    .line 555
    const-string/jumbo v2, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_32
    return-void
.end method

.method private fetchCarrierPrivilegedAppsLocked()V
    .registers 4

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 972
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPackagesWithCarrierPrivileges()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 973
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/usage/UsageStatsService;->mHaveCarrierPrivilegedApps:Z

    .line 969
    return-void
.end method

.method private flushToDiskLocked()V
    .registers 6

    .prologue
    .line 1002
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1003
    .local v2, "userCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v2, :cond_22

    .line 1004
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UserUsageStatsService;

    .line 1005
    .local v1, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v1}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 1006
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimesLocked(I)V

    .line 1003
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1010
    .end local v1    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_22
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v3}, Lcom/android/server/usage/AppIdleHistory;->writeElapsedTimeLocked()V

    .line 1011
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1001
    return-void
.end method

.method private getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "currentTimeMillis"    # J

    .prologue
    .line 561
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserUsageStatsService;

    .line 562
    .local v0, "service":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v0, :cond_26

    .line 563
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService;

    .end local v0    # "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 564
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 563
    invoke-direct {v0, v1, p1, v2, p0}, Lcom/android/server/usage/UserUsageStatsService;-><init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V

    .line 565
    .restart local v0    # "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/usage/UserUsageStatsService;->init(J)V

    .line 566
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 568
    :cond_26
    return-object v0
.end method

.method private initializeDefaultsForSystemApps(I)V
    .registers 12
    .param p1, "userId"    # I

    .prologue
    .line 331
    const-string/jumbo v7, "UsageStatsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Initializing defaults for system apps on user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 333
    .local v0, "elapsedRealtime":J
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 334
    const/16 v8, 0x200

    .line 333
    invoke-virtual {v7, v8, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v5

    .line 336
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 337
    .local v3, "packageCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    if-ge v2, v3, :cond_49

    .line 338
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 339
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 340
    .local v4, "packageName":Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_46

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v7

    if-eqz v7, :cond_46

    .line 341
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v7, v4, p1, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->reportUsageLocked(Ljava/lang/String;IJ)V

    .line 337
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 330
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :cond_49
    return-void
.end method

.method private isActiveDeviceAdmin(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 942
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 943
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_10

    const/4 v1, 0x0

    return v1

    .line 944
    :cond_10
    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method private isActiveNetworkScorer(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 980
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 981
    const-string/jumbo v2, "network_score"

    .line 980
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    .line 982
    .local v0, "nsm":Landroid/net/NetworkScoreManager;
    if-eqz p1, :cond_18

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private isAppIdleFiltered(Ljava/lang/String;IIJ)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "elapsedRealtime"    # J

    .prologue
    const/4 v2, 0x0

    .line 817
    if-nez p1, :cond_4

    return v2

    .line 819
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    if-nez v1, :cond_9

    .line 820
    return v2

    .line 822
    :cond_9
    const/16 v1, 0x2710

    if-ge p2, v1, :cond_e

    .line 824
    return v2

    .line 826
    :cond_e
    const-string/jumbo v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 829
    return v2

    .line 831
    :cond_18
    iget-boolean v1, p0, Lcom/android/server/usage/UsageStatsService;->mSystemServicesReady:Z

    if-eqz v1, :cond_46

    .line 836
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v1, p1}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_25

    move-result v1

    if-eqz v1, :cond_2b

    .line 837
    return v2

    .line 839
    :catch_25
    move-exception v0

    .line 840
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 843
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2b
    invoke-direct {p0, p1, p3}, Lcom/android/server/usage/UsageStatsService;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 844
    return v2

    .line 847
    :cond_32
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->isActiveNetworkScorer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 848
    return v2

    .line 851
    :cond_39
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-eqz v1, :cond_46

    .line 852
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, p1, p3}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v1

    .line 851
    if-eqz v1, :cond_46

    .line 853
    return v2

    .line 857
    :cond_46
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/server/usage/UsageStatsService;->isAppIdleUnfiltered(Ljava/lang/String;IJ)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 858
    return v2

    .line 863
    :cond_4d
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->isCarrierApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 864
    return v2

    .line 867
    :cond_54
    const/4 v1, 0x1

    return v1
.end method

.method private isAppIdleUnfiltered(Ljava/lang/String;IJ)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .prologue
    .line 772
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 773
    :try_start_3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->isIdleLocked(Ljava/lang/String;IJ)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    .line 772
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isCarrierApp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 948
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 949
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mHaveCarrierPrivilegedApps:Z

    if-nez v0, :cond_a

    .line 950
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->fetchCarrierPrivilegedAppsLocked()V

    .line 952
    :cond_a
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mCarrierPrivilegedApps:Ljava/util/List;

    if-eqz v0, :cond_16

    .line 953
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mCarrierPrivilegedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_19

    move-result v0

    monitor-exit v1

    return v0

    .line 955
    :cond_16
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 948
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isDisplayOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 245
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    .line 246
    const/4 v2, 0x2

    .line 245
    if-ne v1, v2, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method private notifyBatteryStats(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    .prologue
    .line 513
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 514
    const/16 v3, 0x2000

    .line 513
    invoke-virtual {v2, p1, v3, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v1

    .line 516
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-nez v2, :cond_d

    .line 517
    return-void

    .line 519
    :cond_d
    if-eqz p3, :cond_17

    .line 520
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/16 v3, 0xf

    invoke-interface {v2, v3, p1, v1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V

    .line 511
    .end local v1    # "uid":I
    :goto_16
    return-void

    .line 523
    .restart local v1    # "uid":I
    :cond_17
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/16 v3, 0x10

    invoke-interface {v2, v3, p1, v1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1e} :catch_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_16

    .line 526
    .end local v1    # "uid":I
    :catch_1f
    move-exception v0

    .local v0, "e":Landroid/util/AndroidException;
    goto :goto_16
.end method

.method private postNextParoleTimeout()V
    .registers 8

    .prologue
    const/4 v6, 0x6

    .line 398
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 402
    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    add-long/2addr v2, v4

    .line 403
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v4

    .line 402
    sub-long v0, v2, v4

    .line 404
    .local v0, "timeLeft":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_19

    .line 405
    const-wide/16 v0, 0x0

    .line 407
    :cond_19
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 396
    return-void
.end method

.method private postParoleEndTimeout()V
    .registers 5

    .prologue
    const/4 v1, 0x7

    .line 412
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 413
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleDurationMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 410
    return-void
.end method

.method private postParoleStateChanged()V
    .registers 3

    .prologue
    const/16 v1, 0x9

    .line 418
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 416
    return-void
.end method

.method private static validRange(JJJ)Z
    .registers 8
    .param p0, "currentTime"    # J
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .prologue
    const/4 v0, 0x0

    .line 998
    cmp-long v1, p2, p0

    if-gtz v1, :cond_a

    cmp-long v1, p2, p4

    if-gez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method


# virtual methods
.method addListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .prologue
    .line 778
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 779
    :try_start_3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 780
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit v1

    .line 777
    return-void

    .line 778
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method checkIdleStates(I)Z
    .registers 20
    .param p1, "checkUserId"    # I

    .prologue
    .line 445
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    if-nez v2, :cond_8

    .line 446
    const/4 v2, 0x0

    return v2

    .line 451
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v15

    .line 452
    .local v15, "runningUserIds":[I
    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_1d

    .line 453
    move/from16 v0, p1

    invoke-static {v15, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1a} :catch_35

    move-result v2

    if-eqz v2, :cond_33

    .line 460
    :cond_1d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 461
    .local v6, "elapsedRealtime":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_22
    array-length v2, v15

    if-ge v8, v2, :cond_93

    .line 462
    aget v5, v15, v8

    .line 463
    .local v5, "userId":I
    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_3b

    move/from16 v0, p1

    if-eq v0, v5, :cond_3b

    .line 461
    :cond_30
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    .line 454
    .end local v5    # "userId":I
    .end local v6    # "elapsedRealtime":J
    .end local v8    # "i":I
    :cond_33
    const/4 v2, 0x0

    return v2

    .line 456
    .end local v15    # "runningUserIds":[I
    :catch_35
    move-exception v14

    .line 457
    .local v14, "re":Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 469
    .end local v14    # "re":Landroid/os/RemoteException;
    .restart local v5    # "userId":I
    .restart local v6    # "elapsedRealtime":J
    .restart local v8    # "i":I
    .restart local v15    # "runningUserIds":[I
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 470
    const/16 v4, 0x200

    .line 469
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v12

    .line 472
    .local v12, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 473
    .local v11, "packageCount":I
    const/4 v10, 0x0

    .local v10, "p":I
    :goto_4a
    if-ge v10, v11, :cond_30

    .line 474
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageInfo;

    .line 475
    .local v13, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 477
    .local v3, "packageName":Ljava/lang/String;
    iget-object v2, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    move-object/from16 v2, p0

    .line 476
    invoke-direct/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v9

    .line 479
    .local v9, "isIdle":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    .line 480
    if-eqz v9, :cond_8e

    const/4 v2, 0x1

    .line 479
    :goto_6f
    const/16 v17, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 481
    if-eqz v9, :cond_8b

    .line 482
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 483
    :try_start_83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/android/server/usage/AppIdleHistory;->setIdle(Ljava/lang/String;IJ)V
    :try_end_8a
    .catchall {:try_start_83 .. :try_end_8a} :catchall_90

    monitor-exit v4

    .line 473
    :cond_8b
    add-int/lit8 v10, v10, 0x1

    goto :goto_4a

    .line 480
    :cond_8e
    const/4 v2, 0x0

    goto :goto_6f

    .line 482
    :catchall_90
    move-exception v2

    monitor-exit v4

    throw v2

    .line 492
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "userId":I
    .end local v9    # "isIdle":Z
    .end local v10    # "p":I
    .end local v11    # "packageCount":I
    .end local v12    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v13    # "pi":Landroid/content/pm/PackageInfo;
    :cond_93
    const/4 v2, 0x1

    return v2
.end method

.method checkParoleTimeout()V
    .registers 9

    .prologue
    .line 497
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 498
    :try_start_3
    iget-boolean v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoled:Z

    if-nez v2, :cond_19

    .line 499
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    sub-long v0, v4, v6

    .line 500
    .local v0, "timeSinceLastParole":J
    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_1b

    .line 502
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1f

    .end local v0    # "timeSinceLastParole":J
    :cond_19
    :goto_19
    monitor-exit v3

    .line 496
    return-void

    .line 505
    .restart local v0    # "timeSinceLastParole":J
    :cond_1b
    :try_start_1b
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postNextParoleTimeout()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_19

    .line 497
    .end local v0    # "timeSinceLastParole":J
    :catchall_1f
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method clearAppIdleForPackage(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 347
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 348
    :try_start_3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->clearUsageLocked(Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 346
    return-void

    .line 347
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method clearCarrierPrivilegedApps()V
    .registers 3

    .prologue
    .line 963
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 964
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mHaveCarrierPrivilegedApps:Z

    .line 965
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mCarrierPrivilegedApps:Ljava/util/List;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    monitor-exit v1

    .line 959
    return-void

    .line 963
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 11
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1018
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1019
    :try_start_3
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v4, "  "

    invoke-direct {v2, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1020
    .local v2, "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1021
    .local v0, "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1023
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1024
    .local v3, "userCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v3, :cond_9d

    .line 1025
    const-string/jumbo v4, "user"

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1026
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1027
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1028
    const-string/jumbo v4, "--checkin"

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 1029
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v4, v2}, Lcom/android/server/usage/UserUsageStatsService;->checkin(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1042
    :cond_4a
    :goto_4a
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v2, v6}, Lcom/android/server/usage/AppIdleHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;I)V

    .line 1043
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1024
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1031
    :cond_5b
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v4, v2}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1032
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1033
    array-length v4, p1

    if-lez v4, :cond_4a

    .line 1034
    const-string/jumbo v4, "history"

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 1035
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v2, v6}, Lcom/android/server/usage/AppIdleHistory;->dumpHistory(Lcom/android/internal/util/IndentingPrintWriter;I)V
    :try_end_83
    .catchall {:try_start_3 .. :try_end_83} :catchall_84

    goto :goto_4a

    .line 1018
    .end local v0    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v3    # "userCount":I
    :catchall_84
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1036
    .restart local v0    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v2    # "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v3    # "userCount":I
    :cond_87
    :try_start_87
    const-string/jumbo v4, "flush"

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 1037
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 1038
    const-string/jumbo v4, "Flushed stats to disk"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4a

    .line 1046
    :cond_9d
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1047
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Carrier privileged apps (have="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/server/usage/UsageStatsService;->mHaveCarrierPrivilegedApps:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1048
    const-string/jumbo v6, "): "

    .line 1047
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1048
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 1047
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1051
    const-string/jumbo v4, "Settings:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    const-string/jumbo v4, "  mAppIdleDurationMillis="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1054
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleScreenThresholdMillis:J

    invoke-static {v6, v7, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1055
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1057
    const-string/jumbo v4, "  mAppIdleWallclockThresholdMillis="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1058
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleWallclockThresholdMillis:J

    invoke-static {v6, v7, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1059
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1061
    const-string/jumbo v4, "  mCheckIdleIntervalMillis="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1062
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mCheckIdleIntervalMillis:J

    invoke-static {v6, v7, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1063
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1065
    const-string/jumbo v4, "  mAppIdleParoleIntervalMillis="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1066
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    invoke-static {v6, v7, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1067
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1069
    const-string/jumbo v4, "  mAppIdleParoleDurationMillis="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1070
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleDurationMillis:J

    invoke-static {v6, v7, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1071
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1073
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1074
    const-string/jumbo v4, "mAppIdleEnabled="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 1075
    const-string/jumbo v4, " mAppIdleParoled="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoled:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 1076
    const-string/jumbo v4, " mScreenOn="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOn:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 1077
    const-string/jumbo v4, "mLastAppIdleParoledTime="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1078
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    invoke-static {v6, v7, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1079
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_147
    .catchall {:try_start_87 .. :try_end_147} :catchall_84

    monitor-exit v5

    .line 1017
    return-void
.end method

.method flushToDisk()V
    .registers 3

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 706
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 704
    return-void

    .line 705
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method forceIdleState(Ljava/lang/String;IZ)V
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    .prologue
    .line 680
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsService;->getAppId(Ljava/lang/String;)I

    move-result v4

    .line 681
    .local v4, "appId":I
    if-gez v4, :cond_7

    return-void

    .line 682
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 683
    :try_start_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .local v6, "elapsedRealtime":J
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p2

    .line 685
    invoke-direct/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v14

    .line 687
    .local v14, "previouslyIdle":Z
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-wide v12, v6

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/usage/AppIdleHistory;->setIdleLocked(Ljava/lang/String;IZJ)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p2

    .line 688
    invoke-direct/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v15

    .line 691
    .local v15, "stillIdle":Z
    if-eq v14, v15, :cond_52

    .line 692
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 693
    if-eqz v15, :cond_54

    const/4 v2, 0x1

    .line 692
    :goto_41
    const/4 v8, 0x3

    move/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v5, v8, v0, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 694
    if-nez v15, :cond_52

    .line 695
    invoke-direct/range {p0 .. p3}, Lcom/android/server/usage/UsageStatsService;->notifyBatteryStats(Ljava/lang/String;IZ)V
    :try_end_52
    .catchall {:try_start_e .. :try_end_52} :catchall_56

    :cond_52
    monitor-exit v16

    .line 679
    return-void

    .line 693
    :cond_54
    const/4 v2, 0x0

    goto :goto_41

    .line 682
    .end local v6    # "elapsedRealtime":J
    .end local v14    # "previouslyIdle":Z
    .end local v15    # "stillIdle":Z
    :catchall_56
    move-exception v2

    monitor-exit v16

    throw v2
.end method

.method getAppId(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 793
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 794
    const/16 v3, 0x2200

    .line 793
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 796
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    return v2

    .line 797
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_b
    move-exception v1

    .line 798
    .local v1, "re":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, -0x1

    return v2
.end method

.method getIdleUidsForUser(I)[I
    .registers 21
    .param p1, "userId"    # I

    .prologue
    .line 871
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    if-nez v2, :cond_a

    .line 872
    const/4 v2, 0x0

    new-array v2, v2, [I

    return-object v2

    .line 875
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 879
    .local v6, "elapsedRealtime":J
    :try_start_e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 880
    const/4 v3, 0x0

    .line 879
    move/from16 v0, p1

    invoke-interface {v2, v3, v0}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v16

    .line 881
    .local v16, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v16, :cond_1f

    .line 882
    const/4 v2, 0x0

    new-array v2, v2, [I

    return-object v2

    .line 884
    :cond_1f
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_22} :catch_60

    move-result-object v9

    .line 891
    .local v9, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v17, Landroid/util/SparseIntArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseIntArray;-><init>()V

    .line 895
    .local v17, "uidStates":Landroid/util/SparseIntArray;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    .local v11, "i":I
    :goto_2e
    if-ltz v11, :cond_7d

    .line 896
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    .line 899
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    move-object/from16 v2, p0

    move/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v12

    .line 902
    .local v12, "idle":Z
    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v13

    .line 903
    .local v13, "index":I
    if-gez v13, :cond_68

    .line 904
    iget v3, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v12, :cond_66

    const/high16 v2, 0x10000

    :goto_56
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 895
    :goto_5d
    add-int/lit8 v11, v11, -0x1

    goto :goto_2e

    .line 885
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v11    # "i":I
    .end local v12    # "idle":Z
    .end local v13    # "index":I
    .end local v16    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .end local v17    # "uidStates":Landroid/util/SparseIntArray;
    :catch_60
    move-exception v10

    .line 886
    .local v10, "e":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 904
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v11    # "i":I
    .restart local v12    # "idle":Z
    .restart local v13    # "index":I
    .restart local v16    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v17    # "uidStates":Landroid/util/SparseIntArray;
    :cond_66
    const/4 v2, 0x0

    goto :goto_56

    .line 906
    :cond_68
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v18

    .line 907
    .local v18, "value":I
    add-int/lit8 v3, v18, 0x1

    if-eqz v12, :cond_7b

    const/high16 v2, 0x10000

    :goto_74
    add-int/2addr v2, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_5d

    :cond_7b
    const/4 v2, 0x0

    goto :goto_74

    .line 913
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "idle":Z
    .end local v13    # "index":I
    .end local v18    # "value":I
    :cond_7d
    const/4 v14, 0x0

    .line 914
    .local v14, "numIdle":I
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    :goto_84
    if-ltz v11, :cond_99

    .line 915
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v18

    .line 916
    .restart local v18    # "value":I
    move/from16 v0, v18

    and-int/lit16 v2, v0, 0x7fff

    shr-int/lit8 v3, v18, 0x10

    if-ne v2, v3, :cond_96

    .line 917
    add-int/lit8 v14, v14, 0x1

    .line 914
    :cond_96
    add-int/lit8 v11, v11, -0x1

    goto :goto_84

    .line 921
    .end local v18    # "value":I
    :cond_99
    new-array v15, v14, [I

    .line 922
    .local v15, "res":[I
    const/4 v14, 0x0

    .line 923
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    :goto_a2
    if-ltz v11, :cond_bf

    .line 924
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v18

    .line 925
    .restart local v18    # "value":I
    move/from16 v0, v18

    and-int/lit16 v2, v0, 0x7fff

    shr-int/lit8 v3, v18, 0x10

    if-ne v2, v3, :cond_bc

    .line 926
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    aput v2, v15, v14

    .line 927
    add-int/lit8 v14, v14, 0x1

    .line 923
    :cond_bc
    add-int/lit8 v11, v11, -0x1

    goto :goto_a2

    .line 931
    .end local v18    # "value":I
    :cond_bf
    return-object v15
.end method

.method informListeners(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isIdle"    # Z

    .prologue
    .line 986
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 987
    .local v0, "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onAppIdleStateChanged(Ljava/lang/String;IZ)V

    goto :goto_6

    .line 985
    .end local v0    # "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    :cond_16
    return-void
.end method

.method informParoleStateChanged()V
    .registers 4

    .prologue
    .line 992
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 993
    .local v0, "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    iget-boolean v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoled:Z

    invoke-virtual {v0, v2}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    goto :goto_6

    .line 991
    .end local v0    # "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    :cond_18
    return-void
.end method

.method isAppIdleFilteredOrParoled(Ljava/lang/String;IJ)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoled:Z

    if-eqz v0, :cond_6

    .line 804
    const/4 v0, 0x0

    return v0

    .line 806
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getAppId(Ljava/lang/String;)I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v0

    return v0
.end method

.method public onBootPhase(I)V
    .registers 8
    .param p1, "phase"    # I

    .prologue
    .line 214
    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_7e

    .line 216
    new-instance v0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$SettingsObserver;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Handler;)V

    .line 217
    .local v0, "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->registerObserver()V

    .line 218
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->updateSettings()V

    .line 220
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetManager;

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 222
    const-string/jumbo v1, "deviceidle"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 221
    invoke-static {v1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 224
    const-string/jumbo v1, "batterystats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 223
    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 225
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 226
    const-string/jumbo v2, "display"

    .line 225
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 227
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mPowerManager:Landroid/os/PowerManager;

    .line 229
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 230
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 231
    :try_start_62
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->isDisplayOn()Z

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->updateDisplayLocked(ZJ)V
    :try_end_6f
    .catchall {:try_start_62 .. :try_end_6f} :catchall_7b

    monitor-exit v2

    .line 234
    iget-boolean v1, p0, Lcom/android/server/usage/UsageStatsService;->mPendingOneTimeCheckIdleStates:Z

    if-eqz v1, :cond_77

    .line 235
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->postOneTimeCheckIdleStates()V

    .line 238
    :cond_77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/usage/UsageStatsService;->mSystemServicesReady:Z

    .line 213
    .end local v0    # "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    :cond_7a
    :goto_7a
    return-void

    .line 230
    .restart local v0    # "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    :catchall_7b
    move-exception v1

    monitor-exit v2

    throw v1

    .line 239
    .end local v0    # "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    :cond_7e
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_7a

    .line 240
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/BatteryManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManager;

    invoke-virtual {v1}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V

    goto :goto_7a
.end method

.method onDeviceIdleModeChanged()V
    .registers 11

    .prologue
    .line 531
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    .line 533
    .local v0, "deviceIdle":Z
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 534
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    sub-long v2, v6, v8

    .line 535
    .local v2, "timeSinceLastParole":J
    if-nez v0, :cond_1f

    .line 536
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1f

    .line 538
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_26

    :cond_1d
    :goto_1d
    monitor-exit v4

    .line 530
    return-void

    .line 539
    :cond_1f
    if-eqz v0, :cond_1d

    .line 541
    const/4 v1, 0x0

    :try_start_22
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_1d

    .line 533
    .end local v2    # "timeSinceLastParole":J
    :catchall_26
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method public onNewUpdate(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->initializeDefaultsForSystemApps(I)V

    .line 326
    return-void
.end method

.method public onStart()V
    .registers 14

    .prologue
    const/4 v4, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 165
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    .line 166
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 167
    new-instance v0, Lcom/android/server/usage/UsageStatsService$H;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$H;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 169
    new-instance v12, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .local v12, "systemDataDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "usagestats"

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    .line 171
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 172
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Usage stats directory does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_7b
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 178
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 180
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 179
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 182
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 183
    .local v8, "packageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string/jumbo v0, "package"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/android/server/usage/UsageStatsService$PackageReceiver;

    invoke-direct {v6, p0, v4}, Lcom/android/server/usage/UsageStatsService$PackageReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$PackageReceiver;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 189
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    move-object v9, v4

    .line 188
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 192
    const v1, 0x1120013

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    .line 193
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    if-eqz v0, :cond_fc

    .line 194
    new-instance v11, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.os.action.CHARGING"

    invoke-direct {v11, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 195
    .local v11, "deviceStates":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.os.action.DISCHARGING"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string/jumbo v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;)V

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    .end local v11    # "deviceStates":Landroid/content/IntentFilter;
    :cond_fc
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_ff
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->cleanUpRemovedUsersLocked()V

    .line 202
    new-instance v0, Lcom/android/server/usage/AppIdleHistory;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Lcom/android/server/usage/AppIdleHistory;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;
    :try_end_10d
    .catchall {:try_start_ff .. :try_end_10d} :catchall_130

    monitor-exit v1

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .line 208
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v1, Lcom/android/server/usage/UsageStatsService$LocalService;

    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$LocalService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usage/UsageStatsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 209
    const-string/jumbo v0, "usagestats"

    new-instance v1, Lcom/android/server/usage/UsageStatsService$BinderService;

    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usage/UsageStatsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 163
    return-void

    .line 200
    :catchall_130
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStatsReloaded()V
    .registers 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->postOneTimeCheckIdleStates()V

    .line 321
    return-void
.end method

.method public onStatsUpdated()V
    .registers 5

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x124f80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 316
    return-void
.end method

.method onUserRemoved(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 714
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 715
    :try_start_3
    const-string/jumbo v0, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removing user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and all data."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 717
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppIdleHistory;->onUserRemoved(I)V

    .line 718
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->cleanUpRemovedUsersLocked()V
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_33

    monitor-exit v1

    .line 713
    return-void

    .line 714
    :catchall_33
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method postCheckIdleStates(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 422
    return-void
.end method

.method postOneTimeCheckIdleStates()V
    .registers 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    if-nez v0, :cond_8

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingOneTimeCheckIdleStates:Z

    .line 430
    :goto_7
    return-void

    .line 435
    :cond_8
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingOneTimeCheckIdleStates:Z

    goto :goto_7
.end method

.method queryConfigurationStats(IIJJ)Ljava/util/List;
    .registers 16
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 743
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 744
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    .local v0, "timeNow":J
    move-wide v2, p3

    move-wide v4, p5

    .line 745
    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1f

    move-result v3

    if-nez v3, :cond_12

    .line 746
    const/4 v3, 0x0

    monitor-exit v8

    return-object v3

    .line 750
    :cond_12
    :try_start_12
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v2

    .local v2, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .line 751
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryConfigurationStats(IJJ)Ljava/util/List;
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1f

    move-result-object v3

    monitor-exit v8

    return-object v3

    .line 743
    .end local v0    # "timeNow":J
    .end local v2    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_1f
    move-exception v3

    monitor-exit v8

    throw v3
.end method

.method queryEvents(IJJ)Landroid/app/usage/UsageEvents;
    .registers 14
    .param p1, "userId"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .prologue
    .line 759
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 760
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    .local v0, "timeNow":J
    move-wide v2, p2

    move-wide v4, p4

    .line 761
    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1c

    move-result v2

    if-nez v2, :cond_12

    .line 762
    const/4 v2, 0x0

    monitor-exit v7

    return-object v2

    .line 766
    :cond_12
    :try_start_12
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v6

    .line 767
    .local v6, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v6, p2, p3, p4, p5}, Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJ)Landroid/app/usage/UsageEvents;
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1c

    move-result-object v2

    monitor-exit v7

    return-object v2

    .line 759
    .end local v0    # "timeNow":J
    .end local v6    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_1c
    move-exception v2

    monitor-exit v7

    throw v2
.end method

.method queryUsageStats(IIJJ)Ljava/util/List;
    .registers 16
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 726
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 727
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    .local v0, "timeNow":J
    move-wide v2, p3

    move-wide v4, p5

    .line 728
    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1f

    move-result v3

    if-nez v3, :cond_12

    .line 729
    const/4 v3, 0x0

    monitor-exit v8

    return-object v3

    .line 733
    :cond_12
    :try_start_12
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v2

    .local v2, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .line 734
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryUsageStats(IJJ)Ljava/util/List;
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1f

    move-result-object v3

    monitor-exit v8

    return-object v3

    .line 726
    .end local v0    # "timeNow":J
    .end local v2    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_1f
    move-exception v3

    monitor-exit v8

    throw v3
.end method

.method removeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .prologue
    .line 786
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 787
    :try_start_3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 785
    return-void

    .line 786
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "providerPkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 654
    invoke-static {p1, p3}, Landroid/content/ContentResolver;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 656
    .local v2, "packages":[Ljava/lang/String;
    array-length v5, v2

    :goto_6
    if-ge v4, v5, :cond_28

    aget-object v1, v2, v4

    .line 660
    .local v1, "packageName":Ljava/lang/String;
    :try_start_a
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 661
    const/high16 v7, 0x100000

    .line 660
    invoke-virtual {v6, v1, v7, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 662
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_18

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v6, :cond_1b

    .line 656
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :cond_18
    :goto_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 665
    .restart local v3    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1b
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 666
    const/4 v6, 0x0

    invoke-virtual {p0, v1, p3, v6}, Lcom/android/server/usage/UsageStatsService;->forceIdleState(Ljava/lang/String;IZ)V
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_25} :catch_26

    goto :goto_18

    .line 668
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :catch_26
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_18

    .line 652
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_28
    return-void
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;I)V
    .registers 15
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "userId"    # I

    .prologue
    .line 625
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 626
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v4

    .line 627
    .local v4, "timeNow":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 628
    .local v0, "elapsedRealtime":J
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V

    .line 631
    invoke-direct {p0, p2, v4, v5}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v3

    .line 634
    .local v3, "service":Lcom/android/server/usage/UserUsageStatsService;
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 635
    iget-object v8, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 634
    invoke-virtual {v6, v8, p2, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->isIdleLocked(Ljava/lang/String;IJ)Z

    move-result v2

    .line 636
    .local v2, "previouslyIdle":Z
    invoke-virtual {v3, p1}, Lcom/android/server/usage/UserUsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 638
    iget v6, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v8, 0x1

    if-eq v6, v8, :cond_27

    .line 639
    iget v6, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_47

    .line 642
    :cond_27
    :goto_27
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v8, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v6, v8, p2, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->reportUsageLocked(Ljava/lang/String;IJ)V

    .line 643
    if-eqz v2, :cond_45

    .line 644
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 645
    iget-object v9, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 644
    const/4 v10, 0x3

    .line 645
    const/4 v11, 0x0

    .line 644
    invoke-virtual {v8, v10, p2, v11, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 646
    iget-object v6, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {p0, v6, p2, v8}, Lcom/android/server/usage/UsageStatsService;->notifyBatteryStats(Ljava/lang/String;IZ)V
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_52

    :cond_45
    monitor-exit v7

    .line 624
    return-void

    .line 640
    :cond_47
    :try_start_47
    iget v6, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v8, 0x6

    if-eq v6, v8, :cond_27

    .line 641
    iget v6, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_52

    const/4 v8, 0x7

    if-ne v6, v8, :cond_45

    goto :goto_27

    .line 625
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "previouslyIdle":Z
    .end local v3    # "service":Lcom/android/server/usage/UserUsageStatsService;
    .end local v4    # "timeNow":J
    :catchall_52
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method setAppIdle(Ljava/lang/String;ZI)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "idle"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 935
    if-nez p1, :cond_3

    return-void

    .line 937
    :cond_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_11

    const/4 v0, 0x1

    :goto_8
    const/4 v2, 0x4

    invoke-virtual {v1, v2, p3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 934
    return-void

    .line 937
    :cond_11
    const/4 v0, 0x0

    goto :goto_8
.end method

.method setAppIdleParoled(Z)V
    .registers 6
    .param p1, "paroled"    # Z

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 382
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoled:Z

    if-eq v0, p1, :cond_11

    .line 383
    iput-boolean p1, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoled:Z

    .line 385
    if-eqz p1, :cond_13

    .line 386
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postParoleEndTimeout()V

    .line 391
    :goto_e
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postParoleStateChanged()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1d

    :cond_11
    monitor-exit v1

    .line 380
    return-void

    .line 388
    :cond_13
    :try_start_13
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    .line 389
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postNextParoleTimeout()V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1d

    goto :goto_e

    .line 381
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method shutdown()V
    .registers 4

    .prologue
    .line 615
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 616
    :try_start_3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 617
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    .line 614
    return-void

    .line 615
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

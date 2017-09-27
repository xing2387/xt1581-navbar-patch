.class Lcom/android/server/MountService;
.super Landroid/os/storage/IMountService$Stub;
.source "MountService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$1;,
        Lcom/android/server/MountService$Callbacks;,
        Lcom/android/server/MountService$DefaultContainerConnection;,
        Lcom/android/server/MountService$Lifecycle;,
        Lcom/android/server/MountService$MountObbAction;,
        Lcom/android/server/MountService$MountServiceHandler;,
        Lcom/android/server/MountService$MountServiceInternalImpl;,
        Lcom/android/server/MountService$ObbAction;,
        Lcom/android/server/MountService$ObbActionHandler;,
        Lcom/android/server/MountService$ObbState;,
        Lcom/android/server/MountService$UnmountObbAction;,
        Lcom/android/server/MountService$VoldResponseCode;
    }
.end annotation


# static fields
.field private static final ATTR_CREATED_MILLIS:Ljava/lang/String; = "createdMillis"

.field private static final ATTR_FORCE_ADOPTABLE:Ljava/lang/String; = "forceAdoptable"

.field private static final ATTR_FS_UUID:Ljava/lang/String; = "fsUuid"

.field private static final ATTR_LAST_BENCH_MILLIS:Ljava/lang/String; = "lastBenchMillis"

.field private static final ATTR_LAST_TRIM_MILLIS:Ljava/lang/String; = "lastTrimMillis"

.field private static final ATTR_NICKNAME:Ljava/lang/String; = "nickname"

.field private static final ATTR_PART_GUID:Ljava/lang/String; = "partGuid"

.field private static final ATTR_PRIMARY_STORAGE_UUID:Ljava/lang/String; = "primaryStorageUuid"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_USER_FLAGS:Ljava/lang/String; = "userFlags"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final CRYPTD_TAG:Ljava/lang/String; = "CryptdConnector"

.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field public static final CRYPTO_TYPES:[Ljava/lang/String;

.field private static final DEBUG_EVENTS:Z = false

.field private static final DEBUG_OBB:Z = false

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field private static final H_DAEMON_CONNECTED:I = 0x2

.field private static final H_FSTRIM:I = 0x4

.field private static final H_INTERNAL_BROADCAST:I = 0x7

.field private static final H_PARTITION_FORGET:I = 0x9

.field private static final H_RESET:I = 0xa

.field private static final H_SHUTDOWN:I = 0x3

.field private static final H_SYSTEM_READY:I = 0x1

.field private static final H_UNLOCK_USER:I = 0x64

.field private static final H_VOLUME_BROADCAST:I = 0x6

.field private static final H_VOLUME_MOUNT:I = 0x5

.field private static final H_VOLUME_UNMOUNT:I = 0x8

.field private static final LAST_FSTRIM_FILE:Ljava/lang/String; = "last-fstrim"

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MOVE_STATUS_COPY_FINISHED:I = 0x52

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final TAG:Ljava/lang/String; = "MountService"

.field private static final TAG_STORAGE_BENCHMARK:Ljava/lang/String; = "storage_benchmark"

.field private static final TAG_STORAGE_TRIM:Ljava/lang/String; = "storage_trim"

.field private static final TAG_VOLUME:Ljava/lang/String; = "volume"

.field private static final TAG_VOLUMES:Ljava/lang/String; = "volumes"

.field private static final VERSION_ADD_PRIMARY:I = 0x2

.field private static final VERSION_FIX_PRIMARY:I = 0x3

.field private static final VERSION_INIT:I = 0x1

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector"

.field private static final WATCHDOG_ENABLE:Z

.field static sSelf:Lcom/android/server/MountService;


# instance fields
.field private final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

.field private volatile mBootCompleted:Z

.field private final mCallbacks:Lcom/android/server/MountService$Callbacks;

.field private final mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mConnectorThread:Ljava/lang/Thread;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private final mContext:Landroid/content/Context;

.field private final mCryptConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mCryptConnectorThread:Ljava/lang/Thread;

.field private volatile mCurrentUserId:I

.field private volatile mDaemonConnected:Z

.field private final mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

.field private mDiskScanLatches:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private mDisks:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mForceAdoptable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLastMaintenance:J

.field private final mLastMaintenanceFile:Ljava/io/File;

.field private mLocalUnlockedUsers:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

.field private mMoveCallback:Landroid/content/pm/IPackageMoveObserver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mMoveTargetUuid:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MountService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mPrimaryStorageUuid:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRecords:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private volatile mSystemReady:Z

.field private mSystemUnlockedUsers:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUnmountLock:Ljava/lang/Object;

.field private mUnmountSignal:Ljava/util/concurrent/CountDownLatch;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUnmountLock"
    .end annotation
.end field

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mVolumes:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .registers 2

    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/MountService;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/MountService;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/MountService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .registers 2

    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;
    .registers 2

    iget-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/MountService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/MountService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/MountService;->mLastMaintenance:J

    return-wide v0
.end method

.method static synthetic -get7(Lcom/android/server/MountService;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/MountService;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2

    iput-object p1, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/MountService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/MountService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/MountService;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/MountService;->mLastMaintenance:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/MountService;Landroid/os/storage/VolumeInfo;)Z
    .registers 3
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/MountService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/MountService;->isReady()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/MountService;I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->onCleanupUser(I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/MountService;I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->onUnlockUser(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/MountService;II)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "mode"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->remountUidExternalStorage(II)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .registers 2
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/MountService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnected()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/MountService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/MountService;->start()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/MountService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/MountService;->systemReady()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/MountService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/MountService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/MountService;Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/MountService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/MountService;->shouldBenchmark()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .registers 2
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/MountService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/MountService;->bootCompleted()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/MountService;Ljava/lang/String;)V
    .registers 2
    .param p1, "partGuid"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->forgetPartition(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/MountService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/MountService;->handleDaemonConnected()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/MountService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/MountService;->handleSystemReady()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/MountService;I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->handleUnlockUser(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 156
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/MountService;->sSelf:Lcom/android/server/MountService;

    .line 439
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "password"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "default"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "pattern"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "pin"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 438
    sput-object v0, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    .line 562
    new-instance v0, Landroid/content/ComponentName;

    .line 563
    const-string/jumbo v1, "com.android.defcontainer"

    const-string/jumbo v2, "com.android.defcontainer.DefaultContainerService"

    .line 562
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x1f4

    const/16 v5, 0x19

    const/4 v12, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 1498
    invoke-direct {p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    .line 296
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    .line 300
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/MountService;->mLocalUnlockedUsers:[I

    .line 303
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/MountService;->mSystemUnlockedUsers:[I

    .line 307
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    .line 310
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    .line 314
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    .line 322
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mDiskScanLatches:Landroid/util/ArrayMap;

    .line 329
    iput v1, p0, Lcom/android/server/MountService;->mCurrentUserId:I

    .line 449
    iput-boolean v1, p0, Lcom/android/server/MountService;->mSystemReady:Z

    .line 450
    iput-boolean v1, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    .line 451
    iput-boolean v1, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    .line 459
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 460
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    .line 462
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mUnmountLock:Ljava/lang/Object;

    .line 470
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    .line 488
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    .line 491
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    .line 494
    new-instance v0, Lcom/android/server/MountService$MountServiceInternalImpl;

    invoke-direct {v0, p0, v6}, Lcom/android/server/MountService$MountServiceInternalImpl;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$MountServiceInternalImpl;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

    .line 565
    new-instance v0, Lcom/android/server/MountService$DefaultContainerConnection;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$DefaultContainerConnection;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    .line 584
    iput-object v6, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 735
    new-instance v0, Lcom/android/server/MountService$1;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1499
    sput-object p0, Lcom/android/server/MountService;->sSelf:Lcom/android/server/MountService;

    .line 1501
    iput-object p1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    .line 1502
    new-instance v0, Lcom/android/server/MountService$Callbacks;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/MountService$Callbacks;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    .line 1503
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1506
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 1508
    new-instance v9, Landroid/os/HandlerThread;

    const-string/jumbo v0, "MountService"

    invoke-direct {v9, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1509
    .local v9, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 1510
    new-instance v0, Lcom/android/server/MountService$MountServiceHandler;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    .line 1513
    new-instance v0, Lcom/android/server/MountService$ObbActionHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$ObbActionHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    .line 1516
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    .line 1517
    .local v7, "dataDir":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    const-string/jumbo v0, "system"

    invoke-direct {v10, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1518
    .local v10, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "last-fstrim"

    invoke-direct {v0, v10, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    .line 1519
    iget-object v0, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_19e

    .line 1523
    :try_start_e9
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_f3} :catch_17b

    .line 1531
    :goto_f3
    new-instance v0, Landroid/util/AtomicFile;

    .line 1532
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v4, "storage.xml"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1531
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 1534
    iget-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1535
    :try_start_109
    invoke-direct {p0}, Lcom/android/server/MountService;->readSettingsLocked()V
    :try_end_10c
    .catchall {:try_start_109 .. :try_end_10c} :catchall_1a8

    monitor-exit v0

    .line 1538
    const-class v0, Landroid/os/storage/MountServiceInternal;

    iget-object v1, p0, Lcom/android/server/MountService;->mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1546
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "vold"

    const-string/jumbo v4, "VoldConnector"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1548
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0, v12}, Lcom/android/server/NativeDaemonConnector;->setDebug(Z)V

    .line 1549
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    iget-object v1, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->setWarnIfHeld(Ljava/lang/Object;)V

    .line 1550
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "VoldConnector"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mConnectorThread:Ljava/lang/Thread;

    .line 1553
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptd"

    .line 1554
    const-string/jumbo v4, "CryptdConnector"

    move-object v1, p0

    .line 1553
    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1555
    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0, v12}, Lcom/android/server/NativeDaemonConnector;->setDebug(Z)V

    .line 1556
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "CryptdConnector"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mCryptConnectorThread:Ljava/lang/Thread;

    .line 1558
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 1559
    .local v11, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1560
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1561
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v11, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1563
    iget-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1564
    :try_start_176
    invoke-direct {p0}, Lcom/android/server/MountService;->addInternalVolumeLocked()V
    :try_end_179
    .catchall {:try_start_176 .. :try_end_179} :catchall_1ab

    monitor-exit v0

    .line 1498
    return-void

    .line 1524
    .end local v11    # "userFilter":Landroid/content/IntentFilter;
    :catch_17b
    move-exception v8

    .line 1525
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to create fstrim record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f3

    .line 1528
    .end local v8    # "e":Ljava/io/IOException;
    :cond_19e
    iget-object v0, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/MountService;->mLastMaintenance:J

    goto/16 :goto_f3

    .line 1534
    :catchall_1a8
    move-exception v1

    monitor-exit v0

    throw v1

    .line 1563
    .restart local v11    # "userFilter":Landroid/content/IntentFilter;
    :catchall_1ab
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private addInternalVolumeLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 856
    new-instance v0, Landroid/os/storage/VolumeInfo;

    const-string/jumbo v1, "private"

    .line 857
    const/4 v2, 0x1

    .line 856
    invoke-direct {v0, v1, v2, v3, v3}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 858
    .local v0, "internal":Landroid/os/storage/VolumeInfo;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/storage/VolumeInfo;->state:I

    .line 859
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 860
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    return-void
.end method

.method private addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .registers 9
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3173
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3174
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3176
    .local v4, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-nez v4, :cond_26

    .line 3177
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3178
    .restart local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3188
    :cond_18
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3190
    :try_start_1b
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->link()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_49

    .line 3205
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3172
    return-void

    .line 3180
    :cond_26
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "o$iterator":Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MountService$ObbState;

    .line 3181
    .local v2, "o":Lcom/android/server/MountService$ObbState;
    iget-object v5, v2, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 3182
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Attempt to add ObbState twice. This indicates an error in the MountService logic."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3191
    .end local v2    # "o":Lcom/android/server/MountService$ObbState;
    .end local v3    # "o$iterator":Ljava/util/Iterator;
    :catch_49
    move-exception v1

    .line 3196
    .local v1, "e":Landroid/os/RemoteException;
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3197
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 3198
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3202
    :cond_58
    throw v1
.end method

.method private bootCompleted()V
    .registers 2

    .prologue
    .line 1584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    .line 1583
    return-void
.end method

.method private copyLocaleFromMountService()V
    .registers 8

    .prologue
    .line 1026
    :try_start_0
    const-string/jumbo v4, "SystemLocale"

    invoke-virtual {p0, v4}, Lcom/android/server/MountService;->getField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_e

    move-result-object v3

    .line 1030
    .local v3, "systemLocale":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1031
    return-void

    .line 1027
    .end local v3    # "systemLocale":Ljava/lang/String;
    :catch_e
    move-exception v1

    .line 1028
    .local v1, "e":Landroid/os/RemoteException;
    return-void

    .line 1034
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "systemLocale":Ljava/lang/String;
    :cond_10
    const-string/jumbo v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Got locale "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from mount service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 1036
    .local v2, "locale":Ljava/util/Locale;
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 1037
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 1039
    :try_start_3d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_44} :catch_70

    .line 1045
    :goto_44
    const-string/jumbo v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Setting system properties to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from mount service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const-string/jumbo v4, "persist.sys.locale"

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    return-void

    .line 1040
    :catch_70
    move-exception v1

    .line 1041
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MountService"

    const-string/jumbo v5, "Error setting system locale from mount service"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44
.end method

.method private encodeBytes([B)Lcom/android/server/NativeDaemonConnector$SensitiveArg;
    .registers 4
    .param p1, "bytes"    # [B

    .prologue
    .line 2867
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2868
    new-instance v0, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    const-string/jumbo v1, "!"

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 2870
    :cond_f
    new-instance v0, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private enforceAdminUser()V
    .registers 8

    .prologue
    .line 1479
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 1480
    .local v4, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1482
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1484
    .local v2, "token":J
    :try_start_13
    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isAdmin()Z
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_29

    move-result v1

    .line 1486
    .local v1, "isAdmin":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1488
    if-nez v1, :cond_2e

    .line 1489
    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v6, "Only admin users can adopt sd cards"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1485
    .end local v1    # "isAdmin":Z
    :catchall_29
    move-exception v5

    .line 1486
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1485
    throw v5

    .line 1478
    .restart local v1    # "isAdmin":Z
    :cond_2e
    return-void
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .registers 3
    .param p1, "perm"    # Ljava/lang/String;

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    return-void
.end method

.method private static escapeNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 425
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 426
    const-string/jumbo v0, "!"

    return-object v0

    .line 428
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_1a

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_20

    .line 429
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_20
    return-object p0
.end method

.method private findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
    .registers 5
    .param p1, "diskId"    # Ljava/lang/String;

    .prologue
    .line 414
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 415
    :try_start_3
    iget-object v1, p0, Lcom/android/server/MountService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 416
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    if-nez v0, :cond_18

    .line 417
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 418
    .restart local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/MountService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit v2

    .line 420
    return-object v0

    .line 414
    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_1a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 354
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_30

    .line 356
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 357
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v2, :cond_2d

    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 358
    iget-object v2, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    iget-object v4, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_32

    monitor-exit v3

    return-object v2

    .line 355
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_30
    monitor-exit v3

    .line 362
    return-object v4

    .line 354
    :catchall_32
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 5
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 380
    .local v0, "storage":Landroid/os/storage/StorageManager;
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 381
    const-string/jumbo v1, "emulated"

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1

    .line 382
    :cond_1a
    const-string/jumbo v1, "primary_physical"

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 383
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1

    .line 385
    :cond_28
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1
.end method

.method private findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 333
    :try_start_3
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2a

    .line 334
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v0, :cond_f

    monitor-exit v2

    .line 335
    return-object v0

    :cond_f
    monitor-exit v2

    .line 338
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No volume found for ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    .end local v0    # "vol":Landroid/os/storage/VolumeInfo;
    :catchall_2a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 342
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_27

    .line 344
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 345
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 346
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_42

    monitor-exit v3

    return-object v2

    .line 343
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_27
    monitor-exit v3

    .line 350
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No volume found for path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 342
    :catchall_42
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private forgetPartition(Ljava/lang/String;)V
    .registers 8
    .param p1, "partGuid"    # Ljava/lang/String;

    .prologue
    .line 1964
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "volume"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "forget_partition"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_14
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_14} :catch_15

    .line 1962
    :goto_14
    return-void

    .line 1965
    :catch_15
    move-exception v0

    .line 1966
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to forget key for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private getDefaultPrimaryStorageUuid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1588
    const-string/jumbo v0, "ro.vold.primary_physical"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1589
    const-string/jumbo v0, "primary_physical"

    return-object v0

    .line 1591
    :cond_e
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private handleDaemonConnected()V
    .registers 5

    .prologue
    .line 997
    invoke-direct {p0}, Lcom/android/server/MountService;->initIfReadyAndConnected()V

    .line 998
    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnected()V

    .line 1004
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1005
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 1007
    return-void

    .line 1012
    :cond_18
    const-string/jumbo v0, ""

    const-string/jumbo v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1013
    invoke-direct {p0}, Lcom/android/server/MountService;->copyLocaleFromMountService()V

    .line 1017
    :cond_2b
    iget-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 1020
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 996
    return-void
.end method

.method private handleSystemReady()V
    .registers 2

    .prologue
    .line 812
    invoke-direct {p0}, Lcom/android/server/MountService;->initIfReadyAndConnected()V

    .line 813
    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnected()V

    .line 816
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    .line 811
    return-void
.end method

.method private handleUnlockUser(I)V
    .registers 12
    .param p1, "userId"    # I

    .prologue
    .line 937
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "volume"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "user_started"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_18
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_18} :catch_6a

    .line 943
    :goto_18
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 944
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_5d

    .line 945
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    .line 946
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v4, p1}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 947
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, p1, v7}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 948
    .local v3, "userVol":Landroid/os/storage/StorageVolume;
    iget-object v5, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x6

    invoke-virtual {v5, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 950
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v5

    invoke-static {v5}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "envState":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0, v0}, Lcom/android/server/MountService$Callbacks;->-wrap2(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    .end local v0    # "envState":Ljava/lang/String;
    .end local v3    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 954
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_5d
    iget-object v5, p0, Lcom/android/server/MountService;->mSystemUnlockedUsers:[I

    invoke-static {v5, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/MountService;->mSystemUnlockedUsers:[I
    :try_end_65
    .catchall {:try_start_1c .. :try_end_65} :catchall_67

    monitor-exit v6

    .line 931
    return-void

    .line 943
    :catchall_67
    move-exception v5

    monitor-exit v6

    throw v5

    .line 938
    .end local v1    # "i":I
    :catch_6a
    move-exception v2

    .local v2, "ignored":Lcom/android/server/NativeDaemonConnectorException;
    goto :goto_18
.end method

.method private initIfReadyAndConnected()V
    .registers 11

    .prologue
    .line 864
    const-string/jumbo v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Thinking about init, mSystemReady="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/MountService;->mSystemReady:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 865
    const-string/jumbo v7, ", mDaemonConnected="

    .line 864
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 865
    iget-boolean v7, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    .line 864
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-boolean v5, p0, Lcom/android/server/MountService;->mSystemReady:Z

    if-eqz v5, :cond_37

    iget-boolean v5, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    if-eqz v5, :cond_37

    .line 867
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 863
    :cond_37
    return-void

    .line 871
    :cond_38
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    move-result v1

    .line 872
    .local v1, "initLocked":Z
    const-string/jumbo v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Setting up emulation state, initlocked="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/UserManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 874
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "user$iterator":Ljava/util/Iterator;
    :goto_68
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 876
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_9c

    .line 877
    :try_start_76
    iget-object v5, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "cryptfs"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "lock_user_key"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_90
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_76 .. :try_end_90} :catch_91

    goto :goto_68

    .line 882
    :catch_91
    move-exception v0

    .line 883
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v5, "MountService"

    const-string/jumbo v6, "Failed to init vold"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_68

    .line 879
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_9c
    :try_start_9c
    iget-object v5, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "cryptfs"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "unlock_user_key"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 880
    iget v8, v2, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const-string/jumbo v8, "!"

    const/4 v9, 0x3

    aput-object v8, v7, v9

    const-string/jumbo v8, "!"

    const/4 v9, 0x4

    aput-object v8, v7, v9

    .line 879
    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_cb
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9c .. :try_end_cb} :catch_91

    goto :goto_68
.end method

.method private isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z
    .registers 4
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v1, 0x0

    .line 1325
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 1331
    return v1

    .line 1334
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 1343
    :pswitch_10
    return v1

    .line 1346
    :pswitch_11
    const/4 v0, 0x1

    return v0

    .line 1325
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 1334
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    .registers 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v3, 0x0

    .line 1469
    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-eqz v1, :cond_a

    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    .line 1470
    :cond_a
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1471
    .local v0, "userManager":Landroid/os/UserManager;
    const-string/jumbo v1, "no_physical_media"

    .line 1472
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 1471
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    return v1

    .line 1474
    .end local v0    # "userManager":Landroid/os/UserManager;
    :cond_20
    return v3
.end method

.method private isReady()Z
    .registers 6

    .prologue
    .line 805
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 806
    :catch_b
    move-exception v0

    .line 807
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    return v1
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2444
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_7

    .line 2445
    return v1

    .line 2448
    :cond_7
    if-nez p1, :cond_a

    .line 2449
    return v2

    .line 2452
    :cond_a
    iget-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 2453
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/high16 v5, 0x10000000

    .line 2452
    invoke-virtual {v3, p1, v5, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 2460
    .local v0, "packageUid":I
    if-ne p2, v0, :cond_19

    :goto_18
    return v1

    :cond_19
    move v1, v2

    goto :goto_18
.end method

.method private killMediaProvider(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 825
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez p1, :cond_3

    return-void

    .line 827
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 829
    .local v4, "token":J
    :try_start_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "user$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_43

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 831
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSystemOnly()Z

    move-result v7

    if-nez v7, :cond_b

    .line 833
    iget-object v7, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v8, "media"

    .line 836
    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    .line 834
    const/high16 v10, 0xc0000

    .line 833
    invoke-virtual {v7, v8, v10, v9}, Lcom/android/server/pm/PackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 837
    .local v2, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v2, :cond_b

    .line 838
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_47

    move-result-object v0

    .line 840
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_30
    iget-object v7, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 841
    iget-object v8, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 842
    const-string/jumbo v9, "vold reset"

    const/4 v10, -0x1

    .line 840
    invoke-interface {v0, v7, v8, v10, v9}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_43} :catch_4c
    .catchall {:try_start_30 .. :try_end_43} :catchall_47

    .line 850
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v2    # "provider":Landroid/content/pm/ProviderInfo;
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_43
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 824
    return-void

    .line 849
    .end local v6    # "user$iterator":Ljava/util/Iterator;
    :catchall_47
    move-exception v7

    .line 850
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 849
    throw v7

    .line 845
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v2    # "provider":Landroid/content/pm/ProviderInfo;
    .restart local v3    # "user":Landroid/content/pm/UserInfo;
    .restart local v6    # "user$iterator":Ljava/util/Iterator;
    :catch_4c
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_b
.end method

.method private onCleanupUser(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 959
    const-string/jumbo v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCleanupUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "volume"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "user_stopped"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_32
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1a .. :try_end_32} :catch_42

    .line 966
    :goto_32
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 967
    :try_start_35
    iget-object v1, p0, Lcom/android/server/MountService;->mSystemUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/MountService;->mSystemUnlockedUsers:[I
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3f

    monitor-exit v2

    .line 958
    return-void

    .line 966
    :catchall_3f
    move-exception v1

    monitor-exit v2

    throw v1

    .line 963
    :catch_42
    move-exception v0

    .local v0, "ignored":Lcom/android/server/NativeDaemonConnectorException;
    goto :goto_32
.end method

.method private onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V
    .registers 9
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .prologue
    .line 1251
    const/4 v4, 0x0

    .line 1252
    .local v4, "volumeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v0, v5, :cond_23

    .line 1253
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 1254
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v5, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1255
    add-int/lit8 v4, v4, 0x1

    .line 1252
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1259
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_23
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.os.storage.action.DISK_SCANNED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1260
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x5000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1262
    const-string/jumbo v5, "android.os.storage.extra.DISK_ID"

    iget-object v6, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1263
    const-string/jumbo v5, "android.os.storage.extra.VOLUME_COUNT"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1264
    iget-object v5, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1266
    iget-object v5, p0, Lcom/android/server/MountService;->mDiskScanLatches:Landroid/util/ArrayMap;

    iget-object v6, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    .line 1267
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v2, :cond_57

    .line 1268
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1271
    :cond_57
    iput v4, p1, Landroid/os/storage/DiskInfo;->volumeCount:I

    .line 1272
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-static {v5, p1, v4}, Lcom/android/server/MountService$Callbacks;->-wrap1(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/DiskInfo;I)V

    .line 1250
    return-void
.end method

.method private onEventLocked(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 39
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 1068
    packed-switch p1, :pswitch_data_438

    .line 1243
    :pswitch_3
    const-string/jumbo v32, "MountService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Unhandled vold event "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :cond_21
    :goto_21
    const/16 v32, 0x1

    return v32

    .line 1070
    :pswitch_24
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    .line 1071
    const/16 v32, 0x1

    aget-object v18, p3, v32

    .line 1072
    .local v18, "id":Ljava/lang/String;
    const/16 v32, 0x2

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1073
    .local v16, "flags":I
    const-string/jumbo v32, "persist.fw.force_adoptable"

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    if-nez v32, :cond_50

    .line 1074
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService;->mForceAdoptable:Z

    move/from16 v32, v0

    .line 1073
    if-eqz v32, :cond_52

    .line 1075
    :cond_50
    or-int/lit8 v16, v16, 0x1

    .line 1077
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    new-instance v33, Landroid/os/storage/DiskInfo;

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/os/storage/DiskInfo;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 1081
    .end local v16    # "flags":I
    .end local v18    # "id":Ljava/lang/String;
    :pswitch_6d
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    .line 1083
    .local v5, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_21

    .line 1084
    const/16 v32, 0x2

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    move-wide/from16 v0, v32

    iput-wide v0, v5, Landroid/os/storage/DiskInfo;->size:J

    goto :goto_21

    .line 1089
    .end local v5    # "disk":Landroid/os/storage/DiskInfo;
    :pswitch_99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    .line 1090
    .restart local v5    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_21

    .line 1091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1092
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/16 v17, 0x2

    .local v17, "i":I
    :goto_b2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_cd

    .line 1093
    aget-object v32, p3, v17

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x20

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1092
    add-int/lit8 v17, v17, 0x1

    goto :goto_b2

    .line 1095
    :cond_cd
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v5, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    goto/16 :goto_21

    .line 1100
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "disk":Landroid/os/storage/DiskInfo;
    .end local v17    # "i":I
    :pswitch_db
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    .line 1102
    .restart local v5    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_21

    .line 1103
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/MountService;->onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V

    goto/16 :goto_21

    .line 1108
    .end local v5    # "disk":Landroid/os/storage/DiskInfo;
    :pswitch_101
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    .line 1110
    .restart local v5    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_21

    .line 1111
    const/16 v32, 0x2

    aget-object v32, p3, v32

    move-object/from16 v0, v32

    iput-object v0, v5, Landroid/os/storage/DiskInfo;->sysPath:Ljava/lang/String;

    goto/16 :goto_21

    .line 1116
    .end local v5    # "disk":Landroid/os/storage/DiskInfo;
    :pswitch_12a
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    .line 1118
    .restart local v5    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_21

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v5}, Lcom/android/server/MountService$Callbacks;->-wrap0(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/DiskInfo;)V

    goto/16 :goto_21

    .line 1125
    .end local v5    # "disk":Landroid/os/storage/DiskInfo;
    :pswitch_156
    const/16 v32, 0x1

    aget-object v18, p3, v32

    .line 1126
    .restart local v18    # "id":Ljava/lang/String;
    const/16 v32, 0x2

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 1127
    .local v30, "type":I
    const/16 v32, 0x3

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1128
    .local v12, "diskId":Ljava/lang/String;
    const/16 v32, 0x4

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1130
    .local v22, "partGuid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    .line 1131
    .restart local v5    # "disk":Landroid/os/storage/DiskInfo;
    new-instance v31, Landroid/os/storage/VolumeInfo;

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    move/from16 v2, v30

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v5, v3}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 1132
    .local v31, "vol":Landroid/os/storage/VolumeInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V

    goto/16 :goto_21

    .line 1137
    .end local v5    # "disk":Landroid/os/storage/DiskInfo;
    .end local v12    # "diskId":Ljava/lang/String;
    .end local v18    # "id":Ljava/lang/String;
    .end local v22    # "partGuid":Ljava/lang/String;
    .end local v30    # "type":I
    .end local v31    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_1a5
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/storage/VolumeInfo;

    .line 1139
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_21

    .line 1140
    move-object/from16 v0, v31

    iget v0, v0, Landroid/os/storage/VolumeInfo;->state:I

    move/from16 v21, v0

    .line 1141
    .local v21, "oldState":I
    const/16 v32, 0x2

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1142
    .local v20, "newState":I
    move/from16 v0, v20

    move-object/from16 v1, v31

    iput v0, v1, Landroid/os/storage/VolumeInfo;->state:I

    .line 1143
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/MountService;->onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V

    goto/16 :goto_21

    .line 1148
    .end local v20    # "newState":I
    .end local v21    # "oldState":I
    .end local v31    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_1e5
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/storage/VolumeInfo;

    .line 1150
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_21

    .line 1151
    const/16 v32, 0x2

    aget-object v32, p3, v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    goto/16 :goto_21

    .line 1156
    .end local v31    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_210
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/storage/VolumeInfo;

    .line 1158
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_21

    .line 1159
    const/16 v32, 0x2

    aget-object v32, p3, v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    goto/16 :goto_21

    .line 1164
    .end local v31    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_23b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/storage/VolumeInfo;

    .line 1165
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_21

    .line 1166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1167
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    const/16 v17, 0x2

    .restart local v17    # "i":I
    :goto_254
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_26f

    .line 1168
    aget-object v32, p3, v17

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x20

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1167
    add-int/lit8 v17, v17, 0x1

    goto :goto_254

    .line 1170
    :cond_26f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    goto/16 :goto_21

    .line 1176
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v17    # "i":I
    .end local v31    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_27f
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/storage/VolumeInfo;

    .line 1178
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_21

    .line 1179
    const/16 v32, 0x2

    aget-object v32, p3, v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    goto/16 :goto_21

    .line 1184
    .end local v31    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_2aa
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/storage/VolumeInfo;

    .line 1186
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_21

    .line 1187
    const/16 v32, 0x2

    aget-object v32, p3, v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    goto/16 :goto_21

    .line 1192
    .end local v31    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_2d5
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_21

    .line 1198
    :pswitch_2f1
    const/16 v32, 0x1

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 1199
    .local v25, "status":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V

    goto/16 :goto_21

    .line 1203
    .end local v25    # "status":I
    :pswitch_302
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x7

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    .line 1204
    const/16 v32, 0x1

    aget-object v23, p3, v32

    .line 1205
    .local v23, "path":Ljava/lang/String;
    const/16 v32, 0x2

    aget-object v19, p3, v32

    .line 1206
    .local v19, "ident":Ljava/lang/String;
    const/16 v32, 0x3

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1207
    .local v8, "create":J
    const/16 v32, 0x4

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 1208
    .local v14, "drop":J
    const/16 v32, 0x5

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    .line 1209
    .local v26, "run":J
    const/16 v32, 0x6

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1211
    .local v10, "destroy":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-class v33, Landroid/os/DropBoxManager;

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/DropBoxManager;

    .line 1212
    .local v13, "dropBox":Landroid/os/DropBoxManager;
    const-string/jumbo v32, "storage_benchmark"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->scrubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 1213
    const-string/jumbo v34, " "

    .line 1212
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 1213
    const-string/jumbo v34, " "

    .line 1212
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 1213
    const-string/jumbo v34, " "

    .line 1212
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 1213
    const-string/jumbo v34, " "

    .line 1212
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v13, v0, v1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v24

    .line 1216
    .local v24, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v24, :cond_21

    .line 1217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v24

    iput-wide v0, v2, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    .line 1218
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    goto/16 :goto_21

    .line 1224
    .end local v8    # "create":J
    .end local v10    # "destroy":J
    .end local v13    # "dropBox":Landroid/os/DropBoxManager;
    .end local v14    # "drop":J
    .end local v19    # "ident":Ljava/lang/String;
    .end local v23    # "path":Ljava/lang/String;
    .end local v24    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v26    # "run":J
    :pswitch_3b5
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x4

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    .line 1225
    const/16 v32, 0x1

    aget-object v23, p3, v32

    .line 1226
    .restart local v23    # "path":Ljava/lang/String;
    const/16 v32, 0x2

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1227
    .local v6, "bytes":J
    const/16 v32, 0x3

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 1229
    .local v28, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-class v33, Landroid/os/DropBoxManager;

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/DropBoxManager;

    .line 1230
    .restart local v13    # "dropBox":Landroid/os/DropBoxManager;
    const-string/jumbo v32, "storage_trim"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->scrubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 1231
    const-string/jumbo v34, " "

    .line 1230
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 1231
    const-string/jumbo v34, " "

    .line 1230
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v13, v0, v1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v24

    .line 1234
    .restart local v24    # "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v24, :cond_21

    .line 1235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v24

    iput-wide v0, v2, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    .line 1236
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    goto/16 :goto_21

    .line 1068
    :pswitch_data_438
    .packed-switch 0x280
        :pswitch_24
        :pswitch_6d
        :pswitch_99
        :pswitch_db
        :pswitch_101
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_12a
        :pswitch_156
        :pswitch_1a5
        :pswitch_1e5
        :pswitch_210
        :pswitch_23b
        :pswitch_27f
        :pswitch_2aa
        :pswitch_3
        :pswitch_3
        :pswitch_2d5
        :pswitch_2f1
        :pswitch_302
        :pswitch_3b5
    .end packed-switch
.end method

.method private onMoveStatusLocked(I)V
    .registers 8
    .param p1, "status"    # I

    .prologue
    const/4 v5, 0x0

    .line 1433
    iget-object v1, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    if-nez v1, :cond_f

    .line 1434
    const-string/jumbo v1, "MountService"

    const-string/jumbo v2, "Odd, status but no move requested"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    return-void

    .line 1440
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    invoke-interface {v1, v4, p1, v2, v3}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_17} :catch_77

    .line 1446
    :goto_17
    const/16 v1, 0x52

    if-ne p1, v1, :cond_45

    .line 1447
    const-string/jumbo v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Move to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " copy phase finshed; persisting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    iget-object v1, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1450
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    .line 1453
    :cond_45
    invoke-static {p1}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 1454
    const-string/jumbo v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Move to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " finished with status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    iput-object v5, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 1457
    iput-object v5, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    .line 1432
    :cond_76
    return-void

    .line 1441
    :catch_77
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_17
.end method

.method private onUnlockUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 927
    const-string/jumbo v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnlockUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 926
    return-void
.end method

.method private onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V
    .registers 8
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v5, 0x5

    .line 1276
    iget-object v2, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isOnlyCoreApps()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1277
    const-string/jumbo v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "System booted in core-only mode; ignoring volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    return-void

    .line 1281
    :cond_28
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_ba

    .line 1282
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 1283
    .local v1, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 1285
    .local v0, "privateVol":Landroid/os/storage/VolumeInfo;
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 1286
    const-string/jumbo v2, "private"

    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1285
    if-eqz v2, :cond_80

    .line 1287
    const-string/jumbo v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found primary storage at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1289
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1290
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1275
    .end local v0    # "privateVol":Landroid/os/storage/VolumeInfo;
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_7f
    :goto_7f
    return-void

    .line 1292
    .restart local v0    # "privateVol":Landroid/os/storage/VolumeInfo;
    .restart local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_80
    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 1293
    const-string/jumbo v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found primary storage at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1295
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1296
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7f

    .line 1299
    .end local v0    # "privateVol":Landroid/os/storage/VolumeInfo;
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_ba
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v2, :cond_114

    .line 1301
    const-string/jumbo v2, "primary_physical"

    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 1302
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result v2

    .line 1301
    if-eqz v2, :cond_f7

    .line 1303
    const-string/jumbo v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found primary storage at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1305
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1310
    :cond_f7
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v2

    if-eqz v2, :cond_105

    .line 1311
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1314
    :cond_105
    iget v2, p0, Lcom/android/server/MountService;->mCurrentUserId:I

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1315
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7f

    .line 1317
    :cond_114
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_124

    .line 1318
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7f

    .line 1320
    :cond_124
    const-string/jumbo v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Skipping automatic mounting of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7f
.end method

.method private onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V
    .registers 15
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    .line 1352
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 1375
    :cond_e
    :goto_e
    iget-object v6, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-static {v6, p1, p2, p3}, Lcom/android/server/MountService$Callbacks;->-wrap5(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeInfo;II)V

    .line 1379
    iget-boolean v6, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    if-eqz v6, :cond_4a

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 1380
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1381
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.os.storage.extra.VOLUME_ID"

    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1382
    const-string/jumbo v6, "android.os.storage.extra.VOLUME_STATE"

    invoke-virtual {v0, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1383
    const-string/jumbo v6, "android.os.storage.extra.FS_UUID"

    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1384
    const/high16 v6, 0x5000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1386
    iget-object v6, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1389
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4a
    invoke-static {p2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v2

    .line 1390
    .local v2, "oldStateEnv":Ljava/lang/String;
    invoke-static {p3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v1

    .line 1392
    .local v1, "newStateEnv":Ljava/lang/String;
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d2

    .line 1396
    iget-object v7, p0, Lcom/android/server/MountService;->mSystemUnlockedUsers:[I

    const/4 v6, 0x0

    array-length v8, v7

    :goto_5c
    if-ge v6, v8, :cond_d2

    aget v4, v7, v6

    .line 1397
    .local v4, "userId":I
    invoke-virtual {p1, v4}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v9

    if-eqz v9, :cond_80

    .line 1398
    iget-object v9, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v4, v10}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 1399
    .local v5, "userVol":Landroid/os/storage/StorageVolume;
    iget-object v9, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x6

    invoke-virtual {v9, v10, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 1401
    iget-object v9, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2, v1}, Lcom/android/server/MountService$Callbacks;->-wrap2(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    .end local v5    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_80
    add-int/lit8 v6, v6, 0x1

    goto :goto_5c

    .line 1353
    .end local v1    # "newStateEnv":Ljava/lang/String;
    .end local v2    # "oldStateEnv":Ljava/lang/String;
    .end local v4    # "userId":I
    :cond_83
    iget-object v6, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    .line 1354
    .local v3, "rec":Landroid/os/storage/VolumeRecord;
    if-nez v3, :cond_c1

    .line 1355
    new-instance v3, Landroid/os/storage/VolumeRecord;

    .end local v3    # "rec":Landroid/os/storage/VolumeRecord;
    iget v6, p1, Landroid/os/storage/VolumeInfo;->type:I

    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-direct {v3, v6, v7}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .line 1356
    .restart local v3    # "rec":Landroid/os/storage/VolumeRecord;
    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v6, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 1358
    iget v6, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_af

    .line 1359
    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1362
    :cond_af
    iget v6, v3, Landroid/os/storage/VolumeRecord;->userFlags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v3, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 1364
    iget-object v6, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    iget-object v7, v3, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    goto/16 :goto_e

    .line 1368
    :cond_c1
    iget-object v6, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1369
    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v6, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1370
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    goto/16 :goto_e

    .line 1407
    .end local v3    # "rec":Landroid/os/storage/VolumeRecord;
    .restart local v1    # "newStateEnv":Ljava/lang/String;
    .restart local v2    # "oldStateEnv":Ljava/lang/String;
    :cond_d2
    iget v6, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v6, :cond_e9

    iget v6, p1, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_e9

    .line 1414
    iget-object v6, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v7, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    .line 1415
    iget-object v8, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    const/4 v9, 0x5

    .line 1414
    invoke-virtual {v7, v9, v8}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1420
    :cond_e9
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isPublicSd()Z

    move-result v6

    if-eqz v6, :cond_100

    .line 1421
    iget v6, p1, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_f9

    iget v6, p1, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_101

    .line 1423
    :cond_f9
    iget-object v6, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 1349
    :cond_100
    :goto_100
    return-void

    .line 1424
    :cond_101
    iget v6, p1, Landroid/os/storage/VolumeInfo;->state:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_100

    .line 1426
    iget-object v6, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_100
.end method

.method private readSettingsLocked()V
    .registers 14

    .prologue
    .line 1596
    iget-object v11, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    .line 1597
    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1598
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/MountService;->mForceAdoptable:Z

    .line 1600
    const/4 v3, 0x0

    .line 1602
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_f
    iget-object v11, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 1603
    .local v3, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1604
    .local v4, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1607
    :cond_22
    :goto_22
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v11, 0x1

    if-eq v8, v11, :cond_94

    .line 1608
    const/4 v11, 0x2

    if-ne v8, v11, :cond_22

    .line 1609
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1610
    .local v7, "tag":Ljava/lang/String;
    const-string/jumbo v11, "volumes"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_71

    .line 1611
    const-string/jumbo v11, "version"

    const/4 v12, 0x1

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 1613
    .local v10, "version":I
    const-string/jumbo v11, "ro.vold.primary_physical"

    const/4 v12, 0x0

    .line 1612
    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1614
    .local v5, "primaryPhysical":Z
    const/4 v11, 0x3

    if-ge v10, v11, :cond_6d

    .line 1615
    const/4 v11, 0x2

    if-lt v10, v11, :cond_51

    if-eqz v5, :cond_6f

    :cond_51
    const/4 v9, 0x0

    .line 1616
    .local v9, "validAttr":Z
    :goto_52
    if-eqz v9, :cond_5d

    .line 1618
    const-string/jumbo v11, "primaryStorageUuid"

    .line 1617
    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1620
    :cond_5d
    const-string/jumbo v11, "forceAdoptable"

    const/4 v12, 0x0

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/server/MountService;->mForceAdoptable:Z
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_67} :catch_68
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_67} :catch_86
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_67} :catch_98
    .catchall {:try_start_f .. :try_end_67} :catchall_a6

    goto :goto_22

    .line 1628
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "primaryPhysical":Z
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v9    # "validAttr":Z
    .end local v10    # "version":I
    :catch_68
    move-exception v0

    .line 1635
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1595
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_6c
    return-void

    .line 1614
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "primaryPhysical":Z
    .restart local v7    # "tag":Ljava/lang/String;
    .restart local v8    # "type":I
    .restart local v10    # "version":I
    :cond_6d
    const/4 v9, 0x1

    goto :goto_52

    .line 1615
    :cond_6f
    const/4 v9, 0x1

    goto :goto_52

    .line 1622
    .end local v5    # "primaryPhysical":Z
    .end local v10    # "version":I
    :cond_71
    :try_start_71
    const-string/jumbo v11, "volume"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_22

    .line 1623
    invoke-static {v4}, Lcom/android/server/MountService;->readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;

    move-result-object v6

    .line 1624
    .local v6, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v11, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    iget-object v12, v6, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v11, v12, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_85
    .catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_85} :catch_68
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_85} :catch_86
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_71 .. :try_end_85} :catch_98
    .catchall {:try_start_71 .. :try_end_85} :catchall_a6

    goto :goto_22

    .line 1630
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_86
    move-exception v1

    .line 1631
    .local v1, "e":Ljava/io/IOException;
    :try_start_87
    const-string/jumbo v11, "MountService"

    const-string/jumbo v12, "Failed reading metadata"

    invoke-static {v11, v12, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catchall {:try_start_87 .. :try_end_90} :catchall_a6

    .line 1635
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_6c

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_94
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_6c

    .line 1632
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :catch_98
    move-exception v2

    .line 1633
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_99
    const-string/jumbo v11, "MountService"

    const-string/jumbo v12, "Failed reading metadata"

    invoke-static {v11, v12, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a2
    .catchall {:try_start_99 .. :try_end_a2} :catchall_a6

    .line 1635
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_6c

    .line 1634
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_a6
    move-exception v11

    .line 1635
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1634
    throw v11
.end method

.method public static readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;
    .registers 7
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1668
    const-string/jumbo v3, "type"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    .line 1669
    .local v2, "type":I
    const-string/jumbo v3, "fsUuid"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1670
    .local v0, "fsUuid":Ljava/lang/String;
    new-instance v1, Landroid/os/storage/VolumeRecord;

    invoke-direct {v1, v2, v0}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .line 1671
    .local v1, "meta":Landroid/os/storage/VolumeRecord;
    const-string/jumbo v3, "partGuid"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1672
    const-string/jumbo v3, "nickname"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1673
    const-string/jumbo v3, "userFlags"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 1674
    const-string/jumbo v3, "createdMillis"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 1675
    const-string/jumbo v3, "lastTrimMillis"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    .line 1676
    const-string/jumbo v3, "lastBenchMillis"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    .line 1677
    return-object v1
.end method

.method private remountUidExternalStorage(II)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "mode"    # I

    .prologue
    .line 1971
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1973
    const-string/jumbo v1, "none"

    .line 1974
    .local v1, "modeName":Ljava/lang/String;
    packed-switch p2, :pswitch_data_64

    .line 1989
    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "volume"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "remount_uid"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_24} :catch_31

    .line 1970
    :goto_24
    return-void

    .line 1976
    :pswitch_25
    const-string/jumbo v1, "default"

    goto :goto_9

    .line 1980
    :pswitch_29
    const-string/jumbo v1, "read"

    goto :goto_9

    .line 1984
    :pswitch_2d
    const-string/jumbo v1, "write"

    goto :goto_9

    .line 1990
    :catch_31
    move-exception v0

    .line 1991
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to remount UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 1974
    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_25
        :pswitch_29
        :pswitch_2d
    .end packed-switch
.end method

.method private removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .registers 6
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;

    .prologue
    .line 3209
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3210
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3211
    .local v1, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-eqz v1, :cond_22

    .line 3212
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3213
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->unlink()V

    .line 3215
    :cond_17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3216
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3220
    :cond_22
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3208
    return-void
.end method

.method private resetIfReadyAndConnected()V
    .registers 14

    .prologue
    const/4 v7, 0x0

    .line 890
    const-string/jumbo v6, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Thinking about reset, mSystemReady="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/MountService;->mSystemReady:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 891
    const-string/jumbo v9, ", mDaemonConnected="

    .line 890
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 891
    iget-boolean v9, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    .line 890
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-boolean v6, p0, Lcom/android/server/MountService;->mSystemReady:Z

    if-eqz v6, :cond_a5

    iget-boolean v6, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    if-eqz v6, :cond_a5

    .line 893
    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/os/UserManager;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 894
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0, v5}, Lcom/android/server/MountService;->killMediaProvider(Ljava/util/List;)V

    .line 897
    iget-object v8, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 898
    :try_start_46
    iget-object v1, p0, Lcom/android/server/MountService;->mSystemUnlockedUsers:[I

    .line 900
    .local v1, "systemUnlockedUsers":[I
    iget-object v6, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    .line 901
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    .line 903
    invoke-direct {p0}, Lcom/android/server/MountService;->addInternalVolumeLocked()V
    :try_end_55
    .catchall {:try_start_46 .. :try_end_55} :catchall_a6

    monitor-exit v8

    .line 907
    :try_start_56
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v8, "volume"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "reset"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v6, v8, v9}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 910
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "user$iterator":Ljava/util/Iterator;
    :goto_6b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 911
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v8, "volume"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "user_added"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget v10, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    iget v10, v2, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-virtual {v6, v8, v9}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_9a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_56 .. :try_end_9a} :catch_9b

    goto :goto_6b

    .line 916
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "user$iterator":Ljava/util/Iterator;
    :catch_9b
    move-exception v0

    .line 917
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v6, "MountService"

    const-string/jumbo v7, "Failed to reset vold"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 889
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v1    # "systemUnlockedUsers":[I
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_a5
    return-void

    .line 897
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_a6
    move-exception v6

    monitor-exit v8

    throw v6

    .line 913
    .restart local v1    # "systemUnlockedUsers":[I
    .restart local v3    # "user$iterator":Ljava/util/Iterator;
    :cond_a9
    :try_start_a9
    array-length v8, v1

    move v6, v7

    :goto_ab
    if-ge v6, v8, :cond_a5

    aget v4, v1, v6

    .line 914
    .local v4, "userId":I
    iget-object v7, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v9, "volume"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "user_started"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-virtual {v7, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_c7
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a9 .. :try_end_c7} :catch_9b

    .line 913
    add-int/lit8 v6, v6, 0x1

    goto :goto_ab
.end method

.method private scrubPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 366
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 367
    const-string/jumbo v1, "internal"

    return-object v1

    .line 369
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v0

    .line 370
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v0, :cond_20

    iget-wide v2, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_24

    .line 371
    :cond_20
    const-string/jumbo v1, "unknown"

    return-object v1

    .line 373
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    sub-long/2addr v2, v4

    .line 374
    const-wide/32 v4, 0x240c8400

    .line 373
    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 374
    const-string/jumbo v2, "w"

    .line 373
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private shouldBenchmark()Z
    .registers 15

    .prologue
    .line 390
    iget-object v7, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 391
    const-string/jumbo v8, "storage_benchmark_interval"

    const-wide/32 v10, 0x240c8400

    .line 390
    invoke-static {v7, v8, v10, v11}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 392
    .local v2, "benchInterval":J
    const-wide/16 v8, -0x1

    cmp-long v7, v2, v8

    if-nez v7, :cond_18

    .line 393
    const/4 v7, 0x0

    return v7

    .line 394
    :cond_18
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-nez v7, :cond_20

    .line 395
    const/4 v7, 0x1

    return v7

    .line 398
    :cond_20
    iget-object v8, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 399
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    :try_start_24
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v4, v7, :cond_58

    .line 400
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 401
    .local v6, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v7, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    iget-object v9, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeRecord;

    .line 402
    .local v5, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v7

    if-eqz v7, :cond_55

    if-eqz v5, :cond_55

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v5, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J
    :try_end_4c
    .catchall {:try_start_24 .. :try_end_4c} :catchall_5b

    sub-long v0, v10, v12

    .line 404
    .local v0, "benchAge":J
    cmp-long v7, v0, v2

    if-ltz v7, :cond_55

    .line 405
    const/4 v7, 0x1

    monitor-exit v8

    return v7

    .line 399
    .end local v0    # "benchAge":J
    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 409
    .end local v5    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v6    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_58
    const/4 v7, 0x0

    monitor-exit v8

    return v7

    .line 398
    :catchall_5b
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private start()V
    .registers 2

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1575
    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnectorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1573
    return-void
.end method

.method private systemReady()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1579
    iput-boolean v1, p0, Lcom/android/server/MountService;->mSystemReady:Z

    .line 1580
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1578
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .registers 7
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "condition"    # Ljava/lang/String;

    .prologue
    .line 777
    const-wide/16 v2, -0x1

    :try_start_2
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_5} :catch_6

    .line 775
    :goto_5
    return-void

    .line 778
    :catch_6
    move-exception v0

    .local v0, "ignored":Ljava/util/concurrent/TimeoutException;
    goto :goto_5
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    .registers 14
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "condition"    # Ljava/lang/String;
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 784
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 787
    .local v2, "startMillis":J
    :cond_4
    const-wide/16 v4, 0x1388

    :try_start_6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4, v5, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 788
    return-void

    .line 790
    :cond_f
    const-string/jumbo v1, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 791
    const-string/jumbo v5, " still waiting for "

    .line 790
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 791
    const-string/jumbo v5, "..."

    .line 790
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_43} :catch_92

    .line 796
    :goto_43
    const-wide/16 v4, 0x0

    cmp-long v1, p3, v4

    if-lez v1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v6, v2, p3

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    .line 797
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 798
    const-string/jumbo v5, " gave up waiting for "

    .line 797
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 798
    const-string/jumbo v5, " after "

    .line 797
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 798
    const-string/jumbo v5, "ms"

    .line 797
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 793
    :catch_92
    move-exception v0

    .line 794
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Interrupt while waiting for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method private waitForReady()V
    .registers 3

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    const-string/jumbo v1, "mConnectedSignal"

    invoke-direct {p0, v0, v1}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method private warnOnNotMounted()V
    .registers 5

    .prologue
    .line 2144
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 2146
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 2147
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_30

    move-result v2

    if-eqz v2, :cond_22

    monitor-exit v3

    .line 2149
    return-void

    .line 2145
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_25
    monitor-exit v3

    .line 2154
    const-string/jumbo v2, "MountService"

    const-string/jumbo v3, "No primary storage mounted!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    return-void

    .line 2144
    :catchall_30
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private writeSettingsLocked()V
    .registers 9

    .prologue
    .line 1640
    const/4 v1, 0x0

    .line 1642
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1644
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1645
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1646
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1647
    const-string/jumbo v6, "volumes"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1648
    const-string/jumbo v6, "version"

    const/4 v7, 0x3

    invoke-static {v3, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1649
    const-string/jumbo v6, "primaryStorageUuid"

    iget-object v7, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    const-string/jumbo v6, "forceAdoptable"

    iget-boolean v7, p0, Lcom/android/server/MountService;->mForceAdoptable:Z

    invoke-static {v3, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1651
    iget-object v6, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1652
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_43
    if-ge v2, v5, :cond_53

    .line 1653
    iget-object v6, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeRecord;

    .line 1654
    .local v4, "rec":Landroid/os/storage/VolumeRecord;
    invoke-static {v3, v4}, Lcom/android/server/MountService;->writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V

    .line 1652
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 1656
    .end local v4    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_53
    const-string/jumbo v6, "volumes"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1657
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1659
    iget-object v6, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_62} :catch_63

    .line 1639
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "i":I
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "size":I
    :cond_62
    :goto_62
    return-void

    .line 1660
    :catch_63
    move-exception v0

    .line 1661
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_62

    .line 1662
    iget-object v6, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_62
.end method

.method public static writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V
    .registers 7
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1681
    const-string/jumbo v0, "volume"

    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1682
    const-string/jumbo v0, "type"

    iget v1, p1, Landroid/os/storage/VolumeRecord;->type:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1683
    const-string/jumbo v0, "fsUuid"

    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    const-string/jumbo v0, "partGuid"

    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    const-string/jumbo v0, "nickname"

    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    const-string/jumbo v0, "userFlags"

    iget v1, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1687
    const-string/jumbo v0, "createdMillis"

    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1688
    const-string/jumbo v0, "lastTrimMillis"

    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1689
    const-string/jumbo v0, "lastBenchMillis"

    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1690
    const-string/jumbo v0, "volume"

    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1680
    return-void
.end method


# virtual methods
.method public addUserKeyAuth(II[B[B)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "token"    # [B
    .param p4, "secret"    # [B

    .prologue
    .line 2883
    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2884
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2887
    :try_start_9
    iget-object v1, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptfs"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "add_user_key_auth"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 2888
    invoke-direct {p0, p3}, Lcom/android/server/MountService;->encodeBytes([B)Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-direct {p0, p4}, Lcom/android/server/MountService;->encodeBytes([B)Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 2887
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_36
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_36} :catch_37

    .line 2882
    return-void

    .line 2889
    :catch_37
    move-exception v0

    .line 2890
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public benchmark(Ljava/lang/String;)J
    .registers 10
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    .line 1818
    const-string/jumbo v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1819
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1823
    :try_start_9
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1824
    const-string/jumbo v4, "volume"

    .line 1823
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 1824
    const-string/jumbo v6, "benchmark"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    .line 1823
    const-wide/32 v6, 0x2bf20

    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 1825
    .local v2, "res":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_28
    .catch Lcom/android/server/NativeDaemonTimeoutException; {:try_start_9 .. :try_end_28} :catch_30
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_28} :catch_2a

    move-result-wide v4

    return-wide v4

    .line 1828
    .end local v2    # "res":Lcom/android/server/NativeDaemonEvent;
    :catch_2a
    move-exception v0

    .line 1829
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 1826
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catch_30
    move-exception v1

    .line 1827
    .local v1, "e":Lcom/android/server/NativeDaemonTimeoutException;
    const-wide v4, 0x7fffffffffffffffL

    return-wide v4
.end method

.method public changeEncryptionPassword(ILjava/lang/String;)I
    .registers 13
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2639
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.CRYPT_KEEPER"

    .line 2640
    const-string/jumbo v7, "no permission to access the crypt keeper"

    .line 2639
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2642
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2649
    const-string/jumbo v5, "lock_settings"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 2648
    invoke-static {v5}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    .line 2650
    .local v4, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const-string/jumbo v0, "default_password"

    .line 2652
    .local v0, "currentPassword":Ljava/lang/String;
    :try_start_1c
    invoke-interface {v4}, Lcom/android/internal/widget/ILockSettings;->getPassword()Ljava/lang/String;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_55

    move-result-object v0

    .line 2658
    :goto_20
    :try_start_20
    iget-object v5, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "cryptfs"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "changepw"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v8, v8, p1

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 2659
    new-instance v8, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v8, v0}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v9, 0x2

    aput-object v8, v7, v9

    new-instance v8, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v8, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 2658
    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_48
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_20 .. :try_end_48} :catch_8d

    move-result-object v3

    .line 2661
    .local v3, "event":Lcom/android/server/NativeDaemonEvent;
    :try_start_49
    invoke-interface {v4}, Lcom/android/internal/widget/ILockSettings;->sanitizePassword()V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4c} :catch_71
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_49 .. :try_end_4c} :catch_8d

    .line 2666
    :goto_4c
    :try_start_4c
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_53
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4c .. :try_end_53} :catch_8d

    move-result v5

    return v5

    .line 2653
    .end local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_55
    move-exception v1

    .line 2654
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t get password"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 2662
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_71
    move-exception v1

    .line 2663
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_72
    const-string/jumbo v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t sanitize password"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_72 .. :try_end_8c} :catch_8d

    goto :goto_4c

    .line 2667
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_8d
    move-exception v2

    .line 2669
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v5

    return v5
.end method

.method public clearPassword()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2826
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.STORAGE_INTERNAL"

    .line 2827
    const-string/jumbo v4, "only keyguard can clear password"

    .line 2826
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2829
    invoke-direct {p0}, Lcom/android/server/MountService;->isReady()Z

    move-result v2

    if-nez v2, :cond_12

    .line 2830
    return-void

    .line 2835
    :cond_12
    :try_start_12
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "clearpw"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_12 .. :try_end_23} :catch_25

    move-result-object v1

    .line 2825
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    return-void

    .line 2836
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_25
    move-exception v0

    .line 2837
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .registers 14
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sizeMb"    # I
    .param p3, "fstype"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "ownerUid"    # I
    .param p6, "external"    # Z

    .prologue
    .line 2172
    const-string/jumbo v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2173
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2174
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2176
    const/4 v1, 0x0

    .line 2178
    .local v1, "rc":I
    :try_start_d
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "asec"

    const/4 v2, 0x7

    new-array v5, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "create"

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object p1, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v2, 0x3

    aput-object p3, v5, v2

    new-instance v2, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v2, p4}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x4

    aput-object v2, v5, v6

    .line 2179
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v5, v6

    if-eqz p6, :cond_4e

    const-string/jumbo v2, "1"

    :goto_3c
    const/4 v6, 0x6

    aput-object v2, v5, v6

    .line 2178
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_42
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_42} :catch_52

    .line 2184
    :goto_42
    if-nez v1, :cond_4d

    .line 2185
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2186
    :try_start_47
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_55

    monitor-exit v3

    .line 2189
    :cond_4d
    return v1

    .line 2179
    :cond_4e
    :try_start_4e
    const-string/jumbo v2, "0"
    :try_end_51
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_3c

    .line 2180
    :catch_52
    move-exception v0

    .line 2181
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_42

    .line 2185
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_55
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public createUserKey(IIZ)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "ephemeral"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2843
    const-string/jumbo v3, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2844
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2847
    :try_start_b
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "create_user_key"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 2848
    if-eqz p3, :cond_34

    :goto_29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v5, v2

    .line 2847
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_33
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_33} :catch_36

    .line 2842
    return-void

    :cond_34
    move v1, v2

    .line 2848
    goto :goto_29

    .line 2849
    :catch_36
    move-exception v0

    .line 2850
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .registers 10
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2565
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2566
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "password cannot be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2569
    :cond_f
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.CRYPT_KEEPER"

    .line 2570
    const-string/jumbo v5, "no permission to access the crypt keeper"

    .line 2569
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2572
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2580
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "checkpw"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2582
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2583
    .local v0, "code":I
    if-nez v0, :cond_4d

    .line 2586
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/MountService$2;

    invoke-direct {v4, p0}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;)V

    .line 2594
    const-wide/16 v6, 0x3e8

    .line 2586
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1d .. :try_end_4d} :catch_4e

    .line 2597
    :cond_4d
    return v0

    .line 2598
    .end local v0    # "code":I
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_4e
    move-exception v1

    .line 2600
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v3

    return v3
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 2242
    const-string/jumbo v4, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2243
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2244
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2252
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 2254
    const/4 v3, 0x0

    .line 2256
    .local v3, "rc":I
    :try_start_14
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "destroy"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2257
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_30

    .line 2258
    const-string/jumbo v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2260
    :cond_30
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_35
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_14 .. :try_end_35} :catch_49

    .line 2270
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_35
    if-nez v3, :cond_48

    .line 2271
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2272
    :try_start_3a
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 2273
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_47
    .catchall {:try_start_3a .. :try_end_47} :catchall_56

    :cond_47
    monitor-exit v5

    .line 2278
    :cond_48
    return v3

    .line 2261
    :catch_49
    move-exception v2

    .line 2262
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2263
    .local v1, "code":I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_54

    .line 2264
    const/4 v3, -0x7

    goto :goto_35

    .line 2266
    :cond_54
    const/4 v3, -0x1

    goto :goto_35

    .line 2271
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_56
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public destroyUserKey(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 2856
    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2857
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2860
    :try_start_9
    iget-object v1, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptfs"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "destroy_user_key"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_21} :catch_22

    .line 2855
    return-void

    .line 2861
    :catch_22
    move-exception v0

    .line 2862
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public destroyUserStorage(Ljava/lang/String;II)V
    .registers 10
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .prologue
    .line 2972
    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2973
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2976
    :try_start_9
    iget-object v1, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptfs"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "destroy_user_storage"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Lcom/android/server/MountService;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 2977
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 2976
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_2f} :catch_30

    .line 2971
    return-void

    .line 2978
    :catch_30
    move-exception v0

    .line 2979
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3740
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "android.permission.DUMP"

    const-string/jumbo v16, "MountService"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3742
    new-instance v12, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v14, "  "

    const/16 v15, 0xa0

    move-object/from16 v0, p2

    invoke-direct {v12, v0, v14, v15}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 3743
    .local v12, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 3744
    :try_start_1e
    const-string/jumbo v14, "Disks:"

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3745
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3746
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_28
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v6, v14, :cond_42

    .line 3747
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/DiskInfo;

    .line 3748
    .local v3, "disk":Landroid/os/storage/DiskInfo;
    invoke-virtual {v3, v12}, Landroid/os/storage/DiskInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3746
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 3750
    .end local v3    # "disk":Landroid/os/storage/DiskInfo;
    :cond_42
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3752
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3753
    const-string/jumbo v14, "Volumes:"

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3754
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3755
    const/4 v6, 0x0

    :goto_52
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v6, v14, :cond_7f

    .line 3756
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/VolumeInfo;

    .line 3757
    .local v13, "vol":Landroid/os/storage/VolumeInfo;
    const-string/jumbo v14, "private"

    iget-object v0, v13, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_78

    .line 3755
    :goto_75
    add-int/lit8 v6, v6, 0x1

    goto :goto_52

    .line 3758
    :cond_78
    invoke-virtual {v13, v12}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_7b
    .catchall {:try_start_1e .. :try_end_7b} :catchall_7c

    goto :goto_75

    .line 3743
    .end local v6    # "i":I
    .end local v13    # "vol":Landroid/os/storage/VolumeInfo;
    :catchall_7c
    move-exception v14

    monitor-exit v15

    throw v14

    .line 3760
    .restart local v6    # "i":I
    :cond_7f
    :try_start_7f
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3762
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3763
    const-string/jumbo v14, "Records:"

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3764
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3765
    const/4 v6, 0x0

    :goto_8f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v6, v14, :cond_a9

    .line 3766
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/VolumeRecord;

    .line 3767
    .local v8, "note":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v8, v12}, Landroid/os/storage/VolumeRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3765
    add-int/lit8 v6, v6, 0x1

    goto :goto_8f

    .line 3769
    .end local v8    # "note":Landroid/os/storage/VolumeRecord;
    :cond_a9
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3771
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3772
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Primary storage UUID: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3773
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Force adoptable: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService;->mForceAdoptable:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3774
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3775
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Local unlocked users: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mLocalUnlockedUsers:[I

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3776
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "System unlocked users: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mSystemUnlockedUsers:[I

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_13e
    .catchall {:try_start_7f .. :try_end_13e} :catchall_7c

    monitor-exit v15

    .line 3779
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v15

    .line 3780
    :try_start_144
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3781
    const-string/jumbo v14, "mObbMounts:"

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3782
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3783
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3785
    .local v2, "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :goto_15c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1ab

    .line 3786
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3787
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v16, ":"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3788
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3789
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 3790
    .local v11, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "obbState$iterator":Ljava/util/Iterator;
    :goto_194
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1a7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/MountService$ObbState;

    .line 3791
    .local v9, "obbState":Lcom/android/server/MountService$ObbState;
    invoke-virtual {v12, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V
    :try_end_1a3
    .catchall {:try_start_144 .. :try_end_1a3} :catchall_1a4

    goto :goto_194

    .line 3779
    .end local v2    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v9    # "obbState":Lcom/android/server/MountService$ObbState;
    .end local v10    # "obbState$iterator":Ljava/util/Iterator;
    .end local v11    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :catchall_1a4
    move-exception v14

    monitor-exit v15

    throw v14

    .line 3793
    .restart local v2    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .restart local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .restart local v10    # "obbState$iterator":Ljava/util/Iterator;
    .restart local v11    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_1a7
    :try_start_1a7
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_15c

    .line 3795
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v10    # "obbState$iterator":Ljava/util/Iterator;
    .end local v11    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_1ab
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3797
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3798
    const-string/jumbo v14, "mObbPathToStateMap:"

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3799
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3800
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 3801
    .local v7, "maps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;>;"
    :goto_1c6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1e9

    .line 3802
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3803
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3804
    const-string/jumbo v14, " -> "

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3805
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1c6

    .line 3807
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    :cond_1e9
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1ec
    .catchall {:try_start_1a7 .. :try_end_1ec} :catchall_1a4

    monitor-exit v15

    .line 3810
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3811
    const-string/jumbo v14, "mConnector:"

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3812
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3813
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v14, v0, v12, v1}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3814
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3816
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3817
    const-string/jumbo v14, "mCryptConnector:"

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3818
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3819
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v14, v0, v12, v1}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3820
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3822
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3823
    const-string/jumbo v14, "Last maintenance: "

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3824
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/MountService;->mLastMaintenance:J

    invoke-static {v14, v15}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3739
    return-void
.end method

.method public encryptStorage(ILjava/lang/String;)I
    .registers 10
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 2605
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-eq p1, v4, :cond_13

    .line 2606
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2609
    :cond_13
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CRYPT_KEEPER"

    .line 2610
    const-string/jumbo v3, "no permission to access the crypt keeper"

    .line 2609
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2612
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2619
    if-ne p1, v4, :cond_42

    .line 2620
    :try_start_23
    iget-object v1, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptfs"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "enablecrypto"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "inplace"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 2621
    sget-object v4, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 2620
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2631
    :goto_41
    return v6

    .line 2623
    :cond_42
    iget-object v1, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptfs"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "enablecrypto"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "inplace"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 2624
    sget-object v4, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x2

    aput-object v4, v3, v5

    new-instance v4, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v4, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 2623
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_68
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_23 .. :try_end_68} :catch_69

    goto :goto_41

    .line 2626
    :catch_69
    move-exception v0

    .line 2628
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    return v1
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .registers 9
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2208
    const-string/jumbo v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2209
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2211
    const/4 v1, 0x0

    .line 2213
    .local v1, "rc":I
    :try_start_a
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "asec"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "finalize"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_1e} :catch_1f

    .line 2221
    :goto_1e
    return v1

    .line 2218
    :catch_1f
    move-exception v0

    .line 2219
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_1e
.end method

.method public finishMediaUpdate()V
    .registers 3

    .prologue
    .line 2433
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    .line 2434
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission to call finishMediaUpdate()"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2436
    :cond_11
    iget-object v0, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1b

    .line 2437
    iget-object v0, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2432
    :goto_1a
    return-void

    .line 2439
    :cond_1b
    const-string/jumbo v0, "MountService"

    const-string/jumbo v1, "Odd, nobody asked to unmount?"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "gid"    # I
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    .line 2225
    const-string/jumbo v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2226
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2228
    const/4 v1, 0x0

    .line 2230
    .local v1, "rc":I
    :try_start_a
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "asec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "fixperms"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_28} :catch_29

    .line 2238
    :goto_28
    return v1

    .line 2235
    :catch_29
    move-exception v0

    .line 2236
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_28
.end method

.method public fixateNewestUserKeyAuth(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 2899
    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2900
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2903
    :try_start_9
    iget-object v1, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptfs"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "fixate_newest_user_key_auth"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_21} :catch_22

    .line 2898
    return-void

    .line 2904
    :catch_22
    move-exception v0

    .line 2905
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public forgetAllVolumes()V
    .registers 8

    .prologue
    .line 1939
    const-string/jumbo v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1940
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1942
    iget-object v4, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1943
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    :try_start_d
    iget-object v3, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_42

    .line 1944
    iget-object v3, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1945
    .local v0, "fsUuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    .line 1946
    .local v2, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v3, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 1947
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v5, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    const/16 v6, 0x9

    invoke-virtual {v3, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1949
    :cond_3a
    iget-object v3, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-static {v3, v0}, Lcom/android/server/MountService$Callbacks;->-wrap3(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;)V

    .line 1943
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1951
    .end local v0    # "fsUuid":Ljava/lang/String;
    .end local v2    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_42
    iget-object v3, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 1953
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    .line 1954
    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1957
    :cond_57
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    .line 1958
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_65
    .catchall {:try_start_d .. :try_end_65} :catchall_67

    monitor-exit v4

    .line 1938
    return-void

    .line 1942
    :catchall_67
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public forgetVolume(Ljava/lang/String;)V
    .registers 7
    .param p1, "fsUuid"    # Ljava/lang/String;

    .prologue
    .line 1914
    const-string/jumbo v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1915
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1917
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1919
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1920
    :try_start_f
    iget-object v1, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 1921
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v0, :cond_21

    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1924
    :cond_21
    :goto_21
    iget-object v1, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-static {v1, p1}, Lcom/android/server/MountService$Callbacks;->-wrap3(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;)V

    .line 1928
    iget-object v1, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1929
    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1930
    iget-object v1, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1933
    :cond_3f
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V
    :try_end_42
    .catchall {:try_start_f .. :try_end_42} :catchall_52

    monitor-exit v2

    .line 1913
    return-void

    .line 1922
    :cond_44
    :try_start_44
    iget-object v1, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-virtual {v1, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_52

    goto :goto_21

    .line 1919
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :catchall_52
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public format(Ljava/lang/String;)V
    .registers 9
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    .line 1805
    const-string/jumbo v2, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1806
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1808
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 1810
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    :try_start_d
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "volume"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "format"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string/jumbo v5, "auto"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_29} :catch_2a

    .line 1804
    return-void

    .line 1811
    :catch_2a
    move-exception v0

    .line 1812
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public formatVolume(Ljava/lang/String;)I
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1753
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->format(Ljava/lang/String;)V

    .line 1754
    const/4 v0, 0x0

    return v0
.end method

.method public getDisks()[Landroid/os/storage/DiskInfo;
    .registers 5

    .prologue
    .line 3141
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3142
    :try_start_3
    iget-object v2, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v1, v2, [Landroid/os/storage/DiskInfo;

    .line 3143
    .local v1, "res":[Landroid/os/storage/DiskInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v2, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 3144
    iget-object v2, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/DiskInfo;

    aput-object v2, v1, v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_23

    .line 3143
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_21
    monitor-exit v3

    .line 3146
    return-object v1

    .line 3141
    .end local v0    # "i":I
    .end local v1    # "res":[Landroid/os/storage/DiskInfo;
    :catchall_23
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getEncryptionState()I
    .registers 10

    .prologue
    const/4 v8, -0x1

    .line 2543
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.CRYPT_KEEPER"

    .line 2544
    const-string/jumbo v5, "no permission to access the crypt keeper"

    .line 2543
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2550
    :try_start_f
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "cryptocomplete"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2551
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_28} :catch_35
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_f .. :try_end_28} :catch_2a

    move-result v3

    return v3

    .line 2556
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_2a
    move-exception v0

    .line 2558
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v3, "MountService"

    const-string/jumbo v4, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    return v8

    .line 2552
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catch_35
    move-exception v1

    .line 2554
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "MountService"

    const-string/jumbo v4, "Unable to parse result from cryptfs cryptocomplete"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    return v8
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2759
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.STORAGE_INTERNAL"

    .line 2760
    const-string/jumbo v7, "no permission to access the crypt keeper"

    .line 2759
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2762
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2767
    :try_start_f
    iget-object v5, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "cryptfs"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "getfield"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v5

    .line 2768
    const/16 v6, 0x71

    .line 2766
    invoke-static {v5, v6}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v1

    .line 2769
    .local v1, "contents":[Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 2770
    .local v3, "result":Ljava/lang/String;
    array-length v5, v1

    :goto_30
    if-ge v4, v5, :cond_48

    aget-object v0, v1, v4

    .line 2771
    .local v0, "content":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_44
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_f .. :try_end_44} :catch_49

    move-result-object v3

    .line 2770
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 2773
    .end local v0    # "content":Ljava/lang/String;
    :cond_48
    return-object v3

    .line 2774
    .end local v1    # "contents":[Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    :catch_49
    move-exception v2

    .line 2775
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 2464
    const-string/jumbo v4, "rawPath cannot be null"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2466
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2467
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2470
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v5

    .line 2471
    :try_start_12
    iget-object v4, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_38

    .local v3, "state":Lcom/android/server/MountService$ObbState;
    monitor-exit v5

    .line 2473
    if-nez v3, :cond_3b

    .line 2474
    const-string/jumbo v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to find OBB mounted at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    return-object v9

    .line 2470
    .end local v3    # "state":Lcom/android/server/MountService$ObbState;
    :catchall_38
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2480
    .restart local v3    # "state":Lcom/android/server/MountService$ObbState;
    :cond_3b
    :try_start_3b
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "obb"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "path"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, v3, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2481
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v4, 0xd3

    invoke-virtual {v2, v4}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2482
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_5a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3b .. :try_end_5a} :catch_5c

    move-result-object v4

    return-object v4

    .line 2483
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_5c
    move-exception v1

    .line 2484
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2485
    .local v0, "code":I
    const/16 v4, 0x196

    if-ne v0, v4, :cond_66

    .line 2486
    return-object v9

    .line 2488
    :cond_66
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Unexpected response code %d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getPassword()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2801
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.STORAGE_INTERNAL"

    .line 2802
    const-string/jumbo v5, "only keyguard can retrieve password"

    .line 2801
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    invoke-direct {p0}, Lcom/android/server/MountService;->isReady()Z

    move-result v3

    if-nez v3, :cond_18

    .line 2805
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    return-object v3

    .line 2810
    :cond_18
    :try_start_18
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "getpw"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2811
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const-string/jumbo v3, "-1"

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 2813
    return-object v8

    .line 2815
    :cond_38
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_3b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_18 .. :try_end_3b} :catch_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_3b} :catch_3d

    move-result-object v3

    return-object v3

    .line 2818
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_3d
    move-exception v1

    .line 2819
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "MountService"

    const-string/jumbo v4, "Invalid response to getPassword"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    return-object v8

    .line 2816
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_48
    move-exception v0

    .line 2817
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public getPasswordType()I
    .registers 9

    .prologue
    .line 2713
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.STORAGE_INTERNAL"

    .line 2714
    const-string/jumbo v5, "no permission to access the crypt keeper"

    .line 2713
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2716
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2720
    :try_start_e
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "getpwtype"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2721
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    sget-object v3, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_38

    .line 2722
    sget-object v3, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 2723
    return v2

    .line 2721
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 2726
    :cond_38
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "unexpected return from cryptfs"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_41
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_e .. :try_end_41} :catch_41

    .line 2727
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v2    # "i":I
    :catch_41
    move-exception v0

    .line 2728
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2056
    const-string/jumbo v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2057
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2059
    iget-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2060
    :try_start_c
    iget-object v1, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_10

    monitor-exit v0

    return-object v1

    .line 2059
    :catchall_10
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2411
    const-string/jumbo v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2412
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2413
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2417
    :try_start_e
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "fspath"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2418
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2419
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_2b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_e .. :try_end_2b} :catch_2d

    move-result-object v3

    return-object v3

    .line 2420
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_2d
    move-exception v1

    .line 2421
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2422
    .local v0, "code":I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_49

    .line 2423
    const-string/jumbo v3, "MountService"

    const-string/jumbo v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    const/4 v3, 0x0

    return-object v3

    .line 2426
    :cond_49
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 2158
    const-string/jumbo v1, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2159
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2160
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2164
    :try_start_d
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "asec"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "list"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x6f

    .line 2163
    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_24} :catch_26

    move-result-object v1

    return-object v1

    .line 2165
    :catch_26
    move-exception v0

    .line 2166
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-array v1, v6, [Ljava/lang/String;

    return-object v1
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2390
    const-string/jumbo v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2391
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2392
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2396
    :try_start_e
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "path"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2397
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2398
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_2b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_e .. :try_end_2b} :catch_2d

    move-result-object v3

    return-object v3

    .line 2399
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_2d
    move-exception v1

    .line 2400
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2401
    .local v0, "code":I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_49

    .line 2402
    const-string/jumbo v3, "MountService"

    const-string/jumbo v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    const/4 v3, 0x0

    return-object v3

    .line 2405
    :cond_49
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .registers 14
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 2118
    const-string/jumbo v6, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v6}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2119
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2122
    :try_start_a
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v7, "storage"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "users"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v6

    .line 2123
    const/16 v7, 0x70

    .line 2121
    invoke-static {v6, v7}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v4

    .line 2126
    .local v4, "r":[Ljava/lang/String;
    array-length v6, v4

    new-array v0, v6, [I

    .line 2127
    .local v0, "data":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    array-length v6, v4

    if-ge v2, v6, :cond_5c

    .line 2128
    aget-object v6, v4, v2

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_34
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_34} :catch_5d

    move-result-object v5

    .line 2130
    .local v5, "tok":[Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_36
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v2
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_3e} :catch_41
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_36 .. :try_end_3e} :catch_5d

    .line 2127
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 2131
    :catch_41
    move-exception v3

    .line 2132
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    :try_start_42
    const-string/jumbo v6, "MountService"

    const-string/jumbo v7, "Error parsing pid %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v9, v5, v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    const/4 v6, 0x0

    new-array v6, v6, [I
    :try_end_5b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_42 .. :try_end_5b} :catch_5d

    return-object v6

    .line 2136
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .end local v5    # "tok":[Ljava/lang/String;
    :cond_5c
    return-object v0

    .line 2137
    .end local v0    # "data":[I
    .end local v2    # "i":I
    .end local v4    # "r":[Ljava/lang/String;
    :catch_5d
    move-exception v1

    .line 2138
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v6, "MountService"

    const-string/jumbo v7, "Failed to retrieve storage users list"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2139
    new-array v6, v11, [I

    return-object v6
.end method

.method public getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    .registers 48
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 3055
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v40

    .line 3057
    .local v40, "userId":I
    move/from16 v0, p3

    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_67

    const/16 v21, 0x1

    .line 3058
    .local v21, "forWrite":Z
    :goto_c
    move/from16 v0, p3

    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_6a

    const/16 v32, 0x1

    .line 3059
    .local v32, "realState":Z
    :goto_14
    move/from16 v0, p3

    and-int/lit16 v4, v0, 0x400

    if-eqz v4, :cond_6d

    const/16 v25, 0x1

    .line 3063
    .local v25, "includeInvisible":Z
    :goto_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v38

    .line 3065
    .local v38, "token":J
    :try_start_20
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->isUserKeyUnlocked(I)Z

    move-result v41

    .line 3066
    .local v41, "userKeyUnlocked":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/android/server/MountService$MountServiceInternalImpl;->hasExternalStorage(ILjava/lang/String;)Z
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_70

    move-result v37

    .line 3068
    .local v37, "storagePermission":Z
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3071
    const/16 v22, 0x0

    .line 3073
    .local v22, "foundPrimary":Z
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 3074
    .local v35, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3075
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_45
    :try_start_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_dd

    .line 3076
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/os/storage/VolumeInfo;

    .line 3077
    .local v43, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual/range {v43 .. v43}, Landroid/os/storage/VolumeInfo;->getType()I
    :try_end_60
    .catchall {:try_start_45 .. :try_end_60} :catchall_da

    move-result v4

    packed-switch v4, :pswitch_data_148

    .line 3075
    :cond_64
    :goto_64
    :pswitch_64
    add-int/lit8 v23, v23, 0x1

    goto :goto_45

    .line 3057
    .end local v21    # "forWrite":Z
    .end local v22    # "foundPrimary":Z
    .end local v23    # "i":I
    .end local v25    # "includeInvisible":Z
    .end local v32    # "realState":Z
    .end local v35    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v37    # "storagePermission":Z
    .end local v38    # "token":J
    .end local v41    # "userKeyUnlocked":Z
    .end local v43    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_67
    const/16 v21, 0x0

    .restart local v21    # "forWrite":Z
    goto :goto_c

    .line 3058
    :cond_6a
    const/16 v32, 0x0

    .restart local v32    # "realState":Z
    goto :goto_14

    .line 3059
    :cond_6d
    const/16 v25, 0x0

    .restart local v25    # "includeInvisible":Z
    goto :goto_1c

    .line 3067
    .restart local v38    # "token":J
    :catchall_70
    move-exception v4

    .line 3068
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3067
    throw v4

    .line 3085
    .restart local v22    # "foundPrimary":Z
    .restart local v23    # "i":I
    .restart local v35    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v37    # "storagePermission":Z
    .restart local v41    # "userKeyUnlocked":Z
    .restart local v43    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_75
    const/16 v26, 0x0

    .line 3086
    .local v26, "match":Z
    if-eqz v21, :cond_b1

    .line 3087
    :try_start_79
    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    move-result v26

    .line 3092
    .end local v26    # "match":Z
    :goto_81
    if-eqz v26, :cond_64

    .line 3094
    const/16 v34, 0x0

    .line 3095
    .local v34, "reportUnmounted":Z
    invoke-virtual/range {v43 .. v43}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_8e

    if-eqz v41, :cond_cc

    .line 3097
    :cond_8e
    if-nez v37, :cond_92

    if-eqz v32, :cond_cf

    .line 3101
    :cond_92
    :goto_92
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v43

    move/from16 v1, v40

    move/from16 v2, v34

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v42

    .line 3103
    .local v42, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v43 .. v43}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 3104
    const/4 v4, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3105
    const/16 v22, 0x1

    goto :goto_64

    .line 3089
    .end local v34    # "reportUnmounted":Z
    .end local v42    # "userVol":Landroid/os/storage/StorageVolume;
    .restart local v26    # "match":Z
    :cond_b1
    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v4

    if-nez v4, :cond_c6

    .line 3090
    if-eqz v25, :cond_c9

    invoke-virtual/range {v43 .. v43}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_c9

    const/16 v26, 0x1

    goto :goto_81

    .line 3089
    :cond_c6
    const/16 v26, 0x1

    goto :goto_81

    .line 3090
    :cond_c9
    const/16 v26, 0x0

    goto :goto_81

    .line 3096
    .end local v26    # "match":Z
    .restart local v34    # "reportUnmounted":Z
    :cond_cc
    const/16 v34, 0x1

    goto :goto_92

    .line 3098
    :cond_cf
    const/16 v34, 0x1

    goto :goto_92

    .line 3107
    .restart local v42    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_d2
    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d9
    .catchall {:try_start_79 .. :try_end_d9} :catchall_da

    goto :goto_64

    .line 3074
    .end local v34    # "reportUnmounted":Z
    .end local v42    # "userVol":Landroid/os/storage/StorageVolume;
    .end local v43    # "vol":Landroid/os/storage/VolumeInfo;
    :catchall_da
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_dd
    monitor-exit v5

    .line 3112
    if-nez v22, :cond_136

    .line 3113
    const-string/jumbo v4, "MountService"

    const-string/jumbo v5, "No primary storage defined yet; hacking together a stub"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    const-string/jumbo v4, "ro.vold.primary_physical"

    const/4 v5, 0x0

    .line 3115
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 3118
    .local v10, "primaryPhysical":Z
    const-string/jumbo v24, "stub_primary"

    .line 3119
    .local v24, "id":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 3120
    .local v7, "path":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const v5, 0x104000e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3121
    .local v8, "description":Ljava/lang/String;
    const/16 v27, 0x1

    .line 3122
    .local v27, "primary":Z
    move/from16 v33, v10

    .line 3123
    .local v33, "removable":Z
    if-eqz v10, :cond_145

    const/4 v11, 0x0

    .line 3124
    .local v11, "emulated":Z
    :goto_10a
    const-wide/16 v30, 0x0

    .line 3125
    .local v30, "mtpReserveSize":J
    const/16 v20, 0x0

    .line 3126
    .local v20, "allowMassStorage":Z
    const-wide/16 v28, 0x0

    .line 3127
    .local v28, "maxFileSize":J
    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 3128
    .local v17, "owner":Landroid/os/UserHandle;
    const/16 v18, 0x0

    .line 3129
    .local v18, "uuid":Ljava/lang/String;
    const-string/jumbo v36, "removed"

    .line 3131
    .local v36, "state":Ljava/lang/String;
    new-instance v4, Landroid/os/storage/StorageVolume;

    const-string/jumbo v5, "stub_primary"

    .line 3133
    const-string/jumbo v19, "removed"

    .line 3131
    const/4 v6, 0x0

    .line 3132
    const/4 v9, 0x1

    const-wide/16 v12, 0x0

    .line 3133
    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    .line 3131
    invoke-direct/range {v4 .. v19}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;ILjava/io/File;Ljava/lang/String;ZZZJZJLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3136
    .end local v7    # "path":Ljava/io/File;
    .end local v8    # "description":Ljava/lang/String;
    .end local v10    # "primaryPhysical":Z
    .end local v11    # "emulated":Z
    .end local v17    # "owner":Landroid/os/UserHandle;
    .end local v18    # "uuid":Ljava/lang/String;
    .end local v20    # "allowMassStorage":Z
    .end local v24    # "id":Ljava/lang/String;
    .end local v27    # "primary":Z
    .end local v28    # "maxFileSize":J
    .end local v30    # "mtpReserveSize":J
    .end local v33    # "removable":Z
    .end local v36    # "state":Ljava/lang/String;
    :cond_136
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/storage/StorageVolume;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/storage/StorageVolume;

    return-object v4

    .line 3123
    .restart local v7    # "path":Ljava/io/File;
    .restart local v8    # "description":Ljava/lang/String;
    .restart local v10    # "primaryPhysical":Z
    .restart local v24    # "id":Ljava/lang/String;
    .restart local v27    # "primary":Z
    .restart local v33    # "removable":Z
    :cond_145
    const/4 v11, 0x1

    .restart local v11    # "emulated":Z
    goto :goto_10a

    .line 3077
    nop

    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_75
        :pswitch_64
        :pswitch_75
    .end packed-switch
.end method

.method public getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;
    .registers 6
    .param p1, "flags"    # I

    .prologue
    .line 3163
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3164
    :try_start_3
    iget-object v2, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v1, v2, [Landroid/os/storage/VolumeRecord;

    .line 3165
    .local v1, "res":[Landroid/os/storage/VolumeRecord;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v2, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 3166
    iget-object v2, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    aput-object v2, v1, v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_23

    .line 3165
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_21
    monitor-exit v3

    .line 3168
    return-object v1

    .line 3163
    .end local v0    # "i":I
    .end local v1    # "res":[Landroid/os/storage/VolumeRecord;
    :catchall_23
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "mountPoint"    # Ljava/lang/String;

    .prologue
    .line 1732
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getVolumes(I)[Landroid/os/storage/VolumeInfo;
    .registers 6
    .param p1, "flags"    # I

    .prologue
    .line 3152
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3153
    :try_start_3
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v1, v2, [Landroid/os/storage/VolumeInfo;

    .line 3154
    .local v1, "res":[Landroid/os/storage/VolumeInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 3155
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    aput-object v2, v1, v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_23

    .line 3154
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_21
    monitor-exit v3

    .line 3157
    return-object v1

    .line 3152
    .end local v0    # "i":I
    .end local v1    # "res":[Landroid/os/storage/VolumeInfo;
    :catchall_23
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public isConvertibleToFBE()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2785
    iget-object v4, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.STORAGE_INTERNAL"

    .line 2786
    const-string/jumbo v6, "no permission to access the crypt keeper"

    .line 2785
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2788
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2792
    :try_start_10
    iget-object v4, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "cryptfs"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "isConvertibleToFBE"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2793
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_10 .. :try_end_29} :catch_2f

    move-result v4

    if-eqz v4, :cond_2d

    :goto_2c
    return v2

    :cond_2d
    move v2, v3

    goto :goto_2c

    .line 2794
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_2f
    move-exception v0

    .line 2795
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public isExternalStorageEmulated()Z
    .registers 2

    .prologue
    .line 1737
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .registers 4
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    .line 2495
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2496
    iget-object v1, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v1

    .line 2497
    :try_start_9
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit v1

    return v0

    .line 2496
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2355
    const-string/jumbo v0, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2356
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2357
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2359
    iget-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 2360
    :try_start_f
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_17

    move-result v0

    monitor-exit v1

    return v0

    .line 2359
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isUsbMassStorageConnected()Z
    .registers 2

    .prologue
    .line 1717
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isUsbMassStorageEnabled()Z
    .registers 2

    .prologue
    .line 1727
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isUserKeyUnlocked(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 2952
    iget-object v1, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2953
    :try_start_3
    iget-object v0, p0, Lcom/android/server/MountService;->mLocalUnlockedUsers:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    .line 2952
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public lastMaintenance()J
    .registers 3

    .prologue
    .line 984
    iget-wide v0, p0, Lcom/android/server/MountService;->mLastMaintenance:J

    return-wide v0
.end method

.method public lockUserKey(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 2936
    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2937
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2940
    :try_start_9
    iget-object v1, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptfs"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "lock_user_key"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_21} :catch_2e

    .line 2945
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2946
    :try_start_24
    iget-object v1, p0, Lcom/android/server/MountService;->mLocalUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/MountService;->mLocalUnlockedUsers:[I
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_34

    monitor-exit v2

    .line 2935
    return-void

    .line 2941
    :catch_2e
    move-exception v0

    .line 2942
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 2945
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_34
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "appPath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 3016
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 3017
    .local v5, "userId":I
    new-instance v4, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v4, v5}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3020
    .local v4, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    .line 3021
    const-string/jumbo v7, "appops"

    .line 3020
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 3022
    .local v1, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v1, v6, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3024
    const/4 v0, 0x0

    .line 3026
    .local v0, "appFile":Ljava/io/File;
    :try_start_21
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_29} :catch_7e

    move-result-object v0

    .line 3034
    .local v0, "appFile":Ljava/io/File;
    invoke-virtual {v4, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_48

    .line 3035
    invoke-virtual {v4, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    .line 3034
    if-nez v6, :cond_48

    .line 3036
    invoke-virtual {v4, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    .line 3034
    if-eqz v6, :cond_ac

    .line 3037
    :cond_48
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 3038
    const-string/jumbo v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_69

    .line 3039
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3043
    :cond_69
    :try_start_69
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v7, "volume"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "mkdirs"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_7d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_69 .. :try_end_7d} :catch_a6

    .line 3044
    return v11

    .line 3027
    .local v0, "appFile":Ljava/io/File;
    :catch_7e
    move-exception v3

    .line 3028
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to resolve "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    const/4 v6, -0x1

    return v6

    .line 3045
    .end local v3    # "e":Ljava/io/IOException;
    .local v0, "appFile":Ljava/io/File;
    :catch_a6
    move-exception v2

    .line 3046
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v6

    return v6

    .line 3050
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_ac
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid mkdirs path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public monitor()V
    .registers 2

    .prologue
    .line 3830
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_9

    .line 3831
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 3833
    :cond_9
    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_12

    .line 3834
    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 3829
    :cond_12
    return-void
.end method

.method public mount(Ljava/lang/String;)V
    .registers 9
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    .line 1759
    const-string/jumbo v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1760
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1762
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 1763
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1764
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Mounting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " restricted by policy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1767
    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "volume"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "mount"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget v5, v1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    iget v5, v1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_5c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_34 .. :try_end_5c} :catch_5d

    .line 1758
    return-void

    .line 1768
    :catch_5d
    move-exception v0

    .line 1769
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public mountAppFuse(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2986
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2987
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 2989
    .local v3, "pid":I
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "appfuse"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "mount"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const/4 v8, 0x3

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2990
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v5

    if-nez v5, :cond_40

    .line 2991
    new-instance v5, Landroid/os/RemoteException;

    const-string/jumbo v6, "AppFuse FD from vold is null."

    invoke-direct {v5, v6}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_3a} :catch_3a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3a} :catch_53

    .line 3007
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v3    # "pid":I
    .end local v4    # "uid":I
    :catch_3a
    move-exception v0

    .line 3008
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 2994
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v3    # "pid":I
    .restart local v4    # "uid":I
    :cond_40
    :try_start_40
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 2995
    iget-object v6, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    .line 2996
    new-instance v7, Lcom/android/server/MountService$3;

    invoke-direct {v7, p0, v4, v3, p1}, Lcom/android/server/MountService$3;-><init>(Lcom/android/server/MountService;IILjava/lang/String;)V

    .line 2993
    invoke-static {v5, v6, v7}, Landroid/os/ParcelFileDescriptor;->fromFd(Ljava/io/FileDescriptor;Landroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;
    :try_end_51
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_40 .. :try_end_51} :catch_3a
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_51} :catch_53

    move-result-object v5

    return-object v5

    .line 3009
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v3    # "pid":I
    .end local v4    # "uid":I
    :catch_53
    move-exception v1

    .line 3010
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Landroid/os/RemoteException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .registers 14
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "canonicalPath"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/storage/IObbActionListener;
    .param p5, "nonce"    # I

    .prologue
    .line 2504
    const-string/jumbo v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2505
    const-string/jumbo v1, "canonicalPath cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2506
    const-string/jumbo v1, "token cannot be null"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2508
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2509
    .local v4, "callingUid":I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2510
    .local v0, "obbState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$MountObbAction;

    invoke-direct {v7, p0, v0, p3, v4}, Lcom/android/server/MountService$MountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V

    .line 2511
    .local v7, "action":Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2503
    return-void
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I
    .registers 13
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ownerUid"    # I
    .param p4, "readOnly"    # Z

    .prologue
    .line 2282
    const-string/jumbo v3, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2283
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2284
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2286
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2287
    :try_start_f
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    move-result v3

    if-eqz v3, :cond_1a

    .line 2288
    const/4 v3, -0x6

    monitor-exit v4

    return v3

    :cond_1a
    monitor-exit v4

    .line 2292
    const/4 v2, 0x0

    .line 2294
    .local v2, "rc":I
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "asec"

    const/4 v3, 0x5

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "mount"

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object p1, v6, v3

    new-instance v3, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v3, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v6, v7

    .line 2295
    if-eqz p4, :cond_56

    const-string/jumbo v3, "ro"

    :goto_41
    const/4 v7, 0x4

    aput-object v3, v6, v7

    .line 2294
    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_47
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1c .. :try_end_47} :catch_5a

    .line 2303
    :cond_47
    :goto_47
    if-nez v2, :cond_52

    .line 2304
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2305
    :try_start_4c
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_65

    monitor-exit v4

    .line 2308
    :cond_52
    return v2

    .line 2286
    .end local v2    # "rc":I
    :catchall_53
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2295
    .restart local v2    # "rc":I
    :cond_56
    :try_start_56
    const-string/jumbo v3, "rw"
    :try_end_59
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_41

    .line 2296
    :catch_5a
    move-exception v1

    .line 2297
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2298
    .local v0, "code":I
    const/16 v3, 0x195

    if-eq v0, v3, :cond_47

    .line 2299
    const/4 v2, -0x1

    goto :goto_47

    .line 2304
    .end local v0    # "code":I
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_65
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public mountVolume(Ljava/lang/String;)I
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1742
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->mount(Ljava/lang/String;)V

    .line 1743
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckHoldWakeLock(I)Z
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 1054
    const/4 v0, 0x0

    return v0
.end method

.method public onDaemonConnected()V
    .registers 3

    .prologue
    .line 992
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    .line 993
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 991
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 6
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1063
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->onEventLocked(ILjava/lang/String;[Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result v1

    monitor-exit v0

    return v1

    .line 1062
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .registers 11
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "ratio"    # I

    .prologue
    .line 1869
    const-string/jumbo v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1870
    invoke-direct {p0}, Lcom/android/server/MountService;->enforceAdminUser()V

    .line 1871
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1873
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    .line 1875
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_10
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "volume"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "partition"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const-string/jumbo v6, "mixed"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1876
    const-string/jumbo v3, "partitionMixed"

    const-wide/32 v4, 0x2bf20

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_3a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_10 .. :try_end_3a} :catch_42
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_10 .. :try_end_3a} :catch_3b

    .line 1868
    return-void

    .line 1879
    :catch_3b
    move-exception v1

    .line 1880
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1877
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_42
    move-exception v0

    .line 1878
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public partitionPrivate(Ljava/lang/String;)V
    .registers 10
    .param p1, "diskId"    # Ljava/lang/String;

    .prologue
    .line 1851
    const-string/jumbo v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1852
    invoke-direct {p0}, Lcom/android/server/MountService;->enforceAdminUser()V

    .line 1853
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1855
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    .line 1857
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_10
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "partition"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const-string/jumbo v6, "private"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1859
    const-string/jumbo v3, "partitionPrivate"

    const-wide/32 v4, 0x75300

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_33
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_10 .. :try_end_33} :catch_3b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_10 .. :try_end_33} :catch_34

    .line 1850
    return-void

    .line 1862
    :catch_34
    move-exception v1

    .line 1863
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1860
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_3b
    move-exception v0

    .line 1861
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public partitionPublic(Ljava/lang/String;)V
    .registers 10
    .param p1, "diskId"    # Ljava/lang/String;

    .prologue
    .line 1835
    const-string/jumbo v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1836
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1838
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    .line 1840
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_d
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "partition"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const-string/jumbo v6, "public"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1841
    const-string/jumbo v3, "partitionPublic"

    const-wide/32 v4, 0x2bf20

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_30
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_30} :catch_38
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_30} :catch_31

    .line 1834
    return-void

    .line 1844
    :catch_31
    move-exception v1

    .line 1845
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1842
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_38
    move-exception v0

    .line 1843
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public prepareUserStorage(Ljava/lang/String;III)V
    .registers 11
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "serialNumber"    # I
    .param p4, "flags"    # I

    .prologue
    .line 2959
    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2960
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2963
    :try_start_9
    iget-object v1, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptfs"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "prepare_user_storage"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Lcom/android/server/MountService;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 2964
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 2963
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_36
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_36} :catch_37

    .line 2958
    return-void

    .line 2965
    :catch_37
    move-exception v0

    .line 2966
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/MountService$Callbacks;->register(Landroid/os/storage/IMountServiceListener;)V

    .line 1698
    return-void
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "oldId"    # Ljava/lang/String;
    .param p2, "newId"    # Ljava/lang/String;

    .prologue
    .line 2365
    const-string/jumbo v2, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2366
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2367
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2369
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2374
    :try_start_f
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_3c

    move-result v2

    if-eqz v2, :cond_22

    .line 2375
    :cond_1f
    const/4 v2, -0x6

    monitor-exit v3

    return v2

    :cond_22
    monitor-exit v3

    .line 2379
    const/4 v1, 0x0

    .line 2381
    .local v1, "rc":I
    :try_start_24
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "asec"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "rename"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_24 .. :try_end_3b} :catch_3f

    .line 2386
    :goto_3b
    return v1

    .line 2369
    .end local v1    # "rc":I
    :catchall_3c
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2382
    .restart local v1    # "rc":I
    :catch_3f
    move-exception v0

    .line 2383
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_3b
.end method

.method public resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sizeMb"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 2194
    const-string/jumbo v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2195
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2196
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2198
    const/4 v1, 0x0

    .line 2200
    .local v1, "rc":I
    :try_start_d
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "asec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "resize"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    new-instance v5, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v5, p3}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_30
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_30} :catch_31

    .line 2204
    :goto_30
    return v1

    .line 2201
    :catch_31
    move-exception v0

    .line 2202
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_30
.end method

.method runIdleMaintenance(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 971
    return-void
.end method

.method public runMaintenance()V
    .registers 2

    .prologue
    .line 978
    const-string/jumbo v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 979
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->runIdleMaintenance(Ljava/lang/Runnable;)V

    .line 977
    return-void
.end method

.method public setDebugFlags(II)V
    .registers 10
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    const/4 v5, 0x0

    .line 1997
    const-string/jumbo v4, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1998
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2000
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_52

    .line 2001
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 2002
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 2003
    const-string/jumbo v5, "Emulation not available on device with native FBE"

    .line 2002
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2005
    :cond_1d
    iget-object v4, p0, Lcom/android/server/MountService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 2006
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 2007
    const-string/jumbo v5, "Emulation requires disabling \'Secure start-up\' in Settings > Security"

    .line 2006
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2010
    :cond_2e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2012
    .local v2, "token":J
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_93

    const/4 v0, 0x1

    .line 2013
    .local v0, "emulateFbe":Z
    :goto_37
    :try_start_37
    const-string/jumbo v4, "persist.sys.emulate_fbe"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    iget-object v4, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/PowerManager;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_37 .. :try_end_4f} :catchall_95

    .line 2018
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2022
    .end local v0    # "emulateFbe":Z
    .end local v2    # "token":J
    :cond_52
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_6f

    .line 2023
    iget-object v6, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2024
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_9a

    const/4 v4, 0x1

    :goto_5e
    :try_start_5e
    iput-boolean v4, p0, Lcom/android/server/MountService;->mForceAdoptable:Z

    .line 2026
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    .line 2027
    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_6e
    .catchall {:try_start_5e .. :try_end_6e} :catchall_9c

    monitor-exit v6

    .line 2031
    :cond_6f
    and-int/lit8 v4, p2, 0xc

    if-eqz v4, :cond_92

    .line 2034
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_9f

    .line 2035
    const-string/jumbo v1, "force_on"

    .line 2042
    .local v1, "value":Ljava/lang/String;
    :goto_7a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2044
    .restart local v2    # "token":J
    :try_start_7e
    const-string/jumbo v4, "persist.sys.sdcardfs"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_8f
    .catchall {:try_start_7e .. :try_end_8f} :catchall_ab

    .line 2049
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1996
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "token":J
    :cond_92
    return-void

    .line 2012
    .restart local v2    # "token":J
    :cond_93
    const/4 v0, 0x0

    .restart local v0    # "emulateFbe":Z
    goto :goto_37

    .line 2017
    :catchall_95
    move-exception v4

    .line 2018
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2017
    throw v4

    .end local v0    # "emulateFbe":Z
    .end local v2    # "token":J
    :cond_9a
    move v4, v5

    .line 2024
    goto :goto_5e

    .line 2023
    :catchall_9c
    move-exception v4

    monitor-exit v6

    throw v4

    .line 2036
    :cond_9f
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_a7

    .line 2037
    const-string/jumbo v1, "force_off"

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_7a

    .line 2039
    .end local v1    # "value":Ljava/lang/String;
    :cond_a7
    const-string/jumbo v1, ""

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_7a

    .line 2048
    .restart local v2    # "token":J
    :catchall_ab
    move-exception v4

    .line 2049
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2048
    throw v4
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2739
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.STORAGE_INTERNAL"

    .line 2740
    const-string/jumbo v4, "no permission to access the crypt keeper"

    .line 2739
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2746
    :try_start_e
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "setfield"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_e .. :try_end_25} :catch_27

    move-result-object v1

    .line 2738
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    return-void

    .line 2747
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_27
    move-exception v0

    .line 2748
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .registers 11
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    .prologue
    .line 2066
    const-string/jumbo v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2067
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2072
    iget-object v4, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2073
    :try_start_c
    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2074
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Primary storage already at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_2e

    .line 2072
    :catchall_2e
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2077
    :cond_31
    :try_start_31
    iget-object v3, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    if-eqz v3, :cond_3e

    .line 2078
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Move already in progress"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2080
    :cond_3e
    iput-object p2, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 2081
    iput-object p1, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    .line 2085
    const-string/jumbo v3, "primary_physical"

    iget-object v5, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 2086
    const-string/jumbo v3, "primary_physical"

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 2085
    if-eqz v3, :cond_76

    .line 2087
    :cond_56
    const-string/jumbo v3, "MountService"

    const-string/jumbo v5, "Skipping move to/from primary physical"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    const/16 v3, 0x52

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V

    .line 2089
    const/16 v3, -0x64

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V

    .line 2090
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_74
    .catchall {:try_start_31 .. :try_end_74} :catchall_2e

    monitor-exit v4

    .line 2091
    return-void

    .line 2094
    :cond_76
    :try_start_76
    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 2095
    .local v1, "from":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 2097
    .local v2, "to":Landroid/os/storage/VolumeInfo;
    if-nez v1, :cond_a4

    .line 2098
    const-string/jumbo v3, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failing move due to missing from volume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    const/4 v3, -0x6

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V
    :try_end_a2
    .catchall {:try_start_76 .. :try_end_a2} :catchall_2e

    monitor-exit v4

    .line 2100
    return-void

    .line 2101
    :cond_a4
    if-nez v2, :cond_c6

    .line 2102
    :try_start_a6
    const-string/jumbo v3, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failing move due to missing to volume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    const/4 v3, -0x6

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V
    :try_end_c4
    .catchall {:try_start_a6 .. :try_end_c4} :catchall_2e

    monitor-exit v4

    .line 2104
    return-void

    :cond_c6
    monitor-exit v4

    .line 2110
    :try_start_c7
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "move_storage"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-object v6, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_e2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c7 .. :try_end_e2} :catch_e3

    .line 2065
    return-void

    .line 2111
    :catch_e3
    move-exception v0

    .line 2112
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public setUsbMassStorageEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 1722
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .prologue
    .line 1886
    const-string/jumbo v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1887
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1889
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1891
    :try_start_f
    iget-object v1, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 1892
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    iput-object p2, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1893
    iget-object v1, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-static {v1, v0}, Lcom/android/server/MountService$Callbacks;->-wrap4(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 1894
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_23

    monitor-exit v2

    .line 1885
    return-void

    .line 1890
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setVolumeUserFlags(Ljava/lang/String;II)V
    .registers 8
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "mask"    # I

    .prologue
    .line 1900
    const-string/jumbo v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1901
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1903
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1904
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1905
    :try_start_f
    iget-object v1, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 1906
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    iget v1, v0, Landroid/os/storage/VolumeRecord;->userFlags:I

    not-int v3, p3

    and-int/2addr v1, v3

    and-int v3, p2, p3

    or-int/2addr v1, v3

    iput v1, v0, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 1907
    iget-object v1, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-static {v1, v0}, Lcom/android/server/MountService$Callbacks;->-wrap4(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 1908
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_2a

    monitor-exit v2

    .line 1899
    return-void

    .line 1904
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :catchall_2a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/os/storage/IMountShutdownObserver;

    .prologue
    .line 1709
    const-string/jumbo v0, "android.permission.SHUTDOWN"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1711
    const-string/jumbo v0, "MountService"

    const-string/jumbo v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1708
    return-void
.end method

.method public unlockUserKey(II[B[B)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "token"    # [B
    .param p4, "secret"    # [B

    .prologue
    .line 2911
    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2912
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2914
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 2917
    iget-object v1, p0, Lcom/android/server/MountService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2918
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Token required to unlock secure user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2922
    :cond_37
    :try_start_37
    iget-object v1, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptfs"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "unlock_user_key"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 2923
    invoke-direct {p0, p3}, Lcom/android/server/MountService;->encodeBytes([B)Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-direct {p0, p4}, Lcom/android/server/MountService;->encodeBytes([B)Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 2922
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_64
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_37 .. :try_end_64} :catch_71

    .line 2929
    :cond_64
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2930
    :try_start_67
    iget-object v1, p0, Lcom/android/server/MountService;->mLocalUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/MountService;->mLocalUnlockedUsers:[I
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_77

    monitor-exit v2

    .line 2910
    return-void

    .line 2924
    :catch_71
    move-exception v0

    .line 2925
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 2929
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_77
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unmount(Ljava/lang/String;)V
    .registers 11
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    .line 1775
    const-string/jumbo v4, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1776
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1778
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 1782
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isPublicSd()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1783
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1785
    .local v2, "ident":J
    :try_start_17
    iget-object v5, p0, Lcom/android/server/MountService;->mUnmountLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_52

    .line 1786
    :try_start_1a
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    .line 1787
    iget-object v4, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 1788
    iget-object v4, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    const-string/jumbo v6, "mUnmountSignal"

    invoke-direct {p0, v4, v6}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 1789
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_4f

    :try_start_34
    monitor-exit v5
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_52

    .line 1792
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1797
    .end local v2    # "ident":J
    :cond_38
    :try_start_38
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "volume"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "unmount"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_38 .. :try_end_4e} :catch_57

    .line 1774
    return-void

    .line 1785
    .restart local v2    # "ident":J
    :catchall_4f
    move-exception v4

    :try_start_50
    monitor-exit v5

    throw v4
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_52

    .line 1791
    :catchall_52
    move-exception v4

    .line 1792
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1791
    throw v4

    .line 1798
    .end local v2    # "ident":J
    :catch_57
    move-exception v0

    .line 1799
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .registers 14
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "token"    # Landroid/os/storage/IObbActionListener;
    .param p4, "nonce"    # I

    .prologue
    .line 2519
    const-string/jumbo v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2522
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v2

    .line 2523
    :try_start_9
    iget-object v1, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/MountService$ObbState;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_35

    .local v8, "existingState":Lcom/android/server/MountService$ObbState;
    monitor-exit v2

    .line 2526
    if-eqz v8, :cond_38

    .line 2528
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2529
    .local v4, "callingUid":I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    .line 2530
    iget-object v3, v8, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move v6, p4

    .line 2529
    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2531
    .local v0, "newState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$UnmountObbAction;

    invoke-direct {v7, p0, v0, p2}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    .line 2532
    .local v7, "action":Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2518
    .end local v0    # "newState":Lcom/android/server/MountService$ObbState;
    .end local v4    # "callingUid":I
    .end local v7    # "action":Lcom/android/server/MountService$ObbAction;
    :goto_34
    return-void

    .line 2522
    .end local v8    # "existingState":Lcom/android/server/MountService$ObbState;
    :catchall_35
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2537
    .restart local v8    # "existingState":Lcom/android/server/MountService$ObbState;
    :cond_38
    const-string/jumbo v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown OBB mount at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 2312
    const-string/jumbo v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2313
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2314
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2316
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2317
    :try_start_f
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_50

    move-result v4

    if-nez v4, :cond_1a

    .line 2318
    const/4 v4, -0x5

    monitor-exit v5

    return v4

    :cond_1a
    monitor-exit v5

    .line 2328
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 2330
    const/4 v3, 0x0

    .line 2332
    .local v3, "rc":I
    :try_start_23
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "unmount"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2333
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_3f

    .line 2334
    const-string/jumbo v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2336
    :cond_3f
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_44
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_23 .. :try_end_44} :catch_53

    .line 2346
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_44
    if-nez v3, :cond_4f

    .line 2347
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2348
    :try_start_49
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_60

    monitor-exit v5

    .line 2351
    :cond_4f
    return v3

    .line 2316
    .end local v3    # "rc":I
    :catchall_50
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2337
    .restart local v3    # "rc":I
    :catch_53
    move-exception v2

    .line 2338
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2339
    .local v1, "code":I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_5e

    .line 2340
    const/4 v3, -0x7

    goto :goto_44

    .line 2342
    :cond_5e
    const/4 v3, -0x1

    goto :goto_44

    .line 2347
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_60
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    .line 1748
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->unmount(Ljava/lang/String;)V

    .line 1747
    return-void
.end method

.method public unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/MountService$Callbacks;->unregister(Landroid/os/storage/IMountServiceListener;)V

    .line 1703
    return-void
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .registers 9
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2679
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_11

    .line 2680
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "no permission to access the crypt keeper"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2683
    :cond_11
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CRYPT_KEEPER"

    .line 2684
    const-string/jumbo v4, "no permission to access the crypt keeper"

    .line 2683
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2686
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2687
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2690
    :cond_2b
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2698
    :try_start_2e
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "verifypw"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v5, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2699
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const-string/jumbo v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cryptfs verifypw => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2e .. :try_end_6d} :catch_6f

    move-result v2

    return v2

    .line 2701
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_6f
    move-exception v0

    .line 2703
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    return v2
.end method

.method public waitForAsecScan()V
    .registers 3

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    const-string/jumbo v1, "mAsecsScanned"

    invoke-direct {p0, v0, v1}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 767
    return-void
.end method

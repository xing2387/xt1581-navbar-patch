.class public Lcom/android/server/NetworkManagementService;
.super Landroid/os/INetworkManagementService$Stub;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkManagementService$IdleTimerParams;,
        Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;,
        Lcom/android/server/NetworkManagementService$NetdResponseCode;
    }
.end annotation


# static fields
.field static final DAEMON_MSG_MOBILE_CONN_REAL_TIME_INFO:I = 0x1

.field private static final DBG:Z

.field public static final DNS_RESOLVER_DEFAULT_MAX_SAMPLES:I = 0x40

.field public static final DNS_RESOLVER_DEFAULT_MIN_SAMPLES:I = 0x8

.field public static final DNS_RESOLVER_DEFAULT_SAMPLE_VALIDITY_SECONDS:I = 0x708

.field public static final DNS_RESOLVER_DEFAULT_SUCCESS_THRESHOLD_PERCENT:I = 0x19

.field private static final FORCE_FW_POLICY_OFF_PROP:Ljava/lang/String; = "persist.mot.fwpolicy_off"

.field public static final LIMIT_GLOBAL_ALERT:Ljava/lang/String; = "globalAlert"

.field private static final MAX_UID_RANGES_PER_COMMAND:I = 0xa

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field private static final NETD_TAG:Ljava/lang/String; = "NetdConnector"

.field public static final PERMISSION_NETWORK:Ljava/lang/String; = "NETWORK"

.field public static final PERMISSION_SYSTEM:Ljava/lang/String; = "SYSTEM"

.field static final SOFT_AP_COMMAND:Ljava/lang/String; = "softap"

.field static final SOFT_AP_COMMAND_SUCCESS:Ljava/lang/String; = "Ok"

.field private static final TAG:Ljava/lang/String; = "NetworkManagement"


# instance fields
.field private mActiveAlerts:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveIdleTimers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/NetworkManagementService$IdleTimerParams;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveQuotas:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBandwidthControlEnabled:Z

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private volatile mBlockDataTrafficInternal:Z

.field private mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mContext:Landroid/content/Context;

.field private final mDaemonHandler:Landroid/os/Handler;

.field private mDataSaverMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private final mFgHandler:Landroid/os/Handler;

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private volatile mFirewallEnabled:Z

.field private mIdleTimerLock:Ljava/lang/Object;

.field protected final mIsDefaultFWPolicyEnabled:Z

.field private mLastPowerStateFromRadio:I

.field private mLastPowerStateFromWifi:I

.field private mMobileActivityFromRadio:Z

.field private mNetdService:Landroid/net/INetd;

.field private mNetworkActive:Z

.field private final mNetworkActivityListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/os/INetworkActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkManagementEventObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mQuotaLock:Ljava/lang/Object;

.field private final mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

.field private volatile mStrictEnabled:Z

.field private final mThread:Ljava/lang/Thread;

.field private mUidAllowOnMetered:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private mUidCleartextPolicy:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private mUidFirewallDozableRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private mUidFirewallRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private mUidFirewallStandbyRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private mUidRejectOnMetered:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/NetworkManagementService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->connectNativeNetdService()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "route"    # Landroid/net/RouteInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/NetworkManagementService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .registers 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/NetworkManagementService;IIJIZ)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "powerState"    # I
    .param p3, "tsNanos"    # J
    .param p5, "uid"    # I
    .param p6, "fromRadio"    # Z

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IIJIZ)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lifetime"    # J
    .param p4, "addresses"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/NetworkManagementService;->notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .registers 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 133
    const-string/jumbo v0, "NetworkManagement"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    .line 130
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "socket"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 317
    invoke-direct {p0}, Landroid/os/INetworkManagementService$Stub;-><init>()V

    .line 225
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 228
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 227
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 230
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 232
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 236
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 239
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 242
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 245
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 248
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 251
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    .line 257
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 263
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 269
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 272
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 277
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    .line 290
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    .line 298
    iput v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 299
    iput v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    .line 302
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 301
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    .line 306
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 307
    const v1, 0x11200eb

    .line 306
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mIsDefaultFWPolicyEnabled:Z

    .line 318
    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 321
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;

    .line 328
    const/4 v6, 0x0

    .line 330
    .local v6, "wl":Landroid/os/PowerManager$WakeLock;
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    .line 331
    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    const-string/jumbo v4, "NetdConnector"

    .line 332
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    .line 331
    const/16 v3, 0xa

    const/16 v5, 0xa0

    move-object v2, p2

    .line 330
    invoke-direct/range {v0 .. v7}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 333
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "NetdConnector"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mThread:Ljava/lang/Thread;

    .line 335
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 338
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 317
    return-void
.end method

.method private closeSocketsForFirewallChainLocked(ILjava/lang/String;)V
    .registers 15
    .param p1, "chain"    # I
    .param p2, "chainName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2331
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRules(I)Landroid/util/SparseIntArray;

    move-result-object v5

    .line 2332
    .local v5, "rules":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .line 2334
    .local v3, "numUids":I
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallType(I)I

    move-result v7

    if-nez v7, :cond_43

    .line 2336
    new-array v4, v11, [Landroid/net/UidRange;

    .line 2339
    new-instance v7, Landroid/net/UidRange;

    const/16 v8, 0x2710

    const v9, 0x7fffffff

    invoke-direct {v7, v8, v9}, Landroid/net/UidRange;-><init>(II)V

    aput-object v7, v4, v10

    .line 2342
    .local v4, "ranges":[Landroid/net/UidRange;
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    new-array v1, v7, [I

    .line 2343
    .local v1, "exemptUids":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    array-length v7, v1

    if-ge v2, v7, :cond_36

    .line 2344
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    if-ne v7, v11, :cond_33

    .line 2345
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    aput v7, v1, v3

    .line 2346
    add-int/lit8 v3, v3, 0x1

    .line 2343
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 2356
    :cond_36
    array-length v7, v1

    if-eq v3, v7, :cond_3d

    .line 2357
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 2378
    :cond_3d
    :goto_3d
    :try_start_3d
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v7, v4, v1}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRange;[I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_70
    .catch Landroid/os/ServiceSpecificException; {:try_start_3d .. :try_end_42} :catch_70

    .line 2325
    :goto_42
    return-void

    .line 2361
    .end local v1    # "exemptUids":[I
    .end local v2    # "i":I
    .end local v4    # "ranges":[Landroid/net/UidRange;
    :cond_43
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    new-array v4, v7, [Landroid/net/UidRange;

    .line 2362
    .restart local v4    # "ranges":[Landroid/net/UidRange;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4a
    array-length v7, v4

    if-ge v2, v7, :cond_64

    .line 2363
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_61

    .line 2364
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 2365
    .local v6, "uid":I
    new-instance v7, Landroid/net/UidRange;

    invoke-direct {v7, v6, v6}, Landroid/net/UidRange;-><init>(II)V

    aput-object v7, v4, v3

    .line 2366
    add-int/lit8 v3, v3, 0x1

    .line 2362
    .end local v6    # "uid":I
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 2370
    :cond_64
    array-length v7, v4

    if-eq v3, v7, :cond_6d

    .line 2371
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "ranges":[Landroid/net/UidRange;
    check-cast v4, [Landroid/net/UidRange;

    .line 2374
    .restart local v4    # "ranges":[Landroid/net/UidRange;
    :cond_6d
    new-array v1, v10, [I

    .restart local v1    # "exemptUids":[I
    goto :goto_3d

    .line 2379
    :catch_70
    move-exception v0

    .line 2380
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "NetworkManagement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing sockets after enabling chain "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method private connectNativeNetdService()V
    .registers 5

    .prologue
    .line 582
    const/4 v1, 0x0

    .line 584
    .local v1, "nativeServiceAvailable":Z
    :try_start_1
    const-string/jumbo v2, "netd"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 585
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v2}, Landroid/net/INetd;->isAlive()Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_20

    move-result v1

    .line 587
    .end local v1    # "nativeServiceAvailable":Z
    :goto_14
    if-nez v1, :cond_1f

    .line 588
    const-string/jumbo v2, "NetworkManagement"

    const-string/jumbo v3, "Can\'t connect to NativeNetdService netd"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_1f
    return-void

    .line 586
    .restart local v1    # "nativeServiceAvailable":Z
    :catch_20
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_14
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 355
    const-string/jumbo v0, "netd"

    invoke-static {p0, v0}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/NetworkManagementService;

    move-result-object v0

    return-object v0
.end method

.method static create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/NetworkManagementService;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "socket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 343
    new-instance v1, Lcom/android/server/NetworkManagementService;

    invoke-direct {v1, p0, p1}, Lcom/android/server/NetworkManagementService;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 344
    .local v1, "service":Lcom/android/server/NetworkManagementService;
    iget-object v0, v1, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 345
    .local v0, "connectedSignal":Ljava/util/concurrent/CountDownLatch;
    sget-boolean v2, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v2, :cond_14

    const-string/jumbo v2, "NetworkManagement"

    const-string/jumbo v3, "Creating NetworkManagementService"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_14
    iget-object v2, v1, Lcom/android/server/NetworkManagementService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 347
    sget-boolean v2, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v2, :cond_26

    const-string/jumbo v2, "NetworkManagement"

    const-string/jumbo v3, "Awaiting socket connection"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_26
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 349
    sget-boolean v2, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v2, :cond_36

    const-string/jumbo v2, "NetworkManagement"

    const-string/jumbo v3, "Connected"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_36
    invoke-direct {v1}, Lcom/android/server/NetworkManagementService;->connectNativeNetdService()V

    .line 351
    return-object v1
.end method

.method private dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "rules"    # Landroid/util/SparseIntArray;

    .prologue
    .line 2759
    const-string/jumbo v2, "UID firewall "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2760
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2761
    const-string/jumbo v2, " rule: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2762
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 2763
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v1, :cond_37

    .line 2764
    invoke-virtual {p3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2765
    const-string/jumbo v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2766
    invoke-virtual {p3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2767
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_34

    const-string/jumbo v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2763
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2769
    :cond_37
    const-string/jumbo v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2758
    return-void
.end method

.method private dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "list"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 2747
    const-string/jumbo v2, "UID bandwith control "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2748
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2749
    const-string/jumbo v2, " rule: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2750
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2751
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v1, :cond_2a

    .line 2752
    invoke-virtual {p3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2753
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_27

    const-string/jumbo v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2751
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2755
    :cond_2a
    const-string/jumbo v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2746
    return-void
.end method

.method private static enforceSystemUid()V
    .registers 3

    .prologue
    .line 2596
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2597
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    .line 2598
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Only available to AID_SYSTEM"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2595
    :cond_11
    return-void
.end method

.method private excludeLinkLocal(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1403
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1404
    .local v0, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InterfaceAddress;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ia$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InterfaceAddress;

    .line 1405
    .local v1, "ia":Ljava/net/InterfaceAddress;
    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1406
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1408
    .end local v1    # "ia":Ljava/net/InterfaceAddress;
    :cond_27
    return-object v0
.end method

.method private executeOrLogWithMessage(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "expectedResponseCode"    # I
    .param p4, "expectedResponseMessage"    # Ljava/lang/String;
    .param p5, "logMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 1533
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 1534
    .local v0, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v1

    if-ne v1, p3, :cond_17

    .line 1535
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1532
    :goto_16
    return-void

    .line 1536
    :cond_17
    const-string/jumbo v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method private getBatteryStats()Lcom/android/internal/app/IBatteryStats;
    .registers 2

    .prologue
    .line 371
    monitor-enter p0

    .line 372
    :try_start_1
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_9

    .line 373
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1a

    monitor-exit p0

    return-object v0

    .line 376
    :cond_9
    :try_start_9
    const-string/jumbo v0, "batterystats"

    .line 375
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 377
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object v0

    .line 371
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getFirewallRuleName(II)Ljava/lang/String;
    .registers 5
    .param p1, "chain"    # I
    .param p2, "rule"    # I

    .prologue
    .line 2535
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallType(I)I

    move-result v1

    if-nez v1, :cond_11

    .line 2536
    const/4 v1, 0x1

    if-ne p2, v1, :cond_d

    .line 2537
    const-string/jumbo v0, "allow"

    .line 2548
    .local v0, "ruleName":Ljava/lang/String;
    :goto_c
    return-object v0

    .line 2539
    .end local v0    # "ruleName":Ljava/lang/String;
    :cond_d
    const-string/jumbo v0, "deny"

    .restart local v0    # "ruleName":Ljava/lang/String;
    goto :goto_c

    .line 2542
    .end local v0    # "ruleName":Ljava/lang/String;
    :cond_11
    const/4 v1, 0x2

    if-ne p2, v1, :cond_18

    .line 2543
    const-string/jumbo v0, "deny"

    .restart local v0    # "ruleName":Ljava/lang/String;
    goto :goto_c

    .line 2545
    .end local v0    # "ruleName":Ljava/lang/String;
    :cond_18
    const-string/jumbo v0, "allow"

    .restart local v0    # "ruleName":Ljava/lang/String;
    goto :goto_c
.end method

.method private getFirewallType(I)I
    .registers 5
    .param p1, "chain"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2429
    packed-switch p1, :pswitch_data_12

    .line 2437
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->isFirewallEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    :goto_b
    return v0

    .line 2431
    :pswitch_c
    return v1

    .line 2433
    :pswitch_d
    return v0

    .line 2435
    :pswitch_e
    return v0

    :cond_f
    move v0, v1

    .line 2437
    goto :goto_b

    .line 2429
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method private static getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .registers 2
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1590
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 1596
    :pswitch_7
    const-string/jumbo v0, "open"

    return-object v0

    .line 1592
    :pswitch_b
    const-string/jumbo v0, "wpa-psk"

    return-object v0

    .line 1594
    :pswitch_f
    const-string/jumbo v0, "wpa2-psk"

    return-object v0

    .line 1590
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_b
        :pswitch_7
        :pswitch_7
        :pswitch_f
    .end packed-switch
.end method

.method private getUidFirewallRules(I)Landroid/util/SparseIntArray;
    .registers 5
    .param p1, "chain"    # I

    .prologue
    .line 2552
    packed-switch p1, :pswitch_data_2a

    .line 2562
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown chain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2554
    :pswitch_1d
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    return-object v0

    .line 2556
    :pswitch_20
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    return-object v0

    .line 2558
    :pswitch_23
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    return-object v0

    .line 2560
    :pswitch_26
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    return-object v0

    .line 2552
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_20
        :pswitch_1d
        :pswitch_23
    .end packed-switch
.end method

.method private modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "add"    # Z
    .param p2, "fromIface"    # Ljava/lang/String;
    .param p3, "toIface"    # Ljava/lang/String;

    .prologue
    .line 1412
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v3, "ipfwd"

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_1f

    const-string/jumbo v2, "add"

    :goto_d
    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object p2, v4, v2

    const/4 v2, 0x2

    aput-object p3, v4, v2

    invoke-direct {v0, v3, v4}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1414
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :try_start_19
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_19 .. :try_end_1e} :catch_23

    .line 1411
    return-void

    .line 1412
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_1f
    const-string/jumbo v2, "remove"

    goto :goto_d

    .line 1415
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :catch_23
    move-exception v1

    .line 1416
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method private modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "netId"    # Ljava/lang/String;
    .param p3, "iface"    # Ljava/lang/String;

    .prologue
    .line 2821
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "network"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "interface"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_25} :catch_26

    .line 2820
    return-void

    .line 2824
    :catch_26
    move-exception v0

    .line 2825
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method private modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "internalInterface"    # Ljava/lang/String;
    .param p3, "externalInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1434
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v7, "nat"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    aput-object p3, v8, v9

    invoke-direct {v1, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1436
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v6

    .line 1438
    .local v6, "internalNetworkInterface":Ljava/net/NetworkInterface;
    if-nez v6, :cond_26

    .line 1439
    const-string/jumbo v7, "0"

    invoke-virtual {v1, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1454
    :cond_20
    :try_start_20
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_20 .. :try_end_25} :catch_79

    .line 1433
    return-void

    .line 1444
    :cond_26
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v7

    .line 1443
    invoke-direct {p0, v7}, Lcom/android/server/NetworkManagementService;->excludeLinkLocal(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 1445
    .local v5, "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1446
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "ia$iterator":Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InterfaceAddress;

    .line 1448
    .local v3, "ia":Ljava/net/InterfaceAddress;
    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v8

    .line 1447
    invoke-static {v7, v8}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 1449
    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_3d

    .line 1455
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "ia":Ljava/net/InterfaceAddress;
    .end local v4    # "ia$iterator":Ljava/util/Iterator;
    .end local v5    # "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    :catch_79
    move-exception v2

    .line 1456
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v7

    throw v7
.end method

.method private modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "netId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 1165
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v4, "NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v2, "network"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "route"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1170
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1171
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1173
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_68

    .line 1188
    :cond_3b
    :goto_3b
    :try_start_3b
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_40
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3b .. :try_end_40} :catch_61

    .line 1164
    return-void

    .line 1175
    :sswitch_41
    invoke-virtual {p3}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1176
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_3b

    .line 1180
    :sswitch_53
    const-string/jumbo v2, "unreachable"

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_3b

    .line 1183
    :sswitch_5a
    const-string/jumbo v2, "throw"

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_3b

    .line 1189
    :catch_61
    move-exception v1

    .line 1190
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 1173
    nop

    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_41
        0x7 -> :sswitch_53
        0x9 -> :sswitch_5a
    .end sparse-switch
.end method

.method private notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 743
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 745
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v2, :cond_17

    .line 747
    :try_start_9
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v3, p1, p2}, Landroid/net/INetworkManagementEventObserver;->addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 745
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 752
    :cond_17
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 742
    return-void

    .line 751
    :catchall_1d
    move-exception v3

    .line 752
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 751
    throw v3

    .line 748
    :catch_24
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_14
.end method

.method private notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 726
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 728
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v2, :cond_17

    .line 730
    :try_start_9
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v3, p1, p2}, Landroid/net/INetworkManagementEventObserver;->addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 728
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 735
    :cond_17
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 725
    return-void

    .line 734
    :catchall_1d
    move-exception v3

    .line 735
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 734
    throw v3

    .line 731
    :catch_24
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_14
.end method

.method private notifyInterfaceAdded(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 432
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 434
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v2, :cond_17

    .line 436
    :try_start_9
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v3, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceAdded(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 434
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 441
    :cond_17
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 431
    return-void

    .line 440
    :catchall_1d
    move-exception v3

    .line 441
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 440
    throw v3

    .line 437
    :catch_24
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_14
.end method

.method private notifyInterfaceClassActivity(IIJIZ)V
    .registers 16
    .param p1, "type"    # I
    .param p2, "powerState"    # I
    .param p3, "tsNanos"    # J
    .param p5, "uid"    # I
    .param p6, "fromRadio"    # Z

    .prologue
    .line 489
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v4

    .line 490
    .local v4, "isMobile":Z
    if-eqz v4, :cond_1b

    .line 491
    if-nez p6, :cond_58

    .line 492
    iget-boolean v7, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    if-eqz v7, :cond_e

    .line 496
    iget p2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 501
    :cond_e
    :goto_e
    iget v7, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    if-eq v7, p2, :cond_1b

    .line 502
    iput p2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 504
    :try_start_14
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    invoke-interface {v7, p2, p3, p4, p5}, Lcom/android/internal/app/IBatteryStats;->noteMobileRadioPowerState(IJI)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1b} :catch_8f

    .line 510
    :cond_1b
    :goto_1b
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeWifi(I)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 511
    iget v7, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    if-eq v7, p2, :cond_2e

    .line 512
    iput p2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    .line 514
    :try_start_27
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    invoke-interface {v7, p2, p3, p4}, Lcom/android/internal/app/IBatteryStats;->noteWifiRadioPowerState(IJ)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_8d

    .line 520
    :cond_2e
    :goto_2e
    const/4 v7, 0x2

    if-eq p2, v7, :cond_5c

    .line 521
    const/4 v7, 0x3

    if-ne p2, v7, :cond_5e

    const/4 v3, 0x1

    .line 523
    .local v3, "isActive":Z
    :goto_35
    if-eqz v4, :cond_60

    if-nez p6, :cond_60

    iget-boolean v7, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    if-eqz v7, :cond_60

    .line 542
    :goto_3d
    const/4 v6, 0x0

    .line 543
    .local v6, "report":Z
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v8

    .line 544
    :try_start_41
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 547
    const/4 v3, 0x1

    .line 549
    :cond_4a
    iget-boolean v7, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    if-eq v7, v3, :cond_51

    .line 550
    iput-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_88

    .line 551
    move v6, v3

    .end local v6    # "report":Z
    :cond_51
    monitor-exit v8

    .line 554
    if-eqz v6, :cond_57

    .line 555
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->reportNetworkActive()V

    .line 488
    :cond_57
    return-void

    .line 499
    .end local v3    # "isActive":Z
    :cond_58
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    goto :goto_e

    .line 520
    :cond_5c
    const/4 v3, 0x1

    .restart local v3    # "isActive":Z
    goto :goto_35

    .line 521
    .end local v3    # "isActive":Z
    :cond_5e
    const/4 v3, 0x0

    .restart local v3    # "isActive":Z
    goto :goto_35

    .line 528
    :cond_60
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 530
    .local v5, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_67
    if-ge v2, v5, :cond_7b

    .line 532
    :try_start_69
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/net/INetworkManagementEventObserver;

    .line 533
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 532
    invoke-interface {v7, v8, v3, p3, p4}, Landroid/net/INetworkManagementEventObserver;->interfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_78} :catch_8b
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_78} :catch_8b
    .catchall {:try_start_69 .. :try_end_78} :catchall_81

    .line 530
    :goto_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 538
    :cond_7b
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_3d

    .line 537
    :catchall_81
    move-exception v7

    .line 538
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 537
    throw v7

    .line 543
    .end local v2    # "i":I
    .end local v5    # "length":I
    .restart local v6    # "report":Z
    :catchall_88
    move-exception v7

    monitor-exit v8

    throw v7

    .line 534
    .end local v6    # "report":Z
    .restart local v2    # "i":I
    .restart local v5    # "length":I
    :catch_8b
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_78

    .line 515
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v3    # "isActive":Z
    .end local v5    # "length":I
    :catch_8d
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2e

    .line 505
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_8f
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1b
.end method

.method private notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 11
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lifetime"    # J
    .param p4, "addresses"    # [Ljava/lang/String;

    .prologue
    .line 760
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 762
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v2, :cond_17

    .line 764
    :try_start_9
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetworkManagementEventObserver;->interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 762
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 770
    :cond_17
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 759
    return-void

    .line 769
    :catchall_1d
    move-exception v3

    .line 770
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 769
    throw v3

    .line 766
    :catch_24
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_14
.end method

.method private notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 415
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 417
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v2, :cond_17

    .line 419
    :try_start_9
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v3, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceLinkStateChanged(Ljava/lang/String;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 417
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 424
    :cond_17
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 414
    return-void

    .line 423
    :catchall_1d
    move-exception v3

    .line 424
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 423
    throw v3

    .line 420
    :catch_24
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_14
.end method

.method private notifyInterfaceRemoved(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 451
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 456
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v2, :cond_21

    .line 458
    :try_start_13
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v3, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1e} :catch_2e
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1e} :catch_2e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_27

    .line 456
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 463
    :cond_21
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 448
    return-void

    .line 462
    :catchall_27
    move-exception v3

    .line 463
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 462
    throw v3

    .line 459
    :catch_2e
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1e
.end method

.method private notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 397
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 399
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v2, :cond_17

    .line 401
    :try_start_9
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v3, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 399
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 406
    :cond_17
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 396
    return-void

    .line 405
    :catchall_1d
    move-exception v3

    .line 406
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 405
    throw v3

    .line 402
    :catch_24
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_14
.end method

.method private notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 471
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 473
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v2, :cond_17

    .line 475
    :try_start_9
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v3, p1, p2}, Landroid/net/INetworkManagementEventObserver;->limitReached(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 473
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 480
    :cond_17
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 470
    return-void

    .line 479
    :catchall_1d
    move-exception v3

    .line 480
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 479
    throw v3

    .line 476
    :catch_24
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_14
.end method

.method private notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 778
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 780
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v2, :cond_2e

    .line 782
    :try_start_9
    const-string/jumbo v3, "updated"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 783
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v3, p2}, Landroid/net/INetworkManagementEventObserver;->routeUpdated(Landroid/net/RouteInfo;)V

    .line 780
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 785
    :cond_20
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v3, p2}, Landroid/net/INetworkManagementEventObserver;->routeRemoved(Landroid/net/RouteInfo;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_2b} :catch_2c
    .catchall {:try_start_9 .. :try_end_2b} :catchall_34

    goto :goto_1d

    .line 787
    :catch_2c
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1d

    .line 791
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2e
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 777
    return-void

    .line 790
    :catchall_34
    move-exception v3

    .line 791
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 790
    throw v3
.end method

.method private prepareNativeDaemon()V
    .registers 23

    .prologue
    .line 598
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    .line 601
    new-instance v16, Ljava/io/File;

    const-string/jumbo v17, "/proc/net/xt_qtaguid/ctrl"

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v10

    .line 602
    .local v10, "hasKernelSupport":Z
    if-eqz v10, :cond_13a

    .line 603
    const-string/jumbo v16, "NetworkManagement"

    const-string/jumbo v17, "enabling bandwidth control"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    move-object/from16 v16, v0

    const-string/jumbo v17, "bandwidth"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const-string/jumbo v19, "enable"

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-virtual/range {v16 .. v18}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 606
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z
    :try_end_42
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1f .. :try_end_42} :catch_12a

    .line 614
    :goto_42
    const-string/jumbo v17, "net.qtaguid_enabled"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    move/from16 v16, v0

    if-eqz v16, :cond_145

    const-string/jumbo v16, "1"

    :goto_50
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    move/from16 v16, v0

    if-eqz v16, :cond_66

    .line 618
    :try_start_5f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/app/IBatteryStats;->noteNetworkStatsEnabled()V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_66} :catch_405

    .line 624
    :cond_66
    :goto_66
    :try_start_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    move-object/from16 v16, v0

    const-string/jumbo v17, "strict"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const-string/jumbo v19, "enable"

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-virtual/range {v16 .. v18}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 625
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/NetworkManagementService;->mStrictEnabled:Z
    :try_end_89
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_66 .. :try_end_89} :catch_14a

    .line 634
    :goto_89
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/NetworkManagementService;->mIsDefaultFWPolicyEnabled:Z

    move/from16 v16, v0

    if-eqz v16, :cond_9c

    .line 635
    const-string/jumbo v16, "persist.mot.fwpolicy_off"

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-eqz v16, :cond_15a

    .line 646
    :cond_9c
    :goto_9c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 648
    :try_start_a3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/NetworkManagementService;->setDataSaverModeEnabled(Z)Z

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    move-result v13

    .line 651
    .local v13, "size":I
    if-lez v13, :cond_197

    .line 652
    sget-boolean v16, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v16, :cond_eb

    const-string/jumbo v16, "NetworkManagement"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Pushing "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, " active quota rules"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_eb
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 654
    .local v5, "activeQuotas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 655
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "entry$iterator":Ljava/util/Iterator;
    :goto_101
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_197

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 656
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/NetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_126
    .catchall {:try_start_a3 .. :try_end_126} :catchall_127

    goto :goto_101

    .line 646
    .end local v5    # "activeQuotas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v9    # "entry$iterator":Ljava/util/Iterator;
    .end local v13    # "size":I
    :catchall_127
    move-exception v16

    monitor-exit v18

    throw v16

    .line 607
    :catch_12a
    move-exception v7

    .line 608
    .local v7, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v16, "NetworkManagement"

    const-string/jumbo v17, "problem enabling bandwidth controls"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_42

    .line 611
    .end local v7    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_13a
    const-string/jumbo v16, "NetworkManagement"

    const-string/jumbo v17, "not enabling bandwidth control"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42

    .line 614
    :cond_145
    const-string/jumbo v16, "0"

    goto/16 :goto_50

    .line 626
    :catch_14a
    move-exception v7

    .line 627
    .restart local v7    # "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v16, "NetworkManagement"

    const-string/jumbo v17, "Failed strict enable"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_89

    .line 636
    .end local v7    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_15a
    const-string/jumbo v16, "NetworkManagement"

    const-string/jumbo v17, "enabling FW Policy deny"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :try_start_163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    move-object/from16 v16, v0

    const-string/jumbo v17, "firewall"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const-string/jumbo v19, "policy"

    const/16 v20, 0x0

    aput-object v19, v18, v20

    const-string/jumbo v19, "deny"

    const/16 v20, 0x1

    aput-object v19, v18, v20

    invoke-virtual/range {v16 .. v18}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_185
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_163 .. :try_end_185} :catch_187

    goto/16 :goto_9c

    .line 639
    :catch_187
    move-exception v7

    .line 640
    .restart local v7    # "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v16, "NetworkManagement"

    const-string/jumbo v17, "Failed to set default firewall policy"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9c

    .line 660
    .end local v7    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v13    # "size":I
    :cond_197
    :try_start_197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    move-result v13

    .line 661
    if-lez v13, :cond_20e

    .line 662
    sget-boolean v16, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v16, :cond_1d2

    const-string/jumbo v16, "NetworkManagement"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Pushing "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, " active alert rules"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_1d2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 664
    .local v4, "activeAlerts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 665
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "entry$iterator":Ljava/util/Iterator;
    :goto_1e8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_20e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 666
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/NetworkManagementService;->setInterfaceAlert(Ljava/lang/String;J)V

    goto :goto_1e8

    .line 670
    .end local v4    # "activeAlerts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v9    # "entry$iterator":Ljava/util/Iterator;
    :cond_20e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseBooleanArray;->size()I

    move-result v13

    .line 671
    if-lez v13, :cond_275

    .line 672
    sget-boolean v16, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v16, :cond_249

    const-string/jumbo v16, "NetworkManagement"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Pushing "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, " UIDs to metered whitelist rules"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_249
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 674
    .local v15, "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    new-instance v16, Landroid/util/SparseBooleanArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 675
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_259
    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v11, v0, :cond_275

    .line 676
    invoke-virtual {v15, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v16

    .line 677
    invoke-virtual {v15, v11}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v17

    .line 676
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V

    .line 675
    add-int/lit8 v11, v11, 0x1

    goto :goto_259

    .line 681
    .end local v11    # "i":I
    .end local v15    # "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    :cond_275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseBooleanArray;->size()I

    move-result v13

    .line 682
    if-lez v13, :cond_2dc

    .line 683
    sget-boolean v16, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v16, :cond_2b0

    const-string/jumbo v16, "NetworkManagement"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Pushing "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, " UIDs to metered blacklist rules"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_2b0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 685
    .local v14, "uidAcceptOnQuota":Landroid/util/SparseBooleanArray;
    new-instance v16, Landroid/util/SparseBooleanArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 686
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2c0
    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v11, v0, :cond_2dc

    .line 687
    invoke-virtual {v14, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v16

    .line 688
    invoke-virtual {v14, v11}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v17

    .line 687
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V

    .line 686
    add-int/lit8 v11, v11, 0x1

    goto :goto_2c0

    .line 692
    .end local v11    # "i":I
    .end local v14    # "uidAcceptOnQuota":Landroid/util/SparseBooleanArray;
    :cond_2dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    .line 693
    if-lez v13, :cond_343

    .line 694
    sget-boolean v16, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v16, :cond_317

    const-string/jumbo v16, "NetworkManagement"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Pushing "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, " active UID cleartext policies"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_317
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 696
    .local v12, "local":Landroid/util/SparseIntArray;
    new-instance v16, Landroid/util/SparseIntArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 697
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_327
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v11, v0, :cond_343

    .line 698
    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v16

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->setUidCleartextNetworkPolicy(II)V

    .line 697
    add-int/lit8 v11, v11, 0x1

    goto :goto_327

    .line 702
    .end local v11    # "i":I
    .end local v12    # "local":Landroid/util/SparseIntArray;
    :cond_343
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    move/from16 v16, v0

    if-nez v16, :cond_401

    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v16

    :goto_34f
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/NetworkManagementService;->setFirewallEnabled(Z)V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    const-string/jumbo v17, ""

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILandroid/util/SparseIntArray;Ljava/lang/String;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    const-string/jumbo v17, "standby "

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILandroid/util/SparseIntArray;Ljava/lang/String;)V

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    const-string/jumbo v17, "dozable "

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILandroid/util/SparseIntArray;Ljava/lang/String;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    .line 708
    const-string/jumbo v17, "powersave "

    .line 707
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILandroid/util/SparseIntArray;Ljava/lang/String;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v16

    if-eqz v16, :cond_3c9

    .line 711
    const/16 v16, 0x2

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->setFirewallChainEnabled(IZ)V

    .line 713
    :cond_3c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v16

    if-eqz v16, :cond_3e4

    .line 714
    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->setFirewallChainEnabled(IZ)V

    .line 716
    :cond_3e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v16

    if-eqz v16, :cond_3ff

    .line 717
    const/16 v16, 0x3

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_3ff
    .catchall {:try_start_197 .. :try_end_3ff} :catchall_127

    :cond_3ff
    monitor-exit v18

    .line 596
    return-void

    .line 702
    :cond_401
    const/16 v16, 0x1

    goto/16 :goto_34f

    .line 619
    .end local v13    # "size":I
    :catch_405
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    goto/16 :goto_66
.end method

.method private readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1195
    const/4 v2, 0x0

    .line 1196
    .local v2, "fstream":Ljava/io/FileInputStream;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_49
    .catchall {:try_start_6 .. :try_end_b} :catchall_3d

    .line 1200
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .local v3, "fstream":Ljava/io/FileInputStream;
    :try_start_b
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1201
    .local v4, "in":Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1206
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_1a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "s":Ljava/lang/String;
    if-eqz v6, :cond_32

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_32

    .line 1207
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_29} :catch_2a
    .catchall {:try_start_b .. :try_end_29} :catchall_46

    goto :goto_1a

    .line 1209
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v6    # "s":Ljava/lang/String;
    :catch_2a
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    move-object v2, v3

    .line 1212
    .end local v3    # "fstream":Ljava/io/FileInputStream;
    :goto_2c
    if-eqz v2, :cond_31

    .line 1214
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_3b

    .line 1219
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_31
    :goto_31
    return-object v5

    .line 1212
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fstream":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "s":Ljava/lang/String;
    :cond_32
    if-eqz v3, :cond_37

    .line 1214
    :try_start_34
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_39

    :cond_37
    :goto_37
    move-object v2, v3

    .end local v3    # "fstream":Ljava/io/FileInputStream;
    .local v2, "fstream":Ljava/io/FileInputStream;
    goto :goto_31

    .line 1215
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v3    # "fstream":Ljava/io/FileInputStream;
    :catch_39
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_37

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fstream":Ljava/io/FileInputStream;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v6    # "s":Ljava/lang/String;
    :catch_3b
    move-exception v1

    goto :goto_31

    .line 1211
    .end local v1    # "ex":Ljava/io/IOException;
    .local v2, "fstream":Ljava/io/FileInputStream;
    :catchall_3d
    move-exception v7

    .line 1212
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    :goto_3e
    if-eqz v2, :cond_43

    .line 1214
    :try_start_40
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    .line 1211
    :cond_43
    :goto_43
    throw v7

    .line 1215
    :catch_44
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_43

    .line 1211
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v3    # "fstream":Ljava/io/FileInputStream;
    :catchall_46
    move-exception v7

    move-object v2, v3

    .end local v3    # "fstream":Ljava/io/FileInputStream;
    .local v2, "fstream":Ljava/io/FileInputStream;
    goto :goto_3e

    .line 1209
    .local v2, "fstream":Ljava/io/FileInputStream;
    :catch_49
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_2c
.end method

.method private reportNetworkActive()V
    .registers 6

    .prologue
    .line 2657
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 2659
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v2, :cond_17

    .line 2661
    :try_start_9
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/os/INetworkActivityListener;

    invoke-interface {v3}, Landroid/os/INetworkActivityListener;->onNetworkActive()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 2659
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2666
    :cond_17
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2656
    return-void

    .line 2665
    :catchall_1d
    move-exception v3

    .line 2666
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2665
    throw v3

    .line 2662
    :catch_24
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_14
.end method

.method private setFirewallUidRuleLocked(III)V
    .registers 10
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .prologue
    .line 2497
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2499
    :try_start_6
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "firewall"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "set_uid_rule"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 2500
    invoke-direct {p0, p1, p3}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 2499
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6 .. :try_end_2c} :catch_2d

    .line 2496
    :cond_2c
    return-void

    .line 2501
    :catch_2d
    move-exception v0

    .line 2502
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method private setUidOnMeteredNetworkList(Landroid/util/SparseBooleanArray;IZZ)V
    .registers 15
    .param p1, "quotaList"    # Landroid/util/SparseBooleanArray;
    .param p2, "uid"    # I
    .param p3, "blacklist"    # Z
    .param p4, "enable"    # Z

    .prologue
    .line 1979
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v6, "NetworkManagement"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    iget-boolean v4, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v4, :cond_10

    return-void

    .line 1985
    :cond_10
    if-eqz p3, :cond_26

    const-string/jumbo v0, "naughtyapps"

    .line 1986
    .local v0, "chain":Ljava/lang/String;
    :goto_15
    if-eqz p4, :cond_2a

    const-string/jumbo v3, "add"

    .line 1988
    .local v3, "suffix":Ljava/lang/String;
    :goto_1a
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1989
    const/4 v4, 0x0

    :try_start_1e
    invoke-virtual {p1, p2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_66

    move-result v2

    .line 1990
    .local v2, "oldEnable":Z
    if-ne v2, p4, :cond_2e

    monitor-exit v5

    .line 1992
    return-void

    .line 1985
    .end local v0    # "chain":Ljava/lang/String;
    .end local v2    # "oldEnable":Z
    .end local v3    # "suffix":Ljava/lang/String;
    :cond_26
    const-string/jumbo v0, "niceapps"

    .restart local v0    # "chain":Ljava/lang/String;
    goto :goto_15

    .line 1986
    :cond_2a
    const-string/jumbo v3, "remove"

    .restart local v3    # "suffix":Ljava/lang/String;
    goto :goto_1a

    .line 1996
    .restart local v2    # "oldEnable":Z
    :cond_2e
    :try_start_2e
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "bandwidth"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v4, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1997
    if-eqz p4, :cond_5c

    .line 1998
    const/4 v4, 0x1

    invoke-virtual {p1, p2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_5a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2e .. :try_end_5a} :catch_60
    .catchall {:try_start_2e .. :try_end_5a} :catchall_66

    :goto_5a
    monitor-exit v5

    .line 1978
    return-void

    .line 2000
    :cond_5c
    :try_start_5c
    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_5f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5c .. :try_end_5f} :catch_60
    .catchall {:try_start_5c .. :try_end_5f} :catchall_66

    goto :goto_5a

    .line 2002
    :catch_60
    move-exception v1

    .line 2003
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_61
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_66

    .line 1988
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v2    # "oldEnable":Z
    :catchall_66
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private syncFirewallChainLocked(ILandroid/util/SparseIntArray;Ljava/lang/String;)V
    .registers 10
    .param p1, "chain"    # I
    .param p2, "uidFirewallRules"    # Landroid/util/SparseIntArray;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 561
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 562
    .local v2, "size":I
    if-lez v2, :cond_52

    .line 568
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v1

    .line 569
    .local v1, "rules":Landroid/util/SparseIntArray;
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    .line 574
    sget-boolean v3, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v3, :cond_3d

    const-string/jumbo v3, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Pushing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " active firewall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "UID rules"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_3d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3e
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_52

    .line 576
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/NetworkManagementService;->setFirewallUidRuleLocked(III)V

    .line 575
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 560
    .end local v0    # "i":I
    .end local v1    # "rules":Landroid/util/SparseIntArray;
    :cond_52
    return-void
.end method

.method private updateFirewallUidRuleLocked(III)Z
    .registers 12
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .prologue
    const/4 v4, 0x0

    .line 2509
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRules(I)Landroid/util/SparseIntArray;

    move-result-object v3

    .line 2511
    .local v3, "uidFirewallRules":Landroid/util/SparseIntArray;
    invoke-virtual {v3, p2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2512
    .local v1, "oldUidFirewallRule":I
    sget-boolean v5, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v5, :cond_48

    .line 2513
    const-string/jumbo v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "oldRule = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2514
    const-string/jumbo v7, ", newRule="

    .line 2513
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2514
    const-string/jumbo v7, " for uid="

    .line 2513
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2514
    const-string/jumbo v7, " on chain "

    .line 2513
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    :cond_48
    if-ne v1, p3, :cond_58

    .line 2517
    sget-boolean v5, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v5, :cond_57

    const-string/jumbo v5, "NetworkManagement"

    const-string/jumbo v6, "!!!!! Skipping change"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    :cond_57
    return v4

    .line 2522
    :cond_58
    invoke-direct {p0, p1, p3}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    move-result-object v2

    .line 2523
    .local v2, "ruleName":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    move-result-object v0

    .line 2525
    .local v0, "oldRuleName":Ljava/lang/String;
    if-nez p3, :cond_6c

    .line 2526
    invoke-virtual {v3, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2530
    :goto_65
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    :goto_6b
    return v4

    .line 2528
    :cond_6c
    invoke-virtual {v3, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_65

    .line 2530
    :cond_70
    const/4 v4, 0x1

    goto :goto_6b
.end method


# virtual methods
.method public addIdleTimer(Ljava/lang/String;II)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "type"    # I

    .prologue
    .line 1768
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v4, "NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    sget-boolean v2, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v2, :cond_18

    const-string/jumbo v2, "NetworkManagement"

    const-string/jumbo v3, "Adding idletimer"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    :cond_18
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1773
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 1774
    .local v1, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    if-eqz v1, :cond_2d

    .line 1776
    iget v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_74

    monitor-exit v3

    .line 1777
    return-void

    .line 1781
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "idletimer"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "add"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 1782
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 1781
    invoke-virtual {v2, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2d .. :try_end_4f} :catch_6e
    .catchall {:try_start_2d .. :try_end_4f} :catchall_74

    .line 1786
    :try_start_4f
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    new-instance v4, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    invoke-direct {v4, p2, p3}, Lcom/android/server/NetworkManagementService$IdleTimerParams;-><init>(II)V

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    invoke-static {p3}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1790
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    .line 1792
    :cond_62
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/NetworkManagementService$1;

    invoke-direct {v4, p0, p3}, Lcom/android/server/NetworkManagementService$1;-><init>(Lcom/android/server/NetworkManagementService;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6c
    .catchall {:try_start_4f .. :try_end_6c} :catchall_74

    monitor-exit v3

    .line 1767
    return-void

    .line 1783
    :catch_6e
    move-exception v0

    .line 1784
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_6f
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_74

    .line 1772
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catchall_74
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2959
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    const-string/jumbo v2, "add"

    const-string/jumbo v3, "local"

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2961
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "route$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 2962
    .local v0, "route":Landroid/net/RouteInfo;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-nez v2, :cond_d

    .line 2963
    const-string/jumbo v2, "add"

    const-string/jumbo v3, "local"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    goto :goto_d

    .line 2958
    .end local v0    # "route":Landroid/net/RouteInfo;
    :cond_29
    return-void
.end method

.method public addInterfaceToNetwork(Ljava/lang/String;I)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .prologue
    .line 2812
    const-string/jumbo v0, "add"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2811
    return-void
.end method

.method public addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    .registers 11
    .param p1, "netId"    # I
    .param p2, "routeInfo"    # Landroid/net/RouteInfo;
    .param p3, "uid"    # I

    .prologue
    .line 2831
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v5, "NetworkManagement"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2833
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v3, "network"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "route"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "legacy"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const-string/jumbo v5, "add"

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6

    invoke-direct {v0, v3, v4}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2836
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestinationLinkAddress()Landroid/net/LinkAddress;

    move-result-object v2

    .line 2837
    .local v2, "la":Landroid/net/LinkAddress;
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2838
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2839
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 2840
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2844
    :cond_79
    :try_start_79
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_7e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_79 .. :try_end_7e} :catch_7f

    .line 2830
    return-void

    .line 2845
    :catch_7f
    move-exception v1

    .line 2846
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public addRoute(ILandroid/net/RouteInfo;)V
    .registers 6
    .param p1, "netId"    # I
    .param p2, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 1156
    const-string/jumbo v0, "add"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 1155
    return-void
.end method

.method public addVpnUidRanges(I[Landroid/net/UidRange;)V
    .registers 11
    .param p1, "netId"    # I
    .param p2, "ranges"    # [Landroid/net/UidRange;

    .prologue
    .line 2227
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v7, "NetworkManagement"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    const/16 v5, 0xd

    new-array v2, v5, [Ljava/lang/Object;

    .line 2229
    .local v2, "argv":[Ljava/lang/Object;
    const-string/jumbo v5, "users"

    const/4 v6, 0x0

    aput-object v5, v2, v6

    .line 2230
    const-string/jumbo v5, "add"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    .line 2231
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v2, v6

    .line 2232
    const/4 v0, 0x3

    .line 2234
    .local v0, "argc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    array-length v5, p2

    if-ge v4, v5, :cond_51

    .line 2235
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argc":I
    .local v1, "argc":I
    aget-object v5, p2, v4

    invoke-virtual {v5}, Landroid/net/UidRange;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 2236
    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_39

    array-length v5, v2

    if-ne v1, v5, :cond_49

    .line 2238
    :cond_39
    :try_start_39
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "network"

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_45
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_39 .. :try_end_45} :catch_4b

    .line 2242
    const/4 v0, 0x3

    .line 2234
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_49
    move v0, v1

    .line 2236
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_46

    .line 2239
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_4b
    move-exception v3

    .line 2240
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 2226
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_51
    return-void
.end method

.method public allowProtect(I)V
    .registers 8
    .param p1, "uid"    # I

    .prologue
    .line 2937
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2940
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "network"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "protect"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "allow"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_29} :catch_2a

    .line 2936
    return-void

    .line 2941
    :catch_2a
    move-exception v0

    .line 2942
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "tty"    # Ljava/lang/String;
    .param p2, "localAddr"    # Ljava/lang/String;
    .param p3, "remoteAddr"    # Ljava/lang/String;
    .param p4, "dns1Addr"    # Ljava/lang/String;
    .param p5, "dns2Addr"    # Ljava/lang/String;

    .prologue
    .line 1496
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "pppd"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "attach"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 1499
    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 1500
    invoke-static {p3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 1501
    invoke-static {p4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 1502
    invoke-static {p5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 1498
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_4b} :catch_4c

    .line 1495
    return-void

    .line 1503
    :catch_4c
    move-exception v0

    .line 1504
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public blockDataTrafficInternal(Z)V
    .registers 8
    .param p1, "enabled"    # Z

    .prologue
    .line 3029
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 3031
    :try_start_3
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "firewall"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "enable"

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 3032
    if-nez p1, :cond_17

    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    if-eqz v1, :cond_23

    :cond_17
    const-string/jumbo v1, "whitelist"

    :goto_1a
    const/4 v5, 0x1

    aput-object v1, v4, v5

    .line 3031
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 3033
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mBlockDataTrafficInternal:Z

    .line 3028
    return-void

    .line 3032
    :cond_23
    const-string/jumbo v1, "blacklist"
    :try_end_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_26} :catch_27

    goto :goto_1a

    .line 3034
    :catch_27
    move-exception v0

    .line 3035
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearDefaultNetId()V
    .registers 7

    .prologue
    .line 2863
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2866
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "network"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "default"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "clear"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_22
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_22} :catch_23

    .line 2862
    return-void

    .line 2867
    :catch_23
    move-exception v0

    .line 2868
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearInterfaceAddresses(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1115
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "interface"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "clearaddrs"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1f} :catch_20

    .line 1114
    return-void

    .line 1118
    :catch_20
    move-exception v0

    .line 1119
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearPermission([I)V
    .registers 10
    .param p1, "uids"    # [I

    .prologue
    .line 2914
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v7, "NetworkManagement"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2916
    const/16 v5, 0xd

    new-array v2, v5, [Ljava/lang/Object;

    .line 2917
    .local v2, "argv":[Ljava/lang/Object;
    const-string/jumbo v5, "permission"

    const/4 v6, 0x0

    aput-object v5, v2, v6

    .line 2918
    const-string/jumbo v5, "user"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    .line 2919
    const-string/jumbo v5, "clear"

    const/4 v6, 0x2

    aput-object v5, v2, v6

    .line 2920
    const/4 v0, 0x3

    .line 2922
    .local v0, "argc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    array-length v5, p1

    if-ge v4, v5, :cond_50

    .line 2923
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argc":I
    .local v1, "argc":I
    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    .line 2924
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_38

    array-length v5, v2

    if-ne v1, v5, :cond_48

    .line 2926
    :cond_38
    :try_start_38
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "network"

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_44
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_38 .. :try_end_44} :catch_4a

    .line 2930
    const/4 v0, 0x3

    .line 2922
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_48
    move v0, v1

    .line 2924
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_45

    .line 2927
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_4a
    move-exception v3

    .line 2928
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 2913
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_50
    return-void
.end method

.method public createPhysicalNetwork(ILjava/lang/String;)V
    .registers 9
    .param p1, "netId"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 2774
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2777
    if-eqz p2, :cond_29

    .line 2778
    :try_start_d
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "network"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "create"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2773
    :goto_28
    return-void

    .line 2780
    :cond_29
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "network"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "create"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_41
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_41} :catch_42

    goto :goto_28

    .line 2782
    :catch_42
    move-exception v0

    .line 2783
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public createVirtualNetwork(IZZ)V
    .registers 10
    .param p1, "netId"    # I
    .param p2, "hasDNS"    # Z
    .param p3, "secure"    # Z

    .prologue
    .line 2789
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2792
    :try_start_b
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "network"

    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "create"

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const-string/jumbo v1, "vpn"

    const/4 v5, 0x2

    aput-object v1, v4, v5

    if-eqz p2, :cond_3a

    const-string/jumbo v1, "1"

    :goto_2b
    const/4 v5, 0x3

    aput-object v1, v4, v5

    .line 2793
    if-eqz p3, :cond_3e

    const-string/jumbo v1, "1"

    :goto_33
    const/4 v5, 0x4

    aput-object v1, v4, v5

    .line 2792
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2788
    return-void

    .line 2792
    :cond_3a
    const-string/jumbo v1, "0"

    goto :goto_2b

    .line 2793
    :cond_3e
    const-string/jumbo v1, "0"
    :try_end_41
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_41} :catch_42

    goto :goto_33

    .line 2794
    :catch_42
    move-exception v0

    .line 2795
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public denyProtect(I)V
    .registers 8
    .param p1, "uid"    # I

    .prologue
    .line 2948
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2951
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "network"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "protect"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "deny"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_29} :catch_2a

    .line 2947
    return-void

    .line 2952
    :catch_2a
    move-exception v0

    .line 2953
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public detachPppd(Ljava/lang/String;)V
    .registers 8
    .param p1, "tty"    # Ljava/lang/String;

    .prologue
    .line 1510
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "pppd"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "detach"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1f} :catch_20

    .line 1509
    return-void

    .line 1513
    :catch_20
    move-exception v0

    .line 1514
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public disableIpv6(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1135
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "interface"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "ipv6"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string/jumbo v4, "disable"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_25} :catch_26

    .line 1134
    return-void

    .line 1138
    :catch_26
    move-exception v0

    .line 1139
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public disableNat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;

    .prologue
    .line 1473
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    :try_start_b
    const-string/jumbo v1, "disable"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_11} :catch_15

    .line 1479
    invoke-static {p1, p2}, Lcom/android/server/NetPluginDelegate;->natStopped(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    return-void

    .line 1476
    :catch_15
    move-exception v0

    .line 1477
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disablePacketLog()V
    .registers 8

    .prologue
    .line 2991
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2992
    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string/jumbo v4, "NetworkManagementService"

    .line 2991
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2995
    :try_start_b
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "iplog"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "disablePktLog"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1c} :catch_1e

    move-result-object v1

    .line 2990
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    return-void

    .line 2996
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_1e
    move-exception v0

    .line 2997
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2680
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.DUMP"

    const-string/jumbo v7, "NetworkManagement"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2682
    const-string/jumbo v5, "NetworkManagementService NativeDaemonConnector Log:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2683
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2684
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2686
    const-string/jumbo v5, "Bandwidth control enabled: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2687
    const-string/jumbo v5, "mMobileActivityFromRadio="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 2688
    const-string/jumbo v5, " mLastPowerStateFromRadio="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 2689
    const-string/jumbo v5, "mNetworkActive="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2691
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2692
    :try_start_48
    const-string/jumbo v5, "Active quota ifaces: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2693
    const-string/jumbo v5, "Active alert ifaces: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2694
    const-string/jumbo v5, "Data saver mode: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2695
    const-string/jumbo v5, "blacklist"

    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p2, v5, v7}, Lcom/android/server/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V

    .line 2696
    const-string/jumbo v5, "whitelist"

    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p2, v5, v7}, Lcom/android/server/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V
    :try_end_81
    .catchall {:try_start_48 .. :try_end_81} :catchall_14f

    monitor-exit v6

    .line 2699
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    monitor-enter v6

    .line 2700
    :try_start_85
    const-string/jumbo v5, ""

    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, v5, v7}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    :try_end_8d
    .catchall {:try_start_85 .. :try_end_8d} :catchall_152

    monitor-exit v6

    .line 2703
    const-string/jumbo v5, "UID firewall standby chain enabled: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2704
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 2703
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2705
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    monitor-enter v6

    .line 2706
    :try_start_a1
    const-string/jumbo v5, "standby"

    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, v5, v7}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    :try_end_a9
    .catchall {:try_start_a1 .. :try_end_a9} :catchall_155

    monitor-exit v6

    .line 2709
    const-string/jumbo v5, "UID firewall dozable chain enabled: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2710
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 2709
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2711
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    monitor-enter v6

    .line 2712
    :try_start_bd
    const-string/jumbo v5, "dozable"

    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, v5, v7}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    :try_end_c5
    .catchall {:try_start_bd .. :try_end_c5} :catchall_158

    monitor-exit v6

    .line 2715
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UID firewall powersave chain enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2716
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 2715
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2717
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    monitor-enter v6

    .line 2718
    :try_start_e7
    const-string/jumbo v5, "powersave"

    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, v5, v7}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    :try_end_ef
    .catchall {:try_start_e7 .. :try_end_ef} :catchall_15b

    monitor-exit v6

    .line 2721
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2722
    :try_start_f3
    const-string/jumbo v5, "Idle timers:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2723
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ent$iterator":Ljava/util/Iterator;
    :goto_103
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2724
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/NetworkManagementService$IdleTimerParams;>;"
    const-string/jumbo v5, "  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, ":"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2725
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 2726
    .local v4, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    const-string/jumbo v5, "    timeout="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2727
    const-string/jumbo v5, " type="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2728
    const-string/jumbo v5, " networkCount="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V
    :try_end_14b
    .catchall {:try_start_f3 .. :try_end_14b} :catchall_14c

    goto :goto_103

    .line 2721
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/NetworkManagementService$IdleTimerParams;>;"
    .end local v3    # "ent$iterator":Ljava/util/Iterator;
    .end local v4    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catchall_14c
    move-exception v5

    monitor-exit v6

    throw v5

    .line 2691
    :catchall_14f
    move-exception v5

    monitor-exit v6

    throw v5

    .line 2699
    :catchall_152
    move-exception v5

    monitor-exit v6

    throw v5

    .line 2705
    :catchall_155
    move-exception v5

    monitor-exit v6

    throw v5

    .line 2711
    :catchall_158
    move-exception v5

    monitor-exit v6

    throw v5

    .line 2717
    :catchall_15b
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v3    # "ent$iterator":Ljava/util/Iterator;
    :cond_15e
    monitor-exit v6

    .line 2732
    const-string/jumbo v5, "Firewall enabled: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2733
    const-string/jumbo v5, "Netd service status: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2734
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    if-nez v5, :cond_17b

    .line 2735
    const-string/jumbo v5, "disconnected"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2679
    :goto_17a
    return-void

    .line 2738
    :cond_17b
    :try_start_17b
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v5}, Landroid/net/INetd;->isAlive()Z

    move-result v0

    .line 2739
    .local v0, "alive":Z
    if-eqz v0, :cond_192

    const-string/jumbo v5, "alive"

    :goto_186
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_189
    .catch Landroid/os/RemoteException; {:try_start_17b .. :try_end_189} :catch_18a

    goto :goto_17a

    .line 2740
    .end local v0    # "alive":Z
    :catch_18a
    move-exception v1

    .line 2741
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "unreachable"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_17a

    .line 2739
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "alive":Z
    :cond_192
    :try_start_192
    const-string/jumbo v5, "dead"
    :try_end_195
    .catch Landroid/os/RemoteException; {:try_start_192 .. :try_end_195} :catch_18a

    goto :goto_186
.end method

.method public enableIpv6(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1125
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "interface"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "ipv6"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string/jumbo v4, "enable"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_25} :catch_26

    .line 1124
    return-void

    .line 1128
    :catch_26
    move-exception v0

    .line 1129
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public enableNat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;

    .prologue
    .line 1462
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    :try_start_b
    const-string/jumbo v1, "enable"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_11} :catch_15

    .line 1468
    invoke-static {p1, p2}, Lcom/android/server/NetPluginDelegate;->natStarted(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    return-void

    .line 1465
    :catch_15
    move-exception v0

    .line 1466
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public enablePacketLog()V
    .registers 8

    .prologue
    .line 2977
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2978
    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string/jumbo v4, "NetworkManagementService"

    .line 2977
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2981
    :try_start_b
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "iplog"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "enablePktLog"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1c} :catch_1e

    move-result-object v1

    .line 2976
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    return-void

    .line 2982
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_1e
    move-exception v0

    .line 2983
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public enableTrafficMonitor(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 3017
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "softap"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "setTrafficMonitor"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "1"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_22
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_22} :catch_23

    .line 3016
    return-void

    .line 3020
    :catch_23
    move-exception v0

    .line 3021
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public getDnsForwarders()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 1393
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "dns"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "list"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x70

    .line 1395
    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_28} :catch_2a

    move-result-object v1

    return-object v1

    .line 1397
    :catch_2a
    move-exception v0

    .line 1398
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public getFirewallChainName(I)Ljava/lang/String;
    .registers 5
    .param p1, "chain"    # I

    .prologue
    .line 2567
    packed-switch p1, :pswitch_data_2e

    .line 2577
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown chain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2569
    :pswitch_1d
    const-string/jumbo v0, "standby"

    return-object v0

    .line 2571
    :pswitch_21
    const-string/jumbo v0, "dozable"

    return-object v0

    .line 2573
    :pswitch_25
    const-string/jumbo v0, "powersave"

    return-object v0

    .line 2575
    :pswitch_29
    const-string/jumbo v0, "none"

    return-object v0

    .line 2567
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_29
        :pswitch_21
        :pswitch_1d
        :pswitch_25
    .end packed-switch
.end method

.method public getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    .registers 16
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1020
    iget-object v9, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v11, "NetworkManagement"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    :try_start_b
    iget-object v9, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v10, "interface"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const-string/jumbo v12, "getcfg"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x1

    aput-object p1, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1f} :catch_80

    move-result-object v3

    .line 1029
    .local v3, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v9, 0xd5

    invoke-virtual {v3, v9}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1032
    new-instance v8, Ljava/util/StringTokenizer;

    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1036
    .local v8, "st":Ljava/util/StringTokenizer;
    :try_start_2e
    new-instance v1, Landroid/net/InterfaceConfiguration;

    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 1037
    .local v1, "cfg":Landroid/net/InterfaceConfiguration;
    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/net/InterfaceConfiguration;->setHardwareAddress(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/util/NoSuchElementException; {:try_start_2e .. :try_end_3d} :catch_65

    .line 1038
    const/4 v0, 0x0

    .line 1039
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v7, 0x0

    .line 1041
    .local v7, "prefixLength":I
    :try_start_3f
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_46} :catch_86
    .catch Ljava/util/NoSuchElementException; {:try_start_3f .. :try_end_46} :catch_65

    move-result-object v0

    .line 1047
    .end local v0    # "addr":Ljava/net/InetAddress;
    :goto_47
    :try_start_47
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_4e} :catch_91
    .catch Ljava/util/NoSuchElementException; {:try_start_47 .. :try_end_4e} :catch_65

    move-result v7

    .line 1052
    :goto_4f
    :try_start_4f
    new-instance v9, Landroid/net/LinkAddress;

    invoke-direct {v9, v0, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v9}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 1053
    :goto_57
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_9c

    .line 1054
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/util/NoSuchElementException; {:try_start_4f .. :try_end_64} :catch_65

    goto :goto_57

    .line 1056
    .end local v1    # "cfg":Landroid/net/InterfaceConfiguration;
    .end local v7    # "prefixLength":I
    :catch_65
    move-exception v6

    .line 1057
    .local v6, "nsee":Ljava/util/NoSuchElementException;
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Invalid response from daemon: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1025
    .end local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v6    # "nsee":Ljava/util/NoSuchElementException;
    .end local v8    # "st":Ljava/util/StringTokenizer;
    :catch_80
    move-exception v2

    .line 1026
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v9

    throw v9

    .line 1042
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "cfg":Landroid/net/InterfaceConfiguration;
    .restart local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v7    # "prefixLength":I
    .restart local v8    # "st":Ljava/util/StringTokenizer;
    :catch_86
    move-exception v4

    .line 1043
    .local v4, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_87
    const-string/jumbo v9, "NetworkManagement"

    const-string/jumbo v10, "Failed to parse ipaddr"

    invoke-static {v9, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47

    .line 1048
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v4    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_91
    move-exception v5

    .line 1049
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "NetworkManagement"

    const-string/jumbo v10, "Failed to parse prefixLength"

    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9b
    .catch Ljava/util/NoSuchElementException; {:try_start_87 .. :try_end_9b} :catch_65

    goto :goto_4f

    .line 1059
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :cond_9c
    return-object v1
.end method

.method public getIpForwardingEnabled()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1244
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v4, "NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    :try_start_b
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "ipfwd"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "status"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1c} :catch_2e

    move-result-object v1

    .line 1254
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xd3

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1255
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1249
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_2e
    move-exception v0

    .line 1250
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public getNetworkStatsDetail()Landroid/net/NetworkStats;
    .registers 7

    .prologue
    .line 1853
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_16

    move-result-object v1

    return-object v1

    .line 1856
    :catch_16
    move-exception v0

    .line 1857
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .registers 5

    .prologue
    .line 1833
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    invoke-virtual {v1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v1

    return-object v1

    .line 1836
    :catch_12
    move-exception v0

    .line 1837
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .registers 5

    .prologue
    .line 1843
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    invoke-virtual {v1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v1

    return-object v1

    .line 1846
    :catch_12
    move-exception v0

    .line 1847
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsTethering()Landroid/net/NetworkStats;
    .registers 16

    .prologue
    .line 2118
    iget-object v10, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v12, "NetworkManagement"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    new-instance v8, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const/4 v12, 0x1

    invoke-direct {v8, v10, v11, v12}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 2122
    .local v8, "stats":Landroid/net/NetworkStats;
    :try_start_15
    iget-object v10, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 2123
    const-string/jumbo v11, "bandwidth"

    .line 2122
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 2123
    const-string/jumbo v13, "gettetherstats"

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 2122
    invoke-virtual {v10, v11, v12}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v5

    .line 2124
    .local v5, "events":[Lcom/android/server/NativeDaemonEvent;
    const/4 v10, 0x0

    array-length v11, v5

    :goto_29
    if-ge v10, v11, :cond_c1

    aget-object v4, v5, v10

    .line 2125
    .local v4, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v4}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v12

    const/16 v13, 0x72

    if-eq v12, v13, :cond_38

    .line 2124
    :goto_35
    add-int/lit8 v10, v10, 0x1

    goto :goto_29

    .line 2128
    :cond_38
    new-instance v9, Ljava/util/StringTokenizer;

    invoke-virtual {v4}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V
    :try_end_41
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_15 .. :try_end_41} :catch_a0

    .line 2130
    .local v9, "tok":Ljava/util/StringTokenizer;
    :try_start_41
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 2131
    .local v6, "ifaceIn":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 2133
    .local v7, "ifaceOut":Ljava/lang/String;
    new-instance v3, Landroid/net/NetworkStats$Entry;

    invoke-direct {v3}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 2134
    .local v3, "entry":Landroid/net/NetworkStats$Entry;
    iput-object v7, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 2135
    const/4 v12, -0x5

    iput v12, v3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 2136
    const/4 v12, 0x0

    iput v12, v3, Landroid/net/NetworkStats$Entry;->set:I

    .line 2137
    const/4 v12, 0x0

    iput v12, v3, Landroid/net/NetworkStats$Entry;->tag:I

    .line 2138
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 2139
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 2140
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 2141
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 2142
    invoke-virtual {v8, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_84
    .catch Ljava/util/NoSuchElementException; {:try_start_41 .. :try_end_84} :catch_85
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_84} :catch_a6
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_41 .. :try_end_84} :catch_a0

    goto :goto_35

    .line 2143
    .end local v3    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v6    # "ifaceIn":Ljava/lang/String;
    .end local v7    # "ifaceOut":Ljava/lang/String;
    :catch_85
    move-exception v2

    .line 2144
    .local v2, "e":Ljava/util/NoSuchElementException;
    :try_start_86
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "problem parsing tethering stats: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_a0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_86 .. :try_end_a0} :catch_a0

    .line 2149
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    .end local v4    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v5    # "events":[Lcom/android/server/NativeDaemonEvent;
    .end local v9    # "tok":Ljava/util/StringTokenizer;
    :catch_a0
    move-exception v0

    .line 2150
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v10

    throw v10

    .line 2145
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v4    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v5    # "events":[Lcom/android/server/NativeDaemonEvent;
    .restart local v9    # "tok":Ljava/util/StringTokenizer;
    :catch_a6
    move-exception v1

    .line 2146
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_a7
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "problem parsing tethering stats: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_c1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a7 .. :try_end_c1} :catch_a0

    .line 2152
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v9    # "tok":Ljava/util/StringTokenizer;
    :cond_c1
    return-object v8
.end method

.method public getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 2108
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_13} :catch_15

    move-result-object v1

    return-object v1

    .line 2111
    :catch_15
    move-exception v0

    .line 2112
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSapAutoChannelSelection()I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1686
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 1687
    const-string/jumbo v9, "android.permission.CHANGE_NETWORK_STATE"

    const-string/jumbo v10, "NetworkManagementService"

    .line 1686
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 1689
    const-string/jumbo v9, "android.permission.CHANGE_WIFI_STATE"

    const-string/jumbo v10, "NetworkManagementService"

    .line 1688
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    const/4 v1, 0x0

    .line 1693
    .local v1, "autochannel":I
    :try_start_18
    const-string/jumbo v8, "NetworkManagement"

    const-string/jumbo v9, "getSapAutoChannelSelection"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v9, "softap"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "qccmd"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "get"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const-string/jumbo v11, "autochannel"

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 1697
    .local v0, "OperChanResp":Lcom/android/server/NativeDaemonEvent;
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1698
    .local v6, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 1699
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_ae

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1700
    .local v3, "temp":Ljava/lang/String;
    :goto_55
    if-eqz v3, :cond_79

    .line 1701
    new-instance v7, Ljava/util/StringTokenizer;

    const-string/jumbo v8, "="

    invoke-direct {v7, v3, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    .local v7, "tok1":Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_b0

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1703
    :goto_69
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_73

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 1704
    .local v5, "temp2":Ljava/lang/String;
    :cond_73
    if-eqz v5, :cond_79

    .line 1705
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1707
    .end local v5    # "temp2":Ljava/lang/String;
    .end local v7    # "tok1":Ljava/util/StringTokenizer;
    :cond_79
    const-string/jumbo v8, "NetworkManagement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getSapAutoChannelSelection--OperChanResp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    const-string/jumbo v8, "NetworkManagement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "softap qccmd get autochannel ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_18 .. :try_end_ad} :catch_b2

    .line 1709
    return v1

    .end local v3    # "temp":Ljava/lang/String;
    :cond_ae
    move-object v3, v5

    .line 1699
    goto :goto_55

    .line 1702
    .restart local v3    # "temp":Ljava/lang/String;
    .restart local v7    # "tok1":Ljava/util/StringTokenizer;
    :cond_b0
    const/4 v4, 0x0

    .local v4, "temp1":Ljava/lang/String;
    goto :goto_69

    .line 1710
    .end local v0    # "OperChanResp":Lcom/android/server/NativeDaemonEvent;
    .end local v3    # "temp":Ljava/lang/String;
    .end local v4    # "temp1":Ljava/lang/String;
    .end local v6    # "tok":Ljava/util/StringTokenizer;
    .end local v7    # "tok1":Ljava/util/StringTokenizer;
    :catch_b2
    move-exception v2

    .line 1711
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-instance v8, Ljava/lang/IllegalStateException;

    .line 1712
    const-string/jumbo v9, "Error communicating to native daemon to getSapOperatingChannel"

    .line 1711
    invoke-direct {v8, v9, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public getSapOperatingChannel()I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1654
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 1655
    const-string/jumbo v9, "android.permission.CHANGE_NETWORK_STATE"

    const-string/jumbo v10, "NetworkManagementService"

    .line 1654
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 1657
    const-string/jumbo v9, "android.permission.CHANGE_WIFI_STATE"

    const-string/jumbo v10, "NetworkManagementService"

    .line 1656
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    const/4 v1, 0x0

    .line 1661
    .local v1, "channel":I
    :try_start_18
    const-string/jumbo v8, "NetworkManagement"

    const-string/jumbo v9, "getSapOperatingChannel"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v9, "softap"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "qccmd"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "get"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const-string/jumbo v11, "channel"

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 1663
    .local v0, "OperChanResp":Lcom/android/server/NativeDaemonEvent;
    const-string/jumbo v8, "NetworkManagement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getSapOperatingChannel--OperChanResp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1667
    .local v6, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 1668
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_ae

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1669
    .local v3, "temp":Ljava/lang/String;
    :goto_6f
    if-eqz v3, :cond_93

    .line 1670
    new-instance v7, Ljava/util/StringTokenizer;

    const-string/jumbo v8, "="

    invoke-direct {v7, v3, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    .local v7, "tok1":Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_b0

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1672
    :goto_83
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_8d

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 1673
    .local v5, "temp2":Ljava/lang/String;
    :cond_8d
    if-eqz v5, :cond_93

    .line 1674
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1676
    .end local v5    # "temp2":Ljava/lang/String;
    .end local v7    # "tok1":Ljava/util/StringTokenizer;
    :cond_93
    const-string/jumbo v8, "NetworkManagement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "softap qccmd get channel ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_18 .. :try_end_ad} :catch_b2

    .line 1677
    return v1

    .end local v3    # "temp":Ljava/lang/String;
    :cond_ae
    move-object v3, v5

    .line 1668
    goto :goto_6f

    .line 1671
    .restart local v3    # "temp":Ljava/lang/String;
    .restart local v7    # "tok1":Ljava/util/StringTokenizer;
    :cond_b0
    const/4 v4, 0x0

    .local v4, "temp1":Ljava/lang/String;
    goto :goto_83

    .line 1678
    .end local v0    # "OperChanResp":Lcom/android/server/NativeDaemonEvent;
    .end local v3    # "temp":Ljava/lang/String;
    .end local v4    # "temp1":Ljava/lang/String;
    .end local v6    # "tok":Ljava/util/StringTokenizer;
    .end local v7    # "tok1":Ljava/util/StringTokenizer;
    :catch_b2
    move-exception v2

    .line 1679
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-instance v8, Ljava/lang/IllegalStateException;

    .line 1680
    const-string/jumbo v9, "Error communicating to native daemon to getSapOperatingChannel"

    .line 1679
    invoke-direct {v8, v9, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public isBandwidthControlEnabled()Z
    .registers 4

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    return v0
.end method

.method public isClatdStarted(Ljava/lang/String;)Z
    .registers 9
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 2626
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v4, "NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    :try_start_b
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "clatd"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "status"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1f} :catch_31

    move-result-object v1

    .line 2635
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xdf

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2636
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "started"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 2631
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_31
    move-exception v0

    .line 2632
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public isFirewallEnabled()Z
    .registers 2

    .prologue
    .line 2285
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2286
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    return v0
.end method

.method public isNetworkActive()Z
    .registers 3

    .prologue
    .line 2651
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 2652
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result v0

    :goto_d
    monitor-exit v1

    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_d

    .line 2651
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isTetheringStarted()Z
    .registers 8

    .prologue
    .line 1321
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v4, "NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    :try_start_b
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "tether"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "status"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1c} :catch_2e

    move-result-object v1

    .line 1331
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xd2

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1332
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "started"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1326
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_2e
    move-exception v0

    .line 1327
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public listInterfaces()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 1009
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "interface"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "list"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x6e

    .line 1011
    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_22
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_22} :catch_24

    move-result-object v1

    return-object v1

    .line 1013
    :catch_24
    move-exception v0

    .line 1014
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public listTetheredInterfaces()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 1363
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "interface"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "list"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 1367
    const/16 v2, 0x6f

    .line 1365
    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_28} :catch_2a

    move-result-object v1

    return-object v1

    .line 1368
    :catch_2a
    move-exception v0

    .line 1369
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public listTtys()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 1484
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "list_ttys"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x71

    .line 1486
    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_1c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1c} :catch_1e

    move-result-object v1

    return-object v1

    .line 1488
    :catch_1e
    move-exception v0

    .line 1489
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public monitor()V
    .registers 2

    .prologue
    .line 2673
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_9

    .line 2674
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 2672
    :cond_9
    return-void
.end method

.method public registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/INetworkActivityListener;

    .prologue
    .line 2641
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2640
    return-void
.end method

.method public registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/net/INetworkManagementEventObserver;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 382
    return-void
.end method

.method public removeIdleTimer(Ljava/lang/String;)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1804
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v4, "NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    sget-boolean v2, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v2, :cond_18

    const-string/jumbo v2, "NetworkManagement"

    const-string/jumbo v3, "Removing idletimer"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    :cond_18
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1809
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 1810
    .local v1, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    if-eqz v1, :cond_2d

    iget v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_6c

    if-lez v2, :cond_2f

    :cond_2d
    monitor-exit v3

    .line 1811
    return-void

    .line 1815
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "idletimer"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "remove"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    .line 1816
    iget v6, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    iget v6, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 1815
    invoke-virtual {v2, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_55
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2f .. :try_end_55} :catch_66
    .catchall {:try_start_2f .. :try_end_55} :catchall_6c

    .line 1820
    :try_start_55
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/NetworkManagementService$2;

    invoke-direct {v4, p0, v1}, Lcom/android/server/NetworkManagementService$2;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$IdleTimerParams;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_64
    .catchall {:try_start_55 .. :try_end_64} :catchall_6c

    monitor-exit v3

    .line 1803
    return-void

    .line 1817
    :catch_66
    move-exception v0

    .line 1818
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_67
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_6c

    .line 1808
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catchall_6c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeInterfaceAlert(Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1940
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v1, :cond_10

    return-void

    .line 1946
    :cond_10
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1947
    :try_start_13
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_3e

    move-result v1

    if-nez v1, :cond_1d

    monitor-exit v2

    .line 1949
    return-void

    .line 1954
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "bandwidth"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "removeinterfacealert"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1955
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1d .. :try_end_36} :catch_38
    .catchall {:try_start_1d .. :try_end_36} :catchall_3e

    monitor-exit v2

    .line 1939
    return-void

    .line 1956
    :catch_38
    move-exception v0

    .line 1957
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_39
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_3e

    .line 1946
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_3e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public removeInterfaceFromLocalNetwork(Ljava/lang/String;)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2970
    const-string/jumbo v0, "remove"

    const-string/jumbo v1, "local"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2969
    return-void
.end method

.method public removeInterfaceFromNetwork(Ljava/lang/String;I)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .prologue
    .line 2817
    const-string/jumbo v0, "remove"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2816
    return-void
.end method

.method public removeInterfaceQuota(Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1886
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v1, :cond_10

    return-void

    .line 1892
    :cond_10
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1893
    :try_start_13
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_43

    move-result v1

    if-nez v1, :cond_1d

    monitor-exit v2

    .line 1895
    return-void

    .line 1898
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1899
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_43

    .line 1903
    :try_start_27
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "bandwidth"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "removeiquota"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_27 .. :try_end_3b} :catch_3d
    .catchall {:try_start_27 .. :try_end_3b} :catchall_43

    monitor-exit v2

    .line 1885
    return-void

    .line 1904
    :catch_3d
    move-exception v0

    .line 1905
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_3e
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_43

    .line 1892
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_43
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public removeNetwork(I)V
    .registers 8
    .param p1, "netId"    # I

    .prologue
    .line 2801
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "network"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "destroy"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_23} :catch_24

    .line 2800
    return-void

    .line 2805
    :catch_24
    move-exception v0

    .line 2806
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public removeRoute(ILandroid/net/RouteInfo;)V
    .registers 6
    .param p1, "netId"    # I
    .param p2, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 1161
    const-string/jumbo v0, "remove"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 1160
    return-void
.end method

.method public removeVpnUidRanges(I[Landroid/net/UidRange;)V
    .registers 11
    .param p1, "netId"    # I
    .param p2, "ranges"    # [Landroid/net/UidRange;

    .prologue
    .line 2249
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v7, "NetworkManagement"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    const/16 v5, 0xd

    new-array v2, v5, [Ljava/lang/Object;

    .line 2251
    .local v2, "argv":[Ljava/lang/Object;
    const-string/jumbo v5, "users"

    const/4 v6, 0x0

    aput-object v5, v2, v6

    .line 2252
    const-string/jumbo v5, "remove"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    .line 2253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v2, v6

    .line 2254
    const/4 v0, 0x3

    .line 2256
    .local v0, "argc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    array-length v5, p2

    if-ge v4, v5, :cond_51

    .line 2257
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argc":I
    .local v1, "argc":I
    aget-object v5, p2, v4

    invoke-virtual {v5}, Landroid/net/UidRange;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 2258
    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_39

    array-length v5, v2

    if-ne v1, v5, :cond_49

    .line 2260
    :cond_39
    :try_start_39
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "network"

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_45
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_39 .. :try_end_45} :catch_4b

    .line 2264
    const/4 v0, 0x3

    .line 2256
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_49
    move v0, v1

    .line 2258
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_46

    .line 2261
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_4b
    move-exception v3

    .line 2262
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 2248
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_51
    return-void
.end method

.method public runIpLogCmd(Ljava/lang/String;)I
    .registers 11
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1272
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v7, "iplog"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-direct {v1, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1273
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    const-string/jumbo v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1274
    .local v5, "rawArgs":[Ljava/lang/String;
    array-length v7, v5

    :goto_13
    if-ge v6, v7, :cond_1d

    aget-object v0, v5, v6

    .line 1275
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1274
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 1278
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1d
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_22
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1d .. :try_end_22} :catch_31

    move-result-object v4

    .line 1282
    .local v4, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v6, 0x12d

    invoke-virtual {v4, v6}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1284
    :try_start_28
    invoke-virtual {v4}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2f} :catch_37

    move-result v6

    return v6

    .line 1279
    .end local v4    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_31
    move-exception v2

    .line 1280
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6

    .line 1285
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v4    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_37
    move-exception v3

    .line 1286
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected response:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 13
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wlanIface"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0xa

    const/4 v4, 0x1

    .line 1718
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    const-string/jumbo v5, "startAccessPoint Error setting up softap"

    .line 1722
    .local v5, "logMsg":Ljava/lang/String;
    if-nez p1, :cond_2c

    .line 1723
    const/4 v0, 0x2

    :try_start_14
    new-array v2, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "set"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const/4 v0, 0x1

    aput-object p2, v2, v0

    .line 1759
    .local v2, "args":[Ljava/lang/Object;
    :goto_1f
    const-string/jumbo v1, "softap"

    .line 1760
    const-string/jumbo v4, "Ok"

    .line 1759
    const/16 v3, 0xd6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NetworkManagementService;->executeOrLogWithMessage(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    .line 1717
    return-void

    .line 1730
    .end local v2    # "args":[Ljava/lang/Object;
    :cond_2c
    const-string/jumbo v6, "XX"

    .line 1731
    .local v6, "country_code":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 1732
    const-string/jumbo v1, "phone"

    .line 1731
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 1734
    .local v8, "mPhone":Landroid/telephony/TelephonyManager;
    if-eqz v8, :cond_c2

    .line 1735
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 1736
    if-nez v6, :cond_a7

    .line 1737
    const-string/jumbo v6, "XX"

    .line 1749
    :cond_49
    :goto_49
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    if-gt v0, v9, :cond_51

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    if-ge v0, v4, :cond_55

    .line 1750
    :cond_51
    const/16 v0, 0xa

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    .line 1753
    :cond_55
    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "softap"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string/jumbo v0, "set"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const/4 v0, 0x2

    aput-object p2, v2, v0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v1, 0x3

    aput-object v0, v2, v1

    .line 1754
    invoke-static {p1}, Lcom/android/server/NetworkManagementService;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v2, v1

    new-instance v0, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x5

    aput-object v0, v2, v1

    .line 1755
    const/4 v0, 0x6

    aput-object v6, v2, v0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, v2, v1

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, v2, v1

    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, v2, v1

    const-string/jumbo v0, "0"

    const/16 v1, 0xa

    aput-object v0, v2, v1

    .line 1753
    .restart local v2    # "args":[Ljava/lang/Object;
    goto/16 :goto_1f

    .line 1739
    .end local v2    # "args":[Ljava/lang/Object;
    :cond_a7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b4

    .line 1740
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_b8

    .line 1742
    :cond_b4
    :goto_b4
    const-string/jumbo v6, "XX"

    goto :goto_49

    .line 1741
    :cond_b8
    const-string/jumbo v0, "^\\s*$"

    invoke-virtual {v6, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 1739
    if-eqz v0, :cond_49

    goto :goto_b4

    .line 1746
    :cond_c2
    const-string/jumbo v6, "XX"
    :try_end_c5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_14 .. :try_end_c5} :catch_c6

    goto :goto_49

    .line 1761
    .end local v6    # "country_code":Ljava/lang/String;
    .end local v8    # "mPhone":Landroid/telephony/TelephonyManager;
    :catch_c6
    move-exception v7

    .line 1762
    .local v7, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v7}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V
    .registers 8
    .param p1, "add"    # Z
    .param p2, "uidRanges"    # [Landroid/net/UidRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .prologue
    .line 2045
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->networkRejectNonSecureVpn(Z[Landroid/net/UidRange;)V
    :try_end_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_43
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2043
    return-void

    .line 2050
    :catch_6
    move-exception v0

    .line 2051
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAllowOnlyVpnForUids("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2052
    const-string/jumbo v4, ": netd command failed"

    .line 2051
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2053
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2046
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_43
    move-exception v1

    .line 2047
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string/jumbo v2, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAllowOnlyVpnForUids("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2048
    const-string/jumbo v4, ": netd command failed"

    .line 2047
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2049
    throw v1
.end method

.method public setChannelRange(III)V
    .registers 10
    .param p1, "startchannel"    # I
    .param p2, "endchannel"    # I
    .param p3, "band"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1638
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 1639
    const-string/jumbo v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string/jumbo v3, "NetworkManagementService"

    .line 1638
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 1641
    const-string/jumbo v2, "android.permission.CHANGE_WIFI_STATE"

    const-string/jumbo v3, "NetworkManagementService"

    .line 1640
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    :try_start_16
    const-string/jumbo v1, "NetworkManagement"

    const-string/jumbo v2, "Set SAP Channel Range"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1645
    const-string/jumbo v2, "softap"

    .line 1644
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    .line 1645
    const-string/jumbo v4, "qccmd"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "set"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "setchannelrange="

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string/jumbo v4, " "

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, " "

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v3, v5

    .line 1644
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_5e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_16 .. :try_end_5e} :catch_5f

    .line 1637
    return-void

    .line 1646
    :catch_5f
    move-exception v0

    .line 1647
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1648
    const-string/jumbo v2, "Error communicating to native daemon to set channel range"

    .line 1647
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDataSaverModeEnabled(Z)Z
    .registers 8
    .param p1, "enable"    # Z

    .prologue
    .line 2020
    sget-boolean v2, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v2, :cond_1e

    const-string/jumbo v2, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDataSaverMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    :cond_1e
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2022
    :try_start_21
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    if-ne v2, p1, :cond_44

    .line 2023
    const-string/jumbo v2, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDataSaverMode(): already "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_21 .. :try_end_41} :catchall_97

    .line 2024
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .line 2027
    :cond_44
    :try_start_44
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v2, p1}, Landroid/net/INetd;->bandwidthEnableDataSaver(Z)Z

    move-result v0

    .line 2028
    .local v0, "changed":Z
    if-eqz v0, :cond_50

    .line 2029
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4e} :catch_72
    .catchall {:try_start_44 .. :try_end_4e} :catchall_97

    :goto_4e
    monitor-exit v3

    .line 2033
    return v0

    .line 2031
    :cond_50
    :try_start_50
    const-string/jumbo v2, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDataSaverMode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "): netd command silently failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_71} :catch_72
    .catchall {:try_start_50 .. :try_end_71} :catchall_97

    goto :goto_4e

    .line 2034
    .end local v0    # "changed":Z
    :catch_72
    move-exception v1

    .line 2035
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_73
    const-string/jumbo v2, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDataSaverMode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "): netd command failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_94
    .catchall {:try_start_73 .. :try_end_94} :catchall_97

    .line 2036
    const/4 v2, 0x0

    monitor-exit v3

    return v2

    .line 2021
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_97
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setDefaultNetId(I)V
    .registers 8
    .param p1, "netId"    # I

    .prologue
    .line 2852
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2855
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "network"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "default"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "set"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_29} :catch_2a

    .line 2851
    return-void

    .line 2856
    :catch_2a
    move-exception v0

    .line 2857
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setDnsConfigurationForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "netId"    # I
    .param p2, "servers"    # [Ljava/lang/String;
    .param p3, "domains"    # Ljava/lang/String;

    .prologue
    .line 2157
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v10, "NetworkManagement"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2162
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v8, "dns_resolver_sample_validity_seconds"

    .line 2163
    const/16 v9, 0x708

    .line 2161
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 2164
    .local v6, "sampleValidity":I
    if-ltz v6, :cond_21

    const v8, 0xffff

    if-le v6, v8, :cond_4a

    .line 2165
    :cond_21
    const-string/jumbo v8, "NetworkManagement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid sampleValidity="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", using default="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2166
    const/16 v10, 0x708

    .line 2165
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    const/16 v6, 0x708

    .line 2171
    :cond_4a
    const-string/jumbo v8, "dns_resolver_success_threshold_percent"

    .line 2172
    const/16 v9, 0x19

    .line 2170
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 2173
    .local v7, "successThreshold":I
    if-ltz v7, :cond_59

    const/16 v8, 0x64

    if-le v7, v8, :cond_82

    .line 2174
    :cond_59
    const-string/jumbo v8, "NetworkManagement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid successThreshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", using default="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2175
    const/16 v10, 0x19

    .line 2174
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    const/16 v7, 0x19

    .line 2180
    :cond_82
    const-string/jumbo v8, "dns_resolver_min_samples"

    const/16 v9, 0x8

    .line 2179
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2182
    .local v3, "minSamples":I
    const-string/jumbo v8, "dns_resolver_max_samples"

    const/16 v9, 0x40

    .line 2181
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2183
    .local v2, "maxSamples":I
    if-ltz v3, :cond_98

    if-le v3, v2, :cond_fc

    .line 2184
    :cond_98
    :goto_98
    const-string/jumbo v8, "NetworkManagement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid sample count (min, max)=("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2185
    const-string/jumbo v10, "), using default=("

    .line 2184
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2185
    const/16 v10, 0x8

    .line 2184
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2185
    const-string/jumbo v10, ", "

    .line 2184
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2186
    const/16 v10, 0x40

    .line 2184
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2186
    const-string/jumbo v10, ")"

    .line 2184
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    const/16 v3, 0x8

    .line 2188
    const/16 v2, 0x40

    .line 2191
    :cond_e2
    if-nez p3, :cond_101

    const/4 v8, 0x0

    new-array v0, v8, [Ljava/lang/String;

    .line 2192
    .local v0, "domainStrs":[Ljava/lang/String;
    :goto_e7
    const/4 v8, 0x4

    new-array v4, v8, [I

    const/4 v8, 0x0

    aput v6, v4, v8

    const/4 v8, 0x1

    aput v7, v4, v8

    const/4 v8, 0x2

    aput v3, v4, v8

    const/4 v8, 0x3

    aput v2, v4, v8

    .line 2194
    .local v4, "params":[I
    :try_start_f6
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v8, p1, p2, v0, v4}, Landroid/net/INetd;->setResolverConfiguration(I[Ljava/lang/String;[Ljava/lang/String;[I)V
    :try_end_fb
    .catch Landroid/os/RemoteException; {:try_start_f6 .. :try_end_fb} :catch_109

    .line 2156
    return-void

    .line 2183
    .end local v0    # "domainStrs":[Ljava/lang/String;
    .end local v4    # "params":[I
    :cond_fc
    const/16 v8, 0x40

    if-le v2, v8, :cond_e2

    goto :goto_98

    .line 2191
    :cond_101
    const-string/jumbo v8, " "

    invoke-virtual {p3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "domainStrs":[Ljava/lang/String;
    goto :goto_e7

    .line 2195
    .restart local v4    # "params":[I
    :catch_109
    move-exception v1

    .line 2196
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method public setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V
    .registers 12
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "dns"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1375
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v7, "NetworkManagement"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    if-eqz p1, :cond_40

    iget v2, p1, Landroid/net/Network;->netId:I

    .line 1378
    .local v2, "netId":I
    :goto_10
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v5, "tether"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "dns"

    aput-object v7, v6, v4

    const-string/jumbo v7, "set"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1380
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    array-length v5, p2

    :goto_2e
    if-ge v4, v5, :cond_42

    aget-object v3, p2, v4

    .line 1381
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1380
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 1377
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .end local v2    # "netId":I
    .end local v3    # "s":Ljava/lang/String;
    :cond_40
    const/4 v2, 0x0

    .restart local v2    # "netId":I
    goto :goto_10

    .line 1385
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_42
    :try_start_42
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_47
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_42 .. :try_end_47} :catch_48

    .line 1374
    return-void

    .line 1386
    :catch_48
    move-exception v1

    .line 1387
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4
.end method

.method public setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "netId"    # I
    .param p2, "servers"    # [Ljava/lang/String;
    .param p3, "domains"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 2202
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v7, "NetworkManagement"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    array-length v5, p2

    if-lez v5, :cond_47

    .line 2206
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v5, "resolver"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "setnetdns"

    aput-object v7, v6, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 2207
    if-nez p3, :cond_29

    const-string/jumbo p3, ""

    .end local p3    # "domains":Ljava/lang/String;
    :cond_29
    aput-object p3, v6, v9

    .line 2206
    invoke-direct {v1, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2208
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    array-length v5, p2

    :goto_2f
    if-ge v4, v5, :cond_5c

    aget-object v3, p2, v4

    .line 2209
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 2210
    .local v0, "a":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v6

    if-nez v6, :cond_44

    .line 2211
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2208
    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 2215
    .end local v0    # "a":Ljava/net/InetAddress;
    .end local v1    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .end local v3    # "s":Ljava/lang/String;
    .restart local p3    # "domains":Ljava/lang/String;
    :cond_47
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v5, "resolver"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "clearnetdns"

    aput-object v7, v6, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v8

    invoke-direct {v1, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2219
    .end local p3    # "domains":Ljava/lang/String;
    .restart local v1    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_5c
    :try_start_5c
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_61
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5c .. :try_end_61} :catch_62

    .line 2201
    return-void

    .line 2220
    :catch_62
    move-exception v2

    .line 2221
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4
.end method

.method public setFirewallChainEnabled(IZ)V
    .registers 11
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 2386
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2387
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2388
    :try_start_6
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_37

    move-result v3

    if-ne v3, p2, :cond_10

    monitor-exit v4

    .line 2391
    return-void

    .line 2393
    :cond_10
    :try_start_10
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2395
    if-eqz p2, :cond_3a

    const-string/jumbo v2, "enable_chain"

    .line 2397
    .local v2, "operation":Ljava/lang/String;
    :goto_1a
    packed-switch p1, :pswitch_data_86

    .line 2408
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad child chain: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_37
    .catchall {:try_start_10 .. :try_end_37} :catchall_37

    .line 2387
    .end local v2    # "operation":Ljava/lang/String;
    :catchall_37
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2395
    :cond_3a
    :try_start_3a
    const-string/jumbo v2, "disable_chain"

    .restart local v2    # "operation":Ljava/lang/String;
    goto :goto_1a

    .line 2399
    :pswitch_3e
    const-string/jumbo v0, "standby"
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_37

    .line 2412
    .local v0, "chainName":Ljava/lang/String;
    :goto_41
    :try_start_41
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "firewall"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-virtual {v3, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_52
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_41 .. :try_end_52} :catch_7f
    .catchall {:try_start_41 .. :try_end_52} :catchall_37

    .line 2421
    if-eqz p2, :cond_75

    .line 2422
    :try_start_54
    sget-boolean v3, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v3, :cond_72

    const-string/jumbo v3, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Closing sockets after enabling chain "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    :cond_72
    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->closeSocketsForFirewallChainLocked(ILjava/lang/String;)V
    :try_end_75
    .catchall {:try_start_54 .. :try_end_75} :catchall_37

    :cond_75
    monitor-exit v4

    .line 2385
    return-void

    .line 2402
    .end local v0    # "chainName":Ljava/lang/String;
    :pswitch_77
    :try_start_77
    const-string/jumbo v0, "dozable"

    .restart local v0    # "chainName":Ljava/lang/String;
    goto :goto_41

    .line 2405
    .end local v0    # "chainName":Ljava/lang/String;
    :pswitch_7b
    const-string/jumbo v0, "powersave"

    .restart local v0    # "chainName":Ljava/lang/String;
    goto :goto_41

    .line 2413
    :catch_7f
    move-exception v1

    .line 2414
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
    :try_end_85
    .catchall {:try_start_77 .. :try_end_85} :catchall_37

    .line 2397
    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_77
        :pswitch_3e
        :pswitch_7b
    .end packed-switch
.end method

.method public setFirewallDnsRule(Z)V
    .registers 9
    .param p1, "allow"    # Z

    .prologue
    .line 2584
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2585
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2586
    if-eqz p1, :cond_22

    const-string/jumbo v1, "allow"

    .line 2588
    .local v1, "rule":Ljava/lang/String;
    :goto_d
    :try_start_d
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "firewall"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "set_dns_rule"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_21} :catch_26

    .line 2583
    return-void

    .line 2586
    .end local v1    # "rule":Ljava/lang/String;
    :cond_22
    const-string/jumbo v1, "deny"

    .restart local v1    # "rule":Ljava/lang/String;
    goto :goto_d

    .line 2589
    :catch_26
    move-exception v0

    .line 2590
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallEgressDestRule(Ljava/lang/String;IZ)V
    .registers 11
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "allow"    # Z

    .prologue
    .line 2315
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2316
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2317
    if-eqz p3, :cond_2c

    const-string/jumbo v1, "allow"

    .line 2319
    .local v1, "rule":Ljava/lang/String;
    :goto_d
    :try_start_d
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "firewall"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "set_egress_dest_rule"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_2b} :catch_30

    .line 2314
    return-void

    .line 2317
    .end local v1    # "rule":Ljava/lang/String;
    :cond_2c
    const-string/jumbo v1, "deny"

    .restart local v1    # "rule":Ljava/lang/String;
    goto :goto_d

    .line 2320
    :catch_30
    move-exception v0

    .line 2321
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallEgressSourceRule(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    .prologue
    .line 2303
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2304
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2305
    if-eqz p2, :cond_25

    const-string/jumbo v1, "allow"

    .line 2307
    .local v1, "rule":Ljava/lang/String;
    :goto_d
    :try_start_d
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "firewall"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "set_egress_source_rule"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_24} :catch_29

    .line 2302
    return-void

    .line 2305
    .end local v1    # "rule":Ljava/lang/String;
    :cond_25
    const-string/jumbo v1, "deny"

    .restart local v1    # "rule":Ljava/lang/String;
    goto :goto_d

    .line 2308
    :catch_29
    move-exception v0

    .line 2309
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallEnabled(Z)V
    .registers 8
    .param p1, "enabled"    # Z

    .prologue
    .line 2271
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2274
    :try_start_3
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "firewall"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "enable"

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 2275
    if-nez p1, :cond_17

    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBlockDataTrafficInternal:Z

    if-eqz v1, :cond_23

    :cond_17
    const-string/jumbo v1, "whitelist"

    :goto_1a
    const/4 v5, 0x1

    aput-object v1, v4, v5

    .line 2274
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2277
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    .line 2270
    return-void

    .line 2275
    :cond_23
    const-string/jumbo v1, "blacklist"
    :try_end_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_26} :catch_27

    goto :goto_1a

    .line 2278
    :catch_27
    move-exception v0

    .line 2279
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setFirewallInterfaceRule(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    .prologue
    .line 2291
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2292
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2293
    if-eqz p2, :cond_25

    const-string/jumbo v1, "allow"

    .line 2295
    .local v1, "rule":Ljava/lang/String;
    :goto_d
    :try_start_d
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "firewall"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "set_interface_rule"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_24} :catch_29

    .line 2290
    return-void

    .line 2293
    .end local v1    # "rule":Ljava/lang/String;
    :cond_25
    const-string/jumbo v1, "deny"

    .restart local v1    # "rule":Ljava/lang/String;
    goto :goto_d

    .line 2296
    :catch_29
    move-exception v0

    .line 2297
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallUidRule(III)V
    .registers 6
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .prologue
    .line 2490
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2491
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2492
    :try_start_6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NetworkManagementService;->setFirewallUidRuleLocked(III)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_b

    monitor-exit v0

    .line 2489
    return-void

    .line 2491
    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setFirewallUidRules(I[I[I)V
    .registers 15
    .param p1, "chain"    # I
    .param p2, "uids"    # [I
    .param p3, "rules"    # [I

    .prologue
    .line 2443
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2444
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2445
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRules(I)Landroid/util/SparseIntArray;

    move-result-object v6

    .line 2446
    .local v6, "uidFirewallRules":Landroid/util/SparseIntArray;
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 2448
    .local v2, "newRules":Landroid/util/SparseIntArray;
    array-length v7, p2

    add-int/lit8 v1, v7, -0x1

    .local v1, "index":I
    :goto_12
    if-ltz v1, :cond_21

    .line 2449
    aget v5, p2, v1

    .line 2450
    .local v5, "uid":I
    aget v3, p3, v1

    .line 2451
    .local v3, "rule":I
    invoke-direct {p0, p1, v5, v3}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    .line 2452
    invoke-virtual {v2, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2448
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 2455
    .end local v3    # "rule":I
    .end local v5    # "uid":I
    :cond_21
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 2456
    .local v4, "rulesToRemove":Landroid/util/SparseIntArray;
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_2c
    if-ltz v1, :cond_3f

    .line 2457
    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 2458
    .restart local v5    # "uid":I
    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_3c

    .line 2459
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2456
    :cond_3c
    add-int/lit8 v1, v1, -0x1

    goto :goto_2c

    .line 2463
    .end local v5    # "uid":I
    :cond_3f
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_45
    if-ltz v1, :cond_52

    .line 2464
    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 2465
    .restart local v5    # "uid":I
    const/4 v7, 0x0

    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z
    :try_end_4f
    .catchall {:try_start_6 .. :try_end_4f} :catchall_97

    .line 2463
    add-int/lit8 v1, v1, -0x1

    goto :goto_45

    .line 2468
    .end local v5    # "uid":I
    :cond_52
    packed-switch p1, :pswitch_data_ae

    .line 2480
    :try_start_55
    const-string/jumbo v7, "NetworkManagement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setFirewallUidRules() called on invalid chain: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_6f} :catch_7b
    .catchall {:try_start_55 .. :try_end_6f} :catchall_97

    :goto_6f
    monitor-exit v8

    .line 2442
    return-void

    .line 2470
    :pswitch_71
    :try_start_71
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const-string/jumbo v9, "fw_dozable"

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_7a} :catch_7b
    .catchall {:try_start_71 .. :try_end_7a} :catchall_97

    goto :goto_6f

    .line 2482
    :catch_7b
    move-exception v0

    .line 2483
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_7c
    const-string/jumbo v7, "NetworkManagement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error flushing firewall chain "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_96
    .catchall {:try_start_7c .. :try_end_96} :catchall_97

    goto :goto_6f

    .line 2444
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "index":I
    .end local v2    # "newRules":Landroid/util/SparseIntArray;
    .end local v4    # "rulesToRemove":Landroid/util/SparseIntArray;
    .end local v6    # "uidFirewallRules":Landroid/util/SparseIntArray;
    :catchall_97
    move-exception v7

    monitor-exit v8

    throw v7

    .line 2473
    .restart local v1    # "index":I
    .restart local v2    # "newRules":Landroid/util/SparseIntArray;
    .restart local v4    # "rulesToRemove":Landroid/util/SparseIntArray;
    .restart local v6    # "uidFirewallRules":Landroid/util/SparseIntArray;
    :pswitch_9a
    :try_start_9a
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const-string/jumbo v9, "fw_standby"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    goto :goto_6f

    .line 2476
    :pswitch_a4
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const-string/jumbo v9, "fw_powersave"

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_ad} :catch_7b
    .catchall {:try_start_9a .. :try_end_ad} :catchall_97

    goto :goto_6f

    .line 2468
    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_71
        :pswitch_9a
        :pswitch_a4
    .end packed-switch
.end method

.method public setGlobalAlert(J)V
    .registers 10
    .param p1, "alertBytes"    # J

    .prologue
    .line 1964
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v1, :cond_10

    return-void

    .line 1971
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "bandwidth"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "setglobalalert"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_10 .. :try_end_28} :catch_29

    .line 1963
    return-void

    .line 1972
    :catch_29
    move-exception v0

    .line 1973
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setInterfaceAlert(Ljava/lang/String;J)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "alertBytes"    # J

    .prologue
    .line 1912
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v1, :cond_10

    return-void

    .line 1919
    :cond_10
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1920
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "setting alert requires existing quota on iface"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1923
    :cond_21
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1924
    :try_start_24
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1925
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " already has alert"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4d
    .catchall {:try_start_24 .. :try_end_4d} :catchall_4d

    .line 1923
    :catchall_4d
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1930
    :cond_50
    :try_start_50
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "bandwidth"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "setinterfacealert"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1931
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_74
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_50 .. :try_end_74} :catch_76
    .catchall {:try_start_50 .. :try_end_74} :catchall_4d

    monitor-exit v2

    .line 1911
    return-void

    .line 1932
    :catch_76
    move-exception v0

    .line 1933
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_77
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_4d
.end method

.method public setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "cfg"    # Landroid/net/InterfaceConfiguration;

    .prologue
    .line 1064
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v7, "NetworkManagement"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v4

    .line 1066
    .local v4, "linkAddr":Landroid/net/LinkAddress;
    if-eqz v4, :cond_17

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    if-nez v5, :cond_20

    .line 1067
    :cond_17
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Null LinkAddress given"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1070
    :cond_20
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v5, "interface"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "setcfg"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object p1, v6, v7

    .line 1071
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 1072
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    .line 1070
    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1073
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getFlags()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "flag$iterator":Ljava/util/Iterator;
    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1074
    .local v2, "flag":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_52

    .line 1078
    .end local v2    # "flag":Ljava/lang/String;
    :cond_62
    :try_start_62
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_67
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_62 .. :try_end_67} :catch_68

    .line 1063
    return-void

    .line 1079
    :catch_68
    move-exception v1

    .line 1080
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5
.end method

.method public setInterfaceDown(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1086
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 1088
    .local v0, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    .line 1089
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 1085
    return-void
.end method

.method public setInterfaceIpv6NdOffload(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 1145
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    :try_start_b
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1148
    const-string/jumbo v3, "interface"

    .line 1147
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    .line 1148
    const-string/jumbo v1, "ipv6ndoffload"

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p1, v4, v1

    if-eqz p2, :cond_28

    const-string/jumbo v1, "enable"

    :goto_21
    const/4 v5, 0x2

    aput-object v1, v4, v5

    .line 1147
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1144
    return-void

    .line 1148
    :cond_28
    const-string/jumbo v1, "disable"
    :try_end_2b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_2b} :catch_2c

    goto :goto_21

    .line 1149
    :catch_2c
    move-exception v0

    .line 1150
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 1102
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    :try_start_b
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1105
    const-string/jumbo v3, "interface"

    .line 1104
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    .line 1105
    const-string/jumbo v1, "ipv6privacyextensions"

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p1, v4, v1

    if-eqz p2, :cond_28

    const-string/jumbo v1, "enable"

    :goto_21
    const/4 v5, 0x2

    aput-object v1, v4, v5

    .line 1104
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1101
    return-void

    .line 1105
    :cond_28
    const-string/jumbo v1, "disable"
    :try_end_2b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_2b} :catch_2c

    goto :goto_21

    .line 1106
    :catch_2c
    move-exception v0

    .line 1107
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .prologue
    .line 1863
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v1, :cond_10

    return-void

    .line 1869
    :cond_10
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1870
    :try_start_13
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1871
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " already has quota"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_3c

    .line 1869
    :catchall_3c
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1876
    :cond_3f
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "bandwidth"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "setiquota"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1877
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3f .. :try_end_63} :catch_65
    .catchall {:try_start_3f .. :try_end_63} :catchall_3c

    monitor-exit v2

    .line 1862
    return-void

    .line 1878
    :catch_65
    move-exception v0

    .line 1879
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_66
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
    :try_end_6b
    .catchall {:try_start_66 .. :try_end_6b} :catchall_3c
.end method

.method public setInterfaceUp(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1094
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 1096
    .local v0, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 1097
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 1093
    return-void
.end method

.method public setIpForwardingEnabled(Z)V
    .registers 8
    .param p1, "enable"    # Z

    .prologue
    .line 1260
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    :try_start_b
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "ipfwd"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_25

    const-string/jumbo v1, "enable"

    :goto_18
    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string/jumbo v1, "tethering"

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1259
    return-void

    .line 1262
    :cond_25
    const-string/jumbo v1, "disable"
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_28} :catch_29

    goto :goto_18

    .line 1263
    :catch_29
    move-exception v0

    .line 1264
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setMtu(Ljava/lang/String;I)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "mtu"    # I

    .prologue
    .line 1224
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v4, "NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    :try_start_b
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "interface"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "setmtu"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_26} :catch_28

    move-result-object v1

    .line 1223
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    return-void

    .line 1229
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_28
    move-exception v0

    .line 1230
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setNetworkPermission(ILjava/lang/String;)V
    .registers 9
    .param p1, "netId"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 2874
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    if-eqz p2, :cond_35

    .line 2878
    :try_start_d
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "network"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "permission"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "network"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "set"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2873
    :goto_34
    return-void

    .line 2880
    :cond_35
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "network"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "permission"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "network"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "clear"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_59
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_59} :catch_5a

    goto :goto_34

    .line 2882
    :catch_5a
    move-exception v0

    .line 2883
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setPermission(Ljava/lang/String;[I)V
    .registers 11
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uids"    # [I

    .prologue
    .line 2890
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v7, "NetworkManagement"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    const/16 v5, 0xe

    new-array v2, v5, [Ljava/lang/Object;

    .line 2893
    .local v2, "argv":[Ljava/lang/Object;
    const-string/jumbo v5, "permission"

    const/4 v6, 0x0

    aput-object v5, v2, v6

    .line 2894
    const-string/jumbo v5, "user"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    .line 2895
    const-string/jumbo v5, "set"

    const/4 v6, 0x2

    aput-object v5, v2, v6

    .line 2896
    const/4 v5, 0x3

    aput-object p1, v2, v5

    .line 2897
    const/4 v0, 0x4

    .line 2899
    .local v0, "argc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_26
    array-length v5, p2

    if-ge v4, v5, :cond_53

    .line 2900
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argc":I
    .local v1, "argc":I
    aget v5, p2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    .line 2901
    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_3b

    array-length v5, v2

    if-ne v1, v5, :cond_4b

    .line 2903
    :cond_3b
    :try_start_3b
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "network"

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_47
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3b .. :try_end_47} :catch_4d

    .line 2907
    const/4 v0, 0x4

    .line 2899
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_4b
    move v0, v1

    .line 2901
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_48

    .line 2904
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_4d
    move-exception v3

    .line 2905
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 2889
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_53
    return-void
.end method

.method public setUidCleartextNetworkPolicy(II)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2059
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eq v3, p1, :cond_11

    .line 2060
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v5, "NetworkManagement"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    :cond_11
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2064
    :try_start_14
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_47

    move-result v1

    .line 2065
    .local v1, "oldPolicy":I
    if-ne v1, p2, :cond_1f

    monitor-exit v4

    .line 2066
    return-void

    .line 2069
    :cond_1f
    :try_start_1f
    iget-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mStrictEnabled:Z

    if-nez v3, :cond_2a

    .line 2072
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_47

    monitor-exit v4

    .line 2073
    return-void

    .line 2077
    :cond_2a
    packed-switch p2, :pswitch_data_7e

    .line 2088
    :try_start_2d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_47
    .catchall {:try_start_2d .. :try_end_47} :catchall_47

    .line 2063
    .end local v1    # "oldPolicy":I
    :catchall_47
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2079
    .restart local v1    # "oldPolicy":I
    :pswitch_4a
    :try_start_4a
    const-string/jumbo v2, "accept"
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_47

    .line 2092
    .local v2, "policyString":Ljava/lang/String;
    :goto_4d
    :try_start_4d
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "strict"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "set_uid_cleartext_policy"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    aput-object v2, v6, v7

    invoke-virtual {v3, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2093
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_6d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4d .. :try_end_6d} :catch_77
    .catchall {:try_start_4d .. :try_end_6d} :catchall_47

    monitor-exit v4

    .line 2058
    return-void

    .line 2082
    .end local v2    # "policyString":Ljava/lang/String;
    :pswitch_6f
    :try_start_6f
    const-string/jumbo v2, "log"

    .restart local v2    # "policyString":Ljava/lang/String;
    goto :goto_4d

    .line 2085
    .end local v2    # "policyString":Ljava/lang/String;
    :pswitch_73
    const-string/jumbo v2, "reject"

    .restart local v2    # "policyString":Ljava/lang/String;
    goto :goto_4d

    .line 2094
    :catch_77
    move-exception v0

    .line 2095
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
    :try_end_7d
    .catchall {:try_start_6f .. :try_end_7d} :catchall_47

    .line 2077
    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_6f
        :pswitch_73
    .end packed-switch
.end method

.method public setUidMeteredNetworkBlacklist(IZ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/android/server/NetworkManagementService;->setUidOnMeteredNetworkList(Landroid/util/SparseBooleanArray;IZZ)V

    .line 2009
    return-void
.end method

.method public setUidMeteredNetworkWhitelist(IZ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/android/server/NetworkManagementService;->setUidOnMeteredNetworkList(Landroid/util/SparseBooleanArray;IZZ)V

    .line 2014
    return-void
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.SHUTDOWN"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    return-void
.end method

.method public startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 13
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wlanIface"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0xa

    const/4 v4, 0x1

    .line 1542
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    const-string/jumbo v5, "startAccessPoint Error setting up softap"

    .line 1546
    .local v5, "logMsg":Ljava/lang/String;
    if-nez p1, :cond_44

    .line 1547
    const/4 v0, 0x2

    :try_start_14
    new-array v2, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "set"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const/4 v0, 0x1

    aput-object p2, v2, v0

    .line 1577
    .local v2, "args":[Ljava/lang/Object;
    :goto_1f
    const-string/jumbo v1, "softap"

    .line 1578
    const-string/jumbo v4, "Ok"

    .line 1577
    const/16 v3, 0xd6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NetworkManagementService;->executeOrLogWithMessage(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    .line 1580
    const-string/jumbo v5, "startAccessPoint Error starting softap"

    .line 1581
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .end local v2    # "args":[Ljava/lang/Object;
    const-string/jumbo v0, "startap"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 1582
    .restart local v2    # "args":[Ljava/lang/Object;
    const-string/jumbo v1, "softap"

    .line 1583
    const-string/jumbo v4, "Ok"

    .line 1582
    const/16 v3, 0xd6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NetworkManagementService;->executeOrLogWithMessage(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    .line 1541
    return-void

    .line 1550
    .end local v2    # "args":[Ljava/lang/Object;
    :cond_44
    const-string/jumbo v6, "US"

    .line 1551
    .local v6, "country_code":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 1552
    const-string/jumbo v1, "phone"

    .line 1551
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 1553
    .local v8, "mPhone":Landroid/telephony/TelephonyManager;
    if-eqz v8, :cond_6a

    .line 1554
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 1555
    if-nez v6, :cond_c1

    .line 1556
    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "country_code received from TelephonyManager is null, using default XX"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    const-string/jumbo v6, "US"

    .line 1568
    :cond_6a
    :goto_6a
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    if-gt v0, v9, :cond_72

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    if-ge v0, v4, :cond_76

    .line 1569
    :cond_72
    const/16 v0, 0xa

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    .line 1571
    :cond_76
    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "set"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const/4 v0, 0x1

    aput-object p2, v2, v0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object v0, v2, v1

    .line 1572
    invoke-static {p1}, Lcom/android/server/NetworkManagementService;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v2, v1

    new-instance v0, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x4

    aput-object v0, v2, v1

    .line 1573
    const/4 v0, 0x5

    aput-object v6, v2, v0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, v2, v1

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, v2, v1

    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, v2, v1

    const-string/jumbo v0, "0"

    const/16 v1, 0x9

    aput-object v0, v2, v1

    .line 1571
    .restart local v2    # "args":[Ljava/lang/Object;
    goto/16 :goto_1f

    .line 1559
    .end local v2    # "args":[Ljava/lang/Object;
    :cond_c1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_ce

    .line 1560
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_db

    .line 1562
    :cond_ce
    :goto_ce
    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "country_code received from TelephonyManager is empty, using default XX"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    const-string/jumbo v6, "US"

    goto :goto_6a

    .line 1561
    :cond_db
    const-string/jumbo v0, "^\\s*$"

    invoke-virtual {v6, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_e1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_14 .. :try_end_e1} :catch_e5

    move-result v0

    .line 1559
    if-eqz v0, :cond_6a

    goto :goto_ce

    .line 1584
    .end local v6    # "country_code":Ljava/lang/String;
    .end local v8    # "mPhone":Landroid/telephony/TelephonyManager;
    :catch_e5
    move-exception v7

    .line 1585
    .local v7, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v7}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public startClatd(Ljava/lang/String;)V
    .registers 8
    .param p1, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2604
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "clatd"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "start"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1f} :catch_20

    .line 2603
    return-void

    .line 2608
    :catch_20
    move-exception v0

    .line 2609
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1421
    return-void
.end method

.method public startTethering([Ljava/lang/String;)V
    .registers 9
    .param p1, "dhcpRange"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1293
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v6, "NetworkManagement"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v4, "tether"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "start"

    aput-object v6, v5, v3

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1298
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    array-length v4, p1

    :goto_1d
    if-ge v3, v4, :cond_27

    aget-object v1, p1, v3

    .line 1299
    .local v1, "d":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1298
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 1303
    .end local v1    # "d":Ljava/lang/String;
    :cond_27
    :try_start_27
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_27 .. :try_end_2c} :catch_2d

    .line 1292
    return-void

    .line 1304
    :catch_2d
    move-exception v2

    .line 1305
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public stopAccessPoint(Ljava/lang/String;)V
    .registers 9
    .param p1, "wlanIface"    # Ljava/lang/String;

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "stopap"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 1624
    .local v2, "args":[Ljava/lang/Object;
    const-string/jumbo v5, "stopAccessPoint Error stopping softap"

    .line 1627
    .local v5, "logMsg":Ljava/lang/String;
    :try_start_17
    const-string/jumbo v1, "softap"

    .line 1628
    const-string/jumbo v4, "Ok"

    .line 1627
    const/16 v3, 0xd6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NetworkManagementService;->executeOrLogWithMessage(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    .line 1629
    const-string/jumbo v0, "STA"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_17 .. :try_end_29} :catch_2a

    .line 1621
    return-void

    .line 1630
    :catch_2a
    move-exception v6

    .line 1631
    .local v6, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v6}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public stopClatd(Ljava/lang/String;)V
    .registers 8
    .param p1, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2615
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2618
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "clatd"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "stop"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1f} :catch_20

    .line 2614
    return-void

    .line 2619
    :catch_20
    move-exception v0

    .line 2620
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public stopHostapd()V
    .registers 7

    .prologue
    .line 3005
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3007
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "softap"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "stophostapd"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1c} :catch_1d

    .line 3004
    return-void

    .line 3008
    :catch_1d
    move-exception v0

    .line 3009
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1427
    return-void
.end method

.method public stopTethering()V
    .registers 7

    .prologue
    .line 1311
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "stop"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1c} :catch_1d

    .line 1310
    return-void

    .line 1314
    :catch_1d
    move-exception v0

    .line 1315
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public systemReady()V
    .registers 8

    .prologue
    .line 359
    sget-boolean v4, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v4, :cond_33

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 361
    .local v2, "start":J
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v2

    .line 363
    .local v0, "delta":J
    const-string/jumbo v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Prepared in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void

    .line 366
    .end local v0    # "delta":J
    .end local v2    # "start":J
    :cond_33
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    .line 358
    return-void
.end method

.method public tetherInterface(Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1337
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v4, "NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    :try_start_b
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "tether"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "interface"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "add"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_25} :catch_3f

    .line 1343
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1346
    .local v1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    new-instance v2, Landroid/net/RouteInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    invoke-virtual {p0, p1, v1}, Lcom/android/server/NetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    .line 1336
    return-void

    .line 1340
    .end local v1    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :catch_3f
    move-exception v0

    .line 1341
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/INetworkActivityListener;

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2645
    return-void
.end method

.method public unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/net/INetworkManagementEventObserver;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 388
    return-void
.end method

.method public untetherInterface(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1352
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "interface"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "remove"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_25} :catch_29

    .line 1358
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    .line 1351
    return-void

    .line 1355
    :catch_29
    move-exception v0

    .line 1356
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "wlanIface"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "fwreload"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 v0, 0x2

    aput-object p2, v2, v0

    .line 1605
    .local v2, "args":[Ljava/lang/Object;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wifiFirmwareReload Error reloading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1606
    const-string/jumbo v1, " fw in "

    .line 1605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1606
    const-string/jumbo v1, " mode"

    .line 1605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1608
    .local v5, "logMsg":Ljava/lang/String;
    :try_start_40
    const-string/jumbo v1, "softap"

    .line 1609
    const-string/jumbo v4, "Ok"

    .line 1608
    const/16 v3, 0xd6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NetworkManagementService;->executeOrLogWithMessage(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_40 .. :try_end_4c} :catch_52

    .line 1617
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->waitForCallbacks()V

    .line 1602
    return-void

    .line 1610
    :catch_52
    move-exception v6

    .line 1611
    .local v6, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v6}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

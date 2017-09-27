.class public Landroid/net/ip/IpReachabilityMonitor;
.super Ljava/lang/Object;
.source "IpReachabilityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpReachabilityMonitor$Callback;,
        Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "IpReachabilityMonitor"

.field private static final VDBG:Z


# instance fields
.field private final mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

.field private final mInterfaceIndex:I

.field private final mInterfaceName:Ljava/lang/String;

.field private mIpWatchList:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetAddress;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private mIpWatchListVersion:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLinkProperties:Landroid/net/LinkProperties;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mNetlinkSocketObserver:Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;

.field private final mObserverThread:Ljava/lang/Thread;

.field private mRunning:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Landroid/net/ip/IpReachabilityMonitor;)I
    .registers 2

    iget v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceIndex:I

    return v0
.end method

.method static synthetic -get1(Landroid/net/ip/IpReachabilityMonitor;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/ip/IpReachabilityMonitor;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/ip/IpReachabilityMonitor;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/net/ip/IpReachabilityMonitor;->mRunning:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/net/ip/IpReachabilityMonitor;Ljava/net/InetAddress;)Z
    .registers 3
    .param p1, "ip"    # Ljava/net/InetAddress;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/IpReachabilityMonitor;->isWatching(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/net/ip/IpReachabilityMonitor;)Z
    .registers 2

    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor;->stillRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/net/ip/IpReachabilityMonitor;Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/IpReachabilityMonitor;->handleNeighborLost(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpReachabilityMonitor$Callback;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/net/ip/IpReachabilityMonitor$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    .line 155
    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    .line 159
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    .line 221
    iput-object p2, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    .line 222
    const/4 v1, -0x1

    .line 224
    .local v1, "ifIndex":I
    :try_start_1b
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    .line 225
    .local v2, "netIf":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v3

    iput v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceIndex:I
    :try_end_25
    .catch Ljava/net/SocketException; {:try_start_1b .. :try_end_25} :catch_64
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_25} :catch_64

    .line 229
    const-string/jumbo v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IpReachabilityMonitor."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 229
    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 231
    iput-object p3, p0, Landroid/net/ip/IpReachabilityMonitor;->mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

    .line 232
    new-instance v3, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;-><init>(Landroid/net/ip/IpReachabilityMonitor;Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;)V

    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mNetlinkSocketObserver:Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;

    .line 233
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mNetlinkSocketObserver:Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mObserverThread:Ljava/lang/Thread;

    .line 234
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mObserverThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 220
    return-void

    .line 226
    .end local v2    # "netIf":Ljava/net/NetworkInterface;
    :catch_64
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid interface \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private describeWatchList()Ljava/lang/String;
    .registers 9

    .prologue
    .line 246
    const-string/jumbo v0, ", "

    .line 247
    .local v0, "delimiter":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 249
    :try_start_b
    const-string/jumbo v5, "iface{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "}, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string/jumbo v5, "v{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchListVersion:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "}, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string/jumbo v5, "ntable=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const/4 v3, 0x1

    .line 253
    .local v3, "firstTime":Z
    iget-object v5, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 254
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    if-eqz v3, :cond_88

    .line 255
    const/4 v3, 0x0

    .line 259
    :goto_5e
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 260
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    invoke-static {v5}, Landroid/net/netlink/StructNdMsg;->stringForNudState(S)Ljava/lang/String;

    move-result-object v5

    .line 259
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_84
    .catchall {:try_start_b .. :try_end_84} :catchall_85

    goto :goto_4f

    .line 248
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "firstTime":Z
    :catchall_85
    move-exception v5

    monitor-exit v6

    throw v5

    .line 257
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    .restart local v3    # "firstTime":Z
    :cond_88
    :try_start_88
    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5e

    .line 262
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    :cond_8f
    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_95
    .catchall {:try_start_88 .. :try_end_95} :catchall_85

    monitor-exit v6

    .line 264
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getNeighborStateLocked(Ljava/net/InetAddress;)S
    .registers 3
    .param p1, "ip"    # Ljava/net/InetAddress;

    .prologue
    .line 289
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 290
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0

    .line 292
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private getProbeWakeLockDuration(Z)J
    .registers 12
    .param p1, "extendedDuration"    # Z

    .prologue
    .line 436
    const-wide/16 v2, 0x3

    .line 437
    .local v2, "numUnicastProbes":J
    if-eqz p1, :cond_6

    const-wide/16 v2, 0x6

    .line 438
    :cond_6
    const-wide/16 v4, 0x3e8

    .line 439
    .local v4, "retransTimeMs":J
    const-wide/16 v0, 0x1f4

    .line 440
    .local v0, "gracePeriodMs":J
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x1f4

    add-long/2addr v6, v8

    return-wide v6
.end method

.method private handleNeighborLost(Ljava/lang/String;)V
    .registers 14
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 339
    const/4 v4, 0x0

    .line 341
    .local v4, "ip":Ljava/net/InetAddress;
    iget-object v10, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 342
    :try_start_4
    new-instance v8, Landroid/net/LinkProperties;

    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v8, v9}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 344
    .local v8, "whatIfLp":Landroid/net/LinkProperties;
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "ip":Ljava/net/InetAddress;
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 345
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Short;

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v9

    const/16 v11, 0x20

    if-ne v9, v11, :cond_15

    .line 349
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/InetAddress;

    move-object v4, v0

    .line 350
    .local v4, "ip":Ljava/net/InetAddress;
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "route$iterator":Ljava/util/Iterator;
    :cond_41
    :goto_41
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 351
    .local v6, "route":Landroid/net/RouteInfo;
    invoke-virtual {v6}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_41

    .line 352
    invoke-virtual {v8, v6}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z
    :try_end_5a
    .catchall {:try_start_4 .. :try_end_5a} :catchall_5b

    goto :goto_41

    .line 341
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "ip":Ljava/net/InetAddress;
    .end local v6    # "route":Landroid/net/RouteInfo;
    .end local v7    # "route$iterator":Ljava/util/Iterator;
    .end local v8    # "whatIfLp":Landroid/net/LinkProperties;
    :catchall_5b
    move-exception v9

    monitor-exit v10

    throw v9

    .line 355
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .restart local v3    # "entry$iterator":Ljava/util/Iterator;
    .restart local v4    # "ip":Ljava/net/InetAddress;
    .restart local v7    # "route$iterator":Ljava/util/Iterator;
    .restart local v8    # "whatIfLp":Landroid/net/LinkProperties;
    :cond_5e
    :try_start_5e
    invoke-virtual {v8, v4}, Landroid/net/LinkProperties;->removeDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_15

    .line 358
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .end local v4    # "ip":Ljava/net/InetAddress;
    .end local v7    # "route$iterator":Ljava/util/Iterator;
    :cond_62
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v9, v8}, Landroid/net/LinkProperties;->compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_5b

    move-result-object v1

    .local v1, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    monitor-exit v10

    .line 361
    sget-object v9, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v1, v9, :cond_96

    .line 362
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/metrics/IpReachabilityEvent;->logProvisioningLost(Ljava/lang/String;)V

    .line 363
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "FAILURE: LOST_PROVISIONING, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 364
    .local v5, "logMsg":Ljava/lang/String;
    const-string/jumbo v9, "IpReachabilityMonitor"

    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

    if-eqz v9, :cond_95

    .line 368
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

    invoke-interface {v9, v4, v5}, Landroid/net/ip/IpReachabilityMonitor$Callback;->notifyLost(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 338
    .end local v5    # "logMsg":Ljava/lang/String;
    :cond_95
    :goto_95
    return-void

    .line 371
    :cond_96
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/metrics/IpReachabilityEvent;->logNudFailed(Ljava/lang/String;)V

    goto :goto_95
.end method

.method private static isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z
    .registers 5
    .param p1, "ip"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;",
            "Ljava/net/InetAddress;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "route$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 281
    .local v0, "route":Landroid/net/RouteInfo;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, p1}, Landroid/net/RouteInfo;->matches(Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 282
    const/4 v2, 0x1

    return v2

    .line 285
    .end local v0    # "route":Landroid/net/RouteInfo;
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method private isWatching(Ljava/net/InetAddress;)Z
    .registers 4
    .param p1, "ip"    # Ljava/net/InetAddress;

    .prologue
    .line 268
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_3
    iget-boolean v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mRunning:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result v0

    :goto_d
    monitor-exit v1

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    .line 268
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static probeNeighbor(ILjava/net/InetAddress;)I
    .registers 23
    .param p0, "ifIndex"    # I
    .param p1, "ip"    # Ljava/net/InetAddress;

    .prologue
    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "probing ip="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 177
    .local v16, "msgSnippet":Ljava/lang/String;
    const/4 v4, 0x1

    const/16 v5, 0x10

    const/4 v6, 0x0

    .line 176
    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-static {v4, v0, v5, v1, v6}, Landroid/net/netlink/RtNetlinkNeighborMessage;->newNewNeighborMessage(ILjava/net/InetAddress;SI[B)[B

    move-result-object v3

    .line 179
    .local v3, "msg":[B
    sget v4, Landroid/system/OsConstants;->EPROTO:I

    neg-int v15, v4

    .line 180
    .local v15, "errno":I
    const/16 v19, 0x0

    const/16 v17, 0x0

    .local v17, "nlSocket":Landroid/net/netlink/NetlinkSocket;
    :try_start_38
    new-instance v2, Landroid/net/netlink/NetlinkSocket;

    sget v4, Landroid/system/OsConstants;->NETLINK_ROUTE:I

    invoke-direct {v2, v4}, Landroid/net/netlink/NetlinkSocket;-><init>(I)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3f} :catch_180
    .catchall {:try_start_38 .. :try_end_3f} :catchall_176

    .line 181
    .end local v17    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    .local v2, "nlSocket":Landroid/net/netlink/NetlinkSocket;
    const-wide/16 v8, 0x12c

    .line 182
    .local v8, "IO_TIMEOUT":J
    :try_start_41
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkSocket;->connectToKernel()V

    .line 183
    array-length v5, v3

    const/4 v4, 0x0

    const-wide/16 v6, 0x12c

    invoke-virtual/range {v2 .. v7}, Landroid/net/netlink/NetlinkSocket;->sendMessage([BIIJ)Z

    .line 184
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/net/netlink/NetlinkSocket;->recvMessage(J)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 186
    .local v10, "bytes":Ljava/nio/ByteBuffer;
    invoke-static {v10}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v18

    .line 187
    .local v18, "response":Landroid/net/netlink/NetlinkMessage;
    if-eqz v18, :cond_c9

    move-object/from16 v0, v18

    instance-of v4, v0, Landroid/net/netlink/NetlinkErrorMessage;

    if-eqz v4, :cond_c9

    .line 188
    move-object/from16 v0, v18

    check-cast v0, Landroid/net/netlink/NetlinkErrorMessage;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object v4

    if-eqz v4, :cond_c9

    .line 189
    move-object/from16 v0, v18

    check-cast v0, Landroid/net/netlink/NetlinkErrorMessage;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object v4

    iget v15, v4, Landroid/net/netlink/StructNlMsgErr;->error:I

    .line 190
    if-eqz v15, :cond_a0

    .line 194
    const-string/jumbo v4, "IpReachabilityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", errmsg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_a0} :catch_10f
    .catchall {:try_start_41 .. :try_end_a0} :catchall_17c

    .line 215
    :cond_a0
    :goto_a0
    if-eqz v2, :cond_a5

    :try_start_a2
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkSocket;->close()V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_a5} :catch_145
    .catch Landroid/system/ErrnoException; {:try_start_a2 .. :try_end_a5} :catch_a8
    .catch Ljava/io/InterruptedIOException; {:try_start_a2 .. :try_end_a5} :catch_11f
    .catch Ljava/net/SocketException; {:try_start_a2 .. :try_end_a5} :catch_153

    :cond_a5
    :goto_a5
    if-eqz v19, :cond_c8

    :try_start_a7
    throw v19
    :try_end_a8
    .catch Landroid/system/ErrnoException; {:try_start_a7 .. :try_end_a8} :catch_a8
    .catch Ljava/io/InterruptedIOException; {:try_start_a7 .. :try_end_a8} :catch_11f
    .catch Ljava/net/SocketException; {:try_start_a7 .. :try_end_a8} :catch_153

    .line 206
    .end local v8    # "IO_TIMEOUT":J
    .end local v10    # "bytes":Ljava/nio/ByteBuffer;
    .end local v18    # "response":Landroid/net/netlink/NetlinkMessage;
    :catch_a8
    move-exception v11

    .line 207
    .local v11, "e":Landroid/system/ErrnoException;
    const-string/jumbo v4, "IpReachabilityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    iget v4, v11, Landroid/system/ErrnoException;->errno:I

    neg-int v15, v4

    .line 216
    .end local v11    # "e":Landroid/system/ErrnoException;
    :cond_c8
    :goto_c8
    return v15

    .line 198
    .restart local v8    # "IO_TIMEOUT":J
    .restart local v10    # "bytes":Ljava/nio/ByteBuffer;
    .restart local v18    # "response":Landroid/net/netlink/NetlinkMessage;
    :cond_c9
    if-nez v18, :cond_140

    .line 199
    const/4 v4, 0x0

    :try_start_cc
    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "raw bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v10}, Landroid/net/netlink/NetlinkConstants;->hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 204
    .local v14, "errmsg":Ljava/lang/String;
    :goto_e7
    const-string/jumbo v4, "IpReachabilityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", errmsg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catch Ljava/lang/Throwable; {:try_start_cc .. :try_end_10e} :catch_10f
    .catchall {:try_start_cc .. :try_end_10e} :catchall_17c

    goto :goto_a0

    .line 215
    .end local v10    # "bytes":Ljava/nio/ByteBuffer;
    .end local v14    # "errmsg":Ljava/lang/String;
    .end local v18    # "response":Landroid/net/netlink/NetlinkMessage;
    :catch_10f
    move-exception v4

    .end local v8    # "IO_TIMEOUT":J
    :goto_110
    :try_start_110
    throw v4
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_111

    :catchall_111
    move-exception v5

    move-object/from16 v20, v5

    move-object v5, v4

    move-object/from16 v4, v20

    :goto_117
    if-eqz v2, :cond_11c

    :try_start_119
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkSocket;->close()V
    :try_end_11c
    .catch Ljava/lang/Throwable; {:try_start_119 .. :try_end_11c} :catch_148
    .catch Landroid/system/ErrnoException; {:try_start_119 .. :try_end_11c} :catch_a8
    .catch Ljava/io/InterruptedIOException; {:try_start_119 .. :try_end_11c} :catch_11f
    .catch Ljava/net/SocketException; {:try_start_119 .. :try_end_11c} :catch_153

    :cond_11c
    :goto_11c
    if-eqz v5, :cond_175

    :try_start_11e
    throw v5
    :try_end_11f
    .catch Landroid/system/ErrnoException; {:try_start_11e .. :try_end_11f} :catch_a8
    .catch Ljava/io/InterruptedIOException; {:try_start_11e .. :try_end_11f} :catch_11f
    .catch Ljava/net/SocketException; {:try_start_11e .. :try_end_11f} :catch_153

    .line 209
    :catch_11f
    move-exception v12

    .line 210
    .local v12, "e":Ljava/io/InterruptedIOException;
    const-string/jumbo v4, "IpReachabilityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    sget v4, Landroid/system/OsConstants;->ETIMEDOUT:I

    neg-int v15, v4

    goto :goto_c8

    .line 202
    .end local v12    # "e":Ljava/io/InterruptedIOException;
    .restart local v8    # "IO_TIMEOUT":J
    .restart local v10    # "bytes":Ljava/nio/ByteBuffer;
    .restart local v18    # "response":Landroid/net/netlink/NetlinkMessage;
    :cond_140
    :try_start_140
    invoke-virtual/range {v18 .. v18}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;
    :try_end_143
    .catch Ljava/lang/Throwable; {:try_start_140 .. :try_end_143} :catch_10f
    .catchall {:try_start_140 .. :try_end_143} :catchall_17c

    move-result-object v14

    .restart local v14    # "errmsg":Ljava/lang/String;
    goto :goto_e7

    .line 215
    .end local v14    # "errmsg":Ljava/lang/String;
    :catch_145
    move-exception v19

    goto/16 :goto_a5

    .end local v8    # "IO_TIMEOUT":J
    .end local v10    # "bytes":Ljava/nio/ByteBuffer;
    .end local v18    # "response":Landroid/net/netlink/NetlinkMessage;
    :catch_148
    move-exception v6

    if-nez v5, :cond_14d

    move-object v5, v6

    goto :goto_11c

    :cond_14d
    if-eq v5, v6, :cond_11c

    :try_start_14f
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_152
    .catch Landroid/system/ErrnoException; {:try_start_14f .. :try_end_152} :catch_a8
    .catch Ljava/io/InterruptedIOException; {:try_start_14f .. :try_end_152} :catch_11f
    .catch Ljava/net/SocketException; {:try_start_14f .. :try_end_152} :catch_153

    goto :goto_11c

    .line 212
    :catch_153
    move-exception v13

    .line 213
    .local v13, "e":Ljava/net/SocketException;
    const-string/jumbo v4, "IpReachabilityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    sget v4, Landroid/system/OsConstants;->EIO:I

    neg-int v15, v4

    goto/16 :goto_c8

    .line 215
    .end local v13    # "e":Ljava/net/SocketException;
    :cond_175
    :try_start_175
    throw v4
    :try_end_176
    .catch Landroid/system/ErrnoException; {:try_start_175 .. :try_end_176} :catch_a8
    .catch Ljava/io/InterruptedIOException; {:try_start_175 .. :try_end_176} :catch_11f
    .catch Ljava/net/SocketException; {:try_start_175 .. :try_end_176} :catch_153

    .end local v2    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    .restart local v17    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    :catchall_176
    move-exception v4

    move-object/from16 v5, v19

    move-object/from16 v2, v17

    .restart local v2    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    goto :goto_117

    .end local v17    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    .restart local v8    # "IO_TIMEOUT":J
    :catchall_17c
    move-exception v4

    move-object/from16 v5, v19

    goto :goto_117

    .end local v2    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    .end local v8    # "IO_TIMEOUT":J
    .restart local v17    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    :catch_180
    move-exception v4

    move-object/from16 v2, v17

    .restart local v2    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    goto :goto_110
.end method

.method private stillRunning()Z
    .registers 3

    .prologue
    .line 274
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_3
    iget-boolean v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mRunning:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 274
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clearLinkProperties()V
    .registers 3

    .prologue
    .line 330
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 331
    :try_start_3
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 332
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 333
    iget v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchListVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchListVersion:I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v1

    .line 329
    return-void

    .line 330
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public probeAll()V
    .registers 9

    .prologue
    .line 376
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 377
    .local v0, "ipProbeList":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetAddress;>;"
    iget-object v5, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 378
    :try_start_8
    iget-object v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_3f

    monitor-exit v5

    .line 381
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor;->stillRunning()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 388
    iget-object v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Landroid/net/ip/IpReachabilityMonitor;->getProbeWakeLockDuration(Z)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 391
    :cond_28
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "target$iterator":Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 392
    .local v2, "target":Ljava/net/InetAddress;
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor;->stillRunning()Z

    move-result v4

    if-nez v4, :cond_42

    .line 375
    .end local v2    # "target":Ljava/net/InetAddress;
    :cond_3e
    return-void

    .line 377
    .end local v3    # "target$iterator":Ljava/util/Iterator;
    :catchall_3f
    move-exception v4

    monitor-exit v5

    throw v4

    .line 395
    .restart local v2    # "target":Ljava/net/InetAddress;
    .restart local v3    # "target$iterator":Ljava/util/Iterator;
    :cond_42
    iget v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceIndex:I

    invoke-static {v4, v2}, Landroid/net/ip/IpReachabilityMonitor;->probeNeighbor(ILjava/net/InetAddress;)I

    move-result v1

    .line 396
    .local v1, "returnValue":I
    iget-object v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/net/metrics/IpReachabilityEvent;->logProbeEvent(Ljava/lang/String;I)V

    goto :goto_2c
.end method

.method public probeAllforBTcoex()V
    .registers 9

    .prologue
    .line 402
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 403
    .local v0, "ipProbeList":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetAddress;>;"
    iget-object v5, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 404
    :try_start_8
    iget-object v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_3f

    monitor-exit v5

    .line 407
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor;->stillRunning()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 414
    iget-object v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Landroid/net/ip/IpReachabilityMonitor;->getProbeWakeLockDuration(Z)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 417
    :cond_28
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "target$iterator":Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 418
    .local v2, "target":Ljava/net/InetAddress;
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor;->stillRunning()Z

    move-result v4

    if-nez v4, :cond_42

    .line 401
    .end local v2    # "target":Ljava/net/InetAddress;
    :cond_3e
    return-void

    .line 403
    .end local v3    # "target$iterator":Ljava/util/Iterator;
    :catchall_3f
    move-exception v4

    monitor-exit v5

    throw v4

    .line 421
    .restart local v2    # "target":Ljava/net/InetAddress;
    .restart local v3    # "target$iterator":Ljava/util/Iterator;
    :cond_42
    iget v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceIndex:I

    invoke-static {v4, v2}, Landroid/net/ip/IpReachabilityMonitor;->probeNeighbor(ILjava/net/InetAddress;)I

    move-result v1

    .line 422
    .local v1, "returnValue":I
    iget-object v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/net/metrics/IpReachabilityEvent;->logProbeEvent(Ljava/lang/String;I)V

    goto :goto_2c
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 238
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mRunning:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_10

    monitor-exit v0

    .line 239
    invoke-virtual {p0}, Landroid/net/ip/IpReachabilityMonitor;->clearLinkProperties()V

    .line 240
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mNetlinkSocketObserver:Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;

    invoke-static {v0}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->-wrap0(Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;)V

    .line 237
    return-void

    .line 238
    :catchall_10
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public updateLinkProperties(Landroid/net/LinkProperties;)V
    .registers 12
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 296
    iget-object v7, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_38

    .line 298
    const-string/jumbo v7, "IpReachabilityMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "requested LinkProperties interface \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 299
    const-string/jumbo v9, "\' does not match: "

    .line 298
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 299
    iget-object v9, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    .line 298
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void

    .line 303
    :cond_38
    iget-object v8, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 304
    :try_start_3b
    new-instance v7, Landroid/net/LinkProperties;

    invoke-direct {v7, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v7, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    .line 305
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 307
    .local v3, "newIpWatchList":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    iget-object v7, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v6

    .line 308
    .local v6, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "route$iterator":Ljava/util/Iterator;
    :cond_51
    :goto_51
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 309
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v7

    if-eqz v7, :cond_51

    .line 310
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    .line 311
    .local v0, "gw":Ljava/net/InetAddress;
    invoke-static {v6, v0}, Landroid/net/ip/IpReachabilityMonitor;->isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 312
    invoke-direct {p0, v0}, Landroid/net/ip/IpReachabilityMonitor;->getNeighborStateLocked(Ljava/net/InetAddress;)S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_78
    .catchall {:try_start_3b .. :try_end_78} :catchall_79

    goto :goto_51

    .line 303
    .end local v0    # "gw":Ljava/net/InetAddress;
    .end local v3    # "newIpWatchList":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .end local v4    # "route":Landroid/net/RouteInfo;
    .end local v5    # "route$iterator":Ljava/util/Iterator;
    .end local v6    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :catchall_79
    move-exception v7

    monitor-exit v8

    throw v7

    .line 317
    .restart local v3    # "newIpWatchList":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .restart local v5    # "route$iterator":Ljava/util/Iterator;
    .restart local v6    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :cond_7c
    :try_start_7c
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "nameserver$iterator":Ljava/util/Iterator;
    :cond_84
    :goto_84
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 318
    .local v1, "nameserver":Ljava/net/InetAddress;
    invoke-static {v6, v1}, Landroid/net/ip/IpReachabilityMonitor;->isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z

    move-result v7

    if-eqz v7, :cond_84

    .line 319
    invoke-direct {p0, v1}, Landroid/net/ip/IpReachabilityMonitor;->getNeighborStateLocked(Ljava/net/InetAddress;)S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v3, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_84

    .line 323
    .end local v1    # "nameserver":Ljava/net/InetAddress;
    :cond_a2
    iput-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    .line 324
    iget v7, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchListVersion:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchListVersion:I
    :try_end_aa
    .catchall {:try_start_7c .. :try_end_aa} :catchall_79

    monitor-exit v8

    .line 295
    return-void
.end method

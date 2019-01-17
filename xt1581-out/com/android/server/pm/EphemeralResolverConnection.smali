.class final Lcom/android/server/pm/EphemeralResolverConnection;
.super Ljava/lang/Object;
.source "EphemeralResolverConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;,
        Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;
    }
.end annotation


# static fields
.field private static final BIND_SERVICE_TIMEOUT_MS:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGetEphemeralResolveInfoCaller:Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

.field private final mIntent:Landroid/content/Intent;

.field private final mLock:Ljava/lang/Object;

.field private mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/EphemeralResolverConnection;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/EphemeralResolverConnection;Lcom/android/internal/app/IEphemeralResolver;)Lcom/android/internal/app/IEphemeralResolver;
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 50
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x12c

    :goto_d
    int-to-long v0, v0

    .line 49
    sput-wide v0, Lcom/android/server/pm/EphemeralResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    .line 47
    return-void

    .line 50
    :cond_11
    const/16 v0, 0xc8

    goto :goto_d
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

    invoke-direct {v0}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mGetEphemeralResolveInfoCaller:Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

    .line 55
    new-instance v0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;-><init>(Lcom/android/server/pm/EphemeralResolverConnection;Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;)V

    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 63
    iput-object p1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mIntent:Landroid/content/Intent;

    .line 62
    return-void
.end method

.method private bindLocked()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;

    if-eqz v3, :cond_5

    .line 111
    return-void

    .line 114
    :cond_5
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mIntent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 115
    sget-object v10, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const v11, 0x4000001

    .line 114
    invoke-virtual {v3, v8, v9, v11, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 119
    .local v6, "startMillis":J
    :goto_17
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;

    if-eqz v3, :cond_21

    .line 134
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 109
    return-void

    .line 122
    :cond_21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v6

    .line 123
    .local v0, "elapsedMillis":J
    sget-wide v8, Lcom/android/server/pm/EphemeralResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    sub-long v4, v8, v0

    .line 124
    .local v4, "remainingMillis":J
    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-gtz v3, :cond_3a

    .line 125
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    const-string/jumbo v8, "Didn\'t bind to resolver in time."

    invoke-direct {v3, v8}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    :cond_3a
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3f} :catch_40

    goto :goto_17

    .line 129
    :catch_40
    move-exception v2

    .local v2, "ie":Ljava/lang/InterruptedException;
    goto :goto_17
.end method

.method private getRemoteInstanceLazy()Lcom/android/internal/app/IEphemeralResolver;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;

    if-eqz v0, :cond_b

    .line 102
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    monitor-exit v1

    return-object v0

    .line 104
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->bindLocked()V

    .line 105
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 100
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private throwIfCalledOnMainThread()V
    .registers 3

    .prologue
    .line 138
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_19

    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot invoke on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_19
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 84
    :try_start_3
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string/jumbo v4, "bound="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    .line 85
    iget-object v2, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Lcom/android/internal/app/IEphemeralResolver;

    if-eqz v2, :cond_32

    const-string/jumbo v2, "true"

    .line 84
    :goto_15
    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 87
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_36

    .line 90
    :try_start_1f
    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->getRemoteInstanceLazy()Lcom/android/internal/app/IEphemeralResolver;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/app/IEphemeralResolver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-interface {v2, p1, v4}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1f .. :try_end_30} :catch_39
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_30} :catch_3b
    .catchall {:try_start_1f .. :try_end_30} :catchall_36

    :goto_30
    monitor-exit v3

    .line 82
    return-void

    .line 85
    :cond_32
    :try_start_32
    const-string/jumbo v2, "false"
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_15

    .line 83
    :catchall_36
    move-exception v2

    monitor-exit v3

    throw v2

    .line 91
    :catch_39
    move-exception v1

    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    goto :goto_30

    .line 93
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_3b
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_30
.end method

.method public final getEphemeralResolveInfoList(I)Ljava/util/List;
    .registers 7
    .param p1, "hashPrefix"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->throwIfCalledOnMainThread()V

    .line 70
    :try_start_3
    iget-object v2, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mGetEphemeralResolveInfoCaller:Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

    .line 71
    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->getRemoteInstanceLazy()Lcom/android/internal/app/IEphemeralResolver;

    move-result-object v3

    .line 70
    invoke-virtual {v2, v3, p1}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;->getEphemeralResolveInfoList(Lcom/android/internal/app/IEphemeralResolver;I)Ljava/util/List;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_c} :catch_1a
    .catchall {:try_start_3 .. :try_end_c} :catchall_36

    move-result-object v2

    .line 75
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 76
    :try_start_10
    iget-object v4, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_17

    monitor-exit v3

    .line 70
    return-object v2

    .line 75
    :catchall_17
    move-exception v2

    monitor-exit v3

    throw v2

    .line 73
    :catch_1a
    move-exception v1

    .line 75
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 76
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_26

    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :goto_23
    monitor-exit v3

    .line 79
    const/4 v2, 0x0

    return-object v2

    .line 75
    .restart local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_26
    move-exception v2

    monitor-exit v3

    throw v2

    .line 72
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_29
    move-exception v0

    .line 75
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 76
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_33

    goto :goto_23

    .line 75
    :catchall_33
    move-exception v2

    monitor-exit v3

    throw v2

    .line 74
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_36
    move-exception v2

    .line 75
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 76
    :try_start_3a
    iget-object v4, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_41

    monitor-exit v3

    .line 74
    throw v2

    .line 75
    :catchall_41
    move-exception v2

    monitor-exit v3

    throw v2
.end method

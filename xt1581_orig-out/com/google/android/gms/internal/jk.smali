.class public Lcom/google/android/gms/internal/jk;
.super Lcom/google/android/gms/common/internal/i;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jk$a;,
        Lcom/google/android/gms/internal/jk$b;,
        Lcom/google/android/gms/internal/jk$c;,
        Lcom/google/android/gms/internal/jk$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/i",
        "<",
        "Lcom/google/android/gms/internal/kp;",
        ">;"
    }
.end annotation


# instance fields
.field private final Hj:Ljava/lang/Object;

.field private Hk:Lcom/google/android/gms/internal/jb;

.field private Hl:Lcom/google/android/gms/internal/km;

.field private Hm:Lcom/google/android/gms/internal/kf;

.field private Hn:Lcom/google/android/gms/internal/kb;

.field private Ho:Lcom/google/android/gms/internal/jj;

.field private final Hp:Ljava/util/HashMap;

.field private Hq:Lcom/google/android/gms/internal/ke;

.field private Hr:Lcom/google/android/gms/internal/je;

.field private final Hs:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final Ht:Lcom/google/android/gms/internal/iy$d;

.field private final Hu:Lcom/google/android/gms/internal/jk$d;

.field private final Hv:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field private Hw:Lcom/google/android/gms/internal/jk$c;

.field private Hx:Lcom/google/android/gms/internal/jk$a;

.field private Hy:Lcom/google/android/gms/internal/kp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/iy$d;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 13

    const/4 v6, 0x0

    new-array v5, v6, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hj:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hp:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hs:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/google/android/gms/internal/jk$d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jk$d;-><init>(Lcom/google/android/gms/internal/jk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hu:Lcom/google/android/gms/internal/jk$d;

    new-instance v0, Lcom/google/android/gms/internal/jk$b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jk$b;-><init>(Lcom/google/android/gms/internal/jk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hv:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hv:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jk;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/jk;->Ht:Lcom/google/android/gms/internal/iy$d;

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hu:Lcom/google/android/gms/internal/jk$d;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/jk$d;->a(Lcom/google/android/gms/internal/iy$d;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/jk;)Lcom/google/android/gms/internal/jk$d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hu:Lcom/google/android/gms/internal/jk$d;

    return-object v0
.end method

.method private a(Landroid/os/RemoteException;)V
    .registers 5

    const-string/jumbo v0, "CAR.CLIENT"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1f

    :goto_a
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hs:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hu:Lcom/google/android/gms/internal/jk$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jk$d;->onDisconnected()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->isConnected()Z

    move-result v0

    if-nez v0, :cond_53

    :goto_1e
    return-void

    :cond_1f
    const-string/jumbo v0, "CAR.CLIENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remote exception from car service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_3e
    const-string/jumbo v0, "CAR.CLIENT"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_49

    :goto_48
    return-void

    :cond_49
    const-string/jumbo v0, "CAR.CLIENT"

    const-string/jumbo v1, "Already handling a remote exception, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_53
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->disconnect()V

    goto :goto_1e
.end method

.method static synthetic a(Lcom/google/android/gms/internal/jk;Landroid/os/RemoteException;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/jk;->a(Landroid/os/RemoteException;)V

    return-void
.end method

.method public static a(Ljava/lang/IllegalStateException;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/kg;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CarNotConnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    throw p0

    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/kg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kg;-><init>()V

    throw v0
.end method

.method private b(Landroid/os/RemoteException;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/kg;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/jk;->a(Landroid/os/RemoteException;)V

    new-instance v0, Lcom/google/android/gms/internal/kg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kg;-><init>()V

    throw v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/jk;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/jk;->gn()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/jk;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/jk;->gp()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/jk;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/jk;->fY()V

    return-void
.end method

.method private fY()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/jk;->gm()V

    return-void
.end method

.method private gm()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/jk;->Hj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hk:Lcom/google/android/gms/internal/jb;

    if-nez v0, :cond_26

    :goto_7
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hl:Lcom/google/android/gms/internal/km;

    if-nez v0, :cond_32

    :goto_b
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hq:Lcom/google/android/gms/internal/ke;

    if-nez v0, :cond_3b

    :goto_f
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hr:Lcom/google/android/gms/internal/je;

    if-nez v0, :cond_44

    :goto_13
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hm:Lcom/google/android/gms/internal/kf;

    if-nez v0, :cond_4d

    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hn:Lcom/google/android/gms/internal/kb;

    if-nez v0, :cond_56

    :goto_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Ho:Lcom/google/android/gms/internal/jj;

    if-nez v0, :cond_5f

    :goto_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hk:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jb;->fY()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hk:Lcom/google/android/gms/internal/jb;

    goto :goto_7

    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0

    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hl:Lcom/google/android/gms/internal/km;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/km;->fY()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hl:Lcom/google/android/gms/internal/km;

    goto :goto_b

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hq:Lcom/google/android/gms/internal/ke;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ke;->fY()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hq:Lcom/google/android/gms/internal/ke;

    goto :goto_f

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hr:Lcom/google/android/gms/internal/je;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/je;->fY()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hr:Lcom/google/android/gms/internal/je;

    goto :goto_13

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hm:Lcom/google/android/gms/internal/kf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kf;->fY()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hm:Lcom/google/android/gms/internal/kf;

    goto :goto_17

    :cond_56
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hn:Lcom/google/android/gms/internal/kb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kb;->fY()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hn:Lcom/google/android/gms/internal/kb;

    goto :goto_1b

    :cond_5f
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Ho:Lcom/google/android/gms/internal/jj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jj;->fY()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Ho:Lcom/google/android/gms/internal/jj;
    :try_end_67
    .catchall {:try_start_32 .. :try_end_67} :catchall_2f

    goto :goto_1f
.end method

.method private declared-synchronized gn()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hx:Lcom/google/android/gms/internal/jk$a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_34

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Lcom/google/android/gms/internal/jk$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jk$a;-><init>(Lcom/google/android/gms/internal/jk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hx:Lcom/google/android/gms/internal/jk$a;
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_34

    :try_start_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->iB()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kp;

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hy:Lcom/google/android/gms/internal/kp;

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hy:Lcom/google/android/gms/internal/kp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/kp;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jk;->Hx:Lcom/google/android/gms/internal/jk$a;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_22} :catch_23
    .catchall {:try_start_e .. :try_end_22} :catchall_34

    goto :goto_5

    :catch_23
    move-exception v0

    :try_start_24
    const-string/jumbo v0, "CAR.CLIENT"

    const-string/jumbo v1, "Unable to link death recipient to ICar."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hx:Lcom/google/android/gms/internal/jk$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hy:Lcom/google/android/gms/internal/kp;
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_34

    goto :goto_5

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized go()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hx:Lcom/google/android/gms/internal/jk$a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    if-nez v0, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hy:Lcom/google/android/gms/internal/kp;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_1e

    if-eqz v0, :cond_5

    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hy:Lcom/google/android/gms/internal/kp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/kp;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jk;->Hx:Lcom/google/android/gms/internal/jk$a;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_17
    .catch Ljava/util/NoSuchElementException; {:try_start_b .. :try_end_17} :catch_21
    .catchall {:try_start_b .. :try_end_17} :catchall_1e

    :goto_17
    const/4 v0, 0x0

    :try_start_18
    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hx:Lcom/google/android/gms/internal/jk$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hy:Lcom/google/android/gms/internal/kp;
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1e

    goto :goto_5

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_21
    move-exception v0

    goto :goto_17
.end method

.method private gp()V
    .registers 3

    const-string/jumbo v0, "CAR.CLIENT"

    const-string/jumbo v1, "ICar died!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hu:Lcom/google/android/gms/internal/jk$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jk$d;->onDisconnected()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/jk;->go()V

    return-void
.end method


# virtual methods
.method protected N(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kp;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/kp$a;->O(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kp;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/android/gms/common/internal/q;Lcom/google/android/gms/common/internal/i$d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "client_name"

    const-string/jumbo v2, "car-1-0"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x6768a8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/q;->o(Lcom/google/android/gms/common/internal/p;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected bO()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.gms.car.service.START"

    return-object v0
.end method

.method protected bP()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.gms.car.ICar"

    return-object v0
.end method

.method public connect()V
    .registers 3

    const-string/jumbo v0, "CAR.CLIENT"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_e

    :goto_a
    invoke-super {p0}, Lcom/google/android/gms/common/internal/i;->connect()V

    return-void

    :cond_e
    const-string/jumbo v0, "CAR.CLIENT"

    const-string/jumbo v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public disconnect()V
    .registers 4

    const/4 v1, 0x0

    const-string/jumbo v0, "CAR.CLIENT"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1d

    :goto_b
    invoke-direct {p0}, Lcom/google/android/gms/internal/jk;->go()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/jk;->gm()V

    :try_start_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->iB()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kp;
    :try_end_17
    .catch Landroid/os/DeadObjectException; {:try_start_11 .. :try_end_17} :catch_27
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_17} :catch_27

    :goto_17
    if-nez v0, :cond_2a

    :cond_19
    :goto_19
    invoke-super {p0}, Lcom/google/android/gms/common/internal/i;->disconnect()V

    return-void

    :cond_1d
    const-string/jumbo v0, "CAR.CLIENT"

    const-string/jumbo v2, "disconnect"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :catch_27
    move-exception v0

    move-object v0, v1

    goto :goto_17

    :cond_2a
    :try_start_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/jk;->Hu:Lcom/google/android/gms/internal/jk$d;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/kp;->b(Lcom/google/android/gms/internal/lb;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2f} :catch_3e

    :goto_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/jk;->Hw:Lcom/google/android/gms/internal/jk$c;

    if-eqz v1, :cond_19

    :try_start_33
    iget-object v1, p0, Lcom/google/android/gms/internal/jk;->Hw:Lcom/google/android/gms/internal/jk$c;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/kp;->b(Lcom/google/android/gms/internal/kq;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hw:Lcom/google/android/gms/internal/jk$c;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3b} :catch_3c

    goto :goto_19

    :catch_3c
    move-exception v0

    goto :goto_19

    :catch_3e
    move-exception v1

    goto :goto_2f
.end method

.method public gk()Z
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_12

    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->iB()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/kp;->gk()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_13

    move-result v0

    return v0

    :cond_12
    return v1

    :catch_13
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jk;->a(Landroid/os/RemoteException;)V

    return v1
.end method

.method public gl()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/kg;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->dZ()V

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->iB()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/kp;->gl()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_c} :catch_14

    move-result v0

    return v0

    :catch_e
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jk;->b(Landroid/os/RemoteException;)V

    :goto_12
    const/4 v0, -0x1

    return v0

    :catch_14
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/internal/jk;->a(Ljava/lang/IllegalStateException;)V

    goto :goto_12
.end method

.method protected synthetic m(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jk;->N(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kp;

    move-result-object v0

    return-object v0
.end method

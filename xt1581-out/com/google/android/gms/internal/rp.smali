.class public Lcom/google/android/gms/internal/rp;
.super Lcom/google/android/gms/common/internal/i;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/i",
        "<",
        "Lcom/google/android/gms/internal/ri;",
        ">;"
    }
.end annotation


# instance fields
.field private final DE:Ljava/lang/String;

.field private final aqT:Lcom/google/android/gms/internal/rm;

.field private final aqU:Lcom/google/android/gms/internal/rk;

.field private aqV:Z

.field private final mK:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/rm;)V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p2, v0}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/c$a;Lcom/google/android/gms/common/c$b;[Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/rp;->DE:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rm;

    iput-object v0, p0, Lcom/google/android/gms/internal/rp;->aqT:Lcom/google/android/gms/internal/rm;

    iget-object v0, p0, Lcom/google/android/gms/internal/rp;->aqT:Lcom/google/android/gms/internal/rm;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/rm;->a(Lcom/google/android/gms/internal/rp;)V

    new-instance v0, Lcom/google/android/gms/internal/rk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/rk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/rp;->aqU:Lcom/google/android/gms/internal/rk;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/rp;->mK:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/rp;->aqV:Z

    return-void
.end method

.method private c(Lcom/google/android/gms/internal/rn;Lcom/google/android/gms/internal/rj;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/rp;->aqU:Lcom/google/android/gms/internal/rk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/rk;->a(Lcom/google/android/gms/internal/rn;Lcom/google/android/gms/internal/rj;)V

    return-void
.end method

.method private d(Lcom/google/android/gms/internal/rn;Lcom/google/android/gms/internal/rj;)V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/rp;->pK()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rp;->iB()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ri;

    iget-object v1, p0, Lcom/google/android/gms/internal/rp;->DE:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ri;->a(Ljava/lang/String;Lcom/google/android/gms/internal/rn;Lcom/google/android/gms/internal/rj;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_e} :catch_1d

    :goto_e
    return-void

    :catch_f
    move-exception v0

    const-string/jumbo v0, "PlayLoggerImpl"

    const-string/jumbo v1, "Couldn\'t send log event.  Will try caching."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/rp;->c(Lcom/google/android/gms/internal/rn;Lcom/google/android/gms/internal/rj;)V

    goto :goto_e

    :catch_1d
    move-exception v0

    const-string/jumbo v0, "PlayLoggerImpl"

    const-string/jumbo v1, "Service was disconnected.  Will try caching."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/rp;->c(Lcom/google/android/gms/internal/rn;Lcom/google/android/gms/internal/rj;)V

    goto :goto_e
.end method

.method private pK()V
    .registers 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/rp;->aqV:Z

    if-eqz v1, :cond_12

    :goto_6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->L(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/rp;->aqU:Lcom/google/android/gms/internal/rk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rk;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_11
    return-void

    :cond_12
    const/4 v0, 0x1

    goto :goto_6

    :cond_14
    :try_start_14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/rp;->aqU:Lcom/google/android/gms/internal/rk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rk;->pI()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8c

    :goto_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/rp;->aqU:Lcom/google/android/gms/internal/rk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rk;->clear()V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_34} :catch_35

    goto :goto_11

    :catch_35
    move-exception v0

    const-string/jumbo v0, "PlayLoggerImpl"

    const-string/jumbo v1, "Couldn\'t send cached log events to AndroidLog service.  Retaining in memory cache."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_40
    :try_start_40
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rk$a;

    iget-object v1, v0, Lcom/google/android/gms/internal/rk$a;->aqK:Lcom/google/android/gms/internal/tt$d;

    if-nez v1, :cond_62

    iget-object v1, v0, Lcom/google/android/gms/internal/rk$a;->aqI:Lcom/google/android/gms/internal/rn;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/rn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7d

    :goto_58
    iget-object v1, v0, Lcom/google/android/gms/internal/rk$a;->aqI:Lcom/google/android/gms/internal/rn;

    iget-object v0, v0, Lcom/google/android/gms/internal/rk$a;->aqJ:Lcom/google/android/gms/internal/rj;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    :goto_60
    move-object v2, v0

    goto :goto_23

    :cond_62
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rp;->iB()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ri;

    iget-object v5, p0, Lcom/google/android/gms/internal/rp;->DE:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/rk$a;->aqI:Lcom/google/android/gms/internal/rn;

    iget-object v0, v0, Lcom/google/android/gms/internal/rk$a;->aqK:Lcom/google/android/gms/internal/tt$d;

    invoke-static {v0}, Lcom/google/android/gms/internal/tp;->f(Lcom/google/android/gms/internal/tp;)[B

    move-result-object v0

    invoke-interface {v1, v5, v6, v0}, Lcom/google/android/gms/internal/ri;->a(Ljava/lang/String;Lcom/google/android/gms/internal/rn;[B)V

    goto :goto_23

    :cond_76
    iget-object v0, v0, Lcom/google/android/gms/internal/rk$a;->aqJ:Lcom/google/android/gms/internal/rj;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    goto :goto_60

    :cond_7d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rp;->iB()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ri;

    iget-object v5, p0, Lcom/google/android/gms/internal/rp;->DE:Ljava/lang/String;

    invoke-interface {v1, v5, v2, v3}, Lcom/google/android/gms/internal/ri;->a(Ljava/lang/String;Lcom/google/android/gms/internal/rn;Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_58

    :cond_8c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rp;->iB()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ri;

    iget-object v1, p0, Lcom/google/android/gms/internal/rp;->DE:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ri;->a(Ljava/lang/String;Lcom/google/android/gms/internal/rn;Ljava/util/List;)V
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_97} :catch_35

    goto :goto_2f
.end method


# virtual methods
.method U(Z)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/rp;->mK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/rp;->aqV:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/rp;->aqV:Z

    if-nez v0, :cond_b

    :cond_9
    :goto_9
    monitor-exit v1

    return-void

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/rp;->aqV:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/gms/internal/rp;->pK()V

    goto :goto_9

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
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

    const v1, 0x6768a8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/q;->f(Lcom/google/android/gms/common/internal/p;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/rn;Lcom/google/android/gms/internal/rj;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/rp;->mK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/rp;->aqV:Z

    if-nez v0, :cond_c

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/rp;->d(Lcom/google/android/gms/internal/rn;Lcom/google/android/gms/internal/rj;)V

    :goto_a
    monitor-exit v1

    return-void

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/rp;->c(Lcom/google/android/gms/internal/rn;Lcom/google/android/gms/internal/rj;)V

    goto :goto_a

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method protected bO()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.gms.playlog.service.START"

    return-object v0
.end method

.method protected bP()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.gms.playlog.internal.IPlayLogService"

    return-object v0
.end method

.method protected cq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ri;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/ri$a;->cp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ri;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic m(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rp;->cq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ri;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/rp;->mK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rp;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    monitor-exit v1

    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rp;->isConnected()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/rp;->aqT:Lcom/google/android/gms/internal/rm;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/rm;->T(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rp;->connect()V

    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public stop()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/rp;->mK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/rp;->aqT:Lcom/google/android/gms/internal/rm;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/rm;->T(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rp;->disconnect()V

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.class public final Lcom/google/android/gms/common/internal/j;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/j$a;
    }
.end annotation


# instance fields
.field private final Qb:Lcom/google/android/gms/common/internal/j$a;

.field private final Qc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field final Qd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private Qe:Z

.field private final Qf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/j$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/j;->Qc:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/j;->Qd:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/j;->Qe:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/j;->Qf:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/j;->Qb:Lcom/google/android/gms/common/internal/j$a;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/j;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/c$b;)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/j;->Qf:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->Qf:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->Qf:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_13
    monitor-exit v1

    return-void

    :cond_15
    const-string/jumbo v0, "GmsClientEvents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerConnectionFailedListener(): listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_6 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public b(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/j;->Qf:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/j;->Qf:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    monitor-exit v1

    return-void

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/c$b;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/j;->Qb:Lcom/google/android/gms/common/internal/j$a;

    invoke-interface {v3}, Lcom/google/android/gms/common/internal/j$a;->hQ()Z

    move-result v3

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/google/android/gms/common/internal/j;->Qf:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/c$b;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_14

    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_36

    throw v0

    :cond_39
    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_36

    return-void
.end method

.method public b(Lcom/google/android/gms/common/c$b;)Z
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/j;->Qf:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->Qf:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public bl(I)V
    .registers 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/j;->Qc:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/j;->Qe:Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/j;->Qc:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->Qd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/j;->Qe:Z

    monitor-exit v1

    return-void

    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/j;->Qb:Lcom/google/android/gms/common/internal/j$a;

    invoke-interface {v3}, Lcom/google/android/gms/common/internal/j$a;->hQ()Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/google/android/gms/common/internal/j;->Qc:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;->onConnectionSuspended(I)V

    goto :goto_17

    :catchall_41
    move-exception v0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_a .. :try_end_43} :catchall_41

    throw v0
.end method

.method public c(Lcom/google/android/gms/common/c$b;)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/j;->Qf:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->Qf:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_e
    monitor-exit v1

    return-void

    :cond_10
    const-string/jumbo v0, "GmsClientEvents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterConnectionFailedListener(): listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw v0
.end method

.method protected eb()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/common/internal/j;->Qc:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->Qb:Lcom/google/android/gms/common/internal/j$a;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/j$a;->hb()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/j;->f(Landroid/os/Bundle;)V

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public f(Landroid/os/Bundle;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/common/internal/j;->Qc:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_5
    iget-boolean v2, p0, Lcom/google/android/gms/common/internal/j;->Qe:Z

    if-eqz v2, :cond_3c

    move v2, v0

    :goto_a
    invoke-static {v2}, Lcom/google/android/gms/common/internal/u;->L(Z)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/j;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/common/internal/j;->Qe:Z

    iget-object v2, p0, Lcom/google/android/gms/common/internal/j;->Qd:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3e

    :goto_1e
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->L(Z)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/j;->Qc:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2c
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_40

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->Qd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/j;->Qe:Z

    monitor-exit v3

    return-void

    :cond_3c
    move v2, v1

    goto :goto_a

    :cond_3e
    move v0, v1

    goto :goto_1e

    :cond_40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/j;->Qb:Lcom/google/android/gms/common/internal/j$a;

    invoke-interface {v2}, Lcom/google/android/gms/common/internal/j$a;->hQ()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/google/android/gms/common/internal/j;->Qb:Lcom/google/android/gms/common/internal/j$a;

    invoke-interface {v2}, Lcom/google/android/gms/common/internal/j$a;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/google/android/gms/common/internal/j;->Qd:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    goto :goto_2c

    :catchall_62
    move-exception v0

    monitor-exit v3
    :try_end_64
    .catchall {:try_start_5 .. :try_end_64} :catchall_62

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v3, :cond_10

    const-string/jumbo v0, "GmsClientEvents"

    const-string/jumbo v1, "Don\'t know how to handle this message."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/j;->Qc:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_17
    iget-object v2, p0, Lcom/google/android/gms/common/internal/j;->Qb:Lcom/google/android/gms/common/internal/j$a;

    invoke-interface {v2}, Lcom/google/android/gms/common/internal/j$a;->hQ()Z

    move-result v2

    if-nez v2, :cond_21

    :cond_1f
    :goto_1f
    monitor-exit v1

    return v3

    :cond_21
    iget-object v2, p0, Lcom/google/android/gms/common/internal/j;->Qb:Lcom/google/android/gms/common/internal/j$a;

    invoke-interface {v2}, Lcom/google/android/gms/common/internal/j$a;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/google/android/gms/common/internal/j;->Qc:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/google/android/gms/common/internal/j;->Qb:Lcom/google/android/gms/common/internal/j$a;

    invoke-interface {v2}, Lcom/google/android/gms/common/internal/j$a;->hb()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    goto :goto_1f

    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_17 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/j;->Qc:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->Qc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/j;->Qc:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->Qc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->Qc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_3f

    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->Qb:Lcom/google/android/gms/common/internal/j$a;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/j$a;->isConnected()Z

    move-result v0

    if-nez v0, :cond_42

    :goto_1c
    return-void

    :cond_1d
    :try_start_1d
    const-string/jumbo v0, "GmsClientEvents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerConnectionCallbacks(): listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_1d .. :try_end_41} :catchall_3f

    throw v0

    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/j;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1c
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/j;->Qc:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->Qc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/j;->Qe:Z

    if-nez v0, :cond_39

    :goto_12
    monitor-exit v1

    return-void

    :cond_14
    const-string/jumbo v0, "GmsClientEvents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterConnectionCallbacks(): listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_6 .. :try_end_38} :catchall_36

    throw v0

    :cond_39
    :try_start_39
    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->Qd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_36

    goto :goto_12
.end method

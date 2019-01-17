.class public Lcom/google/android/gms/internal/jd;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jd$a;
    }
.end annotation


# instance fields
.field private final GA:Lcom/google/android/gms/internal/jd$a;

.field private volatile GB:Z

.field private final Gu:Lcom/google/android/gms/internal/jb;

.field private final Gx:I

.field private final Gz:Lcom/google/android/gms/internal/kv;

.field private final mHandler:Landroid/os/Handler;

.field private mPlayState:I


# direct methods
.method static synthetic a(Lcom/google/android/gms/internal/jd;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/jd;->fZ()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/jd;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/jd;->ad(I)V

    return-void
.end method

.method private declared-synchronized ac(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/gms/internal/jd;->mPlayState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ad(I)V
    .registers 6

    const/4 v3, 0x2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_15

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jd;->ac(I)V

    :goto_8
    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/jd;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_15
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/jd;->ac(I)V

    goto :goto_8
.end method

.method private fZ()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/jd;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->Gz:Lcom/google/android/gms/internal/kv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/kv;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jd;->GB:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->Gu:Lcom/google/android/gms/internal/jb;

    iget v1, p0, Lcom/google/android/gms/internal/jd;->Gx:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->aa(I)V

    return-void
.end method

.method public declared-synchronized release()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/jd;->GB:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->Gu:Lcom/google/android/gms/internal/jb;

    iget v1, p0, Lcom/google/android/gms/internal/jd;->Gx:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->aa(I)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_24

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->Gz:Lcom/google/android/gms/internal/kv;

    iget-object v1, p0, Lcom/google/android/gms/internal/jd;->GA:Lcom/google/android/gms/internal/jd$a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/kv;->a(Lcom/google/android/gms/internal/kw;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_27
    .catchall {:try_start_c .. :try_end_13} :catchall_24

    :goto_13
    :try_start_13
    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->Gz:Lcom/google/android/gms/internal/kv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/kv;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jd;->GB:Z
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_24

    monitor-exit p0

    return-void

    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_27
    move-exception v0

    goto :goto_13
.end method

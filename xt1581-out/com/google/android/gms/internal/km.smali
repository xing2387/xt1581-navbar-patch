.class public Lcom/google/android/gms/internal/km;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/km$a;
    }
.end annotation


# instance fields
.field private IJ:Lcom/google/android/gms/internal/km$a;

.field private final IK:Ljava/util/HashMap;

.field private final IL:Ljava/util/HashMap;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private a(Lcom/google/android/gms/internal/kk;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/km;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/km;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/kk;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/km;->a(Lcom/google/android/gms/internal/kk;)V

    return-void
.end method


# virtual methods
.method fY()V
    .registers 3

    const-string/jumbo v0, "CAR.SENSOR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_20

    :goto_a
    iget-object v1, p0, Lcom/google/android/gms/internal/km;->IK:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/km;->IK:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/km;->IJ:Lcom/google/android/gms/internal/km$a;

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_2a

    iget-object v1, p0, Lcom/google/android/gms/internal/km;->IL:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_19
    iget-object v0, p0, Lcom/google/android/gms/internal/km;->IL:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_2d

    return-void

    :cond_20
    const-string/jumbo v0, "CAR.SENSOR"

    const-string/jumbo v1, "handleCarDisconnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0

    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

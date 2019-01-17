.class Lcom/google/android/gms/internal/jk$d;
.super Lcom/google/android/gms/internal/lb$a;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final HB:Ljava/lang/Object;

.field private HD:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/iy$d;",
            ">;"
        }
    .end annotation
.end field

.field private volatile HE:Z

.field private final Hz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/jk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/jk;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/lb$a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jk$d;->HE:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jk$d;->HB:Ljava/lang/Object;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jk$d;->Hz:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/iy$d;I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/jk$d;->Hz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jk;

    if-eqz v0, :cond_21

    const-string/jumbo v1, "CAR.CLIENT"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_22

    :goto_14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/jk;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/jk$d$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/gms/internal/jk$d$1;-><init>(Lcom/google/android/gms/internal/jk$d;Lcom/google/android/gms/internal/jk;Lcom/google/android/gms/internal/iy$d;I)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lr;->a(Landroid/os/Looper;Ljava/lang/Runnable;)V

    return-void

    :cond_21
    return-void

    :cond_22
    const-string/jumbo v1, "CAR.CLIENT"

    const-string/jumbo v2, "ICarConnectionListenerImpl.notifyCarConnectionToClient"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private b(Lcom/google/android/gms/internal/iy$d;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/jk$d;->Hz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jk;

    if-eqz v0, :cond_21

    const-string/jumbo v1, "CAR.CLIENT"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_22

    :goto_14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/jk;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/jk$d$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/jk$d$2;-><init>(Lcom/google/android/gms/internal/jk$d;Lcom/google/android/gms/internal/jk;Lcom/google/android/gms/internal/iy$d;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lr;->a(Landroid/os/Looper;Ljava/lang/Runnable;)V

    return-void

    :cond_21
    return-void

    :cond_22
    const-string/jumbo v1, "CAR.CLIENT"

    const-string/jumbo v2, "ICarConnectionListenerImpl.notifyCarDisconnectionToClient"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method


# virtual methods
.method public Y(I)V
    .registers 7

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string/jumbo v3, "CAR.CLIENT"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_5f

    :goto_d
    iget-object v4, p0, Lcom/google/android/gms/internal/jk$d;->HB:Ljava/lang/Object;

    monitor-enter v4

    :try_start_10
    iget-object v3, p0, Lcom/google/android/gms/internal/jk$d;->HD:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_69

    iget-object v0, p0, Lcom/google/android/gms/internal/jk$d;->HD:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/iy$d;

    move-object v3, v0

    :goto_1d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/jk$d;->HE:Z

    if-eqz v0, :cond_6b

    :cond_21
    move v0, v1

    :goto_22
    monitor-exit v4
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_72

    if-nez v0, :cond_75

    const-string/jumbo v1, "CAR.CLIENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not notifying car connection [listener="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", shouldNotify="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mConnectionNotified="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/jk$d;->HE:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5e
    return-void

    :cond_5f
    const-string/jumbo v3, "CAR.CLIENT"

    const-string/jumbo v4, "ICarConnectionListenerImpl.onConnected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_69
    move-object v3, v0

    goto :goto_1d

    :cond_6b
    if-eqz v3, :cond_21

    const/4 v0, 0x1

    :try_start_6e
    iput-boolean v0, p0, Lcom/google/android/gms/internal/jk$d;->HE:Z

    move v0, v2

    goto :goto_22

    :catchall_72
    move-exception v0

    monitor-exit v4
    :try_end_74
    .catchall {:try_start_6e .. :try_end_74} :catchall_72

    throw v0

    :cond_75
    invoke-direct {p0, v3, p1}, Lcom/google/android/gms/internal/jk$d;->a(Lcom/google/android/gms/internal/iy$d;I)V

    goto :goto_5e
.end method

.method public a(Lcom/google/android/gms/internal/iy$d;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/jk$d;->Hz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jk;

    if-eqz v0, :cond_29

    iget-object v3, p0, Lcom/google/android/gms/internal/jk$d;->HB:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    :try_start_10
    iput-boolean v4, p0, Lcom/google/android/gms/internal/jk$d;->HE:Z

    if-eqz p1, :cond_2a

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/jk$d;->HD:Ljava/lang/ref/WeakReference;

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_2f

    :try_start_1c
    iget-object v3, p0, Lcom/google/android/gms/internal/jk$d;->HB:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1f
    .catch Lcom/google/android/gms/internal/kg; {:try_start_1c .. :try_end_1f} :catch_3e

    :try_start_1f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/jk;->gk()Z

    move-result v4

    if-nez v4, :cond_32

    :cond_25
    :goto_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_3b

    if-nez v1, :cond_40

    :goto_28
    return-void

    :cond_29
    return-void

    :cond_2a
    const/4 v0, 0x0

    :try_start_2b
    iput-object v0, p0, Lcom/google/android/gms/internal/jk$d;->HD:Ljava/lang/ref/WeakReference;

    monitor-exit v3

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_2f

    throw v0

    :cond_32
    :try_start_32
    iget-boolean v4, p0, Lcom/google/android/gms/internal/jk$d;->HE:Z

    if-nez v4, :cond_25

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/jk$d;->HE:Z

    move v1, v2

    goto :goto_25

    :catchall_3b
    move-exception v0

    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v0

    :catch_3e
    move-exception v0

    goto :goto_28

    :cond_40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/jk;->gl()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/jk$d;->a(Lcom/google/android/gms/internal/iy$d;I)V
    :try_end_47
    .catch Lcom/google/android/gms/internal/kg; {:try_start_3d .. :try_end_47} :catch_3e

    goto :goto_28
.end method

.method public onDisconnected()V
    .registers 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/jk$d;->Hz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jk;

    if-eqz v0, :cond_33

    const-string/jumbo v3, "CAR.CLIENT"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_34

    :goto_16
    iget-object v3, p0, Lcom/google/android/gms/internal/jk$d;->HB:Ljava/lang/Object;

    monitor-enter v3

    :try_start_19
    iget-boolean v4, p0, Lcom/google/android/gms/internal/jk$d;->HE:Z

    if-nez v4, :cond_3e

    :goto_1d
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/gms/internal/jk$d;->HE:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/jk$d;->HD:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/jk$d;->HD:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/iy$d;

    :cond_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_40

    invoke-static {v0}, Lcom/google/android/gms/internal/jk;->d(Lcom/google/android/gms/internal/jk;)V

    if-nez v1, :cond_43

    :cond_32
    :goto_32
    return-void

    :cond_33
    return-void

    :cond_34
    const-string/jumbo v3, "CAR.CLIENT"

    const-string/jumbo v4, "ICarConnectionListenerImpl.onDisconnected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_3e
    const/4 v2, 0x1

    goto :goto_1d

    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0

    :cond_43
    if-eqz v2, :cond_32

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/jk$d;->b(Lcom/google/android/gms/internal/iy$d;)V

    goto :goto_32
.end method

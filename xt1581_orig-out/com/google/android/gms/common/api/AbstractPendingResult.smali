.class public abstract Lcom/google/android/gms/common/api/AbstractPendingResult;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/AbstractPendingResult$CallbackHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/PendingResult",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final Mm:Ljava/lang/Object;

.field private final Mn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/PendingResult$BatchCallback;",
            ">;"
        }
    .end annotation
.end field

.field private Mo:Lcom/google/android/gms/common/api/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<TR;>;"
        }
    .end annotation
.end field

.field private volatile Mp:Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private volatile Mq:Z

.field private Mr:Z

.field private Ms:Z

.field private Mt:Lcom/google/android/gms/common/internal/ICancelToken;

.field protected final mHandler:Lcom/google/android/gms/common/api/AbstractPendingResult$CallbackHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/AbstractPendingResult$CallbackHandler",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final mt:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mm:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->mt:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mn:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gms/common/api/AbstractPendingResult$CallbackHandler;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/AbstractPendingResult$CallbackHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->mHandler:Lcom/google/android/gms/common/api/AbstractPendingResult$CallbackHandler;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/common/api/AbstractPendingResult$CallbackHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/AbstractPendingResult$CallbackHandler",
            "<TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mm:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->mt:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mn:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->mHandler:Lcom/google/android/gms/common/api/AbstractPendingResult$CallbackHandler;

    return-void
.end method

.method private a(Lcom/google/android/gms/common/api/Result;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mp:Lcom/google/android/gms/common/api/Result;

    iput-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mt:Lcom/google/android/gms/common/internal/ICancelToken;

    iget-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->mt:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mp:Lcom/google/android/gms/common/api/Result;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mo:Lcom/google/android/gms/common/api/ResultCallback;

    if-nez v0, :cond_26

    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->mHandler:Lcom/google/android/gms/common/api/AbstractPendingResult$CallbackHandler;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/AbstractPendingResult$CallbackHandler;->removeTimeoutMessages()V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mr:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->mHandler:Lcom/google/android/gms/common/api/AbstractPendingResult$CallbackHandler;

    iget-object v2, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mo:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->hC()Lcom/google/android/gms/common/api/Result;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/api/AbstractPendingResult$CallbackHandler;->sendResultCallback(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    goto :goto_14

    :cond_3b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/PendingResult$BatchCallback;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult$BatchCallback;->l(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1a
.end method

.method static b(Lcom/google/android/gms/common/api/Result;)V
    .registers 6

    instance-of v1, p0, Lcom/google/android/gms/common/api/Releasable;

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/Releasable;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Releasable;->release()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_4

    :catch_d
    move-exception v1

    const-string/jumbo v2, "AbstractPendingResult"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to release "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private hC()Lcom/google/android/gms/common/api/Result;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mm:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    iget-boolean v3, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mq:Z

    if-eqz v3, :cond_29

    :goto_9
    const-string/jumbo v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->isReady()Z

    move-result v0

    const-string/jumbo v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mp:Lcom/google/android/gms/common/api/Result;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mp:Lcom/google/android/gms/common/api/Result;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mo:Lcom/google/android/gms/common/api/ResultCallback;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mq:Z

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_2b

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->onResultConsumed()V

    return-object v0

    :cond_29
    move v0, v1

    goto :goto_9

    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method private hD()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mm:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->isReady()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_9
    monitor-exit v1

    return-void

    :cond_b
    sget-object v0, Lcom/google/android/gms/common/api/Status;->Nz:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Ms:Z

    goto :goto_9

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method


# virtual methods
.method public final addBatchCallback(Lcom/google/android/gms/common/api/PendingResult$BatchCallback;)V
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mq:Z

    if-eqz v1, :cond_1b

    :goto_5
    const-string/jumbo v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mm:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->isReady()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_19
    monitor-exit v1

    return-void

    :cond_1b
    const/4 v0, 0x1

    goto :goto_5

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mp:Lcom/google/android/gms/common/api/Result;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/PendingResult$BatchCallback;->l(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_19

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_27

    throw v0
.end method

.method public final await()Lcom/google/android/gms/common/api/Result;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_31

    move v0, v1

    :goto_d
    const-string/jumbo v3, "await must not be called on the UI thread"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mq:Z

    if-eqz v0, :cond_33

    :goto_17
    const-string/jumbo v0, "Result has already been consumed"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    :try_start_1d
    iget-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->mt:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_22} :catch_35

    :goto_22
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->isReady()Z

    move-result v0

    const-string/jumbo v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->hC()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_31
    move v0, v2

    goto :goto_d

    :cond_33
    move v1, v2

    goto :goto_17

    :catch_35
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->hD()V

    goto :goto_22
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gtz v0, :cond_3d

    move v0, v2

    :goto_9
    if-nez v0, :cond_3f

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_3f

    move v0, v1

    :goto_16
    const-string/jumbo v3, "await must not be called on the UI thread when time is greater than zero."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mq:Z

    if-eqz v0, :cond_41

    :goto_20
    const-string/jumbo v0, "Result has already been consumed."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    :try_start_26
    iget-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->mt:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2b} :catch_47

    move-result v0

    if-eqz v0, :cond_43

    :goto_2e
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->isReady()Z

    move-result v0

    const-string/jumbo v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->hC()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_3d
    move v0, v1

    goto :goto_9

    :cond_3f
    move v0, v2

    goto :goto_16

    :cond_41
    move v1, v2

    goto :goto_20

    :cond_43
    :try_start_43
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->hE()V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_2e

    :catch_47
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->hD()V

    goto :goto_2e
.end method

.method public cancel()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mm:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mr:Z

    if-eqz v0, :cond_9

    :cond_7
    monitor-exit v1

    return-void

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mq:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mt:Lcom/google/android/gms/common/internal/ICancelToken;

    if-nez v0, :cond_27

    :goto_11
    iget-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mp:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->b(Lcom/google/android/gms/common/api/Result;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mo:Lcom/google/android/gms/common/api/ResultCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mr:Z

    sget-object v0, Lcom/google/android/gms/common/api/Status;->NC:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->a(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2f

    return-void

    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mt:Lcom/google/android/gms/common/internal/ICancelToken;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/ICancelToken;->cancel()V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_2d
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2f

    goto :goto_11

    :catch_2d
    move-exception v0

    goto :goto_11

    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method protected abstract createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation
.end method

.method hE()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mm:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->isReady()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_9
    monitor-exit v1

    return-void

    :cond_b
    sget-object v0, Lcom/google/android/gms/common/api/Status;->NB:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Ms:Z

    goto :goto_9

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public isCanceled()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mm:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mr:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final isReady()Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->mt:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected onResultConsumed()V
    .registers 1

    return-void
.end method

.method protected final setCancelToken(Lcom/google/android/gms/common/internal/ICancelToken;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mm:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mt:Lcom/google/android/gms/common/internal/ICancelToken;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final setResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mm:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Ms:Z

    if-eqz v2, :cond_e

    :cond_9
    invoke-static {p1}, Lcom/google/android/gms/common/api/AbstractPendingResult;->b(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v3

    return-void

    :cond_e
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mr:Z

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2e

    move v2, v0

    :goto_19
    const-string/jumbo v4, "Results have already been set"

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mq:Z

    if-eqz v2, :cond_30

    :goto_23
    const-string/jumbo v1, "Result has already been consumed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/AbstractPendingResult;->a(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v3

    return-void

    :cond_2e
    move v2, v1

    goto :goto_19

    :cond_30
    move v0, v1

    goto :goto_23

    :catchall_32
    move-exception v0

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mq:Z

    if-eqz v1, :cond_1e

    :goto_5
    const-string/jumbo v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mm:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->isReady()Z

    move-result v0

    if-nez v0, :cond_22

    iput-object p1, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mo:Lcom/google/android/gms/common/api/ResultCallback;

    :goto_1c
    monitor-exit v1

    return-void

    :cond_1e
    const/4 v0, 0x1

    goto :goto_5

    :cond_20
    monitor-exit v1

    return-void

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->mHandler:Lcom/google/android/gms/common/api/AbstractPendingResult$CallbackHandler;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->hC()Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/AbstractPendingResult$CallbackHandler;->sendResultCallback(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    goto :goto_1c

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mq:Z

    if-eqz v0, :cond_33

    move v0, v1

    :goto_7
    const-string/jumbo v3, "Result has already been consumed."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->mHandler:Lcom/google/android/gms/common/api/AbstractPendingResult$CallbackHandler;

    if-nez v0, :cond_35

    :goto_11
    const-string/jumbo v0, "CallbackHandler has not been set before calling setResultCallback."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mm:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1a
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->isReady()Z

    move-result v0

    if-nez v0, :cond_39

    iput-object p1, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->Mo:Lcom/google/android/gms/common/api/ResultCallback;

    iget-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->mHandler:Lcom/google/android/gms/common/api/AbstractPendingResult$CallbackHandler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/gms/common/api/AbstractPendingResult$CallbackHandler;->sendTimeoutResultCallback(Lcom/google/android/gms/common/api/AbstractPendingResult;J)V

    :goto_31
    monitor-exit v1

    return-void

    :cond_33
    move v0, v2

    goto :goto_7

    :cond_35
    move v1, v2

    goto :goto_11

    :cond_37
    monitor-exit v1

    return-void

    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/common/api/AbstractPendingResult;->mHandler:Lcom/google/android/gms/common/api/AbstractPendingResult$CallbackHandler;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/AbstractPendingResult;->hC()Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/AbstractPendingResult$CallbackHandler;->sendResultCallback(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    goto :goto_31

    :catchall_43
    move-exception v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_1a .. :try_end_45} :catchall_43

    throw v0
.end method

.class public abstract Lcom/google/android/gms/common/api/a$a;
.super Lcom/google/android/gms/common/api/AbstractPendingResult;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/api/a$b;
.implements Lcom/google/android/gms/common/api/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        "A::",
        "Lcom/google/android/gms/common/api/Api$a;",
        ">",
        "Lcom/google/android/gms/common/api/AbstractPendingResult",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/a$b",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/d$d",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private final Mv:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<TA;>;"
        }
    .end annotation
.end field

.field private Mx:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/common/api/d$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/Api$c;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$c",
            "<TA;>;",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/android/gms/common/api/GoogleApiClient;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/AbstractPendingResult;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Mx:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$c;

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Mv:Lcom/google/android/gms/common/api/Api$c;

    return-void
.end method

.method private c(Landroid/os/RemoteException;)V
    .registers 6

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->k(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/common/api/Api$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public a(Lcom/google/android/gms/common/api/d$b;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Mx:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/a$a;->a(Lcom/google/android/gms/common/api/Api$a;)V
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_9

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$a;->c(Landroid/os/RemoteException;)V

    throw v0

    :catch_9
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$a;->c(Landroid/os/RemoteException;)V

    goto :goto_3
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/common/api/Result;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/AbstractPendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final hH()Lcom/google/android/gms/common/api/Api$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api$c",
            "<TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Mv:Lcom/google/android/gms/common/api/Api$c;

    return-object v0
.end method

.method public hI()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final k(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_15

    :goto_7
    const-string/jumbo v1, "Failed result must not be success"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/a$a;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_15
    const/4 v0, 0x1

    goto :goto_7
.end method

.method protected onResultConsumed()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->Mx:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/d$b;

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/d$b;->b(Lcom/google/android/gms/common/api/d$d;)V

    goto :goto_b
.end method

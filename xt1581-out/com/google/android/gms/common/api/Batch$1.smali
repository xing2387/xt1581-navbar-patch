.class Lcom/google/android/gms/common/api/Batch$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$BatchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/Batch;-><init>(Ljava/util/List;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic MC:Lcom/google/android/gms/common/api/Batch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Batch;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/Batch$1;->MC:Lcom/google/android/gms/common/api/Batch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public l(Lcom/google/android/gms/common/api/Status;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->MC:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->a(Lcom/google/android/gms/common/api/Batch;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->MC:Lcom/google/android/gms/common/api/Batch;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Batch;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_36

    :goto_1b
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->MC:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->b(Lcom/google/android/gms/common/api/Batch;)I

    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->MC:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->c(Lcom/google/android/gms/common/api/Batch;)I

    move-result v0

    if-eqz v0, :cond_3d

    :goto_28
    monitor-exit v1

    return-void

    :cond_2a
    monitor-exit v1

    return-void

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->MC:Lcom/google/android/gms/common/api/Batch;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/Batch;->a(Lcom/google/android/gms/common/api/Batch;Z)Z

    goto :goto_1b

    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_33

    throw v0

    :cond_36
    :try_start_36
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->MC:Lcom/google/android/gms/common/api/Batch;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/Batch;->b(Lcom/google/android/gms/common/api/Batch;Z)Z

    goto :goto_1b

    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->MC:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->d(Lcom/google/android/gms/common/api/Batch;)Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->MC:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->f(Lcom/google/android/gms/common/api/Batch;)Z

    move-result v0

    if-nez v0, :cond_66

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Ny:Lcom/google/android/gms/common/api/Status;

    :goto_4f
    iget-object v2, p0, Lcom/google/android/gms/common/api/Batch$1;->MC:Lcom/google/android/gms/common/api/Batch;

    new-instance v3, Lcom/google/android/gms/common/api/BatchResult;

    iget-object v4, p0, Lcom/google/android/gms/common/api/Batch$1;->MC:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v4}, Lcom/google/android/gms/common/api/Batch;->g(Lcom/google/android/gms/common/api/Batch;)[Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/android/gms/common/api/BatchResult;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/Batch;->setResult(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_28

    :cond_60
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->MC:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->e(Lcom/google/android/gms/common/api/Batch;)V

    goto :goto_28

    :cond_66
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
    :try_end_6d
    .catchall {:try_start_36 .. :try_end_6d} :catchall_33

    goto :goto_4f
.end method

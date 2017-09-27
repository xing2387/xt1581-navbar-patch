.class Lcom/google/android/gms/internal/jk$c;
.super Lcom/google/android/gms/internal/kq$a;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final HB:Ljava/lang/Object;

.field private final HC:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/iy$a;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public i(Landroid/content/Intent;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/jk$c;->HB:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/jk$c;->HC:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    monitor-exit v1

    return-void

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/iy$a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/iy$a;->i(Landroid/content/Intent;)V

    goto :goto_9

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public j(Landroid/content/Intent;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/jk$c;->HB:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/jk$c;->HC:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    monitor-exit v1

    return-void

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/iy$a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/iy$a;->j(Landroid/content/Intent;)V

    goto :goto_9

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

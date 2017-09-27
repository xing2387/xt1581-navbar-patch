.class public Lcom/google/android/gms/common/internal/l$b$a;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/l$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic Qq:Lcom/google/android/gms/common/internal/l$b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/l$b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/l$b$a;->Qq:Lcom/google/android/gms/common/internal/l$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b$a;->Qq:Lcom/google/android/gms/common/internal/l$b;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/l$b;->Qp:Lcom/google/android/gms/common/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->a(Lcom/google/android/gms/common/internal/l;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b$a;->Qq:Lcom/google/android/gms/common/internal/l$b;

    invoke-static {v0, p2}, Lcom/google/android/gms/common/internal/l$b;->a(Lcom/google/android/gms/common/internal/l$b;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b$a;->Qq:Lcom/google/android/gms/common/internal/l$b;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/l$b;->a(Lcom/google/android/gms/common/internal/l$b;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b$a;->Qq:Lcom/google/android/gms/common/internal/l$b;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/l$b;->b(Lcom/google/android/gms/common/internal/l$b;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b$a;->Qq:Lcom/google/android/gms/common/internal/l$b;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/l$b;->a(Lcom/google/android/gms/common/internal/l$b;I)I

    monitor-exit v1

    return-void

    :cond_2b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_1d

    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_35

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b$a;->Qq:Lcom/google/android/gms/common/internal/l$b;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/l$b;->Qp:Lcom/google/android/gms/common/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->a(Lcom/google/android/gms/common/internal/l;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b$a;->Qq:Lcom/google/android/gms/common/internal/l$b;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/l$b;->a(Lcom/google/android/gms/common/internal/l$b;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b$a;->Qq:Lcom/google/android/gms/common/internal/l$b;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/l$b;->a(Lcom/google/android/gms/common/internal/l$b;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b$a;->Qq:Lcom/google/android/gms/common/internal/l$b;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/l$b;->b(Lcom/google/android/gms/common/internal/l$b;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b$a;->Qq:Lcom/google/android/gms/common/internal/l$b;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/l$b;->a(Lcom/google/android/gms/common/internal/l$b;I)I

    monitor-exit v1

    return-void

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_1e

    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_36

    throw v0
.end method

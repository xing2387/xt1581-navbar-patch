.class Lcom/google/android/gms/common/api/d$4;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic No:Lcom/google/android/gms/common/api/d;

.field final synthetic Np:Lcom/google/android/gms/common/api/Api$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/Api$b;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/d$4;->No:Lcom/google/android/gms/common/api/d;

    iput-object p2, p0, Lcom/google/android/gms/common/api/d$4;->Np:Lcom/google/android/gms/common/api/Api$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$4;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$4;->No:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$4;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->j(Lcom/google/android/gms/common/api/d;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-nez v0, :cond_42

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$4;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$4;->No:Lcom/google/android/gms/common/api/d;

    iget-object v1, p0, Lcom/google/android/gms/common/api/d$4;->Np:Lcom/google/android/gms/common/api/Api$b;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$b;->getPriority()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/d;->b(Lcom/google/android/gms/common/api/d;I)I

    :goto_29
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$4;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->c(Lcom/google/android/gms/common/api/d;)V
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_51

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$4;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$4;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_42
    :try_start_42
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$4;->Np:Lcom/google/android/gms/common/api/Api$b;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$b;->getPriority()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/d$4;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/d;->k(Lcom/google/android/gms/common/api/d;)I
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_51

    move-result v1

    if-lt v0, v1, :cond_19

    goto :goto_29

    :catchall_51
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/d$4;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

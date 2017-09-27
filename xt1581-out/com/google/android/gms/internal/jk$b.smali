.class Lcom/google/android/gms/internal/jk$b;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic HA:Lcom/google/android/gms/internal/jk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jk;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/jk$b;->HA:Lcom/google/android/gms/internal/jk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "CAR.CLIENT"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_21

    :goto_a
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/jk$b;->HA:Lcom/google/android/gms/internal/jk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jk;->iB()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kp;

    iget-object v1, p0, Lcom/google/android/gms/internal/jk$b;->HA:Lcom/google/android/gms/internal/jk;

    invoke-static {v1}, Lcom/google/android/gms/internal/jk;->a(Lcom/google/android/gms/internal/jk;)Lcom/google/android/gms/internal/jk$d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/kp;->a(Lcom/google/android/gms/internal/lb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jk$b;->HA:Lcom/google/android/gms/internal/jk;

    invoke-static {v0}, Lcom/google/android/gms/internal/jk;->b(Lcom/google/android/gms/internal/jk;)V
    :try_end_20
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_20} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_20} :catch_40

    :cond_20
    :goto_20
    return-void

    :cond_21
    const-string/jumbo v0, "CAR.CLIENT"

    const-string/jumbo v1, "DefaultConnectionCallbacks#onConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catch_2b
    move-exception v0

    const-string/jumbo v0, "CAR.CLIENT"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "CAR.CLIENT"

    const-string/jumbo v1, "service disconnected while onConnected is called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :catch_40
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jk$b;->HA:Lcom/google/android/gms/internal/jk;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/jk;->a(Lcom/google/android/gms/internal/jk;Landroid/os/RemoteException;)V

    goto :goto_20
.end method

.method public onConnectionSuspended(I)V
    .registers 4

    const-string/jumbo v0, "CAR.CLIENT"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    const-string/jumbo v0, "CAR.CLIENT"

    const-string/jumbo v1, "DefaultConnectionCallbacks#onConnectionSuspended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.class public Lcom/google/android/gms/internal/rm;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/c$a;
.implements Lcom/google/android/gms/common/c$b;


# instance fields
.field private aqB:Lcom/google/android/gms/internal/rp;

.field private final aqL:Lcom/google/android/gms/internal/rh$a;

.field private aqM:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/rh$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/rm;->aqL:Lcom/google/android/gms/internal/rh$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/rm;->aqB:Lcom/google/android/gms/internal/rp;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/rm;->aqM:Z

    return-void
.end method


# virtual methods
.method public T(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/rm;->aqM:Z

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/rp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/rm;->aqB:Lcom/google/android/gms/internal/rp;

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/rm;->aqB:Lcom/google/android/gms/internal/rp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/rp;->U(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/rm;->aqM:Z

    if-nez v0, :cond_d

    :cond_a
    :goto_a
    iput-boolean v1, p0, Lcom/google/android/gms/internal/rm;->aqM:Z

    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/rm;->aqL:Lcom/google/android/gms/internal/rh$a;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/rm;->aqL:Lcom/google/android/gms/internal/rh$a;

    invoke-interface {v0}, Lcom/google/android/gms/internal/rh$a;->pG()V

    goto :goto_a
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/rm;->aqB:Lcom/google/android/gms/internal/rp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/rp;->U(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/rm;->aqM:Z

    if-nez v0, :cond_e

    :cond_b
    :goto_b
    iput-boolean v2, p0, Lcom/google/android/gms/internal/rm;->aqM:Z

    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/rm;->aqL:Lcom/google/android/gms/internal/rh$a;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/rm;->aqL:Lcom/google/android/gms/internal/rh$a;

    invoke-interface {v0}, Lcom/google/android/gms/internal/rh$a;->pH()V

    goto :goto_b

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/rm;->aqL:Lcom/google/android/gms/internal/rh$a;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/rh$a;->d(Landroid/app/PendingIntent;)V

    goto :goto_b
.end method

.method public onDisconnected()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/rm;->aqB:Lcom/google/android/gms/internal/rp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/rp;->U(Z)V

    return-void
.end method

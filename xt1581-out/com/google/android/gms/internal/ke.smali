.class public Lcom/google/android/gms/internal/ke;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ke$a;,
        Lcom/google/android/gms/internal/ke$b;
    }
.end annotation


# instance fields
.field private final Im:Lcom/google/android/gms/internal/lg;

.field private final In:Lcom/google/android/gms/internal/ke$a;

.field private volatile Io:Lcom/google/android/gms/internal/ke$b;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic a(Lcom/google/android/gms/internal/ke;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ke;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method fY()V
    .registers 3

    const-string/jumbo v0, "CAR.MSG"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_15

    :goto_a
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ke;->Im:Lcom/google/android/gms/internal/lg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ke;->In:Lcom/google/android/gms/internal/ke$a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/lg;->b(Lcom/google/android/gms/internal/lh;)V
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_11} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_1f

    :goto_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ke;->Io:Lcom/google/android/gms/internal/ke$b;

    return-void

    :cond_15
    const-string/jumbo v0, "CAR.MSG"

    const-string/jumbo v1, "handleCarDisconnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catch_1f
    move-exception v0

    goto :goto_11

    :catch_21
    move-exception v0

    goto :goto_11
.end method

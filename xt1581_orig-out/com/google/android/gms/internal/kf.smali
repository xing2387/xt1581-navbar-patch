.class public Lcom/google/android/gms/internal/kf;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/kf$a;,
        Lcom/google/android/gms/internal/kf$b;
    }
.end annotation


# instance fields
.field private final Ip:Lcom/google/android/gms/internal/li;

.field private Iq:Lcom/google/android/gms/internal/kf$b;

.field private Ir:Lcom/google/android/gms/internal/kf$a;

.field private Is:I

.field private It:I

.field private Iu:I

.field private Iv:I

.field private Iw:I

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private a(IIIII)V
    .registers 9

    const-string/jumbo v0, "CAR.SENSOR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_21

    :goto_a
    iput p1, p0, Lcom/google/android/gms/internal/kf;->Is:I

    iput p2, p0, Lcom/google/android/gms/internal/kf;->It:I

    iput p3, p0, Lcom/google/android/gms/internal/kf;->Iu:I

    iput p4, p0, Lcom/google/android/gms/internal/kf;->Iv:I

    iput p5, p0, Lcom/google/android/gms/internal/kf;->Iw:I

    iget-object v0, p0, Lcom/google/android/gms/internal/kf;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/kf;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_21
    const-string/jumbo v0, "CAR.SENSOR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStart("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method private a(Landroid/os/RemoteException;)V
    .registers 5

    const-string/jumbo v0, "CAR.SENSOR"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    const-string/jumbo v0, "CAR.SENSOR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RemoteException from car service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method static synthetic a(Lcom/google/android/gms/internal/kf;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/kf;->gr()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/kf;IIIII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/kf;->a(IIIII)V

    return-void
.end method

.method private gr()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/kf;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/kf;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method fY()V
    .registers 3

    const-string/jumbo v0, "CAR.SENSOR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_e

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/kf;->gq()V

    return-void

    :cond_e
    const-string/jumbo v0, "CAR.SENSOR"

    const-string/jumbo v1, "handleCarDisconnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public gq()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/kf;->Ip:Lcom/google/android/gms/internal/li;

    iget-object v1, p0, Lcom/google/android/gms/internal/kf;->Iq:Lcom/google/android/gms/internal/kf$b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/li;->b(Lcom/google/android/gms/internal/lj;)Z
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_b

    :goto_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/kf;->Ir:Lcom/google/android/gms/internal/kf$a;

    return-void

    :catch_b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kf;->a(Landroid/os/RemoteException;)V

    goto :goto_7

    :catch_10
    move-exception v0

    goto :goto_7
.end method

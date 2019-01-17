.class public Lcom/google/android/gms/internal/kb;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/kb$a;,
        Lcom/google/android/gms/internal/kb$b;,
        Lcom/google/android/gms/internal/kb$c;
    }
.end annotation


# instance fields
.field private final Ih:Lcom/google/android/gms/internal/lc;

.field private final Ii:Lcom/google/android/gms/internal/kb$a;

.field private Ij:Lcom/google/android/gms/internal/kb$b;

.field private final Ik:Lcom/google/android/gms/internal/le;

.field private final Il:Lcom/google/android/gms/internal/kb$c;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic a(Lcom/google/android/gms/internal/kb;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/kb;->ap(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/kb;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/kb;->f(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/kb;Ljava/lang/String;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/kb;->a(Ljava/lang/String;IZ)V

    return-void
.end method

.method private a(Ljava/lang/String;IZ)V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/kb;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/kb;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    if-nez p3, :cond_10

    :goto_8
    invoke-virtual {v2, v3, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_10
    const/4 v0, 0x1

    goto :goto_8
.end method

.method private ap(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/kb;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/kb;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private f(Ljava/lang/String;I)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/kb;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/kb;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method fY()V
    .registers 3

    const-string/jumbo v0, "CAR.MEDIA"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1c

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/kb;->gq()V

    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/kb;->Ih:Lcom/google/android/gms/internal/lc;

    iget-object v1, p0, Lcom/google/android/gms/internal/kb;->Ii:Lcom/google/android/gms/internal/kb$a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/lc;->b(Lcom/google/android/gms/internal/ld;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_28

    :goto_14
    :try_start_14
    iget-object v0, p0, Lcom/google/android/gms/internal/kb;->Ik:Lcom/google/android/gms/internal/le;

    iget-object v1, p0, Lcom/google/android/gms/internal/kb;->Il:Lcom/google/android/gms/internal/kb$c;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/le;->b(Lcom/google/android/gms/internal/lf;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_26

    :goto_1b
    return-void

    :cond_1c
    const-string/jumbo v0, "CAR.MEDIA"

    const-string/jumbo v1, "handleCarDisconnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catch_26
    move-exception v0

    goto :goto_1b

    :catch_28
    move-exception v0

    goto :goto_14
.end method

.method public gq()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/kb;->Ij:Lcom/google/android/gms/internal/kb$b;

    return-void
.end method

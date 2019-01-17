.class public final Lcom/google/android/gms/common/api/e;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/e$a;,
        Lcom/google/android/gms/common/api/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final Nu:Lcom/google/android/gms/common/api/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/e",
            "<T",
            "L;",
            ">.a;"
        }
    .end annotation
.end field

.field private volatile mListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "T",
            "L;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/common/api/e$a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/e$a;-><init>(Lcom/google/android/gms/common/api/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->Nu:Lcom/google/android/gms/common/api/e$a;

    const-string/jumbo v0, "Listener must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->mListener:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/e$b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/e$b",
            "<-T",
            "L;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "Notifier must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->Nu:Lcom/google/android/gms/common/api/e$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/e$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->Nu:Lcom/google/android/gms/common/api/e$a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/e$a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method b(Lcom/google/android/gms/common/api/e$b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/e$b",
            "<-T",
            "L;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->mListener:Ljava/lang/Object;

    if-eqz v0, :cond_8

    :try_start_4
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e$b;->e(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_c

    :goto_7
    return-void

    :cond_8
    invoke-interface {p1}, Lcom/google/android/gms/common/api/e$b;->hJ()V

    goto :goto_7

    :catch_c
    move-exception v0

    const-string/jumbo v1, "ListenerHolder"

    const-string/jumbo v2, "Notifying listener failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-interface {p1}, Lcom/google/android/gms/common/api/e$b;->hJ()V

    goto :goto_7
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->mListener:Ljava/lang/Object;

    return-void
.end method

.class Lcom/google/android/gms/internal/km$a;
.super Lcom/google/android/gms/internal/lo$a;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/km;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final Hi:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/km;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public b(Lcom/google/android/gms/internal/kk;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/km$a;->Hi:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/km;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/km;->a(Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/kk;)V

    goto :goto_a
.end method

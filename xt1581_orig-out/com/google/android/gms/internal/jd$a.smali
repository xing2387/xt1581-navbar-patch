.class Lcom/google/android/gms/internal/jd$a;
.super Lcom/google/android/gms/internal/kw$a;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final GC:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/jd;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public ae(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/jd$a;->GC:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jd;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/jd;->a(Lcom/google/android/gms/internal/jd;I)V

    goto :goto_a
.end method

.method public ga()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jd$a;->GC:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jd;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {v0}, Lcom/google/android/gms/internal/jd;->a(Lcom/google/android/gms/internal/jd;)V

    goto :goto_a
.end method

.class Lcom/google/android/gms/internal/tf$1$1;
.super Landroid/database/ContentObserver;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/tf$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aCs:Lcom/google/android/gms/internal/tf$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/tf$1;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/tf$1$1;->aCs:Lcom/google/android/gms/internal/tf$1;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    const-class v1, Lcom/google/android/gms/internal/tf;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/tf;->sU()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/tf;->D(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/tf;->sV()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_1b

    :goto_19
    monitor-exit v1

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/tf$1$1;->aCs:Lcom/google/android/gms/internal/tf$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/tf$1;->aCr:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/google/android/gms/internal/tf;->sV()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/tf;->b(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    goto :goto_19

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v0
.end method

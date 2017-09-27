.class abstract Lcom/google/android/gms/common/b$c;
.super Lcom/google/android/gms/common/b$a;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation


# static fields
.field private static final Mc:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private Mb:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/common/b$c;->Mc:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method constructor <init>([B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/b$a;-><init>([B)V

    sget-object v0, Lcom/google/android/gms/common/b$c;->Mc:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/google/android/gms/common/b$c;->Mb:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method getBytes()[B
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/b$c;->Mb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_d

    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/common/b$c;->hz()[B

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/common/b$c;->Mb:Ljava/lang/ref/WeakReference;

    goto :goto_b

    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method protected abstract hz()[B
.end method

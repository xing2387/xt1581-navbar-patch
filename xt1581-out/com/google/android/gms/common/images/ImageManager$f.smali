.class final Lcom/google/android/gms/common/images/ImageManager$f;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation


# instance fields
.field final synthetic OH:Lcom/google/android/gms/common/images/ImageManager;

.field private OK:Z

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mUri:Landroid/net/Uri;

.field private final mt:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$f;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mBitmap:Landroid/graphics/Bitmap;

    iput-boolean p4, p0, Lcom/google/android/gms/common/images/ImageManager$f;->OK:Z

    iput-object p5, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mt:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private a(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;Z)V
    .registers 13

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->a(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    :goto_a
    if-lt v1, v4, :cond_d

    return-void

    :cond_d
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/a;

    if-nez p2, :cond_3f

    iget-object v5, p0, Lcom/google/android/gms/common/images/ImageManager$f;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v5}, Lcom/google/android/gms/common/images/ImageManager;->d(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mUri:Landroid/net/Uri;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/common/images/ImageManager$f;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v5}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/common/images/ImageManager$f;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v6}, Lcom/google/android/gms/common/images/ImageManager;->c(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/ml;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v2}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ml;Z)V

    :goto_37
    instance-of v5, v0, Lcom/google/android/gms/common/images/a$c;

    if-eqz v5, :cond_4b

    :goto_3b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_3f
    iget-object v5, p0, Lcom/google/android/gms/common/images/ImageManager$f;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v5}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5, v6, v2}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    goto :goto_37

    :cond_4b
    iget-object v5, p0, Lcom/google/android/gms/common/images/ImageManager$f;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v5}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v0, 0x0

    const-string/jumbo v1, "OnBitmapLoadedRunnable must be executed in the main thread"

    invoke-static {v1}, Lcom/google/android/gms/common/internal/b;->bd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_39

    move v1, v0

    :goto_c
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$f;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->h(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$b;

    move-result-object v2

    if-nez v2, :cond_3b

    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$f;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->e(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-nez v0, :cond_6c

    :goto_24
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mt:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->ih()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2e
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->ii()Ljava/util/HashSet;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_70

    return-void

    :cond_39
    const/4 v1, 0x1

    goto :goto_c

    :cond_3b
    iget-boolean v2, p0, Lcom/google/android/gms/common/images/ImageManager$f;->OK:Z

    if-nez v2, :cond_54

    if-eqz v1, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$f;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->h(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$b;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/images/a$a;

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mUri:Landroid/net/Uri;

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/images/a$a;-><init>(Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/images/ImageManager$b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_54
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$f;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->h(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/images/ImageManager$b;->evictAll()V

    invoke-static {}, Ljava/lang/System;->gc()V

    iput-boolean v0, p0, Lcom/google/android/gms/common/images/ImageManager$f;->OK:Z

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$f;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->g(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6c
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/images/ImageManager$f;->a(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;Z)V

    goto :goto_24

    :catchall_70
    move-exception v0

    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v0
.end method

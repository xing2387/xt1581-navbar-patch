.class final Lcom/google/android/gms/common/images/ImageManager$d;
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
    name = "d"
.end annotation


# instance fields
.field final synthetic OH:Lcom/google/android/gms/common/images/ImageManager;

.field private final OJ:Lcom/google/android/gms/common/images/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/a;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OJ:Lcom/google/android/gms/common/images/a;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, "LoadImageRunnable must be executed on the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->bd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OJ:Lcom/google/android/gms/common/images/a;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-nez v0, :cond_77

    :goto_18
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OJ:Lcom/google/android/gms/common/images/a;

    iget-object v3, v0, Lcom/google/android/gms/common/images/a;->OL:Lcom/google/android/gms/common/images/a$a;

    iget-object v0, v3, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0, v3}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/a$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_9a

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->d(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v4, v3, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_a6

    :goto_38
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OJ:Lcom/google/android/gms/common/images/a;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->c(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/ml;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ml;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->e(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, v3, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-eqz v0, :cond_da

    :goto_59
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OJ:Lcom/google/android/gms/common/images/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->b(Lcom/google/android/gms/common/images/a;)V

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OJ:Lcom/google/android/gms/common/images/a;

    instance-of v1, v1, Lcom/google/android/gms/common/images/a$c;

    if-eqz v1, :cond_f0

    :goto_64
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->ih()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_69
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->ii()Ljava/util/HashSet;

    move-result-object v2

    iget-object v4, v3, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    :goto_75
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_69 .. :try_end_76} :catchall_10b

    return-void

    :cond_77
    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v3}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OJ:Lcom/google/android/gms/common/images/a;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OJ:Lcom/google/android/gms/common/images/a;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->c(Lcom/google/android/gms/common/images/a;)V

    goto :goto_18

    :cond_88
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OJ:Lcom/google/android/gms/common/images/a;

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v3}, Lcom/google/android/gms/common/images/ImageManager;->c(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/ml;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ml;Z)V

    return-void

    :cond_9a
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OJ:Lcom/google/android/gms/common/images/a;

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v3}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    return-void

    :cond_a6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v0, v4, v6

    if-ltz v0, :cond_cb

    move v0, v1

    :goto_b7
    if-nez v0, :cond_cd

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OJ:Lcom/google/android/gms/common/images/a;

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v3}, Lcom/google/android/gms/common/images/ImageManager;->c(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/ml;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ml;Z)V

    return-void

    :cond_cb
    move v0, v2

    goto :goto_b7

    :cond_cd
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->d(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, v3, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_38

    :cond_da
    new-instance v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OH:Lcom/google/android/gms/common/images/ImageManager;

    iget-object v2, v3, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->e(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v3, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_59

    :cond_f0
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$d;->OJ:Lcom/google/android/gms/common/images/a;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_64

    :cond_fd
    :try_start_fd
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->ii()Ljava/util/HashSet;

    move-result-object v2

    iget-object v3, v3, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->ij()V

    goto/16 :goto_75

    :catchall_10b
    move-exception v0

    monitor-exit v1
    :try_end_10d
    .catchall {:try_start_fd .. :try_end_10d} :catchall_10b

    throw v0
.end method

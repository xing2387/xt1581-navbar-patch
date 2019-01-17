.class public final Lcom/google/android/gms/common/images/ImageManager;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;,
        Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;,
        Lcom/google/android/gms/common/images/ImageManager$a;,
        Lcom/google/android/gms/common/images/ImageManager$b;,
        Lcom/google/android/gms/common/images/ImageManager$c;,
        Lcom/google/android/gms/common/images/ImageManager$d;,
        Lcom/google/android/gms/common/images/ImageManager$e;,
        Lcom/google/android/gms/common/images/ImageManager$f;
    }
.end annotation


# static fields
.field private static final Ow:Ljava/lang/Object;

.field private static Ox:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static Oy:Lcom/google/android/gms/common/images/ImageManager;

.field private static Oz:Lcom/google/android/gms/common/images/ImageManager;


# instance fields
.field private final OA:Ljava/util/concurrent/ExecutorService;

.field private final OB:Lcom/google/android/gms/common/images/ImageManager$b;

.field private final OC:Lcom/google/android/gms/internal/ml;

.field private final OD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/images/a;",
            "Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final OE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final OF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->Ow:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->Ox:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->OA:Ljava/util/concurrent/ExecutorService;

    if-nez p2, :cond_3d

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->OB:Lcom/google/android/gms/common/images/ImageManager$b;

    :cond_20
    :goto_20
    new-instance v0, Lcom/google/android/gms/internal/ml;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ml;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->OC:Lcom/google/android/gms/internal/ml;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->OD:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->OE:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->OF:Ljava/util/Map;

    return-void

    :cond_3d
    new-instance v0, Lcom/google/android/gms/common/images/ImageManager$b;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/images/ImageManager$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->OB:Lcom/google/android/gms/common/images/ImageManager$b;

    invoke-static {}, Lcom/google/android/gms/internal/ob;->ju()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/google/android/gms/common/images/ImageManager;->ig()V

    goto :goto_20
.end method

.method static synthetic a(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/a$a;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/a$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/images/a$a;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->OB:Lcom/google/android/gms/common/images/ImageManager$b;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->OB:Lcom/google/android/gms/common/images/ImageManager$b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/images/ImageManager$b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    :cond_e
    return-object v1
.end method

.method static synthetic a(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->OD:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Z)Lcom/google/android/gms/common/images/ImageManager;
    .registers 4

    const/4 v1, 0x0

    if-nez p1, :cond_a

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->Oy:Lcom/google/android/gms/common/images/ImageManager;

    if-eqz v0, :cond_1a

    :goto_7
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->Oy:Lcom/google/android/gms/common/images/ImageManager;

    return-object v0

    :cond_a
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->Oz:Lcom/google/android/gms/common/images/ImageManager;

    if-eqz v0, :cond_11

    :goto_e
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->Oz:Lcom/google/android/gms/common/images/ImageManager;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/common/images/ImageManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/images/ImageManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->Oz:Lcom/google/android/gms/common/images/ImageManager;

    goto :goto_e

    :cond_1a
    new-instance v0, Lcom/google/android/gms/common/images/ImageManager;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/images/ImageManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->Oy:Lcom/google/android/gms/common/images/ImageManager;

    goto :goto_7
.end method

.method static synthetic c(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/ml;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->OC:Lcom/google/android/gms/internal/ml;

    return-object v0
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/gms/common/images/ImageManager;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->c(Landroid/content/Context;Z)Lcom/google/android/gms/common/images/ImageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->OF:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->OE:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->OA:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->OB:Lcom/google/android/gms/common/images/ImageManager$b;

    return-object v0
.end method

.method private ig()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/common/images/ImageManager$e;

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager;->OB:Lcom/google/android/gms/common/images/ImageManager$b;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/images/ImageManager$e;-><init>(Lcom/google/android/gms/common/images/ImageManager$b;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method static synthetic ih()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->Ow:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic ii()Ljava/util/HashSet;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->Ox:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/images/a;)V
    .registers 3

    const-string/jumbo v0, "ImageManager.loadImage() must be called in the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->bd(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/images/ImageManager$d;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/images/ImageManager$d;-><init>(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/a;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;I)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/images/a$b;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/a$b;-><init>(Landroid/widget/ImageView;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/a;)V

    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/images/a$b;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/a$b;-><init>(Landroid/widget/ImageView;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/a;)V

    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/images/a$b;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/a$b;-><init>(Landroid/widget/ImageView;Landroid/net/Uri;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/images/a;->bg(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/a;)V

    return-void
.end method

.method public loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/images/a$c;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/a$c;-><init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/a;)V

    return-void
.end method

.method public loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;I)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/images/a$c;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/a$c;-><init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/images/a;->bg(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/a;)V

    return-void
.end method

.class final Lcom/google/android/gms/common/api/d;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/d$a;,
        Lcom/google/android/gms/common/api/d$b;,
        Lcom/google/android/gms/common/api/d$c;,
        Lcom/google/android/gms/common/api/d$d;
    }
.end annotation


# instance fields
.field private final AD:Ljava/util/concurrent/locks/Lock;

.field private final ME:Landroid/os/Looper;

.field private final MR:Ljava/util/concurrent/locks/Condition;

.field private final MS:Lcom/google/android/gms/common/internal/j;

.field private final MT:I

.field final MU:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/common/api/d$d",
            "<*>;>;"
        }
    .end annotation
.end field

.field private MV:Lcom/google/android/gms/common/ConnectionResult;

.field private MW:I

.field private volatile MX:I

.field private volatile MY:Z

.field private MZ:Z

.field private Na:I

.field private Nb:J

.field private Nc:J

.field final Nd:Landroid/os/Handler;

.field Ne:Landroid/content/BroadcastReceiver;

.field private final Nf:Landroid/os/Bundle;

.field private final Ng:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$c",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$a;",
            ">;"
        }
    .end annotation
.end field

.field private final Nh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Ni:Z

.field private final Nj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/e",
            "<*>;>;"
        }
    .end annotation
.end field

.field final Nk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/d$d",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final Nl:Lcom/google/android/gms/common/api/d$b;

.field private final Nm:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field private final Nn:Lcom/google/android/gms/common/internal/j$a;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;I)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/d;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    iget-object v2, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/d;->MR:Ljava/util/concurrent/locks/Condition;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/d;->MU:Ljava/util/Queue;

    const/4 v2, 0x4

    iput v2, p0, Lcom/google/android/gms/common/api/d;->MX:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/d;->MZ:Z

    const-wide/32 v2, 0x1d4c0

    iput-wide v2, p0, Lcom/google/android/gms/common/api/d;->Nb:J

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/android/gms/common/api/d;->Nc:J

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/d;->Nf:Landroid/os/Bundle;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/d;->Ng:Ljava/util/Map;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/d;->Nj:Ljava/util/Set;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/d;->Nk:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/common/api/d$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/d$1;-><init>(Lcom/google/android/gms/common/api/d;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/d;->Nl:Lcom/google/android/gms/common/api/d$b;

    new-instance v2, Lcom/google/android/gms/common/api/d$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/d$2;-><init>(Lcom/google/android/gms/common/api/d;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/d;->Nm:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    new-instance v2, Lcom/google/android/gms/common/api/d$3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/d$3;-><init>(Lcom/google/android/gms/common/api/d;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/d;->Nn:Lcom/google/android/gms/common/internal/j$a;

    iput-object p1, p0, Lcom/google/android/gms/common/api/d;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/common/internal/j;

    iget-object v3, p0, Lcom/google/android/gms/common/api/d;->Nn:Lcom/google/android/gms/common/internal/j$a;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/common/internal/j;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/j$a;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/d;->MS:Lcom/google/android/gms/common/internal/j;

    iput-object p2, p0, Lcom/google/android/gms/common/api/d;->ME:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/common/api/d$c;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/common/api/d$c;-><init>(Lcom/google/android/gms/common/api/d;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/d;->Nd:Landroid/os/Handler;

    move/from16 v0, p7

    iput v0, p0, Lcom/google/android/gms/common/api/d;->MT:I

    invoke-interface/range {p5 .. p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_82
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_ab

    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b7

    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_c3

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/d;->ir()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/d;->Nh:Ljava/util/List;

    return-void

    :cond_ab
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v4, p0, Lcom/google/android/gms/common/api/d;->MS:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/j;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    goto :goto_82

    :cond_b7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iget-object v4, p0, Lcom/google/android/gms/common/api/d;->MS:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/j;->a(Lcom/google/android/gms/common/c$b;)V

    goto :goto_8c

    :cond_c3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Api;->hF()Lcom/google/android/gms/common/api/Api$b;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v10, p0, Lcom/google/android/gms/common/api/d;->Ng:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Api;->hH()Lcom/google/android/gms/common/api/Api$c;

    move-result-object v11

    iget-object v7, p0, Lcom/google/android/gms/common/api/d;->Nm:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    new-instance v8, Lcom/google/android/gms/common/api/d$4;

    invoke-direct {v8, p0, v2}, Lcom/google/android/gms/common/api/d$4;-><init>(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/Api$b;)V

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/Api$b;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v2

    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9a
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/d;->MV:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method private static a(Lcom/google/android/gms/common/api/Api$b;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$a;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$b",
            "<TC;TO;>;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/d;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ")TC;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$b;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/g;Z)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/mn;->Qw:Lcom/google/android/gms/internal/mo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/mo;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/d$7;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/gms/common/api/d$7;-><init>(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/g;ZLcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/common/api/d$d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$a;",
            ">(",
            "Lcom/google/android/gms/common/api/d$d",
            "<TA;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_6
    invoke-interface {p1}, Lcom/google/android/gms/common/api/d$d;->hH()Lcom/google/android/gms/common/api/Api$c;

    move-result-object v1

    if-nez v1, :cond_33

    :goto_c
    const-string/jumbo v1, "This task can not be executed or enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Nk:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Nl:Lcom/google/android/gms/common/api/d$b;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/d$d;->a(Lcom/google/android/gms/common/api/d$b;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->hO()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-interface {p1}, Lcom/google/android/gms/common/api/d$d;->hH()Lcom/google/android/gms/common/api/Api$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/d$d;->b(Lcom/google/android/gms/common/api/Api$a;)V
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_45

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_33
    const/4 v0, 0x1

    goto :goto_c

    :cond_35
    :try_start_35
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/d$d;->k(Lcom/google/android/gms/common/api/Status;)V
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_45

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_45
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/d;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/d;->aS(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/g;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/g;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/d;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/d;->MY:Z

    return p1
.end method

.method private aS(I)V
    .registers 7

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_8
    iget v0, p0, Lcom/google/android/gms/common/api/d;->MX:I
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_42

    if-ne v0, v1, :cond_12

    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_12
    if-eq p1, v4, :cond_49

    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->isConnecting()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->isConnected()Z

    move-result v1

    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/gms/common/api/d;->MX:I

    if-nez v0, :cond_d8

    :goto_21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/d;->Ni:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Ng:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/d;->Ni:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/common/api/d;->MX:I

    if-eqz v1, :cond_c

    if-ne p1, v4, :cond_f6

    :goto_3e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/d;->Ni:Z
    :try_end_41
    .catchall {:try_start_14 .. :try_end_41} :catchall_42

    goto :goto_c

    :catchall_42
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_49
    :try_start_49
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_97

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MU:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b6

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MU:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_60
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Nk:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c0

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Nk:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Nj:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_77
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_ce

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Nj:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MV:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MU:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/d;->MZ:Z
    :try_end_91
    .catchall {:try_start_49 .. :try_end_91} :catchall_42

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_97
    :try_start_97
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MU:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9d
    :goto_9d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/d$d;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/d$d;->hI()I

    move-result v2

    if-eq v2, v3, :cond_9d

    invoke-interface {v0}, Lcom/google/android/gms/common/api/d$d;->cancel()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_9d

    :cond_b6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/d$d;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/d$d;->cancel()V

    goto :goto_55

    :cond_c0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/d$d;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/d$d;->a(Lcom/google/android/gms/common/api/d$b;)V

    invoke-interface {v0}, Lcom/google/android/gms/common/api/d$d;->cancel()V

    goto :goto_66

    :cond_ce
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/e;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->clear()V

    goto :goto_77

    :cond_d8
    if-eq p1, v4, :cond_e1

    :goto_da
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MR:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    goto/16 :goto_21

    :cond_e1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/d;->MV:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_da

    :cond_e5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$a;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$a;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$a;->disconnect()V

    goto/16 :goto_2e

    :cond_f6
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MS:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/j;->bl(I)V
    :try_end_fb
    .catchall {:try_start_97 .. :try_end_fb} :catchall_42

    goto/16 :goto_3e
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/d;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/common/api/d;->MW:I

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/d;)Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Nf:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/d;->hM()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/common/api/d;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/common/api/d;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/api/d;->Nb:J

    return-wide v0
.end method

.method static synthetic f(Lcom/google/android/gms/common/api/d;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/api/d;->Nc:J

    return-wide v0
.end method

.method static synthetic g(Lcom/google/android/gms/common/api/d;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/d;->Ni:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/gms/common/api/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/d;->hP()V

    return-void
.end method

.method private hM()V
    .registers 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget v1, p0, Lcom/google/android/gms/common/api/d;->Na:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/common/api/d;->Na:I

    iget v1, p0, Lcom/google/android/gms/common/api/d;->Na:I

    if-eqz v1, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->MV:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v1, :cond_33

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/common/api/d;->MX:I

    invoke-direct {p0}, Lcom/google/android/gms/common/api/d;->hP()V

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->MR:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/d;->hN()V

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/d;->MZ:Z

    if-nez v1, :cond_5b

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->Nf:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Nf:Landroid/os/Bundle;

    :cond_2d
    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->MS:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/j;->f(Landroid/os/Bundle;)V

    goto :goto_c

    :cond_33
    iput-boolean v2, p0, Lcom/google/android/gms/common/api/d;->MZ:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/d;->aS(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->hO()Z

    move-result v0

    if-nez v0, :cond_4c

    :cond_3f
    invoke-direct {p0}, Lcom/google/android/gms/common/api/d;->hP()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MS:Lcom/google/android/gms/common/internal/j;

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->MV:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/j;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_49
    iput-boolean v2, p0, Lcom/google/android/gms/common/api/d;->Ni:Z

    goto :goto_c

    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->MV:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->e(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_49

    :cond_5b
    iput-boolean v2, p0, Lcom/google/android/gms/common/api/d;->MZ:Z

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/d;->aS(I)V

    goto :goto_c
.end method

.method private hN()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_c
    const/4 v0, 0x1

    :goto_d
    const-string/jumbo v1, "GoogleApiClient is not connected yet."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    :goto_13
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MU:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_3f

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->hO()Z
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_3f

    move-result v1

    if-nez v1, :cond_c

    goto :goto_d

    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MU:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/d$d;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d$d;)V
    :try_end_33
    .catch Landroid/os/DeadObjectException; {:try_start_28 .. :try_end_33} :catch_34
    .catchall {:try_start_28 .. :try_end_33} :catchall_3f

    goto :goto_13

    :catch_34
    move-exception v0

    :try_start_35
    const-string/jumbo v1, "GoogleApiClientImpl"

    const-string/jumbo v2, "Service died while flushing queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_3f

    goto :goto_13

    :catchall_3f
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private hP()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/d;->MY:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/d;->MY:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Nd:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Nd:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->Ne:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_2b

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_2b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic i(Lcom/google/android/gms/common/api/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/d;->resume()V

    return-void
.end method

.method static synthetic j(Lcom/google/android/gms/common/api/d;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MV:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/gms/common/api/d;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/api/d;->MW:I

    return v0
.end method

.method private resume()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->hO()Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_15

    move-result v0

    if-nez v0, :cond_11

    :goto_b
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->connect()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_b

    :catchall_15
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$a;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$c",
            "<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Ng:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$a;

    const-string/jumbo v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$a;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/a$a",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->isConnected()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MU:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_1a

    :goto_10
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_16
    :try_start_16
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/d;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_10

    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/api/Scope;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Nh:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Scope;->hR()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$a;",
            "T:",
            "Lcom/google/android/gms/common/api/a$a",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_8
    move v0, v1

    :goto_9
    const-string/jumbo v2, "GoogleApiClient is not connected yet."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/d;->hN()V

    :try_start_12
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d$d;)V
    :try_end_15
    .catch Landroid/os/DeadObjectException; {:try_start_12 .. :try_end_15} :catch_1d

    :goto_15
    return-object p1

    :cond_16
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->hO()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_9

    :catch_1d
    move-exception v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/d;->aS(I)V

    goto :goto_15
.end method

.method public blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_37

    :goto_b
    const-string/jumbo v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_16
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->connect()V

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_39

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->isConnected()Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MV:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_5d

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_31
    .catchall {:try_start_16 .. :try_end_31} :catchall_65

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_37
    const/4 v0, 0x1

    goto :goto_b

    :cond_39
    :try_start_39
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MR:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3e} :catch_3f
    .catchall {:try_start_39 .. :try_end_3e} :catchall_65

    goto :goto_19

    :catch_3f
    move-exception v0

    :try_start_40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_4f
    .catchall {:try_start_40 .. :try_end_4f} :catchall_65

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_55
    :try_start_55
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->LS:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_57
    .catchall {:try_start_55 .. :try_end_57} :catchall_65

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_5d
    :try_start_5d
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MV:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_5f
    .catchall {:try_start_5d .. :try_end_5f} :catchall_65

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_65
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 13

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_3d

    move v0, v1

    :goto_d
    const-string/jumbo v3, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_18
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->connect()V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->isConnected()Z

    move-result v0

    if-nez v0, :cond_74

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MV:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_7c

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_37
    .catchall {:try_start_18 .. :try_end_37} :catchall_84

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_3d
    move v0, v2

    goto :goto_d

    :cond_3f
    :try_start_3f
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MR:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, v4, v5}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_5c

    move v0, v2

    :goto_4c
    if-nez v0, :cond_1f

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_56} :catch_5e
    .catchall {:try_start_3f .. :try_end_56} :catchall_84

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_5c
    move v0, v1

    goto :goto_4c

    :catch_5e
    move-exception v0

    :try_start_5f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_6e
    .catchall {:try_start_5f .. :try_end_6e} :catchall_84

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_74
    :try_start_74
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->LS:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_76
    .catchall {:try_start_74 .. :try_end_76} :catchall_84

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_7c
    :try_start_7c
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MV:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_7e
    .catchall {:try_start_7c .. :try_end_7e} :catchall_84

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_84
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->isConnected()Z

    move-result v0

    const-string/jumbo v1, "GoogleApiClient is not connected yet."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/common/api/g;

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->ME:Landroid/os/Looper;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/g;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->Ng:Ljava/util/Map;

    sget-object v2, Lcom/google/android/gms/internal/mn;->EC:Lcom/google/android/gms/common/api/Api$c;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Lcom/google/android/gms/common/api/d$5;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/common/api/d$5;-><init>(Lcom/google/android/gms/common/api/d;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/common/api/g;)V

    new-instance v3, Lcom/google/android/gms/common/api/d$6;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/common/api/d$6;-><init>(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/g;)V

    new-instance v4, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v5, p0, Lcom/google/android/gms/common/api/d;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/gms/internal/mn;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/d;->Nd:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :goto_50
    return-object v0

    :cond_51
    invoke-direct {p0, p0, v0, v3}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/g;Z)V

    goto :goto_50
.end method

.method public connect()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/d;->MZ:Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->isConnected()Z
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_50

    move-result v0

    if-eqz v0, :cond_14

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/d;->Ni:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/d;->MV:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/d;->MX:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Nf:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Ng:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/d;->Na:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Ng:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_3d
    .catchall {:try_start_14 .. :try_end_3d} :catchall_50

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_46
    :try_start_46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$a;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$a;->connect()V
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_50

    goto :goto_3a

    :catchall_50
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public disconnect()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/d;->hP()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/d;->aS(I)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "GoogleApiClient:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v2, "mConnectionState="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget v0, p0, Lcom/google/android/gms/common/api/d;->MX:I

    packed-switch v0, :pswitch_data_a6

    const-string/jumbo v0, "UNKNOWN"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_33
    const-string/jumbo v0, " mResuming="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/d;->MY:Z

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mWaitingToDisconnect="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/d;->MZ:Z

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v2, "mWorkQueue.size()="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/api/d;->MU:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mUnconsumedRunners.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/api/d;->Nk:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Ng:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_79
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9c

    return-void

    :pswitch_80
    const-string/jumbo v0, "CONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_33

    :pswitch_87
    const-string/jumbo v0, "CONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_33

    :pswitch_8e
    const-string/jumbo v0, "DISCONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_33

    :pswitch_95
    const-string/jumbo v0, "DISCONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_33

    :cond_9c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$a;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/Api$a;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_79

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_80
        :pswitch_87
        :pswitch_8e
        :pswitch_95
    .end packed-switch
.end method

.method public f(Ljava/lang/Object;)Lcom/google/android/gms/common/api/e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            ")",
            "Lcom/google/android/gms/common/api/e",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "Listener must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_b
    new-instance v0, Lcom/google/android/gms/common/api/e;

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->ME:Landroid/os/Looper;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/os/Looper;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->Nj:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1d

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_1d
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->AD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->ME:Landroid/os/Looper;

    return-object v0
.end method

.method hO()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/d;->MY:Z

    return v0
.end method

.method public isConnected()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/common/api/d;->MX:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public isConnecting()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/common/api/d;->MX:I

    if-eq v1, v0, :cond_6

    const/4 v0, 0x0

    :cond_6
    return v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MS:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/j;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MS:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/j;->b(Lcom/google/android/gms/common/c$b;)Z

    move-result v0

    return v0
.end method

.method public reconnect()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->disconnect()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->connect()V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MS:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/j;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MS:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/j;->a(Lcom/google/android/gms/common/c$b;)V

    return-void
.end method

.method public stopAutoManage(Landroid/support/v4/app/FragmentActivity;)V
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/api/d;->MT:I

    if-gez v1, :cond_15

    :goto_5
    const-string/jumbo v1, "Called stopAutoManage but automatic lifecycle management is not enabled."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/common/api/h;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/common/api/h;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/api/d;->MT:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/h;->aV(I)V

    return-void

    :cond_15
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MS:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/j;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->MS:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/j;->c(Lcom/google/android/gms/common/c$b;)V

    return-void
.end method

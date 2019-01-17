.class public abstract Lcom/google/android/gms/common/internal/i;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$a;
.implements Lcom/google/android/gms/common/internal/j$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/i$a;,
        Lcom/google/android/gms/common/internal/i$b;,
        Lcom/google/android/gms/common/internal/i$c;,
        Lcom/google/android/gms/common/internal/i$d;,
        Lcom/google/android/gms/common/internal/i$e;,
        Lcom/google/android/gms/common/internal/i$f;,
        Lcom/google/android/gms/common/internal/i$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/Api$a;",
        "Lcom/google/android/gms/common/internal/j$a;"
    }
.end annotation


# static fields
.field public static final PT:[Ljava/lang/String;


# instance fields
.field private final ME:Landroid/os/Looper;

.field private final MS:Lcom/google/android/gms/common/internal/j;

.field private PL:Lcom/google/android/gms/common/internal/d;

.field private final PM:Lcom/google/android/gms/common/internal/k;

.field private PN:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final PO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/internal/i",
            "<TT;>.b<*>;>;"
        }
    .end annotation
.end field

.field private PP:Lcom/google/android/gms/common/internal/i$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/i",
            "<TT;>.e;"
        }
    .end annotation
.end field

.field private PQ:I

.field private final PR:[Ljava/lang/String;

.field PS:Z

.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private final mK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "service_esmobile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "service_googleme"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/internal/i;->PT:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/d;)V
    .registers 13

    invoke-static {p1}, Lcom/google/android/gms/common/internal/k;->K(Landroid/content/Context;)Lcom/google/android/gms/common/internal/k;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/k;Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method protected varargs constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->PL:Lcom/google/android/gms/common/internal/d;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->mK:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->PO:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/i;->PQ:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/i;->PS:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "Looper must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->ME:Landroid/os/Looper;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/k;->K(Landroid/content/Context;)Lcom/google/android/gms/common/internal/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->PM:Lcom/google/android/gms/common/internal/k;

    new-instance v0, Lcom/google/android/gms/common/internal/j;

    invoke-direct {v0, p2, p0}, Lcom/google/android/gms/common/internal/j;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/j$a;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->MS:Lcom/google/android/gms/common/internal/j;

    new-instance v0, Lcom/google/android/gms/common/internal/i$a;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/internal/i$a;-><init>(Lcom/google/android/gms/common/internal/i;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p5}, Lcom/google/android/gms/common/internal/i;->c([Ljava/lang/String;)V

    iput-object p5, p0, Lcom/google/android/gms/common/internal/i;->PR:[Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/i;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    invoke-static {p4}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/i;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/k;Lcom/google/android/gms/common/internal/d;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->PL:Lcom/google/android/gms/common/internal/d;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->mK:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->PO:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/i;->PQ:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/i;->PS:Z

    const-string/jumbo v0, "Context must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "Looper must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->ME:Landroid/os/Looper;

    const-string/jumbo v0, "Supervisor must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/k;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->PM:Lcom/google/android/gms/common/internal/k;

    new-instance v0, Lcom/google/android/gms/common/internal/j;

    invoke-direct {v0, p2, p0}, Lcom/google/android/gms/common/internal/j;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/j$a;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->MS:Lcom/google/android/gms/common/internal/j;

    new-instance v0, Lcom/google/android/gms/common/internal/i$a;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/internal/i$a;-><init>(Lcom/google/android/gms/common/internal/i;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4}, Lcom/google/android/gms/common/internal/d;->is()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->PR:[Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->PR:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/i;->c([Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/common/internal/i;->PL:Lcom/google/android/gms/common/internal/d;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/k;Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 8

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/k;Lcom/google/android/gms/common/internal/d;)V

    invoke-static {p5}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/i;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    invoke-static {p6}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/i;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method protected varargs constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/c$a;Lcom/google/android/gms/common/c$b;[Ljava/lang/String;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/internal/i$c;

    invoke-direct {v3, p2}, Lcom/google/android/gms/common/internal/i$c;-><init>(Lcom/google/android/gms/common/c$a;)V

    new-instance v4, Lcom/google/android/gms/common/internal/i$f;

    invoke-direct {v4, p3}, Lcom/google/android/gms/common/internal/i$f;-><init>(Lcom/google/android/gms/common/c$b;)V

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/internal/i$e;)Lcom/google/android/gms/common/internal/i$e;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/i;->PP:Lcom/google/android/gms/common/internal/i$e;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/j;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->MS:Lcom/google/android/gms/common/internal/j;

    return-object v0
.end method

.method private a(ILandroid/os/IInterface;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_17

    move v3, v0

    :goto_6
    if-nez p2, :cond_19

    move v2, v0

    :goto_9
    if-eq v3, v2, :cond_1b

    :goto_b
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->M(Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11
    iput p1, p0, Lcom/google/android/gms/common/internal/i;->PQ:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/i;->PN:Landroid/os/IInterface;

    monitor-exit v1

    return-void

    :cond_17
    move v3, v1

    goto :goto_6

    :cond_19
    move v2, v1

    goto :goto_9

    :cond_1b
    move v0, v1

    goto :goto_b

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/i;ILandroid/os/IInterface;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/i;->a(ILandroid/os/IInterface;)V

    return-void
.end method

.method private a(IILandroid/os/IInterface;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/i;->PQ:I

    if-ne v0, p1, :cond_d

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/i;->a(ILandroid/os/IInterface;)V

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :cond_d
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/i;IILandroid/os/IInterface;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/i;->a(IILandroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/internal/i;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->PO:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/common/internal/i;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/i$e;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->PP:Lcom/google/android/gms/common/internal/i$e;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/k;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->PM:Lcom/google/android/gms/common/internal/k;

    return-object v0
.end method


# virtual methods
.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/common/internal/i$g;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/i$g;-><init>(Lcom/google/android/gms/common/internal/i;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/internal/i$b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/i",
            "<TT;>.b<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->PO:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->PO:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_16

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method protected abstract a(Lcom/google/android/gms/common/internal/q;Lcom/google/android/gms/common/internal/i$d;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected final as(Landroid/os/IBinder;)V
    .registers 5

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/q$a;->aw(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/q;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/internal/i$d;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/i$d;-><init>(Lcom/google/android/gms/common/internal/i;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/q;Lcom/google/android/gms/common/internal/i$d;)V
    :try_end_c
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_1c

    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string/jumbo v0, "GmsClient"

    const-string/jumbo v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/i;->bk(I)V

    goto :goto_c

    :catch_1c
    move-exception v0

    const-string/jumbo v1, "GmsClient"

    const-string/jumbo v2, "Remote exception occurred"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method protected abstract bO()Ljava/lang/String;
.end method

.method protected abstract bP()Ljava/lang/String;
.end method

.method public bk(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected varargs c([Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public connect()V
    .registers 6

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/common/internal/i;->PS:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/internal/i;->a(ILandroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->PP:Lcom/google/android/gms/common/internal/i$e;

    if-nez v0, :cond_42

    :goto_15
    new-instance v0, Lcom/google/android/gms/common/internal/i$e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/i$e;-><init>(Lcom/google/android/gms/common/internal/i;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->PP:Lcom/google/android/gms/common/internal/i$e;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->PM:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->bO()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i;->PP:Lcom/google/android/gms/common/internal/i$e;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->iz()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/internal/k;->a(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    return-void

    :cond_2f
    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/common/internal/i;->a(ILandroid/os/IInterface;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_42
    const-string/jumbo v0, "GmsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->bO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->PM:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->bO()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i;->PP:Lcom/google/android/gms/common/internal/i$e;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->iz()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/internal/k;->b(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    goto :goto_15

    :cond_70
    const-string/jumbo v0, "GmsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to connect to service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->bO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final dZ()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnect()V
    .registers 6

    const/4 v0, 0x0

    const/4 v4, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/i;->PS:Z

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i;->PO:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->PO:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_e
    if-lt v1, v3, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->PO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_2e

    const/4 v0, 0x1

    invoke-direct {p0, v0, v4}, Lcom/google/android/gms/common/internal/i;->a(ILandroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->PP:Lcom/google/android/gms/common/internal/i$e;

    if-nez v0, :cond_31

    :goto_1e
    return-void

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->PO:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/i$b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/i$b;->iE()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :catchall_2e
    move-exception v0

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->PM:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->bO()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i;->PP:Lcom/google/android/gms/common/internal/i$e;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->iz()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/internal/k;->b(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/google/android/gms/common/internal/i;->PP:Lcom/google/android/gms/common/internal/i$e;

    goto :goto_1e
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "GmsClient:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "mStartServiceAction="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->bO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_33
    iget v2, p0, Lcom/google/android/gms/common/internal/i;->PQ:I

    iget-object v3, p0, Lcom/google/android/gms/common/internal/i;->PN:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_72

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "mConnectState="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    packed-switch v2, :pswitch_data_98

    const-string/jumbo v0, "UNKNOWN"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_4b
    const-string/jumbo v0, " mService="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-eqz v3, :cond_91

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->bP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_71
    return-void

    :catchall_72
    move-exception v0

    :try_start_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v0

    :pswitch_75
    const-string/jumbo v0, "CONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4b

    :pswitch_7c
    const-string/jumbo v0, "CONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4b

    :pswitch_83
    const-string/jumbo v0, "DISCONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4b

    :pswitch_8a
    const-string/jumbo v0, "DISCONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4b

    :cond_91
    const-string/jumbo v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_71

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_75
        :pswitch_7c
        :pswitch_83
    .end packed-switch
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->ME:Landroid/os/Looper;

    return-object v0
.end method

.method public hQ()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/i;->PS:Z

    return v0
.end method

.method public hb()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final iA()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->PR:[Ljava/lang/String;

    return-object v0
.end method

.method public final iB()Landroid/os/IInterface;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/i;->PQ:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->dZ()V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->PN:Landroid/os/IInterface;

    if-nez v0, :cond_23

    const/4 v0, 0x0

    :goto_10
    const-string/jumbo v2, "Client is connected but service is null"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->PN:Landroid/os/IInterface;

    monitor-exit v1

    return-object v0

    :cond_1a
    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0

    :cond_23
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public isConnected()Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/i;->PQ:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_b

    const/4 v0, 0x0

    :goto_9
    monitor-exit v1

    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public isConnecting()Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/i;->PQ:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    const/4 v0, 0x0

    :goto_9
    monitor-exit v1

    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method protected iz()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->PL:Lcom/google/android/gms/common/internal/d;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->PL:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d;->iu()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const-string/jumbo v0, "GmsClient"

    return-object v0
.end method

.method protected abstract m(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->MS:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/j;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->MS:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/j;->a(Lcom/google/android/gms/common/c$b;)V

    return-void
.end method

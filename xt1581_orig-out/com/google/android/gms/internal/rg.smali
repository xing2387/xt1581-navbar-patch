.class public Lcom/google/android/gms/internal/rg;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/rh$a;


# instance fields
.field private aqA:Z

.field private final aqz:Lcom/google/android/gms/internal/rh;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/rg;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/rg;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/rh;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/rh;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/rh$a;Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/rg;->aqz:Lcom/google/android/gms/internal/rh;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/rg;->aqA:Z

    return-void
.end method

.method private pF()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/rg;->aqA:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot reuse one-time logger after sending."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[B[Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/rg;->pF()V

    iget-object v0, p0, Lcom/google/android/gms/internal/rg;->aqz:Lcom/google/android/gms/internal/rh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/rh;->b(Ljava/lang/String;[B[Ljava/lang/String;)V

    return-void
.end method

.method public d(Landroid/app/PendingIntent;)V
    .registers 5

    const-string/jumbo v0, "OneTimePlayLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "logger connection failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pG()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/rg;->aqz:Lcom/google/android/gms/internal/rh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rh;->stop()V

    return-void
.end method

.method public pH()V
    .registers 3

    const-string/jumbo v0, "OneTimePlayLogger"

    const-string/jumbo v1, "logger connection failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public send()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/rg;->pF()V

    iget-object v0, p0, Lcom/google/android/gms/internal/rg;->aqz:Lcom/google/android/gms/internal/rh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rh;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/rg;->aqA:Z

    return-void
.end method

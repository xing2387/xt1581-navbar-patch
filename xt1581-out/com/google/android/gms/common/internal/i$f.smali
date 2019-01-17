.class public final Lcom/google/android/gms/common/internal/i$f;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field private final PY:Lcom/google/android/gms/common/c$b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/c$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/i$f;->PY:Lcom/google/android/gms/common/c$b;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/common/internal/i$f;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$f;->PY:Lcom/google/android/gms/common/c$b;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$f;->PY:Lcom/google/android/gms/common/c$b;

    check-cast p1, Lcom/google/android/gms/common/internal/i$f;

    iget-object v1, p1, Lcom/google/android/gms/common/internal/i$f;->PY:Lcom/google/android/gms/common/c$b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$f;->PY:Lcom/google/android/gms/common/c$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/c$b;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.class public Lcom/google/android/gms/internal/rk;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/rk$1;,
        Lcom/google/android/gms/internal/rk$a;
    }
.end annotation


# instance fields
.field private final aqG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/rk$a;",
            ">;"
        }
    .end annotation
.end field

.field private aqH:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/rk;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/rk;->aqG:Ljava/util/ArrayList;

    iput p1, p0, Lcom/google/android/gms/internal/rk;->aqH:I

    return-void
.end method

.method private pJ()V
    .registers 3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rk;->getSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rk;->getCapacity()I

    move-result v1

    if-gt v0, v1, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/rk;->aqG:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/rn;Lcom/google/android/gms/internal/rj;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/rk;->aqG:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/internal/rk$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/rk$a;-><init>(Lcom/google/android/gms/internal/rn;Lcom/google/android/gms/internal/rj;Lcom/google/android/gms/internal/rk$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/rk;->pJ()V

    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/rk;->aqG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getCapacity()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/rk;->aqH:I

    return v0
.end method

.method public getSize()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/rk;->aqG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/rk;->aqG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public pI()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/rk$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/rk;->aqG:Ljava/util/ArrayList;

    return-object v0
.end method

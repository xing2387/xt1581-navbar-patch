.class public final Lcom/google/android/gms/common/internal/d;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/d$a;
    }
.end annotation


# instance fields
.field private final MI:Landroid/view/View;

.field private final Py:Lcom/google/android/gms/common/internal/d$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/common/internal/d$a;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/d$a;-><init>(Ljava/lang/String;Ljava/util/Collection;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/d;->Py:Lcom/google/android/gms/common/internal/d$a;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/d;->MI:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Py:Lcom/google/android/gms/common/internal/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d$a;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ip()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Py:Lcom/google/android/gms/common/internal/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d$a;->ip()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iq()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Py:Lcom/google/android/gms/common/internal/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d$a;->iq()I

    move-result v0

    return v0
.end method

.method public ir()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Py:Lcom/google/android/gms/common/internal/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d$a;->ir()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public is()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Py:Lcom/google/android/gms/common/internal/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d$a;->ir()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public it()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Py:Lcom/google/android/gms/common/internal/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d$a;->it()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iu()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Py:Lcom/google/android/gms/common/internal/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d$a;->iu()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iv()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->MI:Landroid/view/View;

    return-object v0
.end method

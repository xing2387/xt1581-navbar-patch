.class public final Lcom/google/android/gms/internal/ml$a;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final Pv:I

.field public final Pw:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ml$a;->Pv:I

    iput p2, p0, Lcom/google/android/gms/internal/ml$a;->Pw:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/internal/ml$a;

    if-eqz v2, :cond_12

    if-eq p0, p1, :cond_13

    check-cast p1, Lcom/google/android/gms/internal/ml$a;

    iget v2, p1, Lcom/google/android/gms/internal/ml$a;->Pv:I

    iget v3, p0, Lcom/google/android/gms/internal/ml$a;->Pv:I

    if-eq v2, v3, :cond_14

    :goto_10
    move v0, v1

    :cond_11
    return v0

    :cond_12
    return v1

    :cond_13
    return v0

    :cond_14
    iget v2, p1, Lcom/google/android/gms/internal/ml$a;->Pw:I

    iget v3, p0, Lcom/google/android/gms/internal/ml$a;->Pw:I

    if-eq v2, v3, :cond_11

    goto :goto_10
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ml$a;->Pv:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ml$a;->Pw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

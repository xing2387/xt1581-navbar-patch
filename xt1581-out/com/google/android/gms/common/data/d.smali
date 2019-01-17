.class public abstract Lcom/google/android/gms/common/data/d;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field protected final MF:Lcom/google/android/gms/common/data/DataHolder;

.field protected Ob:I

.field private Oc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    iput-object v0, p0, Lcom/google/android/gms/common/data/d;->MF:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/data/d;->aZ(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->MF:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/d;->Ob:I

    iget v2, p0, Lcom/google/android/gms/common/data/d;->Oc:I

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;IILandroid/database/CharArrayBuffer;)V

    return-void
.end method

.method protected aZ(I)V
    .registers 4

    const/4 v0, 0x0

    if-gez p1, :cond_13

    :cond_3
    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->L(Z)V

    iput p1, p0, Lcom/google/android/gms/common/data/d;->Ob:I

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->MF:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/d;->Ob:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->bb(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/data/d;->Oc:I

    return-void

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/common/data/d;->MF:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public aZ(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->MF:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/DataHolder;->aZ(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected ba(Ljava/lang/String;)Landroid/net/Uri;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->MF:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/d;->Ob:I

    iget v2, p0, Lcom/google/android/gms/common/data/d;->Oc:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->g(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected bb(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->MF:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/d;->Ob:I

    iget v2, p0, Lcom/google/android/gms/common/data/d;->Oc:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->h(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/common/data/d;

    if-nez v1, :cond_6

    return v0

    :cond_6
    check-cast p1, Lcom/google/android/gms/common/data/d;

    iget v1, p1, Lcom/google/android/gms/common/data/d;->Ob:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/data/d;->Ob:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/s;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    iget v1, p1, Lcom/google/android/gms/common/data/d;->Oc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/data/d;->Oc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/s;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p1, Lcom/google/android/gms/common/data/d;->MF:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v2, p0, Lcom/google/android/gms/common/data/d;->MF:Lcom/google/android/gms/common/data/DataHolder;

    if-ne v1, v2, :cond_1a

    const/4 v0, 0x1

    goto :goto_1a
.end method

.method protected getBoolean(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->MF:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/d;->Ob:I

    iget v2, p0, Lcom/google/android/gms/common/data/d;->Oc:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->d(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method protected getByteArray(Ljava/lang/String;)[B
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->MF:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/d;->Ob:I

    iget v2, p0, Lcom/google/android/gms/common/data/d;->Oc:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->f(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method protected getFloat(Ljava/lang/String;)F
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->MF:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/d;->Ob:I

    iget v2, p0, Lcom/google/android/gms/common/data/d;->Oc:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;II)F

    move-result v0

    return v0
.end method

.method protected getInteger(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->MF:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/d;->Ob:I

    iget v2, p0, Lcom/google/android/gms/common/data/d;->Oc:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method protected getLong(Ljava/lang/String;)J
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->MF:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/d;->Ob:I

    iget v2, p0, Lcom/google/android/gms/common/data/d;->Oc:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->MF:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/d;->Ob:I

    iget v2, p0, Lcom/google/android/gms/common/data/d;->Oc:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hZ()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/data/d;->Ob:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/data/d;->Ob:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/data/d;->Oc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/data/d;->MF:Lcom/google/android/gms/common/data/DataHolder;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/data/d;->MF:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.class public abstract Lcom/google/android/gms/internal/tj;
.super Lcom/google/android/gms/internal/tp;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/tj",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/tp;"
    }
.end annotation


# instance fields
.field protected aCG:Lcom/google/android/gms/internal/tl;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/tp;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/tk;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/tk",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    iget v2, p1, Lcom/google/android/gms/internal/tk;->tag:I

    invoke-static {v2}, Lcom/google/android/gms/internal/ts;->hU(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/tl;->hQ(I)Lcom/google/android/gms/internal/tm;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/tm;->b(Lcom/google/android/gms/internal/tk;)Ljava/lang/Object;

    move-result-object v0

    :cond_17
    return-object v0

    :cond_18
    return-object v0
.end method

.method public a(Lcom/google/android/gms/internal/ti;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tl;->size()I

    move-result v1

    if-lt v0, v1, :cond_f

    return-void

    :cond_e
    return-void

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/tl;->hR(I)Lcom/google/android/gms/internal/tm;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/tm;->a(Lcom/google/android/gms/internal/ti;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method protected final a(Lcom/google/android/gms/internal/th;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->getPosition()I

    move-result v1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/th;->hz(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-static {p2}, Lcom/google/android/gms/internal/ts;->hU(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->getPosition()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1, v1, v3}, Lcom/google/android/gms/internal/th;->y(II)[B

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/tr;

    invoke-direct {v3, p2, v1}, Lcom/google/android/gms/internal/tr;-><init>(I[B)V

    iget-object v1, p0, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    if-eqz v1, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/tl;->hQ(I)Lcom/google/android/gms/internal/tm;

    move-result-object v0

    :goto_28
    if-eqz v0, :cond_38

    :goto_2a
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/tm;->a(Lcom/google/android/gms/internal/tr;)V

    const/4 v0, 0x1

    return v0

    :cond_2f
    return v3

    :cond_30
    new-instance v1, Lcom/google/android/gms/internal/tl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/tl;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    goto :goto_28

    :cond_38
    new-instance v0, Lcom/google/android/gms/internal/tm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/tm;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/tl;->a(ILcom/google/android/gms/internal/tm;)V

    goto :goto_2a
.end method

.method protected final a(Lcom/google/android/gms/internal/tj;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    if-nez v1, :cond_b

    :cond_5
    iget-object v1, p1, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    if-nez v1, :cond_1c

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tl;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    iget-object v1, p1, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/tl;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1c
    iget-object v1, p1, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tl;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_a
.end method

.method protected c()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    move v1, v0

    :goto_7
    iget-object v2, p0, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/tl;->size()I

    move-result v2

    if-lt v0, v2, :cond_11

    move v0, v1

    goto :goto_5

    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/tl;->hR(I)Lcom/google/android/gms/internal/tm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/tm;->c()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tj;->to()Lcom/google/android/gms/internal/tj;

    move-result-object v0

    return-object v0
.end method

.method protected final tn()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tl;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tl;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public to()Lcom/google/android/gms/internal/tj;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/tp;->tp()Lcom/google/android/gms/internal/tp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/tj;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/tn;->a(Lcom/google/android/gms/internal/tj;Lcom/google/android/gms/internal/tj;)V

    return-object v0
.end method

.method public synthetic tp()Lcom/google/android/gms/internal/tp;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tj;->to()Lcom/google/android/gms/internal/tj;

    move-result-object v0

    return-object v0
.end method

.class public abstract Lcom/google/android/gms/common/data/g;
.super Lcom/google/android/gms/common/data/AbstractDataBuffer;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/data/AbstractDataBuffer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private Ot:Z

.field private Ou:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/g;->Ot:Z

    return-void
.end method

.method private ie()V
    .registers 7

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/gms/common/data/g;->Ot:Z

    if-eqz v1, :cond_8

    :goto_6
    monitor-exit p0

    return-void

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/common/data/g;->MF:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/data/g;->Ou:Ljava/util/ArrayList;

    if-gtz v3, :cond_1e

    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/g;->Ot:Z

    goto :goto_6

    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/google/android/gms/common/data/g;->Ou:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/g;->id()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/gms/common/data/g;->MF:Lcom/google/android/gms/common/data/DataHolder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->bb(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/common/data/g;->MF:Lcom/google/android/gms/common/data/DataHolder;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v1}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    move v2, v0

    move-object v0, v1

    :goto_3c
    if-ge v2, v3, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/common/data/g;->MF:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->bb(I)I

    move-result v5

    iget-object v1, p0, Lcom/google/android/gms/common/data/g;->MF:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v1, v4, v2, v5}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    :goto_52
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3c

    :cond_56
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing value for markerColumn: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", at row: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", for window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_86
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->Ou:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8f
    .catchall {:try_start_1e .. :try_end_8f} :catchall_1b

    move-object v0, v1

    goto :goto_52
.end method


# virtual methods
.method be(I)I
    .registers 5

    if-gez p1, :cond_23

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is out of bounds for this buffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->Ou:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->Ou:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected bf(I)I
    .registers 8

    const/4 v5, 0x0

    if-gez p1, :cond_4

    :cond_3
    return v5

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->Ou:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->Ou:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->Ou:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->Ou:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_30
    sub-int v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_49

    :cond_35
    return v0

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->MF:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->Ou:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_30

    :cond_49
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/g;->be(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/common/data/g;->MF:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/data/DataHolder;->bb(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/g;->if()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_35

    iget-object v4, p0, Lcom/google/android/gms/common/data/g;->MF:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_35

    return v5
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/data/g;->ie()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/g;->be(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/g;->bf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/data/g;->k(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/data/g;->ie()V

    iget-object v0, p0, Lcom/google/android/gms/common/data/g;->Ou:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected abstract id()Ljava/lang/String;
.end method

.method protected if()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract k(II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation
.end method

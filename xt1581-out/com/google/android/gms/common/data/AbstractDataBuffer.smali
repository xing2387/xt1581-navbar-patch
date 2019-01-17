.class public abstract Lcom/google/android/gms/common/data/AbstractDataBuffer;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final MF:Lcom/google/android/gms/common/data/DataHolder;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/data/AbstractDataBuffer;->MF:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v0, p0, Lcom/google/android/gms/common/data/AbstractDataBuffer;->MF:Lcom/google/android/gms/common/data/DataHolder;

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/common/data/AbstractDataBuffer;->MF:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/data/DataHolder;->g(Ljava/lang/Object;)V

    goto :goto_9
.end method


# virtual methods
.method public final close()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    return-void
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/AbstractDataBuffer;->MF:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/common/data/AbstractDataBuffer;->MF:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hW()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/AbstractDataBuffer;->MF:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->hW()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/data/AbstractDataBuffer;->MF:Lcom/google/android/gms/common/data/DataHolder;

    if-nez v1, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/common/data/AbstractDataBuffer;->MF:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_6
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/data/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/data/c;-><init>(Lcom/google/android/gms/common/data/DataBuffer;)V

    return-object v0
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/AbstractDataBuffer;->MF:Lcom/google/android/gms/common/data/DataHolder;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/data/AbstractDataBuffer;->MF:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    goto :goto_4
.end method

.method public singleRefIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/data/h;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/data/h;-><init>(Lcom/google/android/gms/common/data/DataBuffer;)V

    return-object v0
.end method

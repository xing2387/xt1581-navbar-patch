.class Lcom/google/android/gms/internal/tm;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private aCN:Lcom/google/android/gms/internal/tk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/tk",
            "<**>;"
        }
    .end annotation
.end field

.field private aCO:Ljava/lang/Object;

.field private aCP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/tr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/tm;->aCP:Ljava/util/List;

    return-void
.end method

.method private toByteArray()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tm;->c()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/ti;->q([B)Lcom/google/android/gms/internal/ti;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/tm;->a(Lcom/google/android/gms/internal/ti;)V

    return-object v0
.end method


# virtual methods
.method a(Lcom/google/android/gms/internal/ti;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCN:Lcom/google/android/gms/internal/tk;

    iget-object v1, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/tk;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ti;)V

    goto :goto_10

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/tr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/tr;->a(Lcom/google/android/gms/internal/ti;)V

    goto :goto_a
.end method

.method a(Lcom/google/android/gms/internal/tr;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Lcom/google/android/gms/internal/tk;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/tk",
            "<*TT;>;)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    if-nez v0, :cond_14

    iput-object p1, p0, Lcom/google/android/gms/internal/tm;->aCN:Lcom/google/android/gms/internal/tk;

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCP:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/tk;->o(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/tm;->aCP:Ljava/util/List;

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCN:Lcom/google/android/gms/internal/tk;

    if-eq v0, p1, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Tried to getExtension with a differernt Extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method c()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/internal/tm;->aCP:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    :goto_12
    return v1

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCN:Lcom/google/android/gms/internal/tk;

    iget-object v1, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/tk;->E(Ljava/lang/Object;)I

    move-result v1

    goto :goto_12

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/tr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tr;->c()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_c
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tm;->tr()Lcom/google/android/gms/internal/tm;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v2, 0x0

    if-eq p1, p0, :cond_1e

    instance-of v0, p1, Lcom/google/android/gms/internal/tm;

    if-eqz v0, :cond_20

    check-cast p1, Lcom/google/android/gms/internal/tm;

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    if-nez v0, :cond_21

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCP:Ljava/util/List;

    if-nez v0, :cond_da

    :cond_11
    :try_start_11
    invoke-direct {p0}, Lcom/google/android/gms/internal/tm;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1}, Lcom/google/android/gms/internal/tm;->toByteArray()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1c} :catch_e7

    move-result v0

    return v0

    :cond_1e
    const/4 v0, 0x1

    return v0

    :cond_20
    return v2

    :cond_21
    iget-object v0, p1, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCN:Lcom/google/android/gms/internal/tk;

    iget-object v1, p1, Lcom/google/android/gms/internal/tm;->aCN:Lcom/google/android/gms/internal/tk;

    if-ne v0, v1, :cond_6a

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCN:Lcom/google/android/gms/internal/tk;

    iget-object v0, v0, Lcom/google/android/gms/internal/tk;->aCH:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-nez v0, :cond_74

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-nez v0, :cond_96

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-nez v0, :cond_a7

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-nez v0, :cond_b8

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-nez v0, :cond_c9

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_6a
    return v2

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_74
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget-object v1, p1, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    :cond_85
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    iget-object v1, p1, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0

    :cond_96
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    iget-object v1, p1, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0

    :cond_a7
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v0, [F

    check-cast v0, [F

    iget-object v1, p1, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v1, [F

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    return v0

    :cond_b8
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v0, [D

    check-cast v0, [D

    iget-object v1, p1, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v1, [D

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    return v0

    :cond_c9
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v0, [Z

    check-cast v0, [Z

    iget-object v1, p1, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v1, [Z

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    return v0

    :cond_da
    iget-object v0, p1, Lcom/google/android/gms/internal/tm;->aCP:Ljava/util/List;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCP:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/tm;->aCP:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :catch_e7
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hashCode()I
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/tm;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_b

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    return v0

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final tr()Lcom/google/android/gms/internal/tm;
    .registers 6

    const/4 v1, 0x0

    new-instance v3, Lcom/google/android/gms/internal/tm;

    invoke-direct {v3}, Lcom/google/android/gms/internal/tm;-><init>()V

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCN:Lcom/google/android/gms/internal/tk;

    iput-object v0, v3, Lcom/google/android/gms/internal/tm;->aCN:Lcom/google/android/gms/internal/tk;

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCP:Ljava/util/List;

    if-eqz v0, :cond_50

    iget-object v0, v3, Lcom/google/android/gms/internal/tm;->aCP:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/tm;->aCP:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_15
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/internal/tp;

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    instance-of v0, v0, [[B

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-nez v0, :cond_90

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-nez v0, :cond_9d

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-nez v0, :cond_c4

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    instance-of v0, v0, [Lcom/google/android/gms/internal/tp;

    if-nez v0, :cond_d2

    :cond_4f
    :goto_4f
    return-object v3

    :cond_50
    const/4 v0, 0x0

    iput-object v0, v3, Lcom/google/android/gms/internal/tm;->aCP:Ljava/util/List;
    :try_end_53
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_6 .. :try_end_53} :catch_54

    goto :goto_15

    :catch_54
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_5b
    :try_start_5b
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/tp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tp;->tp()Lcom/google/android/gms/internal/tp;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    goto :goto_4f

    :cond_66
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    goto :goto_4f

    :cond_73
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v0, [[B

    check-cast v0, [[B

    array-length v2, v0

    new-array v4, v2, [[B

    iput-object v4, v3, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    move v2, v1

    :goto_7f
    array-length v1, v0

    if-ge v2, v1, :cond_4f

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    aput-object v1, v4, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7f

    :cond_90
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v0, [Z

    check-cast v0, [Z

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    goto :goto_4f

    :cond_9d
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    goto :goto_4f

    :cond_aa
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    goto :goto_4f

    :cond_b7
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v0, [F

    check-cast v0, [F

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    goto :goto_4f

    :cond_c4
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v0, [D

    check-cast v0, [D

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    goto/16 :goto_4f

    :cond_d2
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/gms/internal/tp;

    check-cast v0, [Lcom/google/android/gms/internal/tp;

    array-length v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/tp;

    iput-object v2, v3, Lcom/google/android/gms/internal/tm;->aCO:Ljava/lang/Object;

    :goto_dd
    array-length v4, v0

    if-ge v1, v4, :cond_4f

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/tp;->tp()Lcom/google/android/gms/internal/tp;

    move-result-object v4

    aput-object v4, v2, v1
    :try_end_e8
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5b .. :try_end_e8} :catch_54

    add-int/lit8 v1, v1, 0x1

    goto :goto_dd
.end method

.class public final Lcom/google/android/gms/internal/tn;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final aCQ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/tn;->aCQ:Ljava/lang/Object;

    return-void
.end method

.method public static a([[B)I
    .registers 5

    const/4 v1, 0x0

    if-eqz p0, :cond_8

    array-length v0, p0

    :goto_4
    move v2, v1

    :goto_5
    if-lt v2, v0, :cond_a

    return v1

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_a
    aget-object v3, p0, v2

    if-nez v3, :cond_11

    :goto_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    mul-int/lit8 v1, v1, 0x1f

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_e
.end method

.method public static a(Lcom/google/android/gms/internal/tj;Lcom/google/android/gms/internal/tj;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tl;->tq()Lcom/google/android/gms/internal/tl;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/tj;->aCG:Lcom/google/android/gms/internal/tl;

    goto :goto_4
.end method

.method public static a([[B[[B)Z
    .registers 10

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2a

    array-length v0, p0

    move v7, v0

    :goto_6
    if-eqz p1, :cond_2c

    array-length v0, p1

    :goto_9
    move v2, v1

    move v6, v1

    :goto_b
    if-lt v6, v7, :cond_2e

    :cond_d
    move v5, v2

    :goto_e
    if-lt v5, v0, :cond_36

    :cond_10
    if-ge v6, v7, :cond_3e

    move v4, v1

    :goto_13
    if-ge v5, v0, :cond_40

    move v2, v1

    :goto_16
    if-nez v4, :cond_42

    :cond_18
    if-ne v4, v2, :cond_45

    aget-object v2, p0, v6

    aget-object v4, p1, v5

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_46

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v2, v5, 0x1

    move v6, v4

    goto :goto_b

    :cond_2a
    move v7, v1

    goto :goto_6

    :cond_2c
    move v0, v1

    goto :goto_9

    :cond_2e
    aget-object v4, p0, v6

    if-nez v4, :cond_d

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_b

    :cond_36
    aget-object v2, p1, v5

    if-nez v2, :cond_10

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_e

    :cond_3e
    move v4, v3

    goto :goto_13

    :cond_40
    move v2, v3

    goto :goto_16

    :cond_42
    if-eqz v2, :cond_18

    return v3

    :cond_45
    return v1

    :cond_46
    return v1
.end method

.method public static equals([F[F)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_7

    :cond_3
    if-nez p1, :cond_f

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    array-length v1, p0

    if-eqz v1, :cond_3

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    return v0

    :cond_f
    array-length v1, p1

    if-eqz v1, :cond_5

    goto :goto_6
.end method

.method public static equals([I[I)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_7

    :cond_3
    if-nez p1, :cond_f

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    array-length v1, p0

    if-eqz v1, :cond_3

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0

    :cond_f
    array-length v1, p1

    if-eqz v1, :cond_5

    goto :goto_6
.end method

.method public static equals([J[J)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_7

    :cond_3
    if-nez p1, :cond_f

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    array-length v1, p0

    if-eqz v1, :cond_3

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0

    :cond_f
    array-length v1, p1

    if-eqz v1, :cond_5

    goto :goto_6
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 10

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2a

    array-length v0, p0

    move v7, v0

    :goto_6
    if-eqz p1, :cond_2c

    array-length v0, p1

    :goto_9
    move v2, v1

    move v6, v1

    :goto_b
    if-lt v6, v7, :cond_2e

    :cond_d
    move v5, v2

    :goto_e
    if-lt v5, v0, :cond_36

    :cond_10
    if-ge v6, v7, :cond_3e

    move v4, v1

    :goto_13
    if-ge v5, v0, :cond_40

    move v2, v1

    :goto_16
    if-nez v4, :cond_42

    :cond_18
    if-ne v4, v2, :cond_45

    aget-object v2, p0, v6

    aget-object v4, p1, v5

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v2, v5, 0x1

    move v6, v4

    goto :goto_b

    :cond_2a
    move v7, v1

    goto :goto_6

    :cond_2c
    move v0, v1

    goto :goto_9

    :cond_2e
    aget-object v4, p0, v6

    if-nez v4, :cond_d

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_b

    :cond_36
    aget-object v2, p1, v5

    if-nez v2, :cond_10

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_e

    :cond_3e
    move v4, v3

    goto :goto_13

    :cond_40
    move v2, v3

    goto :goto_16

    :cond_42
    if-eqz v2, :cond_18

    return v3

    :cond_45
    return v1

    :cond_46
    return v1
.end method

.method public static hashCode([F)I
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    array-length v1, p0

    if-eqz v1, :cond_3

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    goto :goto_3
.end method

.method public static hashCode([I)I
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    array-length v1, p0

    if-eqz v1, :cond_3

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_3
.end method

.method public static hashCode([J)I
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    array-length v1, p0

    if-eqz v1, :cond_3

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    goto :goto_3
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .registers 5

    const/4 v1, 0x0

    if-eqz p0, :cond_8

    array-length v0, p0

    :goto_4
    move v2, v1

    :goto_5
    if-lt v2, v0, :cond_a

    return v1

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_a
    aget-object v3, p0, v2

    if-nez v3, :cond_11

    :goto_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_e
.end method

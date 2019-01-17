.class public final Lcom/google/android/gms/internal/nq;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public static a([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_8

    move v0, v1

    :goto_4
    if-lt v1, v0, :cond_a

    const/4 v0, -0x1

    return v0

    :cond_8
    array-length v0, p0

    goto :goto_4

    :cond_a
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lcom/google/android/gms/common/internal/s;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_15
    return v1
.end method

.method public static a(Ljava/lang/StringBuilder;[D)V
    .registers 6

    const/4 v0, 0x0

    array-length v1, p1

    :goto_2
    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    if-nez v0, :cond_13

    :goto_7
    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method public static a(Ljava/lang/StringBuilder;[F)V
    .registers 5

    const/4 v0, 0x0

    array-length v1, p1

    :goto_2
    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    if-nez v0, :cond_13

    :goto_7
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method public static a(Ljava/lang/StringBuilder;[I)V
    .registers 5

    const/4 v0, 0x0

    array-length v1, p1

    :goto_2
    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    if-nez v0, :cond_13

    :goto_7
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method public static a(Ljava/lang/StringBuilder;[J)V
    .registers 6

    const/4 v0, 0x0

    array-length v1, p1

    :goto_2
    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    if-nez v0, :cond_13

    :goto_7
    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method public static a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/StringBuilder;",
            "[TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    :goto_2
    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    if-nez v0, :cond_13

    :goto_7
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method public static a(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    array-length v1, p1

    :goto_2
    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    if-nez v0, :cond_1d

    :goto_7
    const-string/jumbo v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1d
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method public static a(Ljava/lang/StringBuilder;[Z)V
    .registers 5

    const/4 v0, 0x0

    array-length v1, p1

    :goto_2
    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    if-nez v0, :cond_13

    :goto_7
    aget-boolean v2, p1, v0

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method public static a([I)[Ljava/lang/Integer;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    array-length v1, p0

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v0, 0x0

    :goto_7
    if-lt v0, v1, :cond_b

    return-object v2

    :cond_a
    return-object v0

    :cond_b
    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static b([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    array-length v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_7
    if-lt v0, v1, :cond_a

    return-object v2

    :cond_a
    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static b([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/nq;->a([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static jp()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

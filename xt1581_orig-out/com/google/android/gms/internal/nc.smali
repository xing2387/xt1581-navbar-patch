.class public abstract Lcom/google/android/gms/internal/nc;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/nc$a;,
        Lcom/google/android/gms/internal/nc$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p2}, Lcom/google/android/gms/internal/nc$a;->iL()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_13

    invoke-virtual {p2}, Lcom/google/android/gms/internal/nc$a;->iL()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_25

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_12
    return-void

    :cond_13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/nc$a;->iV()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nc;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_25
    const-string/jumbo v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/internal/ny;->bs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12
.end method

.method private a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/android/gms/internal/nc$a;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_b
    if-lt v0, v1, :cond_14

    const-string/jumbo v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_14
    if-gtz v0, :cond_1f

    :goto_16
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_26

    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1f
    const-string/jumbo v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_26
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/nc;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)V

    goto :goto_1c
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/nc$a",
            "<TI;TO;>;",
            "Ljava/lang/Object;",
            ")TI;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/nc$a;->c(Lcom/google/android/gms/internal/nc$a;)Lcom/google/android/gms/internal/nc$b;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p2

    :cond_7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/nc$a;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/android/gms/internal/nc$a;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nc$a;->iM()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_11

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nc$a;->iT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/nc;->bo(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nc$a;->iS()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nc$a;->iT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/nc;->bp(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nc$a;->iT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/nc;->bq(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected b(Lcom/google/android/gms/internal/nc$a;)Ljava/lang/Object;
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nc$a;->iT()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nc$a;->iV()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_15

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nc$a;->iT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/nc;->bn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nc$a;->iT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/nc;->bn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_73

    move v0, v1

    :goto_20
    const-string/jumbo v4, "Concrete field shouldn\'t be value object: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nc$a;->iT()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v0, v4, v2}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nc$a;->iS()Z

    move-result v0

    if-nez v0, :cond_75

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nc;->iO()Ljava/util/HashMap;

    move-result-object v0

    :goto_38
    if-nez v0, :cond_7a

    :try_start_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_71} :catch_7f

    move-result-object v0

    return-object v0

    :cond_73
    move v0, v2

    goto :goto_20

    :cond_75
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nc;->iP()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_38

    :cond_7a
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catch_7f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract bn(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected abstract bo(Ljava/lang/String;)Z
.end method

.method protected bp(Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Concrete types not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bq(Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Concrete type arrays not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract iN()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nc$a",
            "<**>;>;"
        }
    .end annotation
.end method

.method public iO()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public iP()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nc;->iN()Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_c7

    const-string/jumbo v0, "{}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/nc$a;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/nc;->a(Lcom/google/android/gms/internal/nc$a;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/nc;->b(Lcom/google/android/gms/internal/nc$a;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/nc;->a(Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_74

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_50
    const-string/jumbo v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "\":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_7b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nc$a;->iM()I

    move-result v0

    packed-switch v0, :pswitch_data_d0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nc$a;->iR()Z

    move-result v0

    if-nez v0, :cond_c0

    invoke-direct {p0, v4, v1, v2}, Lcom/google/android/gms/internal/nc;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)V

    goto :goto_13

    :cond_74
    const-string/jumbo v6, "{"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_50

    :cond_7b
    const-string/jumbo v0, "null"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :pswitch_82
    const-string/jumbo v0, "\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, v2

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/nr;->d([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_13

    :pswitch_9e
    const-string/jumbo v0, "\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/android/gms/internal/nr;->e([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_13

    :pswitch_b9
    check-cast v2, Ljava/util/HashMap;

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/nz;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    goto/16 :goto_13

    :cond_c0
    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {p0, v4, v1, v2}, Lcom/google/android/gms/internal/nc;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Ljava/util/ArrayList;)V

    goto/16 :goto_13

    :cond_c7
    const-string/jumbo v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_25

    nop

    :pswitch_data_d0
    .packed-switch 0x8
        :pswitch_82
        :pswitch_9e
        :pswitch_b9
    .end packed-switch
.end method

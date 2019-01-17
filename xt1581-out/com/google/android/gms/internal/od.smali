.class public Lcom/google/android/gms/internal/od;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public static d([Ljava/lang/String;)[Lcom/google/android/gms/common/api/Scope;
    .registers 5

    const-string/jumbo v0, "scopeStrings can\'t be null."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    new-array v1, v0, [Lcom/google/android/gms/common/api/Scope;

    const/4 v0, 0x0

    :goto_a
    array-length v2, p0

    if-lt v0, v2, :cond_e

    return-object v1

    :cond_e
    new-instance v2, Lcom/google/android/gms/common/api/Scope;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.class public final Lcom/google/android/gms/internal/nr;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public static d([B)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    return-object v0
.end method

.method public static e([B)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    return-object v0
.end method

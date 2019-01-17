.class public final Lcom/google/android/gms/internal/ob;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method private static bE(I)Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, p0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static jA()Z
    .registers 1

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/google/android/gms/internal/ob;->bE(I)Z

    move-result v0

    return v0
.end method

.method public static jr()Z
    .registers 1

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/gms/internal/ob;->bE(I)Z

    move-result v0

    return v0
.end method

.method public static js()Z
    .registers 1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/google/android/gms/internal/ob;->bE(I)Z

    move-result v0

    return v0
.end method

.method public static jt()Z
    .registers 1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/google/android/gms/internal/ob;->bE(I)Z

    move-result v0

    return v0
.end method

.method public static ju()Z
    .registers 1

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/google/android/gms/internal/ob;->bE(I)Z

    move-result v0

    return v0
.end method

.method public static jv()Z
    .registers 1

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/gms/internal/ob;->bE(I)Z

    move-result v0

    return v0
.end method

.method public static jw()Z
    .registers 1

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/google/android/gms/internal/ob;->bE(I)Z

    move-result v0

    return v0
.end method

.method public static jx()Z
    .registers 1

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/google/android/gms/internal/ob;->bE(I)Z

    move-result v0

    return v0
.end method

.method public static jy()Z
    .registers 1

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/internal/ob;->bE(I)Z

    move-result v0

    return v0
.end method

.method public static jz()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ob;->jA()Z

    move-result v0

    return v0
.end method

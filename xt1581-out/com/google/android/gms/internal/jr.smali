.class public Lcom/google/android/gms/internal/jr;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static HU:Z


# direct methods
.method public static final isLoggable(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/google/android/gms/internal/jr;->HU:Z

    if-nez v1, :cond_c

    :cond_5
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_f

    :goto_b
    return v0

    :cond_c
    const/4 v1, 0x3

    if-lt p1, v1, :cond_5

    :cond_f
    const/4 v0, 0x1

    goto :goto_b
.end method

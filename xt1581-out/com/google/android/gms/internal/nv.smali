.class public final Lcom/google/android/gms/internal/nv;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/nt;


# static fields
.field private static RH:Lcom/google/android/gms/internal/nv;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized jq()Lcom/google/android/gms/internal/nt;
    .registers 2

    const-class v1, Lcom/google/android/gms/internal/nv;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/nv;->RH:Lcom/google/android/gms/internal/nv;

    if-eqz v0, :cond_b

    :goto_7
    sget-object v0, Lcom/google/android/gms/internal/nv;->RH:Lcom/google/android/gms/internal/nv;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    new-instance v0, Lcom/google/android/gms/internal/nv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nv;->RH:Lcom/google/android/gms/internal/nv;
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_7

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsedRealtime()J
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

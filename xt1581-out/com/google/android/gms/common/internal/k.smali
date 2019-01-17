.class public abstract Lcom/google/android/gms/common/internal/k;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final Mi:Ljava/lang/Object;

.field private static Qg:Lcom/google/android/gms/common/internal/k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/k;->Mi:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static K(Landroid/content/Context;)Lcom/google/android/gms/common/internal/k;
    .registers 4

    sget-object v1, Lcom/google/android/gms/common/internal/k;->Mi:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/common/internal/k;->Qg:Lcom/google/android/gms/common/internal/k;

    if-eqz v0, :cond_b

    :goto_7
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_17

    sget-object v0, Lcom/google/android/gms/common/internal/k;->Qg:Lcom/google/android/gms/common/internal/k;

    return-object v0

    :cond_b
    :try_start_b
    new-instance v0, Lcom/google/android/gms/common/internal/l;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/internal/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/common/internal/k;->Qg:Lcom/google/android/gms/common/internal/k;

    goto :goto_7

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_17

    throw v0
.end method


# virtual methods
.method public abstract a(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
.end method

.method public abstract a(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
.end method

.method public abstract b(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V
.end method

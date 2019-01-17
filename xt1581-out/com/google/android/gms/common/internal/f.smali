.class public abstract Lcom/google/android/gms/common/internal/f;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field private static final PB:Ljava/lang/Object;

.field private static PC:Ljava/lang/ClassLoader;

.field private static PD:Ljava/lang/Integer;


# instance fields
.field private PE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/f;->PB:Ljava/lang/Object;

    sput-object v1, Lcom/google/android/gms/common/internal/f;->PC:Ljava/lang/ClassLoader;

    sput-object v1, Lcom/google/android/gms/common/internal/f;->PD:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/f;->PE:Z

    return-void
.end method

.method private static a(Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_1
    const-string/jumbo v0, "NULL"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string/jumbo v1, "SAFE_PARCELABLE_NULL_STRING"

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_13} :catch_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_13} :catch_17

    move-result v0

    return v0

    :catch_15
    move-exception v0

    return v3

    :catch_17
    move-exception v0

    return v3
.end method

.method protected static bf(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/google/android/gms/common/internal/f;->iw()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_f

    :try_start_6
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/f;->a(Ljava/lang/Class;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_11

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x1

    return v0

    :catch_11
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method protected static iw()Ljava/lang/ClassLoader;
    .registers 2

    sget-object v1, Lcom/google/android/gms/common/internal/f;->PB:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/common/internal/f;->PC:Ljava/lang/ClassLoader;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method protected static ix()Ljava/lang/Integer;
    .registers 2

    sget-object v1, Lcom/google/android/gms/common/internal/f;->PB:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/common/internal/f;->PD:Ljava/lang/Integer;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method


# virtual methods
.method protected iy()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/f;->PE:Z

    return v0
.end method

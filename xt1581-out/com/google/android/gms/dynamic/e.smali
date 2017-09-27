.class public final Lcom/google/android/gms/dynamic/e;
.super Lcom/google/android/gms/dynamic/d$a;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/dynamic/d$a;"
    }
.end annotation


# instance fields
.field private final Xk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/dynamic/d$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/dynamic/e;->Xk:Ljava/lang/Object;

    return-void
.end method

.method public static f(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/dynamic/d;",
            ")TT;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    instance-of v0, p0, Lcom/google/android/gms/dynamic/e;

    if-nez v0, :cond_1e

    invoke-interface {p0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    if-eq v2, v4, :cond_23

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    check-cast p0, Lcom/google/android/gms/dynamic/e;

    iget-object v0, p0, Lcom/google/android/gms/dynamic/e;->Xk:Ljava/lang/Object;

    return-object v0

    :cond_23
    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_34

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :try_start_37
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_3a} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_3a} :catch_46
    .catch Ljava/lang/IllegalAccessException; {:try_start_37 .. :try_end_3a} :catch_50

    move-result-object v0

    return-object v0

    :catch_3c
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Binder object is null."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_46
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "remoteBinder is the wrong class."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_50
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Could not access the field in remoteBinder."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static m(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/dynamic/d;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/dynamic/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/e;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.class public abstract Lcom/google/android/gms/dynamic/g;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamic/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final Xl:Ljava/lang/String;

.field private Xm:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/dynamic/g;->Xl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final N(Landroid/content/Context;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamic/g$a;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/dynamic/g;->Xm:Ljava/lang/Object;

    if-eqz v0, :cond_7

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/dynamic/g;->Xm:Ljava/lang/Object;

    return-object v0

    :cond_7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :try_start_14
    iget-object v1, p0, Lcom/google/android/gms/dynamic/g;->Xl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/g;->d(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/dynamic/g;->Xm:Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_26} :catch_27
    .catch Ljava/lang/InstantiationException; {:try_start_14 .. :try_end_26} :catch_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_26} :catch_44

    goto :goto_4

    :catch_27
    move-exception v0

    new-instance v1, Lcom/google/android/gms/dynamic/g$a;

    const-string/jumbo v2, "Could not load creator class."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/dynamic/g$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_31
    new-instance v0, Lcom/google/android/gms/dynamic/g$a;

    const-string/jumbo v1, "Could not get remote context."

    invoke-direct {v0, v1}, Lcom/google/android/gms/dynamic/g$a;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3a
    move-exception v0

    new-instance v1, Lcom/google/android/gms/dynamic/g$a;

    const-string/jumbo v2, "Could not instantiate creator."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/dynamic/g$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_44
    move-exception v0

    new-instance v1, Lcom/google/android/gms/dynamic/g$a;

    const-string/jumbo v2, "Could not access creator."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/dynamic/g$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract d(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

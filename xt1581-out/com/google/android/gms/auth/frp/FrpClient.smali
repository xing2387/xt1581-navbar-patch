.class public Lcom/google/android/gms/auth/frp/FrpClient;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/frp/FrpClient$a;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/frp/FrpClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/google/android/gms/auth/frp/FrpClient$a;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/auth/frp/FrpClient$a",
            "<TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/auth/frp/FrpClient;->fX()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_8
    new-instance v1, Lcom/google/android/gms/common/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/a;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/nn;->jo()Lcom/google/android/gms/internal/nn;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/auth/frp/FrpClient;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v0, v1, v6}, Lcom/google/android/gms/internal/nn;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_43

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return-object v0

    :cond_1f
    :try_start_1f
    invoke-virtual {v1}, Lcom/google/android/gms/common/a;->hv()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/frp/a$a;->M(Landroid/os/IBinder;)Lcom/google/android/gms/auth/frp/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/frp/FrpClient$a;->b(Lcom/google/android/gms/auth/frp/a;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_38

    move-result-object v0

    :try_start_2b
    invoke-static {}, Lcom/google/android/gms/internal/nn;->jo()Lcom/google/android/gms/internal/nn;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/auth/frp/FrpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/google/android/gms/internal/nn;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_43

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_38
    move-exception v0

    :try_start_39
    invoke-static {}, Lcom/google/android/gms/internal/nn;->jo()Lcom/google/android/gms/internal/nn;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/auth/frp/FrpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/google/android/gms/internal/nn;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    throw v0
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private static fX()Landroid/content/Intent;
    .registers 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms.auth.frp.FRP_BIND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isChallengeRequired()Z
    .registers 3

    :try_start_0
    new-instance v0, Lcom/google/android/gms/auth/frp/FrpClient$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/frp/FrpClient$2;-><init>(Lcom/google/android/gms/auth/frp/FrpClient;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/frp/FrpClient;->a(Lcom/google/android/gms/auth/frp/FrpClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_e} :catch_10

    move-result v0

    return v0

    :catch_10
    move-exception v0

    const-string/jumbo v1, "FrpClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isChallengeSupported()Z
    .registers 3

    :try_start_0
    new-instance v0, Lcom/google/android/gms/auth/frp/FrpClient$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/frp/FrpClient$1;-><init>(Lcom/google/android/gms/auth/frp/FrpClient;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/frp/FrpClient;->a(Lcom/google/android/gms/auth/frp/FrpClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_e} :catch_10

    move-result v0

    return v0

    :catch_10
    move-exception v0

    const-string/jumbo v1, "FrpClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public unlockFactoryResetProtection(Lcom/google/android/gms/auth/frp/b;)Lcom/google/android/gms/auth/frp/d;
    .registers 4

    :try_start_0
    new-instance v0, Lcom/google/android/gms/auth/frp/FrpClient$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/frp/FrpClient$3;-><init>(Lcom/google/android/gms/auth/frp/FrpClient;Lcom/google/android/gms/auth/frp/b;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/frp/FrpClient;->a(Lcom/google/android/gms/auth/frp/FrpClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/frp/d;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    const-string/jumbo v1, "FrpClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/auth/frp/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/frp/d;-><init>(I)V

    return-object v0
.end method

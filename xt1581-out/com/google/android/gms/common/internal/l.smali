.class final Lcom/google/android/gms/common/internal/l;
.super Lcom/google/android/gms/common/internal/k;
.source "Unknown"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/l$a;,
        Lcom/google/android/gms/common/internal/l$b;
    }
.end annotation


# instance fields
.field private final Qh:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/common/internal/l$a;",
            "Lcom/google/android/gms/common/internal/l$b;",
            ">;"
        }
    .end annotation
.end field

.field private final Qi:Lcom/google/android/gms/internal/nn;

.field private final mHandler:Landroid/os/Handler;

.field private final mN:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/k;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/l;->Qh:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/l;->mN:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/l;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/google/android/gms/internal/nn;->jo()Lcom/google/android/gms/internal/nn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/l;->Qi:Lcom/google/android/gms/internal/nn;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/l;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->Qh:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/internal/l$a;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .registers 8

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->Qh:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->Qh:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/l$b;

    if-eqz v0, :cond_29

    iget-object v2, p0, Lcom/google/android/gms/common/internal/l;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/l$b;->a(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/common/internal/l$b;->a(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/l$b;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_68

    :goto_23
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/l$b;->isBound()Z

    move-result v0

    monitor-exit v1

    return v0

    :cond_29
    new-instance v0, Lcom/google/android/gms/common/internal/l$b;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/internal/l$b;-><init>(Lcom/google/android/gms/common/internal/l;Lcom/google/android/gms/common/internal/l$a;)V

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/common/internal/l$b;->a(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/internal/l$b;->bh(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/l;->Qh:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v0

    :cond_3d
    :try_start_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_57
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/l$b;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/l$b;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_23

    :pswitch_63
    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/internal/l$b;->bh(Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_3d .. :try_end_66} :catchall_3a

    goto :goto_23

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_57
        :pswitch_63
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/android/gms/common/internal/l;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->mN:Landroid/content/Context;

    return-object v0
.end method

.method private b(Lcom/google/android/gms/common/internal/l$a;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 10

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->Qh:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->Qh:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/l$b;

    if-eqz v0, :cond_1e

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/l$b;->a(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/common/internal/l$b;->b(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/l$b;->iG()Z

    move-result v2

    if-nez v2, :cond_55

    :goto_1c
    monitor-exit v1

    return-void

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Nonexistent connection status for service config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v0

    :cond_3b
    :try_start_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    iget-object v2, p0, Lcom/google/android/gms/common/internal/l;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/l;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_63
    .catchall {:try_start_3b .. :try_end_63} :catchall_38

    goto :goto_1c
.end method

.method static synthetic c(Lcom/google/android/gms/common/internal/l;)Lcom/google/android/gms/internal/nn;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->Qi:Lcom/google/android/gms/internal/nn;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/internal/l$a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/l$a;-><init>(Landroid/content/ComponentName;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/gms/common/internal/l;->a(Lcom/google/android/gms/common/internal/l$a;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/internal/l$a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/l$a;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/gms/common/internal/l;->a(Lcom/google/android/gms/common/internal/l$a;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/internal/l$a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/l$a;-><init>(Landroid/content/ComponentName;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/gms/common/internal/l;->b(Lcom/google/android/gms/common/internal/l$a;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/internal/l$a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/l$a;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/gms/common/internal/l;->b(Lcom/google/android/gms/common/internal/l$a;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    return v1

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/l$b;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->Qh:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_e
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/l$b;->iG()Z

    move-result v2

    if-nez v2, :cond_17

    :goto_14
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :cond_17
    const-string/jumbo v2, "GmsClientSupervisor"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/l$b;->bi(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/l;->Qh:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/l$b;->a(Lcom/google/android/gms/common/internal/l$b;)Lcom/google/android/gms/common/internal/l$a;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_27

    throw v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.class Lcom/google/android/gms/common/api/d$2;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic No:Lcom/google/android/gms/common/api/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/d;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_22

    if-nez p1, :cond_2c

    :goto_13
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->c(Lcom/google/android/gms/common/api/d;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_36

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->b(Lcom/google/android/gms/common/api/d;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_36

    goto :goto_13

    :catchall_36
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onConnectionSuspended(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    packed-switch p1, :pswitch_data_9e

    :goto_c
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :pswitch_16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->connect()V
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_21

    goto :goto_c

    :catchall_21
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :pswitch_2c
    :try_start_2c
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->hO()Z

    move-result v0

    if-nez v0, :cond_93

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    new-instance v1, Lcom/google/android/gms/common/api/d$a;

    iget-object v2, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/d$a;-><init>(Lcom/google/android/gms/common/api/d;)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/d;->Ne:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/d;->d(Lcom/google/android/gms/common/api/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    iget-object v2, v2, Lcom/google/android/gms/common/api/d;->Ne:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    iget-object v0, v0, Lcom/google/android/gms/common/api/d;->Nd:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    iget-object v1, v1, Lcom/google/android/gms/common/api/d;->Nd:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v2}, Lcom/google/android/gms/common/api/d;->e(Lcom/google/android/gms/common/api/d;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    iget-object v0, v0, Lcom/google/android/gms/common/api/d;->Nd:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    iget-object v1, v1, Lcom/google/android/gms/common/api/d;->Nd:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v2}, Lcom/google/android/gms/common/api/d;->f(Lcom/google/android/gms/common/api/d;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;I)V
    :try_end_91
    .catchall {:try_start_2c .. :try_end_91} :catchall_21

    goto/16 :goto_c

    :cond_93
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_16
    .end packed-switch
.end method

.class Lcom/android/server/policy/GlobalActions$16;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->takeScreenshot(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;

.field final synthetic val$partial:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "val$partial"    # Z

    .prologue
    .line 811
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    iput-boolean p2, p0, Lcom/android/server/policy/GlobalActions$16;->val$partial:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 13
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x1

    .line 814
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v7, v7, Lcom/android/server/policy/GlobalActions;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v7

    .line 815
    :try_start_6
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v8, v8, Lcom/android/server/policy/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_4b

    if-eq v8, p0, :cond_e

    monitor-exit v7

    .line 816
    return-void

    .line 818
    :cond_e
    :try_start_e
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 819
    .local v3, "messenger":Landroid/os/Messenger;
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 820
    .local v4, "msg":Landroid/os/Message;
    iget-boolean v8, p0, Lcom/android/server/policy/GlobalActions$16;->val$partial:Z

    if-eqz v8, :cond_1e

    const/4 v6, 0x2

    :cond_1e
    iput v6, v4, Landroid/os/Message;->what:I

    .line 822
    move-object v5, p0

    .line 823
    .local v5, "myConn":Landroid/content/ServiceConnection;
    new-instance v1, Lcom/android/server/policy/GlobalActions$16$1;

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v1, p0, v6, p0}, Lcom/android/server/policy/GlobalActions$16$1;-><init>(Lcom/android/server/policy/GlobalActions$16;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    .line 835
    .local v1, "h":Landroid/os/Handler;
    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v6, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 836
    const/4 v6, 0x0

    iput v6, v4, Landroid/os/Message;->arg2:I

    const/4 v6, 0x0

    iput v6, v4, Landroid/os/Message;->arg1:I
    :try_end_3d
    .catchall {:try_start_e .. :try_end_3d} :catchall_4b

    .line 847
    const-wide/16 v8, 0x3e8

    :try_start_3f
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_42} :catch_47
    .catchall {:try_start_3f .. :try_end_42} :catchall_4b

    .line 854
    :goto_42
    :try_start_42
    invoke-virtual {v3, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_45} :catch_49
    .catchall {:try_start_42 .. :try_end_45} :catchall_4b

    :goto_45
    monitor-exit v7

    .line 813
    return-void

    .line 848
    :catch_47
    move-exception v2

    .local v2, "ie":Ljava/lang/InterruptedException;
    goto :goto_42

    .line 855
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :catch_49
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_45

    .line 814
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "h":Landroid/os/Handler;
    .end local v3    # "messenger":Landroid/os/Messenger;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "myConn":Landroid/content/ServiceConnection;
    :catchall_4b
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 861
    return-void
.end method

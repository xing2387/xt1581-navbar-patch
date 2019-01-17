.class final Lcom/android/server/power/ShutdownThread$9;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->deviceRebootOrShutdownTimed(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$lock:Ljava/lang/Object;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$reboot:Z


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "val$reboot"    # Z
    .param p2, "val$reason"    # Ljava/lang/String;
    .param p3, "val$lock"    # Ljava/lang/Object;

    .prologue
    .line 793
    iput-boolean p1, p0, Lcom/android/server/power/ShutdownThread$9;->val$reboot:Z

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$9;->val$reason:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$9;->val$lock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownThread$9;->val$reboot:Z

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$9;->val$reason:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->-wrap1(ZLjava/lang/String;)V

    .line 796
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$9;->val$lock:Ljava/lang/Object;

    monitor-enter v1

    .line 797
    :try_start_a
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$9;->val$lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_11

    monitor-exit v1

    .line 794
    return-void

    .line 796
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

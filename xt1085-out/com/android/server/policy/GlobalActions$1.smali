.class Lcom/android/server/policy/GlobalActions$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 791
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    .line 794
    :try_start_5
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1d

    .line 795
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v2, v2, Lcom/android/server/policy/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 796
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/policy/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit v1

    .line 792
    return-void

    .line 793
    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.class final Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;
.super Landroid/os/Handler;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .prologue
    .line 5689
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;->this$1:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 5690
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5689
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 5695
    iget v1, p1, Landroid/os/Message;->what:I

    .line 5696
    .local v1, "userId":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 5697
    .local v0, "callback":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;->this$1:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-static {v2, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->-wrap1(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    .line 5698
    if-eqz v0, :cond_10

    .line 5699
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5694
    :cond_10
    return-void
.end method

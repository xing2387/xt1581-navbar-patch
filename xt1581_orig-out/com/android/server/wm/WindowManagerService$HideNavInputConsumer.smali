.class final Lcom/android/server/wm/WindowManagerService$HideNavInputConsumer;
.super Lcom/android/server/wm/InputConsumerImpl;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$InputConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HideNavInputConsumer"
.end annotation


# instance fields
.field private final mInputEventReceiver:Landroid/view/InputEventReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "inputEventReceiverFactory"    # Landroid/view/InputEventReceiver$Factory;

    .prologue
    .line 10139
    const-string/jumbo v0, "input consumer"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/InputConsumerImpl;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;Landroid/view/InputChannel;)V

    .line 10141
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$HideNavInputConsumer;->mClientChannel:Landroid/view/InputChannel;

    .line 10140
    invoke-interface {p3, v0, p2}, Landroid/view/InputEventReceiver$Factory;->createInputEventReceiver(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$HideNavInputConsumer;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 10138
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .prologue
    .line 10146
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$HideNavInputConsumer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->removeInputConsumer()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 10147
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$HideNavInputConsumer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 10148
    :try_start_d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$HideNavInputConsumer;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 10149
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$HideNavInputConsumer;->disposeChannelsLw()V
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_17

    monitor-exit v1

    .line 10145
    :cond_16
    return-void

    .line 10147
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

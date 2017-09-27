.class final Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;
.super Landroid/os/Handler;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/display/DisplayManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 1084
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1083
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1089
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_66

    .line 1088
    :goto_5
    return-void

    .line 1091
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-wrap18(Lcom/android/server/display/DisplayManagerService;)V

    goto :goto_5

    .line 1095
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-wrap16(Lcom/android/server/display/DisplayManagerService;)V

    goto :goto_5

    .line 1099
    :pswitch_12
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->-wrap6(Lcom/android/server/display/DisplayManagerService;II)V

    goto :goto_5

    .line 1103
    :pswitch_1c
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get8(Lcom/android/server/display/DisplayManagerService;)Landroid/view/WindowManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManagerInternal;->requestTraversalFromDisplayManager()V

    goto :goto_5

    .line 1107
    :pswitch_26
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get5(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1108
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get6(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get1(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayViewport;->copyFrom(Landroid/hardware/display/DisplayViewport;)V

    .line 1109
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get7(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get3(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayViewport;->copyFrom(Landroid/hardware/display/DisplayViewport;)V
    :try_end_4b
    .catchall {:try_start_2d .. :try_end_4b} :catchall_62

    monitor-exit v1

    .line 1111
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get4(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/input/InputManagerInternal;

    move-result-object v0

    .line 1112
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-get6(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get7(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    move-result-object v2

    .line 1111
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManagerInternal;->setDisplayViewports(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V

    goto :goto_5

    .line 1107
    :catchall_62
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1089
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_1c
        :pswitch_26
    .end packed-switch
.end method

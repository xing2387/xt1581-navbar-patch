.class Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;
.super Landroid/os/Handler;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field public static final MESSAGE_NOTIFY_MAGNIFICATION_REGION_CHANGED:I = 0x1

.field public static final MESSAGE_NOTIFY_RECTANGLE_ON_SCREEN_REQUESTED:I = 0x2

.field public static final MESSAGE_NOTIFY_ROTATION_CHANGED:I = 0x4

.field public static final MESSAGE_NOTIFY_USER_CONTEXT_CHANGED:I = 0x3

.field public static final MESSAGE_SHOW_MAGNIFIED_REGION_BOUNDS_IF_NEEDED:I = 0x5


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 885
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 886
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 885
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 891
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_78

    .line 890
    :goto_5
    return-void

    .line 893
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 894
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Region;

    .line 895
    .local v3, "magnifiedBounds":Landroid/graphics/Region;
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get0(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    move-result-object v7

    invoke-interface {v7, v3}, Landroid/view/WindowManagerInternal$MagnificationCallbacks;->onMagnificationRegionChanged(Landroid/graphics/Region;)V

    .line 896
    invoke-virtual {v3}, Landroid/graphics/Region;->recycle()V

    goto :goto_5

    .line 900
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "magnifiedBounds":Landroid/graphics/Region;
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 901
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 902
    .local v2, "left":I
    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 903
    .local v6, "top":I
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 904
    .local v4, "right":I
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 905
    .local v1, "bottom":I
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get0(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    move-result-object v7

    invoke-interface {v7, v2, v6, v4, v1}, Landroid/view/WindowManagerInternal$MagnificationCallbacks;->onRectangleOnScreenRequested(IIII)V

    .line 906
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_5

    .line 910
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "bottom":I
    .end local v2    # "left":I
    .end local v4    # "right":I
    .end local v6    # "top":I
    :pswitch_34
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get0(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManagerInternal$MagnificationCallbacks;->onUserContextChanged()V

    goto :goto_5

    .line 914
    :pswitch_3e
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 915
    .local v5, "rotation":I
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get0(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/view/WindowManagerInternal$MagnificationCallbacks;->onRotationChanged(I)V

    goto :goto_5

    .line 919
    .end local v5    # "rotation":I
    :pswitch_4a
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 920
    :try_start_53
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get4(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v7

    if-eqz v7, :cond_73

    .line 921
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get4(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 922
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V
    :try_end_73
    .catchall {:try_start_53 .. :try_end_73} :catchall_75

    :cond_73
    monitor-exit v8

    goto :goto_5

    .line 919
    :catchall_75
    move-exception v7

    monitor-exit v8

    throw v7

    .line 891
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1b
        :pswitch_34
        :pswitch_3e
        :pswitch_4a
    .end packed-switch
.end method

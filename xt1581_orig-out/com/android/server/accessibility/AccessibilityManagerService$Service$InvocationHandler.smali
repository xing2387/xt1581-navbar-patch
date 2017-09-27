.class final Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InvocationHandler"
.end annotation


# static fields
.field public static final MSG_CLEAR_ACCESSIBILITY_CACHE:I = 0x2

.field public static final MSG_ON_GESTURE:I = 0x1

.field private static final MSG_ON_MAGNIFICATION_CHANGED:I = 0x5

.field private static final MSG_ON_SOFT_KEYBOARD_STATE_CHANGED:I = 0x6


# instance fields
.field private mIsMagnificationCallbackEnabled:Z

.field private mIsSoftKeyboardCallbackEnabled:Z

.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    return v0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V
    .registers 6
    .param p1, "this$1"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 3449
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 3450
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 3446
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    .line 3447
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    .line 3449
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 3455
    iget v7, p1, Landroid/os/Message;->what:I

    .line 3456
    .local v7, "type":I
    packed-switch v7, :pswitch_data_5c

    .line 3481
    :pswitch_5
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3458
    :pswitch_1f
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3459
    .local v3, "gestureId":I
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v8, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap2(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    .line 3454
    .end local v3    # "gestureId":I
    :goto_26
    return-void

    .line 3463
    :pswitch_27
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap1(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    goto :goto_26

    .line 3467
    :pswitch_2d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3468
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Region;

    .line 3469
    .local v4, "region":Landroid/graphics/Region;
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 3470
    .local v5, "scale":F
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3471
    .local v1, "centerX":F
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 3472
    .local v2, "centerY":F
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v8, v4, v5, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap3(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/graphics/Region;FFF)V

    goto :goto_26

    .line 3476
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "centerX":F
    .end local v2    # "centerY":F
    .end local v4    # "region":Landroid/graphics/Region;
    .end local v5    # "scale":F
    :pswitch_53
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 3477
    .local v6, "showState":I
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v8, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap4(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    goto :goto_26

    .line 3456
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_27
        :pswitch_5
        :pswitch_5
        :pswitch_2d
        :pswitch_53
    .end packed-switch
.end method

.method public notifyMagnificationChangedLocked(Landroid/graphics/Region;FFF)V
    .registers 8
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    .line 3488
    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    if-nez v2, :cond_5

    .line 3490
    return-void

    .line 3493
    :cond_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3494
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3495
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 3496
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 3497
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 3499
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3500
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3487
    return-void
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .registers 5
    .param p1, "showState"    # I

    .prologue
    .line 3508
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    if-nez v1, :cond_5

    .line 3509
    return-void

    .line 3512
    :cond_5
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3513
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3507
    return-void
.end method

.method public setMagnificationCallbackEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 3504
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    .line 3503
    return-void
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 3517
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    .line 3516
    return-void
.end method

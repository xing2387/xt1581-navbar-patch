.class final Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TaskTapPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskTapPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TwoFingerScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskTapPointerEventListener;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/TaskTapPointerEventListener;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/TaskTapPointerEventListener;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;->this$0:Lcom/android/server/wm/TaskTapPointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/TaskTapPointerEventListener;Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/TaskTapPointerEventListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;-><init>(Lcom/android/server/wm/TaskTapPointerEventListener;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 189
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;->this$0:Lcom/android/server/wm/TaskTapPointerEventListener;

    invoke-static {v0, p2}, Lcom/android/server/wm/TaskTapPointerEventListener;->-wrap0(Lcom/android/server/wm/TaskTapPointerEventListener;Landroid/view/MotionEvent;)V

    .line 191
    const/4 v0, 0x1

    return v0

    .line 193
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;->this$0:Lcom/android/server/wm/TaskTapPointerEventListener;

    invoke-static {v0}, Lcom/android/server/wm/TaskTapPointerEventListener;->-wrap1(Lcom/android/server/wm/TaskTapPointerEventListener;)V

    .line 194
    const/4 v0, 0x0

    return v0
.end method

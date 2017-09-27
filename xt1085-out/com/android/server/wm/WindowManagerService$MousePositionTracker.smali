.class Lcom/android/server/wm/WindowManagerService$MousePositionTracker;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MousePositionTracker"
.end annotation


# instance fields
.field private mLatestEventWasMouse:Z

.field private mLatestMouseX:F

.field private mLatestMouseY:F


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseX:F

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseY:F

    return v0
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 11495
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 11496
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->updatePosition(FF)V

    .line 11494
    :goto_13
    return-void

    .line 11498
    :cond_14
    monitor-enter p0

    .line 11499
    const/4 v0, 0x0

    :try_start_16
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_1a

    monitor-exit p0

    goto :goto_13

    .line 11498
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method updatePosition(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 11486
    monitor-enter p0

    .line 11487
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    .line 11488
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseX:F

    .line 11489
    iput p2, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseY:F
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    monitor-exit p0

    .line 11485
    return-void

    .line 11486
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

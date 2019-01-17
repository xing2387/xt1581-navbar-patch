.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# instance fields
.field private final isSinglehandSupport:Z

.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private mInputFreezeReason:Ljava/lang/String;

.field private mInputWindowHandleCount:I

.field private mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 80
    const-string/jumbo v0, "ro.lenovo.single_hand"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->isSinglehandSupport:Z

    .line 84
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 83
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V
    .registers 5
    .param p1, "windowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    if-nez v0, :cond_a

    .line 181
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 183
    :cond_a
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    array-length v1, v1

    if-lt v0, v1, :cond_1f

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 185
    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    mul-int/lit8 v1, v1, 0x2

    .line 184
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 187
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    aput-object p1, v0, v1

    .line 179
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V
    .registers 13
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "child"    # Lcom/android/server/wm/WindowState;
    .param p3, "flags"    # I
    .param p4, "type"    # I
    .param p5, "isVisible"    # Z
    .param p6, "hasFocus"    # Z
    .param p7, "hasWallpaper"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 194
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 196
    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p2, v1, p3}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;I)I

    move-result p3

    .line 197
    iput p3, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 198
    iput p4, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 199
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 200
    iput-boolean p5, p1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 201
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 202
    iput-boolean p6, p1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 203
    iput-boolean p7, p1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 204
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_92

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->paused:Z

    :goto_2c
    iput-boolean v1, p1, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 205
    iget v1, p2, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 206
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 207
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mUid:I

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 208
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 210
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->isSinglehandSupport:Z

    if-eqz v1, :cond_4e

    .line 212
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getMotionTransform()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/input/InputWindowHandle;->motionTransform:J

    .line 215
    :cond_4e
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 216
    .local v0, "frame":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 217
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 218
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 219
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 221
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isDockedInEffect()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 223
    iget v1, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    iget v2, p2, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 224
    iget v1, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    iget v2, p2, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 225
    iget v1, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget v2, p2, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 226
    iget v1, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    iget v2, p2, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 229
    :cond_82
    iget v1, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_94

    .line 233
    iget v1, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float v1, v4, v1

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 242
    :goto_8e
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 192
    return-void

    .line 204
    .end local v0    # "frame":Landroid/graphics/Rect;
    :cond_92
    const/4 v1, 0x0

    goto :goto_2c

    .line 235
    .restart local v0    # "frame":Landroid/graphics/Rect;
    :cond_94
    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    goto :goto_8e
.end method

.method private clearInputWindowHandlesLw()V
    .registers 4

    .prologue
    .line 246
    :goto_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    if-eqz v0, :cond_10

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    .line 245
    :cond_10
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .registers 4

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    .line 601
    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 6
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 491
    if-eqz p1, :cond_f

    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 492
    :goto_6
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1

    .line 491
    :cond_f
    const/4 v0, 0x0

    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    goto :goto_6
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mInputFreezeReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    :cond_21
    return-void
.end method

.method public freezeInputDispatchingLw()V
    .registers 2

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-nez v0, :cond_11

    .line 569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 572
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    .line 574
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 563
    :cond_11
    return-void
.end method

.method public getPointerLayer()I
    .registers 3

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e2

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .registers 8
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 482
    if-eqz p1, :cond_f

    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 483
    :goto_6
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v2

    return-wide v2

    .line 482
    :cond_f
    const/4 v0, 0x0

    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    goto :goto_6
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptMotionBeforeQueueingNonInteractive(JI)I

    move-result v0

    return v0
.end method

.method public notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .registers 18
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v4, 0x0

    .line 115
    .local v4, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v7, 0x0

    .line 116
    .local v7, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    .line 117
    .local v3, "aboveSystem":Z
    iget-object v10, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v10, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 118
    if-eqz p2, :cond_16

    .line 119
    :try_start_a
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v7, v0

    .line 120
    .local v7, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v7, :cond_16

    .line 121
    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 124
    .end local v4    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    .end local v7    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_16
    if-nez v4, :cond_20

    if-eqz p1, :cond_20

    .line 125
    iget-object v10, p1, Lcom/android/server/input/InputApplicationHandle;->appWindowToken:Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    move-object v4, v0

    .line 128
    :cond_20
    if-eqz v7, :cond_7b

    .line 129
    const-string/jumbo v10, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Input event dispatching timed out sending to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 130
    iget-object v13, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v13}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    .line 129
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 131
    const-string/jumbo v13, ".  Reason: "

    .line 129
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v10, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 136
    const/16 v12, 0x7d3

    .line 135
    invoke-interface {v10, v12}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v6

    .line 137
    .local v6, "systemAlertLayer":I
    iget v10, v7, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-le v10, v6, :cond_79

    const/4 v3, 0x1

    .line 147
    .end local v6    # "systemAlertLayer":I
    :goto_5e
    iget-object v10, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    invoke-virtual {v10, v4, v7, v0}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_a .. :try_end_65} :catchall_a7

    monitor-exit v11

    .line 150
    if-eqz v4, :cond_c7

    iget-object v10, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v10, :cond_c7

    .line 154
    :try_start_6c
    iget-object v10, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v0, p3

    invoke-interface {v10, v0}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut(Ljava/lang/String;)Z

    move-result v2

    .line 155
    .local v2, "abort":Z
    if-nez v2, :cond_e3

    .line 158
    iget-wide v10, v4, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_78} :catch_e6

    return-wide v10

    .line 137
    .end local v2    # "abort":Z
    .restart local v6    # "systemAlertLayer":I
    :cond_79
    const/4 v3, 0x0

    goto :goto_5e

    .line 138
    .end local v6    # "systemAlertLayer":I
    :cond_7b
    if-eqz v4, :cond_aa

    .line 139
    :try_start_7d
    const-string/jumbo v10, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Input event dispatching timed out sending to application "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 140
    iget-object v13, v4, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    .line 139
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 141
    const-string/jumbo v13, ".  Reason: "

    .line 139
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_7d .. :try_end_a6} :catchall_a7

    goto :goto_5e

    .line 117
    :catchall_a7
    move-exception v10

    monitor-exit v11

    throw v10

    .line 143
    :cond_aa
    :try_start_aa
    const-string/jumbo v10, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Input event dispatching timed out .  Reason: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_aa .. :try_end_c6} :catchall_a7

    goto :goto_5e

    .line 162
    :cond_c7
    if-eqz v7, :cond_e3

    .line 166
    :try_start_c9
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    .line 167
    iget-object v11, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v11, v11, Lcom/android/server/wm/Session;->mPid:I

    .line 166
    move-object/from16 v0, p3

    invoke-interface {v10, v11, v3, v0}, Landroid/app/IActivityManager;->inputDispatchingTimedOut(IZLjava/lang/String;)J
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_c9 .. :try_end_d6} :catch_e2

    move-result-wide v8

    .line 168
    .local v8, "timeout":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-ltz v10, :cond_e3

    .line 171
    const-wide/32 v10, 0xf4240

    mul-long/2addr v10, v8

    return-wide v10

    .line 173
    .end local v8    # "timeout":J
    :catch_e2
    move-exception v5

    .line 176
    :cond_e3
    :goto_e3
    const-wide/16 v10, 0x0

    return-wide v10

    .line 160
    :catch_e6
    move-exception v5

    .local v5, "ex":Landroid/os/RemoteException;
    goto :goto_e3
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "lensCovered"    # Z

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 457
    return-void
.end method

.method public notifyConfigurationChanged()V
    .registers 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 428
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 429
    :try_start_8
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    if-nez v0, :cond_14

    .line 430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    .line 431
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit v1

    .line 425
    return-void

    .line 428
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .registers 7
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 93
    if-nez p1, :cond_3

    .line 94
    return-void

    .line 97
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 98
    :try_start_8
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 99
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_2d

    .line 100
    const-string/jumbo v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_2f

    :cond_2d
    monitor-exit v2

    .line 92
    return-void

    .line 97
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_2f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    .line 451
    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 4
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .prologue
    const/4 v1, 0x1

    .line 542
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_a

    .line 547
    iput-boolean v1, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 548
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 541
    :cond_a
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 3
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .prologue
    .line 553
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_b

    .line 558
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 559
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 552
    :cond_b
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 591
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_9

    .line 596
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    .line 597
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 590
    :cond_9
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .registers 6
    .param p1, "newApp"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v2, 0x0

    .line 530
    if-nez p1, :cond_b

    .line 531
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    .line 528
    :goto_a
    return-void

    .line 533
    :cond_b
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 534
    .local v0, "handle":Lcom/android/server/input/InputApplicationHandle;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 535
    iget-wide v2, p1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput-wide v2, v0, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 537
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    goto :goto_a
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .registers 5
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "updateInputWindows"    # Z

    .prologue
    const/4 v1, 0x0

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_1b

    .line 512
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 516
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 519
    :cond_11
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 520
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 522
    if-eqz p2, :cond_1b

    .line 523
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 506
    :cond_1b
    return-void
.end method

.method public setUpdateInputWindowsNeededLw()V
    .registers 2

    .prologue
    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 251
    return-void
.end method

.method public thawInputDispatchingLw()V
    .registers 2

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_d

    .line 584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 585
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    .line 586
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 578
    :cond_d
    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .registers 40
    .param p1, "force"    # Z

    .prologue
    .line 257
    if-nez p1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-eqz v2, :cond_b1

    .line 260
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 269
    const/16 v23, 0x0

    .line 272
    .local v23, "disableWallpaperTouchEvents":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_b2

    const/16 v27, 0x1

    .line 273
    .local v27, "inDrag":Z
    :goto_19
    if-eqz v27, :cond_2e

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v0, v2, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v26, v0

    .line 278
    .local v26, "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v26, :cond_b6

    .line 279
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 286
    .end local v26    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_2e
    :goto_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v2, :cond_c1

    const/16 v28, 0x1

    .line 287
    .local v28, "inPositioning":Z
    :goto_38
    if-eqz v28, :cond_4d

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    iget-object v0, v2, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v26, v0

    .line 292
    .restart local v26    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v26, :cond_c5

    .line 293
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 300
    .end local v26    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_4d
    :goto_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v2, :cond_d0

    const/16 v21, 0x1

    .line 302
    .local v21, "addInputConsumerHandle":Z
    :goto_57
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v2, :cond_d3

    const/16 v22, 0x1

    .line 304
    .local v22, "addWallpaperInputConsumerHandle":Z
    :goto_61
    const/4 v12, 0x0

    .line 307
    .local v12, "mSinglehandTopView":Lcom/android/server/wm/WindowState;
    const/16 v30, 0x0

    .line 308
    .local v30, "mSinglehandLeftView":Lcom/android/server/wm/WindowState;
    const/16 v31, 0x0

    .line 312
    .local v31, "mSinglehandRightView":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v32

    .line 313
    .local v32, "numDisplays":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v35, v0

    .line 314
    .local v35, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    const/16 v25, 0x0

    .end local v12    # "mSinglehandTopView":Lcom/android/server/wm/WindowState;
    .end local v30    # "mSinglehandLeftView":Lcom/android/server/wm/WindowState;
    .end local v31    # "mSinglehandRightView":Lcom/android/server/wm/WindowState;
    .local v25, "displayNdx":I
    :goto_7a
    move/from16 v0, v25

    move/from16 v1, v32

    if-ge v0, v1, :cond_1d7

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/wm/DisplayContent;

    .line 316
    .local v24, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v37

    .line 317
    .local v37, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v36, v2, -0x1

    .local v36, "winNdx":I
    :goto_98
    if-ltz v36, :cond_1d3

    .line 318
    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 319
    .local v4, "child":Lcom/android/server/wm/WindowState;
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    move-object/from16 v29, v0

    .line 320
    .local v29, "inputChannel":Landroid/view/InputChannel;
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 321
    .local v3, "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v29, :cond_ae

    if-nez v3, :cond_d6

    .line 317
    :cond_ae
    :goto_ae
    add-int/lit8 v36, v36, -0x1

    goto :goto_98

    .line 258
    .end local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v4    # "child":Lcom/android/server/wm/WindowState;
    .end local v21    # "addInputConsumerHandle":Z
    .end local v22    # "addWallpaperInputConsumerHandle":Z
    .end local v23    # "disableWallpaperTouchEvents":Z
    .end local v24    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v25    # "displayNdx":I
    .end local v27    # "inDrag":Z
    .end local v28    # "inPositioning":Z
    .end local v29    # "inputChannel":Landroid/view/InputChannel;
    .end local v32    # "numDisplays":I
    .end local v35    # "wallpaperController":Lcom/android/server/wm/WallpaperController;
    .end local v36    # "winNdx":I
    .end local v37    # "windows":Lcom/android/server/wm/WindowList;
    :cond_b1
    return-void

    .line 272
    .restart local v23    # "disableWallpaperTouchEvents":Z
    :cond_b2
    const/16 v27, 0x0

    goto/16 :goto_19

    .line 281
    .restart local v26    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v27    # "inDrag":Z
    :cond_b6
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v10, "Drag is in progress but there is no drag window handle."

    invoke-static {v2, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 286
    .end local v26    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_c1
    const/16 v28, 0x0

    goto/16 :goto_38

    .line 295
    .restart local v26    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v28    # "inPositioning":Z
    :cond_c5
    const-string/jumbo v2, "WindowManager"

    .line 296
    const-string/jumbo v10, "Repositioning is in progress but there is no drag window handle."

    .line 295
    invoke-static {v2, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    .line 300
    .end local v26    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_d0
    const/16 v21, 0x0

    .restart local v21    # "addInputConsumerHandle":Z
    goto :goto_57

    .line 302
    :cond_d3
    const/16 v22, 0x0

    .restart local v22    # "addWallpaperInputConsumerHandle":Z
    goto :goto_61

    .line 321
    .restart local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v4    # "child":Lcom/android/server/wm/WindowState;
    .restart local v24    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v25    # "displayNdx":I
    .restart local v29    # "inputChannel":Landroid/view/InputChannel;
    .restart local v32    # "numDisplays":I
    .restart local v35    # "wallpaperController":Lcom/android/server/wm/WallpaperController;
    .restart local v36    # "winNdx":I
    .restart local v37    # "windows":Lcom/android/server/wm/WindowList;
    :cond_d6
    iget-boolean v2, v4, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v2, :cond_ae

    .line 322
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isAdjustedForMinimizedDock()Z

    move-result v2

    .line 321
    if-nez v2, :cond_ae

    .line 326
    if-eqz v21, :cond_ff

    .line 327
    iget v2, v3, Lcom/android/server/input/InputWindowHandle;->layer:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v10, v10, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v10, v10, Lcom/android/server/input/InputWindowHandle;->layer:I

    if-gt v2, v10, :cond_ff

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v2, v2, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 329
    const/16 v21, 0x0

    .line 332
    :cond_ff
    if-eqz v22, :cond_118

    .line 333
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7dd

    if-ne v2, v10, :cond_118

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v2, v2, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 336
    const/16 v22, 0x0

    .line 340
    :cond_118
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 341
    .local v5, "flags":I
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v34, v0

    .line 342
    .local v34, "privateFlags":I
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 344
    .local v6, "type":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-ne v4, v2, :cond_181

    const/4 v8, 0x1

    .line 345
    .local v8, "hasFocus":Z
    :goto_12d
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v7

    .line 346
    .local v7, "isVisible":Z
    move/from16 v0, v34

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_139

    .line 349
    const/16 v23, 0x1

    .line 351
    :cond_139
    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_185

    .line 352
    move/from16 v0, v34

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_185

    .line 353
    if-eqz v23, :cond_183

    const/4 v9, 0x0

    .line 354
    .local v9, "hasWallpaper":Z
    :goto_14a
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_187

    const/16 v33, 0x1

    .line 358
    .local v33, "onDefaultDisplay":Z
    :goto_152
    if-eqz v27, :cond_161

    if-eqz v7, :cond_161

    if-eqz v33, :cond_161

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    .line 366
    :cond_161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isSystemInSingleHandMode()Z

    move-result v2

    if-eqz v2, :cond_18a

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18a

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    const-string/jumbo v10, "GSH-TopView"

    .line 366
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18a

    .line 368
    move-object v12, v4

    .local v12, "mSinglehandTopView":Lcom/android/server/wm/WindowState;
    goto/16 :goto_ae

    .line 344
    .end local v7    # "isVisible":Z
    .end local v8    # "hasFocus":Z
    .end local v9    # "hasWallpaper":Z
    .end local v12    # "mSinglehandTopView":Lcom/android/server/wm/WindowState;
    .end local v33    # "onDefaultDisplay":Z
    :cond_181
    const/4 v8, 0x0

    .restart local v8    # "hasFocus":Z
    goto :goto_12d

    .line 353
    .restart local v7    # "isVisible":Z
    :cond_183
    const/4 v9, 0x1

    .restart local v9    # "hasWallpaper":Z
    goto :goto_14a

    .line 351
    .end local v9    # "hasWallpaper":Z
    :cond_185
    const/4 v9, 0x0

    .restart local v9    # "hasWallpaper":Z
    goto :goto_14a

    .line 354
    :cond_187
    const/16 v33, 0x0

    .restart local v33    # "onDefaultDisplay":Z
    goto :goto_152

    .line 370
    :cond_18a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isSystemInSingleHandMode()Z

    move-result v2

    if-eqz v2, :cond_1ab

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1ab

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v2

    .line 371
    const-string/jumbo v10, "GSH-LeftView"

    .line 370
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1ab

    .line 372
    move-object/from16 v30, v4

    .local v30, "mSinglehandLeftView":Lcom/android/server/wm/WindowState;
    goto/16 :goto_ae

    .line 373
    .end local v30    # "mSinglehandLeftView":Lcom/android/server/wm/WindowState;
    :cond_1ab
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isSystemInSingleHandMode()Z

    move-result v2

    if-eqz v2, :cond_1cc

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1cc

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    const-string/jumbo v10, "GSH-RightView"

    .line 373
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1cc

    .line 375
    move-object/from16 v31, v4

    .local v31, "mSinglehandRightView":Lcom/android/server/wm/WindowState;
    goto/16 :goto_ae

    .end local v31    # "mSinglehandRightView":Lcom/android/server/wm/WindowState;
    :cond_1cc
    move-object/from16 v2, p0

    .line 378
    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    goto/16 :goto_ae

    .line 314
    .end local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v4    # "child":Lcom/android/server/wm/WindowState;
    .end local v5    # "flags":I
    .end local v6    # "type":I
    .end local v7    # "isVisible":Z
    .end local v8    # "hasFocus":Z
    .end local v9    # "hasWallpaper":Z
    .end local v29    # "inputChannel":Landroid/view/InputChannel;
    .end local v33    # "onDefaultDisplay":Z
    .end local v34    # "privateFlags":I
    :cond_1d3
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_7a

    .line 385
    .end local v24    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v36    # "winNdx":I
    .end local v37    # "windows":Lcom/android/server/wm/WindowList;
    :cond_1d7
    if-eqz v12, :cond_1f3

    .line 386
    iget-object v11, v12, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 387
    iget-object v2, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-ne v12, v2, :cond_269

    const/16 v16, 0x1

    .line 387
    :goto_1eb
    const/4 v15, 0x1

    .line 389
    const/16 v17, 0x0

    move-object/from16 v10, p0

    .line 386
    invoke-direct/range {v10 .. v17}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    .line 394
    :cond_1f3
    if-eqz v30, :cond_21e

    .line 395
    move-object/from16 v0, v30

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 396
    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v16, v0

    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v30

    if-ne v0, v2, :cond_26c

    const/16 v19, 0x1

    .line 396
    :goto_213
    const/16 v18, 0x1

    .line 398
    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v15, v30

    .line 395
    invoke-direct/range {v13 .. v20}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    .line 401
    :cond_21e
    if-eqz v31, :cond_249

    .line 402
    move-object/from16 v0, v31

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 403
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v16, v0

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v31

    if-ne v0, v2, :cond_26f

    const/16 v19, 0x1

    .line 403
    :goto_23e
    const/16 v18, 0x1

    .line 405
    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v15, v31

    .line 402
    invoke-direct/range {v13 .. v20}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    .line 409
    :cond_249
    if-eqz v22, :cond_258

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v2, v2, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 415
    :cond_258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {v2, v10}, Lcom/android/server/input/InputManagerService;->setInputWindows([Lcom/android/server/input/InputWindowHandle;)V

    .line 418
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/InputMonitor;->clearInputWindowHandlesLw()V

    .line 256
    return-void

    .line 388
    :cond_269
    const/16 v16, 0x0

    goto :goto_1eb

    .line 397
    :cond_26c
    const/16 v19, 0x0

    goto :goto_213

    .line 404
    :cond_26f
    const/16 v19, 0x0

    goto :goto_23e
.end method

.method public waitForInputDevicesReady(J)Z
    .registers 6
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 438
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 439
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-nez v1, :cond_c

    .line 441
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_13
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 445
    :cond_c
    :goto_c
    :try_start_c
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_10

    monitor-exit v2

    return v1

    .line 438
    :catchall_10
    move-exception v1

    monitor-exit v2

    throw v1

    .line 442
    :catch_13
    move-exception v0

    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_c
.end method

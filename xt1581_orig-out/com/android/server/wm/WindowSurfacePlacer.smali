.class Lcom/android/server/wm/WindowSurfacePlacer;
.super Ljava/lang/Object;
.source "WindowSurfacePlacer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;
    }
.end annotation


# static fields
.field static final SET_FORCE_HIDING_CHANGED:I = 0x4

.field static final SET_ORIENTATION_CHANGE_COMPLETE:I = 0x8

.field static final SET_TURN_ON_SCREEN:I = 0x10

.field static final SET_UPDATE_ROTATION:I = 0x1

.field static final SET_WALLPAPER_ACTION_PENDING:I = 0x20

.field static final SET_WALLPAPER_MAY_CHANGE:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoBrightnessAdjustment:F

.field private mButtonBrightness:F

.field private mDeferDepth:I

.field private mDisplayHasContent:Z

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field mHoldScreenWindow:Lcom/android/server/wm/WindowState;

.field private mInLayout:Z

.field private mLastWindowFreezeSource:Ljava/lang/Object;

.field private mLayoutRepeatCount:I

.field private mObscureApplicationContentOnSecondaryDisplays:Z

.field private mObscured:Z

.field mObsuringWindow:Lcom/android/server/wm/WindowState;

.field mOrientationChangeComplete:Z

.field private final mPendingDestroyingSurfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferredModeId:I

.field private mPreferredRefreshRate:F

.field private mScreenBrightness:F

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSustainedPerformanceModeCurrent:Z

.field private mSustainedPerformanceModeEnabled:Z

.field private mSyswin:Z

.field private final mTmpContentRect:Landroid/graphics/Rect;

.field private final mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

.field private final mTmpStartRect:Landroid/graphics/Rect;

.field private mTraversalScheduled:Z

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mWallpaperActionPending:Z

.field private final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

.field private mWallpaperForceHidingChanged:Z

.field mWallpaperMayChange:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    .line 105
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperActionPending:Z

    .line 107
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperForceHidingChanged:Z

    .line 108
    iput-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 109
    iput-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 110
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    .line 111
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    .line 112
    iput v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    .line 113
    iput v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    .line 115
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mAutoBrightnessAdjustment:F

    .line 116
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mUserActivityTimeout:J

    .line 117
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mUpdateRotation:Z

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpStartRect:Landroid/graphics/Rect;

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpContentRect:Landroid/graphics/Rect;

    .line 123
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDisplayHasContent:Z

    .line 127
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredRefreshRate:F

    .line 131
    iput v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredModeId:I

    .line 134
    iput v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 136
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeEnabled:Z

    .line 137
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeCurrent:Z

    .line 141
    iput-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 143
    iput-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObsuringWindow:Lcom/android/server/wm/WindowState;

    .line 149
    new-instance v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    invoke-direct {v0, v3}, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;-><init>(Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    .line 154
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 153
    return-void
.end method

.method private applySurfaceChangesTransaction(ZIII)V
    .registers 39
    .param p1, "recoveringMemory"    # Z
    .param p2, "numDisplays"    # I
    .param p3, "defaultDw"    # I
    .param p4, "defaultDh"    # I

    .prologue
    .line 599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v4, :cond_15

    .line 600
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Lcom/android/server/wm/Watermark;->positionSurface(II)V

    .line 602
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v4, :cond_2a

    .line 603
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(II)V

    .line 605
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-eqz v4, :cond_45

    .line 606
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    .line 607
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .line 606
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/server/wm/CircularDisplayMask;->positionSurface(III)V

    .line 609
    :cond_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-eqz v4, :cond_60

    .line 610
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    .line 611
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .line 610
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/server/wm/EmulatorDisplayOverlay;->positionSurface(III)V

    .line 614
    :cond_60
    const/16 v19, 0x0

    .line 616
    .local v19, "focusDisplayed":Z
    const/16 v16, 0x0

    .local v16, "displayNdx":I
    :goto_64
    move/from16 v0, v16

    move/from16 v1, p2

    if-ge v0, v1, :cond_3d0

    .line 617
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/DisplayContent;

    .line 618
    .local v14, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/16 v30, 0x0

    .line 619
    .local v30, "updateAllDrawn":Z
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v33

    .line 620
    .local v33, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v15

    .line 621
    .local v15, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    .line 622
    .local v5, "displayId":I
    iget v0, v15, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v17, v0

    .line 623
    .local v17, "dw":I
    iget v13, v15, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 624
    .local v13, "dh":I
    iget v0, v15, Landroid/view/DisplayInfo;->appWidth:I

    move/from16 v22, v0

    .line 625
    .local v22, "innerDw":I
    iget v0, v15, Landroid/view/DisplayInfo;->appHeight:I

    move/from16 v21, v0

    .line 626
    .local v21, "innerDh":I
    if-nez v5, :cond_293

    const/16 v23, 0x1

    .line 629
    .local v23, "isDefaultDisplay":Z
    :goto_98
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mDisplayHasContent:Z

    .line 630
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredRefreshRate:F

    .line 631
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredModeId:I

    .line 633
    const/16 v26, 0x0

    .line 635
    .local v26, "repeats":I
    :goto_a9
    add-int/lit8 v26, v26, 0x1

    .line 636
    const/4 v4, 0x6

    move/from16 v0, v26

    if-le v0, v4, :cond_297

    .line 637
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Animation repeat aborted after too many iterations"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v4, 0x0

    iput-boolean v4, v14, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 692
    :cond_bb
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    .line 693
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    .line 694
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->resetDimming()V

    .line 697
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_34e

    const/16 v27, 0x0

    .line 699
    .local v27, "someoneLosingFocus":Z
    :goto_d6
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v20, v4, -0x1

    .local v20, "i":I
    :goto_dc
    if-ltz v20, :cond_3a4

    .line 700
    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/wm/WindowState;

    .line 701
    .local v31, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v28

    .line 702
    .local v28, "task":Lcom/android/server/wm/Task;
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mObscured:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    if-eq v4, v6, :cond_352

    const/16 v25, 0x1

    .line 705
    .local v25, "obscuredChanged":Z
    :goto_f8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    move-object/from16 v0, v31

    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mObscured:Z

    .line 706
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    if-nez v4, :cond_10d

    .line 707
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v15}, Lcom/android/server/wm/WindowSurfacePlacer;->handleNotObscuredLocked(Lcom/android/server/wm/WindowState;Landroid/view/DisplayInfo;)V

    .line 710
    :cond_10d
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->applyDimLayerIfNeeded()V

    .line 712
    if-eqz v23, :cond_12d

    if-eqz v25, :cond_12d

    .line 713
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    .line 712
    if-eqz v4, :cond_12d

    .line 713
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    .line 712
    if-eqz v4, :cond_12d

    .line 717
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->updateWallpaperVisibility()V

    .line 720
    :cond_12d
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v32, v0

    .line 726
    .local v32, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v4

    if-eqz v4, :cond_190

    .line 729
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    .line 730
    .local v24, "left":I
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    .line 731
    .local v29, "top":I
    if-eqz v28, :cond_359

    .line 732
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v4

    if-nez v4, :cond_356

    .line 733
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v10

    .line 734
    :goto_15d
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_16d

    .line 735
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v4

    if-eqz v4, :cond_35c

    .line 742
    :cond_16d
    :goto_16d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v4, :cond_180

    .line 743
    if-nez v5, :cond_180

    .line 744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v4}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 748
    :cond_180
    :try_start_180
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-interface {v4, v0, v1}, Landroid/view/IWindow;->moved(II)V
    :try_end_18b
    .catch Landroid/os/RemoteException; {:try_start_180 .. :try_end_18b} :catch_3e6

    .line 751
    :goto_18b
    const/4 v4, 0x0

    move-object/from16 v0, v31

    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 755
    .end local v24    # "left":I
    .end local v29    # "top":I
    :cond_190
    const/4 v4, 0x0

    move-object/from16 v0, v31

    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 758
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_1df

    .line 761
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowStateAnimator;->deferToPendingTransaction()V

    .line 764
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked()Z

    move-result v12

    .line 765
    .local v12, "committed":Z
    if-eqz v23, :cond_1cc

    if-eqz v12, :cond_1cc

    .line 766
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7e7

    if-ne v4, v6, :cond_1b6

    .line 771
    iget v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 778
    :cond_1b6
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x100000

    and-int/2addr v4, v6

    if-eqz v4, :cond_1cc

    .line 781
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    .line 782
    iget v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 789
    :cond_1cc
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationStarting()Z

    move-result v4

    if-nez v4, :cond_1d8

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowStateAnimator;->isWaitingForOpening()Z

    move-result v4

    if-eqz v4, :cond_37f

    .line 800
    :cond_1d8
    :goto_1d8
    move-object/from16 v0, v32

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    .line 803
    .end local v12    # "committed":Z
    :cond_1df
    move-object/from16 v0, v31

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 809
    .local v11, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v11, :cond_270

    iget-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v4, :cond_1f3

    iget-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    if-eqz v4, :cond_1f3

    .line 810
    iget-object v4, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    .line 809
    if-eqz v4, :cond_270

    .line 811
    :cond_1f3
    iget-wide v6, v11, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-eqz v4, :cond_218

    .line 812
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v6, v4

    iput-wide v6, v11, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:J

    .line 813
    const/4 v4, 0x0

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    const/4 v4, 0x0

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    .line 814
    const/4 v4, 0x0

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindowsExcludingSaved:I

    .line 815
    const/4 v4, 0x0

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindowsExclusingSaved:I

    .line 816
    const/4 v4, 0x0

    iput-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 818
    :cond_218
    iget-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v4, :cond_245

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn(Z)Z

    move-result v4

    if-eqz v4, :cond_245

    .line 833
    iget-object v4, v11, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v31

    if-eq v0, v4, :cond_384

    .line 834
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isInteresting()Z

    move-result v4

    if-eqz v4, :cond_245

    .line 835
    iget v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    .line 836
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v4

    if-eqz v4, :cond_245

    .line 837
    iget v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    .line 845
    const/16 v30, 0x1

    .line 853
    :cond_245
    :goto_245
    iget-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    if-nez v4, :cond_270

    .line 854
    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn(Z)Z

    move-result v4

    .line 853
    if-eqz v4, :cond_270

    .line 855
    iget-object v4, v11, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v31

    if-eq v0, v4, :cond_270

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isInteresting()Z

    move-result v4

    if-eqz v4, :cond_270

    .line 856
    iget v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindowsExcludingSaved:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindowsExcludingSaved:I

    .line 857
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v4

    if-eqz v4, :cond_270

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isAnimatingWithSavedSurface()Z

    move-result v4

    if-eqz v4, :cond_39a

    .line 872
    :cond_270
    :goto_270
    if-eqz v23, :cond_286

    if-eqz v27, :cond_286

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v31

    if-ne v0, v4, :cond_286

    .line 873
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v4

    .line 872
    if-eqz v4, :cond_286

    .line 874
    const/16 v19, 0x1

    .line 877
    :cond_286
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->updateResizingWindows(Lcom/android/server/wm/WindowState;)V

    .line 699
    add-int/lit8 v20, v20, -0x1

    goto/16 :goto_dc

    .line 626
    .end local v11    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v20    # "i":I
    .end local v23    # "isDefaultDisplay":Z
    .end local v25    # "obscuredChanged":Z
    .end local v26    # "repeats":I
    .end local v27    # "someoneLosingFocus":Z
    .end local v28    # "task":Lcom/android/server/wm/Task;
    .end local v31    # "w":Lcom/android/server/wm/WindowState;
    .end local v32    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_293
    const/16 v23, 0x0

    .restart local v23    # "isDefaultDisplay":Z
    goto/16 :goto_98

    .line 645
    .restart local v26    # "repeats":I
    :cond_297
    iget v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2b5

    .line 646
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()Z

    move-result v4

    .line 645
    if-eqz v4, :cond_2b5

    .line 647
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowLayersController;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    .line 648
    const/4 v4, 0x1

    iput-boolean v4, v14, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 651
    :cond_2b5
    if-eqz v23, :cond_2d6

    .line 652
    iget v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2d6

    .line 654
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v4

    if-eqz v4, :cond_2d6

    .line 655
    const/4 v4, 0x1

    iput-boolean v4, v14, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 656
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x12

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 660
    :cond_2d6
    iget v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2df

    .line 661
    const/4 v4, 0x1

    iput-boolean v4, v14, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 665
    :cond_2df
    const/4 v4, 0x4

    move/from16 v0, v26

    if-ge v0, v4, :cond_330

    .line 666
    const/4 v4, 0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_32e

    const/4 v4, 0x1

    .line 667
    :goto_2ea
    const/4 v6, 0x0

    .line 666
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4, v6}, Lcom/android/server/wm/WindowSurfacePlacer;->performLayoutLockedInner(Lcom/android/server/wm/DisplayContent;ZZ)V

    .line 674
    :goto_2f0
    const/4 v4, 0x0

    iput v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 676
    if-eqz v23, :cond_348

    .line 677
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v17

    invoke-interface {v4, v0, v13}, Landroid/view/WindowManagerPolicy;->beginPostLayoutPolicyLw(II)V

    .line 678
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v20, v4, -0x1

    .restart local v20    # "i":I
    :goto_306
    if-ltz v20, :cond_339

    .line 679
    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/wm/WindowState;

    .line 680
    .restart local v31    # "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_32b

    .line 681
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 682
    move-object/from16 v0, v31

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 681
    move-object/from16 v0, v31

    invoke-interface {v4, v0, v6, v7}, Landroid/view/WindowManagerPolicy;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 678
    :cond_32b
    add-int/lit8 v20, v20, -0x1

    goto :goto_306

    .line 666
    .end local v20    # "i":I
    .end local v31    # "w":Lcom/android/server/wm/WindowState;
    :cond_32e
    const/4 v4, 0x0

    goto :goto_2ea

    .line 669
    :cond_330
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Layout repeat skipped after too many iterations"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f0

    .line 685
    .restart local v20    # "i":I
    :cond_339
    iget v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 686
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->finishPostLayoutPolicyLw()I

    move-result v6

    .line 685
    or-int/2addr v4, v6

    iput v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 690
    .end local v20    # "i":I
    :cond_348
    iget v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-eqz v4, :cond_bb

    goto/16 :goto_a9

    .line 697
    :cond_34e
    const/16 v27, 0x1

    .restart local v27    # "someoneLosingFocus":Z
    goto/16 :goto_d6

    .line 702
    .restart local v20    # "i":I
    .restart local v28    # "task":Lcom/android/server/wm/Task;
    .restart local v31    # "w":Lcom/android/server/wm/WindowState;
    :cond_352
    const/16 v25, 0x0

    .restart local v25    # "obscuredChanged":Z
    goto/16 :goto_f8

    .line 732
    .restart local v24    # "left":I
    .restart local v29    # "top":I
    .restart local v32    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_356
    const/4 v10, 0x1

    .local v10, "adjustedForMinimizedDockOrIme":Z
    goto/16 :goto_15d

    .line 731
    .end local v10    # "adjustedForMinimizedDockOrIme":Z
    :cond_359
    const/4 v10, 0x0

    .restart local v10    # "adjustedForMinimizedDockOrIme":Z
    goto/16 :goto_15d

    .line 735
    .end local v10    # "adjustedForMinimizedDockOrIme":Z
    :cond_35c
    if-nez v10, :cond_16d

    .line 736
    if-eqz v28, :cond_36c

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->hasMovementAnimations()Z

    move-result v4

    .line 734
    if-eqz v4, :cond_16d

    .line 737
    :cond_36c
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v4, :cond_16d

    .line 738
    move-object/from16 v0, v32

    move/from16 v1, v24

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->setMoveAnimation(II)V

    goto/16 :goto_16d

    .line 798
    .end local v24    # "left":I
    .end local v29    # "top":I
    .restart local v12    # "committed":Z
    :cond_37f
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    goto/16 :goto_1d8

    .line 848
    .end local v12    # "committed":Z
    .restart local v11    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_384
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v4

    if-eqz v4, :cond_245

    .line 849
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x32

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 850
    const/4 v4, 0x1

    iput-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    goto/16 :goto_245

    .line 858
    :cond_39a
    iget v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindowsExclusingSaved:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindowsExclusingSaved:I

    .line 866
    const/16 v30, 0x1

    goto/16 :goto_270

    .line 880
    .end local v11    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v25    # "obscuredChanged":Z
    .end local v28    # "task":Lcom/android/server/wm/Task;
    .end local v31    # "w":Lcom/android/server/wm/WindowState;
    .end local v32    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_3a4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 881
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mDisplayHasContent:Z

    .line 882
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredRefreshRate:F

    .line 883
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredModeId:I

    .line 884
    const/4 v9, 0x1

    .line 880
    invoke-virtual/range {v4 .. v9}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayProperties(IZFIZ)V

    .line 886
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->stopDimmingIfNeeded()V

    .line 888
    if-eqz v30, :cond_3cc

    .line 889
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/wm/WindowSurfacePlacer;->updateAllDrawnLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 616
    :cond_3cc
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_64

    .line 893
    .end local v5    # "displayId":I
    .end local v13    # "dh":I
    .end local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v17    # "dw":I
    .end local v20    # "i":I
    .end local v21    # "innerDh":I
    .end local v22    # "innerDw":I
    .end local v23    # "isDefaultDisplay":Z
    .end local v26    # "repeats":I
    .end local v27    # "someoneLosingFocus":Z
    .end local v30    # "updateAllDrawn":Z
    .end local v33    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3d0
    if-eqz v19, :cond_3dc

    .line 894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 899
    :cond_3dc
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManagerInternal;->performTraversalInTransactionFromWindowManager()V

    .line 598
    return-void

    .line 749
    .restart local v5    # "displayId":I
    .restart local v13    # "dh":I
    .restart local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v15    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v17    # "dw":I
    .restart local v20    # "i":I
    .restart local v21    # "innerDh":I
    .restart local v22    # "innerDw":I
    .restart local v23    # "isDefaultDisplay":Z
    .restart local v24    # "left":I
    .restart local v25    # "obscuredChanged":Z
    .restart local v26    # "repeats":I
    .restart local v27    # "someoneLosingFocus":Z
    .restart local v28    # "task":Lcom/android/server/wm/Task;
    .restart local v29    # "top":I
    .restart local v30    # "updateAllDrawn":Z
    .restart local v31    # "w":Lcom/android/server/wm/WindowState;
    .restart local v32    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v33    # "windows":Lcom/android/server/wm/WindowList;
    :catch_3e6
    move-exception v18

    .local v18, "e":Landroid/os/RemoteException;
    goto/16 :goto_18b
.end method

.method private createThumbnailAppAnimator(ILcom/android/server/wm/AppWindowToken;II)V
    .registers 27
    .param p1, "transit"    # I
    .param p2, "appToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "openingLayer"    # I
    .param p4, "closingLayer"    # I

    .prologue
    .line 1645
    if-nez p2, :cond_d

    const/16 v18, 0x0

    .line 1646
    .local v18, "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :goto_4
    if-eqz v18, :cond_c

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v3, :cond_14

    .line 1647
    :cond_c
    return-void

    .line 1645
    .end local v18    # "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_d
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v18, v0

    goto :goto_4

    .line 1649
    .restart local v18    # "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_14
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget v0, v3, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v19, v0

    .line 1650
    .local v19, "taskId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 1651
    .local v20, "thumbnailHeader":Landroid/graphics/Bitmap;
    if-eqz v20, :cond_32

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v3, v6, :cond_33

    .line 1653
    :cond_32
    return-void

    .line 1657
    :cond_33
    new-instance v12, Landroid/graphics/Rect;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v12, v7, v8, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1660
    .local v12, "dirty":Landroid/graphics/Rect;
    :try_start_42
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    .line 1661
    .local v14, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v13

    .line 1662
    .local v13, "display":Landroid/view/Display;
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v15

    .line 1665
    .local v15, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v2, Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    .line 1666
    const-string/jumbo v4, "thumbnail anim"

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 1667
    const/4 v7, -0x3

    const/4 v8, 0x4

    .line 1665
    invoke-direct/range {v2 .. v8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    .line 1668
    .local v2, "surfaceControl":Landroid/view/SurfaceControl;
    invoke-virtual {v13}, Landroid/view/Display;->getLayerStack()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 1674
    new-instance v16, Landroid/view/Surface;

    invoke-direct/range {v16 .. v16}, Landroid/view/Surface;-><init>()V

    .line 1675
    .local v16, "drawSurface":Landroid/view/Surface;
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 1676
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v11

    .line 1677
    .local v11, "c":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v3, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1678
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1679
    invoke-virtual/range {v16 .. v16}, Landroid/view/Surface;->release()V

    .line 1683
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isNextThumbnailTransitionAspectScaled()Z

    move-result v3

    if-eqz v3, :cond_122

    .line 1687
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v21

    .line 1688
    .local v21, "win":Lcom/android/server/wm/WindowState;
    if-eqz v21, :cond_112

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    .line 1690
    .local v4, "appRect":Landroid/graphics/Rect;
    :goto_a7
    if-eqz v21, :cond_11e

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 1695
    :goto_ad
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1696
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v8, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 1697
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v9, v6, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v6, v20

    move/from16 v7, v19

    .line 1695
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/AppTransition;->createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;III)Landroid/view/animation/Animation;

    move-result-object v10

    .line 1698
    .local v10, "anim":Landroid/view/animation/Animation;
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    .line 1700
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isNextThumbnailTransitionScaleUp()Z

    move-result v3

    if-eqz v3, :cond_120

    const/4 v3, 0x0

    .line 1699
    :goto_e0
    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/server/wm/AppWindowAnimator;->deferThumbnailDestruction:Z

    .line 1705
    .end local v4    # "appRect":Landroid/graphics/Rect;
    .end local v21    # "win":Lcom/android/server/wm/WindowState;
    :goto_e4
    const-wide/16 v6, 0x2710

    invoke-virtual {v10, v6, v7}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 1706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v3

    invoke-virtual {v10, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 1708
    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    .line 1709
    move/from16 v0, p3

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 1710
    move-object/from16 v0, v18

    iput-object v10, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    .line 1711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpStartRect:Landroid/graphics/Rect;

    move/from16 v0, v19

    invoke-virtual {v3, v0, v6}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1644
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v10    # "anim":Landroid/view/animation/Animation;
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v13    # "display":Landroid/view/Display;
    .end local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v16    # "drawSurface":Landroid/view/Surface;
    :goto_111
    return-void

    .line 1689
    .restart local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    .restart local v11    # "c":Landroid/graphics/Canvas;
    .restart local v13    # "display":Landroid/view/Display;
    .restart local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v15    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v16    # "drawSurface":Landroid/view/Surface;
    .restart local v21    # "win":Lcom/android/server/wm/WindowState;
    :cond_112
    new-instance v4, Landroid/graphics/Rect;

    iget v3, v15, Landroid/view/DisplayInfo;->appWidth:I

    iget v6, v15, Landroid/view/DisplayInfo;->appHeight:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v4    # "appRect":Landroid/graphics/Rect;
    goto :goto_a7

    .line 1690
    :cond_11e
    const/4 v5, 0x0

    .local v5, "insets":Landroid/graphics/Rect;
    goto :goto_ad

    .line 1700
    .end local v5    # "insets":Landroid/graphics/Rect;
    .restart local v10    # "anim":Landroid/view/animation/Animation;
    :cond_120
    const/4 v3, 0x1

    goto :goto_e0

    .line 1702
    .end local v4    # "appRect":Landroid/graphics/Rect;
    .end local v10    # "anim":Landroid/view/animation/Animation;
    .end local v21    # "win":Lcom/android/server/wm/WindowState;
    :cond_122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1703
    iget v6, v15, Landroid/view/DisplayInfo;->appWidth:I

    iget v7, v15, Landroid/view/DisplayInfo;->appHeight:I

    .line 1702
    move/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v3, v6, v7, v0, v1}, Lcom/android/server/wm/AppTransition;->createThumbnailScaleAnimationLocked(IIILandroid/graphics/Bitmap;)Landroid/view/animation/Animation;
    :try_end_133
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_42 .. :try_end_133} :catch_135

    move-result-object v10

    .restart local v10    # "anim":Landroid/view/animation/Animation;
    goto :goto_e4

    .line 1712
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v10    # "anim":Landroid/view/animation/Animation;
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v13    # "display":Landroid/view/Display;
    .end local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v16    # "drawSurface":Landroid/view/Surface;
    :catch_135
    move-exception v17

    .line 1713
    .local v17, "e":Landroid/view/Surface$OutOfResourcesException;
    sget-object v3, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t allocate thumbnail/Canvas surface w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1714
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 1713
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1714
    const-string/jumbo v7, " h="

    .line 1713
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1714
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 1713
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-static {v3, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1715
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    goto :goto_111
.end method

.method private handleAppTransitionReadyLocked(Lcom/android/server/wm/WindowList;)I
    .registers 29
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;

    .prologue
    .line 1087
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v10

    .line 1088
    .local v10, "appsCount":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/wm/WindowSurfacePlacer;->transitionGoodToGo(I)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1089
    const/4 v3, 0x0

    return v3

    .line 1092
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v4

    .line 1093
    .local v4, "transit":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    if-eqz v3, :cond_27

    .line 1094
    const/4 v4, -0x1

    .line 1096
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v25, 0x0

    move/from16 v0, v25

    iput-boolean v0, v3, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 1097
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1099
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v25, 0xd

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->rebuildAppWindowListLocked()V

    .line 1103
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    .line 1107
    const/4 v9, 0x0

    .line 1108
    .local v9, "animLp":Landroid/view/WindowManager$LayoutParams;
    const/4 v11, -0x1

    .line 1109
    .local v11, "bestAnimLayer":I
    const/4 v14, 0x0

    .line 1110
    .local v14, "fullscreenAnim":Z
    const/16 v22, 0x0

    .line 1113
    .local v22, "voiceInteraction":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->getLowerWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v7

    .line 1115
    .local v7, "lowerWallpaperTarget":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->getUpperWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v8

    .line 1117
    .local v8, "upperWallpaperTarget":Lcom/android/server/wm/WindowState;
    const/4 v5, 0x0

    .line 1118
    .local v5, "openingAppHasWallpaper":Z
    const/4 v6, 0x0

    .line 1121
    .local v6, "closingAppHasWallpaper":Z
    if-nez v7, :cond_c2

    .line 1122
    const/16 v21, 0x0

    .local v21, "upperWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    const/16 v16, 0x0

    .line 1139
    .end local v21    # "upperWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    :goto_70
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v13

    .line 1140
    .local v13, "closingAppsCount":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int v10, v13, v3

    .line 1141
    const/4 v15, 0x0

    .end local v9    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v22    # "voiceInteraction":Z
    .local v15, "i":I
    :goto_87
    if-ge v15, v10, :cond_100

    .line 1143
    if-ge v15, v13, :cond_cb

    .line 1144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/wm/AppWindowToken;

    .line 1145
    .local v24, "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_a3

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_a4

    .line 1146
    :cond_a3
    const/4 v6, 0x1

    .line 1155
    :cond_a4
    :goto_a4
    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->voiceInteraction:Z

    or-int v22, v22, v3

    .line 1157
    .local v22, "voiceInteraction":Z
    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-eqz v3, :cond_e9

    .line 1158
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v23

    .line 1159
    .local v23, "ws":Lcom/android/server/wm/WindowState;
    if-eqz v23, :cond_bf

    .line 1160
    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1161
    .local v9, "animLp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v23

    iget v11, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 1162
    const/4 v14, 0x1

    .line 1141
    .end local v9    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v23    # "ws":Lcom/android/server/wm/WindowState;
    :cond_bf
    :goto_bf
    add-int/lit8 v15, v15, 0x1

    goto :goto_87

    .line 1124
    .end local v13    # "closingAppsCount":I
    .end local v15    # "i":I
    .end local v24    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .local v9, "animLp":Landroid/view/WindowManager$LayoutParams;
    .local v22, "voiceInteraction":Z
    :cond_c2
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v16, v0

    .line 1125
    .local v16, "lowerWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    iget-object v0, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v21, v0

    .local v21, "upperWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    goto :goto_70

    .line 1149
    .end local v9    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v16    # "lowerWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    .end local v21    # "upperWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    .end local v22    # "voiceInteraction":Z
    .restart local v13    # "closingAppsCount":I
    .restart local v15    # "i":I
    :cond_cb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    sub-int v25, v15, v13

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/wm/AppWindowToken;

    .line 1150
    .restart local v24    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_e7

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_a4

    .line 1151
    :cond_e7
    const/4 v5, 0x1

    goto :goto_a4

    .line 1164
    .local v22, "voiceInteraction":Z
    :cond_e9
    if-nez v14, :cond_bf

    .line 1165
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v23

    .line 1166
    .restart local v23    # "ws":Lcom/android/server/wm/WindowState;
    if-eqz v23, :cond_bf

    .line 1167
    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v3, v11, :cond_bf

    .line 1168
    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1169
    .local v9, "animLp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v23

    iget v11, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_bf

    .end local v9    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v22    # "voiceInteraction":Z
    .end local v23    # "ws":Lcom/android/server/wm/WindowState;
    .end local v24    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_100
    move-object/from16 v3, p0

    .line 1175
    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/WindowSurfacePlacer;->maybeUpdateTransitToWallpaper(IZZLcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v4

    .line 1182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->allowAppAnimationsLw()Z

    move-result v3

    if-nez v3, :cond_113

    .line 1185
    const/4 v9, 0x0

    .line 1188
    :cond_113
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/wm/WindowSurfacePlacer;->processApplicationsAnimatingInPlace(I)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    const/16 v25, 0x0

    move-object/from16 v0, v25

    iput-object v0, v3, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    .line 1191
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v4, v9, v1, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->handleClosingApps(ILandroid/view/WindowManager$LayoutParams;ZLcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    iget-object v0, v3, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v18, v0

    .line 1193
    .local v18, "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    iget v0, v3, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    move/from16 v19, v0

    .line 1195
    .local v19, "topClosingLayer":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-direct {v0, v4, v9, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;ZI)Lcom/android/server/wm/AppWindowToken;

    move-result-object v20

    .line 1198
    .local v20, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    if-nez v20, :cond_1e3

    const/16 v17, 0x0

    .line 1200
    :goto_14b
    if-nez v18, :cond_1eb

    const/4 v12, 0x0

    .line 1203
    :goto_14e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    move-object/from16 v26, v0

    .line 1203
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v3, v0, v12, v1, v2}, Lcom/android/server/wm/AppTransition;->goodToGo(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/AppWindowAnimator;Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 1209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 1213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    const/16 v25, 0x1

    move/from16 v0, v25

    iput-boolean v0, v3, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v3

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1c1

    .line 1217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v3

    if-eqz v3, :cond_1f1

    .line 1220
    :cond_1c1
    :goto_1c1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v25, 0x2

    .line 1221
    const/16 v26, 0x1

    .line 1220
    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 1222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v25, 0x0

    move/from16 v0, v25

    iput-boolean v0, v3, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->notifyActivityDrawnForKeyguard()V

    .line 1224
    const/4 v3, 0x3

    return v3

    .line 1199
    :cond_1e3
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v17, v0

    .local v17, "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    goto/16 :goto_14b

    .line 1201
    .end local v17    # "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_1eb
    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .local v12, "closingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    goto/16 :goto_14e

    .line 1218
    .end local v12    # "closingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_1f1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowLayersController;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    goto :goto_1c1
.end method

.method private handleClosingApps(ILandroid/view/WindowManager$LayoutParams;ZLcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V
    .registers 19
    .param p1, "transit"    # I
    .param p2, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"    # Z
    .param p4, "layerAndToken"    # Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    .prologue
    .line 1313
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v9

    .line 1314
    .local v9, "appsCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_9
    if-ge v10, v9, :cond_a0

    .line 1315
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 1322
    .local v2, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->markSavedSurfaceExiting()V

    .line 1324
    iget-object v8, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 1326
    .local v8, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 1327
    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    .line 1328
    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 1329
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p2

    move v5, p1

    move/from16 v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    .line 1331
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 1335
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1336
    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 1339
    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_42

    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v1, :cond_70

    .line 1342
    :cond_42
    :goto_42
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v3, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    .line 1344
    if-eqz p2, :cond_8a

    .line 1345
    const/4 v12, -0x1

    .line 1346
    .local v12, "layer":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_53
    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v11, v1, :cond_76

    .line 1347
    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v11}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/WindowState;

    .line 1348
    .local v13, "win":Lcom/android/server/wm/WindowState;
    iget-object v1, v13, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v1, v12, :cond_6d

    .line 1349
    iget-object v1, v13, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v12, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 1346
    :cond_6d
    add-int/lit8 v11, v11, 0x1

    goto :goto_53

    .line 1340
    .end local v11    # "j":I
    .end local v12    # "layer":I
    .end local v13    # "win":Lcom/android/server/wm/WindowState;
    :cond_70
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->scheduleRemoveStartingWindowLocked(Lcom/android/server/wm/AppWindowToken;)V

    goto :goto_42

    .line 1352
    .restart local v11    # "j":I
    .restart local v12    # "layer":I
    :cond_76
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_82

    move-object/from16 v0, p4

    iget v1, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    if-le v12, v1, :cond_8a

    .line 1353
    :cond_82
    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    .line 1354
    move-object/from16 v0, p4

    iput v12, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    .line 1357
    .end local v11    # "j":I
    .end local v12    # "layer":I
    :cond_8a
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailDown()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 1358
    move-object/from16 v0, p4

    iget v1, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->createThumbnailAppAnimator(ILcom/android/server/wm/AppWindowToken;II)V

    .line 1314
    :cond_9c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_9

    .line 1311
    .end local v2    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v8    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_a0
    return-void
.end method

.method private handleNotObscuredLocked(Lcom/android/server/wm/WindowState;Landroid/view/DisplayInfo;)V
    .registers 15
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "dispInfo"    # Landroid/view/DisplayInfo;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1478
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1479
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1480
    .local v0, "attrFlags":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v2

    .line 1481
    .local v2, "canBeSeen":Z
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1483
    .local v4, "privateflags":I
    if-eqz v2, :cond_20

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowState;->isObscuringFullscreen(Landroid/view/DisplayInfo;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 1487
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    if-nez v6, :cond_1e

    .line 1488
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObsuringWindow:Lcom/android/server/wm/WindowState;

    .line 1491
    :cond_1e
    iput-boolean v11, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    .line 1494
    :cond_20
    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v6, :cond_ed

    .line 1495
    and-int/lit16 v6, v0, 0x80

    if-eqz v6, :cond_2e

    .line 1496
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 1497
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 1503
    :cond_2e
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    if-nez v6, :cond_46

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_46

    .line 1504
    iget v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_46

    .line 1505
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    .line 1507
    :cond_46
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    if-nez v6, :cond_5e

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_5e

    .line 1508
    iget v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_5e

    .line 1509
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iput v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    .line 1512
    :cond_5e
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    if-nez v6, :cond_7e

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->autoBrightnessAdjustment:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_7e

    .line 1513
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->autoBrightnessAdjustment:F

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_7e

    .line 1514
    iget v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mAutoBrightnessAdjustment:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_ee

    .line 1515
    iget v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mAutoBrightnessAdjustment:F

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_ee

    .line 1520
    :cond_7e
    :goto_7e
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    if-nez v6, :cond_9a

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v6, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_9a

    .line 1521
    iget-wide v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mUserActivityTimeout:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_9a

    .line 1522
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v6, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mUserActivityTimeout:J

    .line 1525
    :cond_9a
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1526
    .local v5, "type":I
    if-eqz v2, :cond_a8

    .line 1527
    const/16 v6, 0x7d8

    if-eq v5, v6, :cond_a6

    .line 1528
    const/16 v6, 0x7da

    if-ne v5, v6, :cond_f5

    .line 1530
    :cond_a6
    :goto_a6
    iput-boolean v11, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    .line 1533
    :cond_a8
    if-eqz v2, :cond_ed

    .line 1536
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1537
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_fc

    iget-boolean v6, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v6, :cond_fc

    .line 1542
    const/16 v6, 0x7e7

    if-eq v5, v6, :cond_be

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_c0

    .line 1543
    :cond_be
    iput-boolean v11, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 1545
    :cond_c0
    iput-boolean v11, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDisplayHasContent:Z

    .line 1552
    :cond_c2
    :goto_c2
    iget v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredRefreshRate:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_d6

    .line 1553
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_d6

    .line 1554
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iput v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredRefreshRate:F

    .line 1556
    :cond_d6
    iget v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredModeId:I

    if-nez v6, :cond_e6

    .line 1557
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v6, :cond_e6

    .line 1558
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    iput v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredModeId:I

    .line 1560
    :cond_e6
    const/high16 v6, 0x40000

    and-int/2addr v6, v4

    if-eqz v6, :cond_ed

    .line 1561
    iput-boolean v11, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeCurrent:Z

    .line 1477
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "type":I
    :cond_ed
    return-void

    .line 1517
    :cond_ee
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->autoBrightnessAdjustment:F

    .line 1516
    iput v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mAutoBrightnessAdjustment:F

    goto :goto_7e

    .line 1529
    .restart local v5    # "type":I
    :cond_f5
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_a8

    goto :goto_a6

    .line 1546
    .restart local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_fc
    if-eqz v3, :cond_c2

    .line 1547
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscureApplicationContentOnSecondaryDisplays:Z

    if-eqz v6, :cond_10a

    .line 1548
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    if-eqz v6, :cond_c2

    const/16 v6, 0x7d9

    if-ne v5, v6, :cond_c2

    .line 1550
    :cond_10a
    iput-boolean v11, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDisplayHasContent:Z

    goto :goto_c2
.end method

.method private handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;ZI)Lcom/android/server/wm/AppWindowToken;
    .registers 25
    .param p1, "transit"    # I
    .param p2, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"    # Z
    .param p4, "topClosingLayer"    # I

    .prologue
    .line 1229
    const/16 v16, 0x0

    .line 1230
    .local v16, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v12

    .line 1231
    .local v12, "appsCount":I
    const/4 v13, 0x0

    .end local v16    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    .local v13, "i":I
    :goto_d
    if-ge v13, v12, :cond_f9

    .line 1232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 1233
    .local v5, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v11, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 1236
    .local v11, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v4, v11, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    if-nez v4, :cond_27

    .line 1237
    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 1238
    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    .line 1240
    :cond_27
    const/4 v4, 0x0

    iput-boolean v4, v5, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 1242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1243
    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object/from16 v6, p2

    move/from16 v8, p1

    move/from16 v10, p3

    .line 1242
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    move-result v4

    if-nez v4, :cond_47

    .line 1247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v6, v5, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1249
    :cond_47
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 1250
    const/4 v4, 0x0

    iput-boolean v4, v5, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 1252
    iget-object v4, v11, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1253
    iget-object v4, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v19

    .line 1254
    .local v19, "windowsCount":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_59
    move/from16 v0, v19

    if-ge v14, v0, :cond_6f

    .line 1255
    iget-object v6, v11, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    iget-object v4, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1254
    add-int/lit8 v14, v14, 0x1

    goto :goto_59

    .line 1259
    :cond_6f
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1261
    :try_start_72
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V
    :try_end_7f
    .catchall {:try_start_72 .. :try_end_7f} :catchall_c4

    .line 1263
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v6, v4, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v7

    or-int/2addr v6, v7

    iput-boolean v6, v4, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    .line 1269
    const/16 v17, 0x0

    .line 1270
    .local v17, "topOpeningLayer":I
    if-eqz p2, :cond_de

    .line 1271
    const/4 v15, -0x1

    .line 1272
    .local v15, "layer":I
    const/4 v14, 0x0

    :goto_97
    iget-object v4, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    if-ge v14, v4, :cond_d6

    .line 1273
    iget-object v4, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/WindowState;

    .line 1283
    .local v18, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-nez v4, :cond_b3

    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v4, :cond_c9

    .line 1294
    :cond_b3
    :goto_b3
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v4, v15, :cond_c1

    .line 1295
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v15, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 1272
    :cond_c1
    add-int/lit8 v14, v14, 0x1

    goto :goto_97

    .line 1262
    .end local v15    # "layer":I
    .end local v17    # "topOpeningLayer":I
    .end local v18    # "win":Lcom/android/server/wm/WindowState;
    :catchall_c4
    move-exception v4

    .line 1263
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1262
    throw v4

    .line 1284
    .restart local v15    # "layer":I
    .restart local v17    # "topOpeningLayer":I
    .restart local v18    # "win":Lcom/android/server/wm/WindowState;
    :cond_c9
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 1292
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    goto :goto_b3

    .line 1298
    .end local v18    # "win":Lcom/android/server/wm/WindowState;
    :cond_d6
    if-eqz v16, :cond_da

    if-lez v15, :cond_de

    .line 1299
    :cond_da
    move-object/from16 v16, v5

    .line 1300
    .local v16, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    move/from16 v17, v15

    .line 1303
    .end local v15    # "layer":I
    .end local v16    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    :cond_de
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailUp()Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 1304
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, p4

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->createThumbnailAppAnimator(ILcom/android/server/wm/AppWindowToken;II)V

    .line 1231
    :cond_f5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_d

    .line 1307
    .end local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v11    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v14    # "j":I
    .end local v17    # "topOpeningLayer":I
    .end local v19    # "windowsCount":I
    :cond_f9
    return-object v16
.end method

.method private maybeUpdateTransitToWallpaper(IZZLcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .registers 12
    .param p1, "transit"    # I
    .param p2, "openingAppHasWallpaper"    # Z
    .param p3, "closingAppHasWallpaper"    # Z
    .param p4, "lowerWallpaperTarget"    # Lcom/android/server/wm/WindowState;
    .param p5, "upperWallpaperTarget"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 1420
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 1422
    .local v3, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->isWallpaperTargetAnimating()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1423
    const/4 v1, 0x0

    .line 1424
    :goto_f
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    .line 1425
    .local v2, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    .line 1433
    .local v0, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/wm/WindowManagerService;->mAnimateWallpaperWithTarget:Z

    .line 1434
    if-eqz p3, :cond_2c

    if-eqz p2, :cond_2c

    .line 1437
    packed-switch p1, :pswitch_data_64

    .line 1470
    :goto_23
    return p1

    .line 1423
    .end local v0    # "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v2    # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    :cond_24
    move-object v1, v3

    .local v1, "oldWallpaper":Lcom/android/server/wm/WindowState;
    goto :goto_f

    .line 1441
    .end local v1    # "oldWallpaper":Lcom/android/server/wm/WindowState;
    .restart local v0    # "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v2    # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    :pswitch_26
    const/16 p1, 0xe

    .line 1442
    goto :goto_23

    .line 1446
    :pswitch_29
    const/16 p1, 0xf

    .line 1447
    goto :goto_23

    .line 1451
    :cond_2c
    if-eqz v1, :cond_38

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 1459
    :cond_38
    if-eqz v3, :cond_5e

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 1460
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1459
    if-eqz v4, :cond_5e

    .line 1463
    const/16 p1, 0xd

    goto :goto_23

    .line 1452
    :cond_4b
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 1453
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1451
    if-eqz v4, :cond_38

    .line 1455
    const/16 p1, 0xc

    goto :goto_23

    .line 1468
    :cond_5e
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/wm/WindowManagerService;->mAnimateWallpaperWithTarget:Z

    goto :goto_23

    .line 1437
    :pswitch_data_64
    .packed-switch 0x6
        :pswitch_26
        :pswitch_29
        :pswitch_26
        :pswitch_29
        :pswitch_26
        :pswitch_29
    .end packed-switch
.end method

.method private performSurfacePlacementInner(Z)V
    .registers 33
    .param p1, "recoveringMemory"    # Z

    .prologue
    .line 274
    const/16 v23, 0x0

    .line 276
    .local v23, "updateInputWindowsNeeded":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2c

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    .line 279
    const/16 v28, 0x3

    const/16 v29, 0x0

    .line 278
    invoke-virtual/range {v27 .. v29}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v23

    .line 283
    .end local v23    # "updateInputWindowsNeeded":Z
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v18

    .line 284
    .local v18, "numDisplays":I
    const/4 v13, 0x0

    .local v13, "displayNdx":I
    :goto_3d
    move/from16 v0, v18

    if-ge v13, v0, :cond_7d

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    .line 286
    .local v10, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    add-int/lit8 v17, v27, -0x1

    .local v17, "i":I
    :goto_5f
    if-ltz v17, :cond_7a

    .line 287
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/WindowToken;

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 286
    add-int/lit8 v17, v17, -0x1

    goto :goto_5f

    .line 284
    :cond_7a
    add-int/lit8 v13, v13, 0x1

    goto :goto_3d

    .line 291
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v17    # "i":I
    :cond_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    add-int/lit8 v19, v27, -0x1

    .local v19, "stackNdx":I
    :goto_8f
    if-ltz v19, :cond_c9

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/TaskStack;

    .line 293
    move-object/from16 v0, v27

    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 295
    .local v15, "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v15}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v27

    add-int/lit8 v22, v27, -0x1

    .local v22, "tokenNdx":I
    :goto_b1
    if-ltz v22, :cond_c6

    .line 296
    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/AppWindowToken;

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    .line 295
    add-int/lit8 v22, v22, -0x1

    goto :goto_b1

    .line 291
    :cond_c6
    add-int/lit8 v19, v19, -0x1

    goto :goto_8f

    .line 300
    .end local v15    # "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    .end local v22    # "tokenNdx":I
    :cond_c9
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 301
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 302
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mObsuringWindow:Lcom/android/server/wm/WindowState;

    .line 303
    const/high16 v27, -0x40800000    # -1.0f

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    .line 304
    const/high16 v27, -0x40800000    # -1.0f

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    .line 306
    const/high16 v27, 0x7fc00000    # NaNf

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mAutoBrightnessAdjustment:F

    .line 307
    const-wide/16 v28, -0x1

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowSurfacePlacer;->mUserActivityTimeout:J

    .line 308
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 309
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeCurrent:Z

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 313
    .local v6, "defaultDisplay":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    .line 314
    .local v8, "defaultInfo":Landroid/view/DisplayInfo;
    iget v7, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 315
    .local v7, "defaultDw":I
    iget v5, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 319
    .local v5, "defaultDh":I
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 321
    :try_start_13a
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v7, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->applySurfaceChangesTransaction(ZIII)V
    :try_end_143
    .catch Ljava/lang/RuntimeException; {:try_start_13a .. :try_end_143} :catch_263
    .catchall {:try_start_13a .. :try_end_143} :catchall_275

    .line 325
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 330
    :goto_146
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v9

    .line 335
    .local v9, "defaultWindows":Lcom/android/server/wm/WindowList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v27

    if-eqz v27, :cond_16c

    .line 336
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/wm/WindowSurfacePlacer;->handleAppTransitionReadyLocked(Lcom/android/server/wm/WindowList;)I

    move-result v28

    or-int v27, v27, v28

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 342
    :cond_16c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    move/from16 v27, v0

    if-nez v27, :cond_1a6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v27

    if-eqz v27, :cond_1a6

    .line 349
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->handleAnimatingStoppedAndTransitionLocked()I

    move-result v28

    .line 349
    or-int v27, v27, v28

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 356
    :cond_1a6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperForceHidingChanged:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1c6

    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    if-nez v27, :cond_1c6

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v27

    if-eqz v27, :cond_27a

    .line 369
    :cond_1c6
    :goto_1c6
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperForceHidingChanged:Z

    .line 371
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1e0

    .line 374
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    or-int/lit8 v27, v27, 0x4

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 379
    :cond_1e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    move/from16 v27, v0

    if-eqz v27, :cond_218

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    .line 382
    const/16 v29, 0x0

    .line 381
    invoke-virtual/range {v27 .. v29}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v27

    if-eqz v27, :cond_218

    .line 383
    const/16 v23, 0x1

    .line 384
    .restart local v23    # "updateInputWindowsNeeded":Z
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    or-int/lit8 v27, v27, 0x8

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 388
    .end local v23    # "updateInputWindowsNeeded":Z
    :cond_218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->needsLayout()Z

    move-result v27

    if-eqz v27, :cond_22e

    .line 389
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    or-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 394
    :cond_22e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    add-int/lit8 v17, v27, -0x1

    .restart local v17    # "i":I
    :goto_240
    if-ltz v17, :cond_2ae

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    .line 396
    .local v26, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    move/from16 v27, v0

    if-eqz v27, :cond_286

    .line 394
    :goto_260
    add-int/lit8 v17, v17, -0x1

    goto :goto_240

    .line 322
    .end local v9    # "defaultWindows":Lcom/android/server/wm/WindowList;
    .end local v17    # "i":I
    .end local v26    # "win":Lcom/android/server/wm/WindowState;
    :catch_263
    move-exception v14

    .line 323
    .local v14, "e":Ljava/lang/RuntimeException;
    :try_start_264
    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v28, "Unhandled exception in Window Manager"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_270
    .catchall {:try_start_264 .. :try_end_270} :catchall_275

    .line 325
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto/16 :goto_146

    .line 324
    .end local v14    # "e":Ljava/lang/RuntimeException;
    :catchall_275
    move-exception v27

    .line 325
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 324
    throw v27

    .line 364
    .restart local v9    # "defaultWindows":Lcom/android/server/wm/WindowList;
    :cond_27a
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    or-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto/16 :goto_1c6

    .line 401
    .restart local v17    # "i":I
    .restart local v26    # "win":Lcom/android/server/wm/WindowState;
    :cond_286
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    if-eqz v27, :cond_297

    .line 402
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppWindowToken;->destroySavedSurfaces()V

    .line 404
    :cond_297
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->reportResized()V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_260

    .line 410
    .end local v26    # "win":Lcom/android/server/wm/WindowState;
    :cond_2ae
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2fe

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    move/from16 v27, v0

    if-eqz v27, :cond_2f5

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mLastWindowFreezeSource:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v27, v0

    const/16 v28, 0xb

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 416
    :cond_2f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 420
    :cond_2fe
    const/16 v25, 0x0

    .line 421
    .local v25, "wallpaperDestroyed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 422
    if-lez v17, :cond_378

    .line 424
    :cond_312
    add-int/lit8 v17, v17, -0x1

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    .line 426
    .restart local v26    # "win":Lcom/android/server/wm/WindowState;
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_352

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 430
    :cond_352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v27

    if-eqz v27, :cond_364

    .line 431
    const/16 v25, 0x1

    .line 433
    :cond_364
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->destroyOrSaveSurface()V

    .line 434
    if-gtz v17, :cond_312

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 439
    .end local v26    # "win":Lcom/android/server/wm/WindowState;
    :cond_378
    const/4 v13, 0x0

    :goto_379
    move/from16 v0, v18

    if-ge v13, v0, :cond_3cf

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    .line 441
    .restart local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 442
    .local v16, "exitingTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowToken;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v27

    add-int/lit8 v17, v27, -0x1

    :goto_39b
    if-ltz v17, :cond_3cc

    .line 443
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/WindowToken;

    .line 444
    .local v21, "token":Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    move/from16 v27, v0

    if-nez v27, :cond_3c9

    .line 445
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 446
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowToken;->windowType:I

    move/from16 v27, v0

    const/16 v28, 0x7dd

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3c9

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->removeWallpaperToken(Lcom/android/server/wm/WindowToken;)V

    .line 442
    :cond_3c9
    add-int/lit8 v17, v17, -0x1

    goto :goto_39b

    .line 439
    .end local v21    # "token":Lcom/android/server/wm/WindowToken;
    :cond_3cc
    add-int/lit8 v13, v13, 0x1

    goto :goto_379

    .line 454
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v16    # "exitingTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowToken;>;"
    :cond_3cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    add-int/lit8 v19, v27, -0x1

    :goto_3e1
    if-ltz v19, :cond_460

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/TaskStack;

    .line 456
    move-object/from16 v0, v27

    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 458
    .restart local v15    # "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v15}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v27

    add-int/lit8 v17, v27, -0x1

    :goto_403
    if-ltz v17, :cond_45d

    .line 459
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/AppWindowToken;

    .line 460
    .local v20, "token":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    move/from16 v27, v0

    if-nez v27, :cond_42b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_42e

    .line 458
    :cond_42b
    :goto_42b
    add-int/lit8 v17, v17, -0x1

    goto :goto_403

    .line 461
    :cond_42e
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    move/from16 v27, v0

    if-eqz v27, :cond_442

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v27

    .line 460
    if-eqz v27, :cond_42b

    .line 465
    :cond_442
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    .line 466
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 469
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/AppWindowToken;->removeAppFromTaskLocked()V

    goto :goto_42b

    .line 454
    .end local v20    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_45d
    add-int/lit8 v19, v19, -0x1

    goto :goto_3e1

    .line 474
    .end local v15    # "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    :cond_460
    if-eqz v25, :cond_472

    .line 475
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    or-int/lit8 v27, v27, 0x4

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 476
    const/16 v27, 0x1

    move/from16 v0, v27

    iput-boolean v0, v6, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 479
    :cond_472
    const/4 v13, 0x0

    :goto_473
    move/from16 v0, v18

    if-ge v13, v0, :cond_49a

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    .line 481
    .restart local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v0, v10, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    if-eqz v27, :cond_497

    .line 482
    const/16 v27, 0x1

    move/from16 v0, v27

    iput-boolean v0, v10, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 479
    :cond_497
    add-int/lit8 v13, v13, 0x1

    goto :goto_473

    .line 487
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_49a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreen:Lcom/android/server/wm/Session;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Lcom/android/server/wm/Session;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    move/from16 v27, v0

    if-nez v27, :cond_558

    .line 491
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpg-float v27, v27, v28

    if-ltz v27, :cond_4e0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    move/from16 v27, v0

    const/high16 v28, 0x3f800000    # 1.0f

    cmpl-float v27, v27, v28

    if-lez v27, :cond_6cf

    .line 492
    :cond_4e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v27, v0

    const/16 v28, -0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromWindowManager(I)V

    .line 497
    :goto_4f1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpg-float v27, v27, v28

    if-ltz v27, :cond_509

    .line 498
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    move/from16 v27, v0

    const/high16 v28, 0x3f800000    # 1.0f

    cmpl-float v27, v27, v28

    if-lez v27, :cond_6ea

    .line 499
    :cond_509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v27, v0

    const/16 v28, -0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/PowerManagerInternal;->setButtonBrightnessOverrideFromWindowManager(I)V

    .line 505
    :goto_51a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mAutoBrightnessAdjustment:F

    move/from16 v27, v0

    const/high16 v28, -0x40800000    # -1.0f

    cmpg-float v27, v27, v28

    if-ltz v27, :cond_532

    .line 506
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mAutoBrightnessAdjustment:F

    move/from16 v27, v0

    const/high16 v28, 0x3f800000    # 1.0f

    cmpl-float v27, v27, v28

    if-lez v27, :cond_705

    .line 507
    :cond_532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v27, v0

    .line 508
    const/high16 v28, 0x7fc00000    # NaNf

    .line 507
    invoke-virtual/range {v27 .. v28}, Landroid/os/PowerManagerInternal;->setAutoBrightnessAdjustmentOverrideFromWindowManager(F)V

    .line 514
    :goto_543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v27, v0

    .line 515
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mUserActivityTimeout:J

    move-wide/from16 v28, v0

    .line 514
    invoke-virtual/range {v27 .. v29}, Landroid/os/PowerManagerInternal;->setUserActivityTimeoutOverrideFromWindowManager(J)V

    .line 518
    :cond_558
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeCurrent:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeEnabled:Z

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_597

    .line 519
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeCurrent:Z

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeEnabled:Z

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v28, v0

    .line 522
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_71c

    const/16 v27, 0x1

    .line 521
    :goto_58c
    const/16 v29, 0x6

    .line 520
    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 525
    :cond_597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5f2

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAllowTheaterModeWakeFromLayout:Z

    move/from16 v27, v0

    if-nez v27, :cond_5ce

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    .line 528
    const-string/jumbo v28, "theater_mode_on"

    const/16 v29, 0x0

    .line 527
    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-nez v27, :cond_5e4

    .line 532
    :cond_5ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v27, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    .line 533
    const-string/jumbo v30, "android.server.wm:TURN_ON"

    .line 532
    invoke-virtual/range {v27 .. v30}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 535
    :cond_5e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    .line 538
    :cond_5f2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mUpdateRotation:Z

    move/from16 v27, v0

    if-eqz v27, :cond_619

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v27

    if-eqz v27, :cond_720

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v27, v0

    const/16 v28, 0x12

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 547
    :cond_619
    :goto_619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    if-nez v27, :cond_732

    .line 548
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    move/from16 v27, v0

    if-eqz v27, :cond_635

    iget-boolean v0, v6, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    move/from16 v27, v0

    if-eqz v27, :cond_72a

    .line 553
    :cond_635
    :goto_635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 554
    .local v4, "N":I
    if-lez v4, :cond_76b

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v4, :cond_670

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    add-int/lit8 v28, v4, 0xa

    move/from16 v0, v28

    new-array v0, v0, [Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 558
    :cond_670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 560
    new-instance v12, Lcom/android/server/wm/DisplayContentList;

    invoke-direct {v12}, Lcom/android/server/wm/DisplayContentList;-><init>()V

    .line 561
    .local v12, "displayList":Lcom/android/server/wm/DisplayContentList;
    const/16 v17, 0x0

    :goto_6a1
    move/from16 v0, v17

    if-ge v0, v4, :cond_741

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    aget-object v24, v27, v17

    .line 563
    .local v24, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;)V

    .line 564
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    .line 565
    .restart local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v10, :cond_6cc

    invoke-virtual {v12, v10}, Lcom/android/server/wm/DisplayContentList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_73d

    .line 561
    :cond_6cc
    :goto_6cc
    add-int/lit8 v17, v17, 0x1

    goto :goto_6a1

    .line 494
    .end local v4    # "N":I
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v12    # "displayList":Lcom/android/server/wm/DisplayContentList;
    .end local v24    # "w":Lcom/android/server/wm/WindowState;
    :cond_6cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v27, v0

    .line 495
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/WindowSurfacePlacer;->toBrightnessOverride(F)I

    move-result v28

    .line 494
    invoke-virtual/range {v27 .. v28}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromWindowManager(I)V

    goto/16 :goto_4f1

    .line 501
    :cond_6ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v27, v0

    .line 502
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/WindowSurfacePlacer;->toBrightnessOverride(F)I

    move-result v28

    .line 501
    invoke-virtual/range {v27 .. v28}, Landroid/os/PowerManagerInternal;->setButtonBrightnessOverrideFromWindowManager(I)V

    goto/16 :goto_51a

    .line 510
    :cond_705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v27, v0

    .line 511
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mAutoBrightnessAdjustment:F

    move/from16 v28, v0

    .line 510
    invoke-virtual/range {v27 .. v28}, Landroid/os/PowerManagerInternal;->setAutoBrightnessAdjustmentOverrideFromWindowManager(F)V

    goto/16 :goto_543

    .line 522
    :cond_71c
    const/16 v27, 0x0

    goto/16 :goto_58c

    .line 543
    :cond_720
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mUpdateRotation:Z

    goto/16 :goto_619

    .line 549
    :cond_72a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mUpdateRotation:Z

    move/from16 v27, v0

    if-nez v27, :cond_635

    .line 550
    :cond_732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    goto/16 :goto_635

    .line 566
    .restart local v4    # "N":I
    .restart local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v12    # "displayList":Lcom/android/server/wm/DisplayContentList;
    .restart local v24    # "w":Lcom/android/server/wm/WindowState;
    :cond_73d
    invoke-virtual {v12, v10}, Lcom/android/server/wm/DisplayContentList;->add(Ljava/lang/Object;)Z

    goto :goto_6cc

    .line 570
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v24    # "w":Lcom/android/server/wm/WindowState;
    :cond_741
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "displayContent$iterator":Ljava/util/Iterator;
    :goto_745
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_76b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    .line 571
    .restart local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    move-object/from16 v27, v0

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowLayersController;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    .line 572
    const/16 v27, 0x1

    move/from16 v0, v27

    iput-boolean v0, v10, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto :goto_745

    .line 577
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v11    # "displayContent$iterator":Ljava/util/Iterator;
    .end local v12    # "displayList":Lcom/android/server/wm/DisplayContentList;
    :cond_76b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    add-int/lit8 v13, v27, -0x1

    :goto_77d
    if-ltz v13, :cond_799

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/DisplayContent;

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/DisplayContent;->checkForDeferredActions()V

    .line 577
    add-int/lit8 v13, v13, -0x1

    goto :goto_77d

    .line 581
    :cond_799
    if-eqz v23, :cond_7ac

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 584
    :cond_7ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->setFocusTaskRegionLocked()V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowSurfacePlacer;->destroyPendingSurfaces()V

    .line 269
    return-void
.end method

.method private performSurfacePlacementLoop()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x20

    const/4 v8, 0x0

    .line 190
    iget-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    if-eqz v5, :cond_26

    .line 194
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "performLayoutAndPlaceSurfacesLocked called while in layout. Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 195
    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    .line 194
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void

    .line 199
    :cond_26
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v5, :cond_2d

    .line 203
    return-void

    .line 206
    :cond_2d
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v5, :cond_34

    .line 208
    return-void

    .line 211
    :cond_34
    const-string/jumbo v5, "wmLayout"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 212
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 214
    const/4 v2, 0x0

    .line 215
    .local v2, "recoveringMemory":Z
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_90

    .line 216
    const/4 v2, 0x1

    .line 218
    :goto_49
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7c

    .line 219
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 220
    .local v4, "ws":Lcom/android/server/wm/WindowState;
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Force removing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;)V

    goto :goto_49

    .line 223
    .end local v4    # "ws":Lcom/android/server/wm/WindowState;
    :cond_7c
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 225
    .local v3, "tmp":Ljava/lang/Object;
    monitor-enter v3

    .line 227
    const-wide/16 v6, 0xfa

    :try_start_8c
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_8f
    .catch Ljava/lang/InterruptedException; {:try_start_8c .. :try_end_8f} :catch_be
    .catchall {:try_start_8c .. :try_end_8f} :catchall_c0

    :goto_8f
    monitor-exit v3

    .line 234
    .end local v3    # "tmp":Ljava/lang/Object;
    :cond_90
    :try_start_90
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacementInner(Z)V

    .line 236
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 238
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->needsLayout()Z

    move-result v5

    if-eqz v5, :cond_db

    .line 239
    iget v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v6, 0x6

    if-ge v5, v6, :cond_c3

    .line 240
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 249
    :goto_aa
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v5, :cond_ba

    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_b7
    .catch Ljava/lang/RuntimeException; {:try_start_90 .. :try_end_b7} :catch_cf

    move-result v5

    if-eqz v5, :cond_df

    .line 258
    :cond_ba
    :goto_ba
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 189
    return-void

    .line 228
    .restart local v3    # "tmp":Ljava/lang/Object;
    :catch_be
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_8f

    .line 225
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_c0
    move-exception v5

    monitor-exit v3

    throw v5

    .line 242
    .end local v3    # "tmp":Ljava/lang/Object;
    :cond_c3
    :try_start_c3
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Performed 6 layouts in a row. Skipping"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I
    :try_end_ce
    .catch Ljava/lang/RuntimeException; {:try_start_c3 .. :try_end_ce} :catch_cf

    goto :goto_aa

    .line 253
    :catch_cf
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/RuntimeException;
    iput-boolean v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 255
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Unhandled exception while laying out windows"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ba

    .line 246
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_db
    const/4 v5, 0x0

    :try_start_dc
    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    goto :goto_aa

    .line 250
    :cond_df
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 251
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z
    :try_end_f1
    .catch Ljava/lang/RuntimeException; {:try_start_dc .. :try_end_f1} :catch_cf

    goto :goto_ba
.end method

.method private processApplicationsAnimatingInPlace(I)V
    .registers 10
    .param p1, "transit"    # I

    .prologue
    .line 1618
    const/16 v5, 0x11

    if-ne p1, v5, :cond_5c

    .line 1620
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1621
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 1620
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->findFocusedWindowLocked(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 1622
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_5c

    .line 1623
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1624
    .local v4, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v1, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 1627
    .local v1, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 1628
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    .line 1629
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v4, p1}, Lcom/android/server/wm/WindowManagerService;->updateTokenInPlaceLocked(Lcom/android/server/wm/AppWindowToken;I)V

    .line 1630
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 1632
    iget-object v5, v1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1633
    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1634
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_30
    if-ge v2, v0, :cond_44

    .line 1635
    iget-object v6, v1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1634
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 1637
    :cond_44
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v6, v5, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v7

    or-int/2addr v6, v7

    iput-boolean v6, v5, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    .line 1638
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    .line 1617
    .end local v0    # "N":I
    .end local v1    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v2    # "j":I
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v4    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_5c
    return-void
.end method

.method private static toBrightnessOverride(F)I
    .registers 2
    .param p0, "value"    # F

    .prologue
    .line 1614
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private transitionGoodToGo(I)Z
    .registers 11
    .param p1, "appsCount"    # I

    .prologue
    const/16 v8, 0x2f

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1368
    const/4 v2, 0x3

    .line 1369
    .local v2, "reason":I
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v6

    if-nez v6, :cond_6d

    .line 1370
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, p1, :cond_43

    .line 1371
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    .line 1379
    .local v4, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1380
    return v7

    .line 1383
    :cond_23
    iget-boolean v0, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1384
    .local v0, "drawnBeforeRestoring":Z
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->restoreSavedSurfaces()V

    .line 1386
    iget-boolean v6, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v6, :cond_30

    iget-boolean v6, v4, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v6, :cond_3a

    .line 1389
    :cond_30
    iget-boolean v6, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v6, :cond_41

    .line 1390
    if-eqz v0, :cond_3f

    const/4 v2, 0x2

    .line 1370
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1386
    :cond_3a
    iget-boolean v6, v4, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v6, :cond_30

    .line 1387
    return v7

    .line 1391
    :cond_3f
    const/4 v2, 0x0

    goto :goto_37

    .line 1393
    :cond_41
    const/4 v2, 0x1

    goto :goto_37

    .line 1398
    .end local v0    # "drawnBeforeRestoring":Z
    .end local v4    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_43
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->isFetchingAppTransitionsSpecs()Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 1400
    return v7

    .line 1404
    :cond_4e
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v6}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 1405
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v6}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result v3

    .line 1406
    .local v3, "wallpaperReady":Z
    :goto_5c
    if-eqz v3, :cond_6c

    .line 1407
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v8, v2, v7}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1408
    return v5

    .end local v3    # "wallpaperReady":Z
    :cond_6a
    move v3, v5

    .line 1404
    goto :goto_5c

    .line 1410
    .restart local v3    # "wallpaperReady":Z
    :cond_6c
    return v7

    .line 1412
    .end local v1    # "i":I
    .end local v3    # "wallpaperReady":Z
    :cond_6d
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v8, v2, v7}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1413
    return v5
.end method

.method private updateAllDrawnLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 14
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v11, 0x1

    .line 1570
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v2

    .line 1571
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "stackNdx":I
    :goto_b
    if-ltz v1, :cond_85

    .line 1572
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 1573
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "taskNdx":I
    :goto_1d
    if-ltz v3, :cond_82

    .line 1574
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Task;

    iget-object v6, v8, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 1575
    .local v6, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v6}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "tokenNdx":I
    :goto_2d
    if-ltz v5, :cond_7f

    .line 1576
    invoke-virtual {v6, v5}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    .line 1577
    .local v7, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v8, :cond_54

    .line 1578
    iget v0, v7, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    .line 1579
    .local v0, "numInteresting":I
    if-lez v0, :cond_54

    iget v8, v7, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    if-lt v8, v0, :cond_54

    .line 1584
    iput-boolean v11, v7, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1587
    iput-boolean v11, p1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1588
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 1589
    iget-object v9, v7, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    .line 1588
    const/16 v10, 0x20

    invoke-virtual {v8, v10, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1592
    .end local v0    # "numInteresting":I
    :cond_54
    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    if-nez v8, :cond_74

    .line 1593
    iget v0, v7, Lcom/android/server/wm/AppWindowToken;->numInterestingWindowsExcludingSaved:I

    .line 1594
    .restart local v0    # "numInteresting":I
    if-lez v0, :cond_74

    .line 1595
    iget v8, v7, Lcom/android/server/wm/AppWindowToken;->numDrawnWindowsExclusingSaved:I

    if-lt v8, v0, :cond_74

    .line 1600
    iput-boolean v11, v7, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    .line 1601
    iput-boolean v11, p1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1602
    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->isAnimatingInvisibleWithSavedSurface()Z

    move-result v8

    if-eqz v8, :cond_74

    .line 1603
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mFinishedEarlyAnim:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_77

    .line 1575
    .end local v0    # "numInteresting":I
    :cond_74
    :goto_74
    add-int/lit8 v5, v5, -0x1

    goto :goto_2d

    .line 1604
    .restart local v0    # "numInteresting":I
    :cond_77
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mFinishedEarlyAnim:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 1573
    .end local v0    # "numInteresting":I
    .end local v7    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_7f
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 1571
    .end local v5    # "tokenNdx":I
    .end local v6    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_82
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 1567
    .end local v3    # "taskNdx":I
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_85
    return-void
.end method


# virtual methods
.method continueLayout()V
    .registers 2

    .prologue
    .line 169
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 170
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-gtz v0, :cond_d

    .line 171
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 168
    :cond_d
    return-void
.end method

.method copyAnimToLayoutParamsLocked()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1720
    const/4 v1, 0x0

    .line 1722
    .local v1, "doRequest":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v0, v2, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 1723
    .local v0, "bulkUpdateParams":I
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_10

    .line 1724
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mUpdateRotation:Z

    .line 1725
    const/4 v1, 0x1

    .line 1727
    :cond_10
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_17

    .line 1728
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    .line 1729
    const/4 v1, 0x1

    .line 1731
    :cond_17
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1e

    .line 1732
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperForceHidingChanged:Z

    .line 1733
    const/4 v1, 0x1

    .line 1735
    :cond_1e
    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_33

    .line 1736
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    .line 1744
    :cond_24
    :goto_24
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_2c

    .line 1745
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    .line 1747
    :cond_2c
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_32

    .line 1748
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperActionPending:Z

    .line 1751
    :cond_32
    return v1

    .line 1738
    :cond_33
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    .line 1739
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 1740
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v2, :cond_24

    .line 1741
    const/4 v1, 0x1

    goto :goto_24
.end method

.method debugLayoutRepeats(Ljava/lang/String;I)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "pendingLayoutChanges"    # I

    .prologue
    .line 262
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2d

    .line 263
    sget-object v0, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layouts looping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    const-string/jumbo v2, ", mPendingLayoutChanges = 0x"

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_2d
    return-void
.end method

.method deferLayout()V
    .registers 2

    .prologue
    .line 162
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 161
    return-void
.end method

.method destroyAfterTransaction(Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/SurfaceControl;

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1765
    return-void
.end method

.method destroyPendingSurfaces()V
    .registers 3

    .prologue
    .line 1774
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1775
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    .line 1774
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1777
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1773
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1781
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTraversalScheduled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1782
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHoldScreenWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1783
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mObsuringWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObsuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1780
    return-void
.end method

.method isInLayout()Z
    .registers 2

    .prologue
    .line 903
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    return v0
.end method

.method final performLayoutLockedInner(Lcom/android/server/wm/DisplayContent;ZZ)V
    .registers 22
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "initial"    # Z
    .param p3, "updateInputWindows"    # Z

    .prologue
    .line 908
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    if-nez v1, :cond_7

    .line 909
    return-void

    .line 911
    :cond_7
    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 912
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v17

    .line 913
    .local v17, "windows":Lcom/android/server/wm/WindowList;
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 915
    .local v2, "isDefaultDisplay":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    .line 916
    .local v10, "displayInfo":Landroid/view/DisplayInfo;
    iget v3, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 917
    .local v3, "dw":I
    iget v4, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 919
    .local v4, "dh":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v1, :cond_2d

    .line 920
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/InputConsumerImpl;->layout(II)V

    .line 923
    :cond_2d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v1, :cond_3e

    .line 924
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/InputConsumerImpl;->layout(II)V

    .line 927
    :cond_3e
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    .line 936
    .local v7, "N":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .line 937
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 936
    invoke-interface/range {v1 .. v6}, Landroid/view/WindowManagerPolicy;->beginLayoutLw(ZIIII)V

    .line 938
    if-eqz v2, :cond_76

    .line 940
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->getSystemDecorLayerLw()I

    move-result v5

    iput v5, v1, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    .line 941
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 944
    :cond_76
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpContentRect:Landroid/graphics/Rect;

    invoke-interface {v1, v5}, Landroid/view/WindowManagerPolicy;->getContentRectLw(Landroid/graphics/Rect;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpContentRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->resize(Landroid/graphics/Rect;)V

    .line 947
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    add-int/lit8 v13, v1, 0x1

    .line 948
    .local v13, "seq":I
    if-gez v13, :cond_97

    const/4 v13, 0x0

    .line 949
    :cond_97
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput v13, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    .line 951
    const/4 v9, 0x0

    .line 955
    .local v9, "behindDream":Z
    const/4 v15, -0x1

    .line 956
    .local v15, "topAttached":I
    add-int/lit8 v12, v7, -0x1

    .local v12, "i":I
    :goto_a1
    if-ltz v12, :cond_148

    .line 957
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/WindowState;

    .line 962
    .local v16, "win":Lcom/android/server/wm/WindowState;
    if-eqz v9, :cond_bf

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v16

    invoke-interface {v1, v0, v5}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_e6

    .line 963
    :cond_bf
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v11

    .line 990
    :goto_c3
    if-eqz v11, :cond_106

    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v1, :cond_106

    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-nez v1, :cond_106

    .line 991
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    move-result v1

    if-nez v1, :cond_dd

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->setInsetsChanged()Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 992
    :cond_dd
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 956
    :cond_e3
    :goto_e3
    add-int/lit8 v12, v12, -0x1

    goto :goto_a1

    .line 962
    :cond_e6
    const/4 v11, 0x1

    .local v11, "gone":Z
    goto :goto_c3

    .line 993
    .end local v11    # "gone":Z
    :cond_e8
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_106

    .line 994
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_e3

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_e3

    .line 995
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->layoutConfigChanges:Z

    .line 990
    if-eqz v1, :cond_e3

    .line 996
    :cond_106
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v1, :cond_144

    .line 997
    if-eqz p2, :cond_113

    .line 999
    const/4 v1, 0x0

    move-object/from16 v0, v16

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 1001
    :cond_113
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7e7

    if-ne v1, v5, :cond_11e

    .line 1005
    const/4 v9, 0x1

    .line 1007
    :cond_11e
    const/4 v1, 0x0

    move-object/from16 v0, v16

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 1008
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 1009
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-interface {v1, v0, v5}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1010
    move-object/from16 v0, v16

    iput v13, v0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 1013
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v14

    .line 1014
    .local v14, "task":Lcom/android/server/wm/Task;
    if-eqz v14, :cond_e3

    .line 1015
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v1, v14}, Lcom/android/server/wm/DimLayerController;->updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    goto :goto_e3

    .line 1024
    .end local v14    # "task":Lcom/android/server/wm/Task;
    :cond_144
    if-gez v15, :cond_e3

    move v15, v12

    goto :goto_e3

    .line 1029
    .end local v16    # "win":Lcom/android/server/wm/WindowState;
    :cond_148
    const/4 v8, 0x0

    .line 1035
    .local v8, "attachedBehindDream":Z
    move v12, v15

    .end local v8    # "attachedBehindDream":Z
    :goto_14a
    if-ltz v12, :cond_1ba

    .line 1036
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/WindowState;

    .line 1038
    .restart local v16    # "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v1, :cond_1ae

    .line 1047
    if-eqz v8, :cond_171

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v16

    invoke-interface {v1, v0, v5}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_171

    .line 1035
    :cond_16e
    :goto_16e
    add-int/lit8 v12, v12, -0x1

    goto :goto_14a

    .line 1050
    :cond_171
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v5, 0x8

    if-eq v1, v5, :cond_17f

    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v1, :cond_18b

    .line 1051
    :cond_17f
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v1, :cond_18b

    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 1050
    if-eqz v1, :cond_16e

    .line 1052
    :cond_18b
    if-eqz p2, :cond_192

    .line 1054
    const/4 v1, 0x0

    move-object/from16 v0, v16

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 1056
    :cond_192
    const/4 v1, 0x0

    move-object/from16 v0, v16

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 1057
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 1058
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v16

    invoke-interface {v1, v0, v5}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1059
    move-object/from16 v0, v16

    iput v13, v0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    goto :goto_16e

    .line 1064
    :cond_1ae
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7e7

    if-ne v1, v5, :cond_16e

    .line 1068
    move v8, v9

    .local v8, "attachedBehindDream":Z
    goto :goto_16e

    .line 1073
    .end local v8    # "attachedBehindDream":Z
    .end local v16    # "win":Lcom/android/server/wm/WindowState;
    :cond_1ba
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 1074
    if-eqz p3, :cond_1cf

    .line 1075
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 1078
    :cond_1cf
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->finishLayoutLw()V

    .line 1079
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x29

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 907
    return-void
.end method

.method final performSurfacePlacement()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 176
    iget v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v1, :cond_6

    .line 177
    return-void

    .line 179
    :cond_6
    const/4 v0, 0x6

    .line 181
    .local v0, "loopCount":I
    :cond_7
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 182
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacementLoop()V

    .line 183
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 184
    add-int/lit8 v0, v0, -0x1

    .line 185
    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-eqz v1, :cond_1c

    if-gtz v0, :cond_7

    .line 186
    :cond_1c
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperActionPending:Z

    .line 175
    return-void
.end method

.method requestTraversal()V
    .registers 3

    .prologue
    .line 1755
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-nez v0, :cond_f

    .line 1756
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 1757
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 1754
    :cond_f
    return-void
.end method

.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final APP_TRANSITION_TIMEOUT_MS:J = 0x1388L

.field private static final CLIP_REVEAL_TRANSLATION_Y_DP:I = 0x8

.field static final DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field private static final MAX_CLIP_REVEAL_TRANSITION_DURATION:I = 0x1a4

.field private static final NEXT_TRANSIT_TYPE_CLIP_REVEAL:I = 0x8

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE:I = 0x7

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x6

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP:I = 0x5

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final RECENTS_THUMBNAIL_FADEIN_FRACTION:F = 0.5f

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.5f

.field private static final TAG:Ljava/lang/String;

.field private static final THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field static final TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x7

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x6

.field public static final TRANSIT_ACTIVITY_RELAUNCH:I = 0x12

.field public static final TRANSIT_DOCK_TASK_FROM_RECENTS:I = 0x13

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_TASK_CLOSE:I = 0x9

.field public static final TRANSIT_TASK_IN_PLACE:I = 0x11

.field public static final TRANSIT_TASK_OPEN:I = 0x8

.field public static final TRANSIT_TASK_OPEN_BEHIND:I = 0x10

.field public static final TRANSIT_TASK_TO_BACK:I = 0xb

.field public static final TRANSIT_TASK_TO_FRONT:I = 0xa

.field public static final TRANSIT_UNSET:I = -0x1

.field public static final TRANSIT_WALLPAPER_CLOSE:I = 0xc

.field public static final TRANSIT_WALLPAPER_INTRA_CLOSE:I = 0xf

.field public static final TRANSIT_WALLPAPER_INTRA_OPEN:I = 0xe

.field public static final TRANSIT_WALLPAPER_OPEN:I = 0xd


# instance fields
.field private mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

.field private mAppTransitionState:I

.field private final mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

.field private final mClipRevealTranslationY:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

.field private mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mLastClipRevealMaxTranslation:I

.field private mLastClipRevealTransitionDuration:J

.field private mLastHadClipReveal:Z

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerInternal$AppTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAppTransition:I

.field private final mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field private mNextAppTransitionAnimationsSpecsPending:Z

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionInPlace:I

.field private mNextAppTransitionInsets:Landroid/graphics/Rect;

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionType:I

.field private mProlongedAnimationsEnded:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private mTmpFromClipRect:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTmpToClipRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/wm/AppTransition;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/AppTransition;)Landroid/os/IRemoteCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/AppTransition;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/AppTransition;)Lcom/android/server/wm/WindowManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/AppTransition;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)Landroid/os/IRemoteCallback;
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 94
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/AppTransition;->TAG:Ljava/lang/String;

    .line 148
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 147
    sput-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 151
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f59999a    # 0.85f

    invoke-direct {v0, v1, v4, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 150
    sput-object v0, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 93
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 175
    iput v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 195
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 194
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 200
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    .line 202
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    .line 205
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 211
    iput v3, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 220
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    .line 224
    iput v3, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 225
    const-wide/16 v0, 0x150

    iput-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 228
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 235
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 236
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 238
    const v0, 0x10c000e

    .line 237
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 240
    const v0, 0x10c000f

    .line 239
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 242
    const v0, 0x10c000d

    .line 241
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 244
    const/high16 v1, 0x10e0000

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 246
    const v0, 0x10c0003

    .line 245
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 247
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 259
    new-instance v0, Lcom/android/server/wm/AppTransition$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 271
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 270
    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    .line 234
    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1819
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    packed-switch v0, :pswitch_data_2c

    .line 1829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1821
    :pswitch_1c
    const-string/jumbo v0, "APP_STATE_IDLE"

    return-object v0

    .line 1823
    :pswitch_20
    const-string/jumbo v0, "APP_STATE_READY"

    return-object v0

    .line 1825
    :pswitch_24
    const-string/jumbo v0, "APP_STATE_RUNNING"

    return-object v0

    .line 1827
    :pswitch_28
    const-string/jumbo v0, "APP_STATE_TIMEOUT"

    return-object v0

    .line 1819
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_28
    .end packed-switch
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "transition"    # I

    .prologue
    .line 1766
    packed-switch p0, :pswitch_data_44

    .line 1813
    :pswitch_3
    const-string/jumbo v0, "<UNKNOWN>"

    return-object v0

    .line 1768
    :pswitch_7
    const-string/jumbo v0, "TRANSIT_UNSET"

    return-object v0

    .line 1771
    :pswitch_b
    const-string/jumbo v0, "TRANSIT_NONE"

    return-object v0

    .line 1774
    :pswitch_f
    const-string/jumbo v0, "TRANSIT_ACTIVITY_OPEN"

    return-object v0

    .line 1777
    :pswitch_13
    const-string/jumbo v0, "TRANSIT_ACTIVITY_CLOSE"

    return-object v0

    .line 1780
    :pswitch_17
    const-string/jumbo v0, "TRANSIT_TASK_OPEN"

    return-object v0

    .line 1783
    :pswitch_1b
    const-string/jumbo v0, "TRANSIT_TASK_CLOSE"

    return-object v0

    .line 1786
    :pswitch_1f
    const-string/jumbo v0, "TRANSIT_TASK_TO_FRONT"

    return-object v0

    .line 1789
    :pswitch_23
    const-string/jumbo v0, "TRANSIT_TASK_TO_BACK"

    return-object v0

    .line 1792
    :pswitch_27
    const-string/jumbo v0, "TRANSIT_WALLPAPER_CLOSE"

    return-object v0

    .line 1795
    :pswitch_2b
    const-string/jumbo v0, "TRANSIT_WALLPAPER_OPEN"

    return-object v0

    .line 1798
    :pswitch_2f
    const-string/jumbo v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    return-object v0

    .line 1801
    :pswitch_33
    const-string/jumbo v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    return-object v0

    .line 1804
    :pswitch_37
    const-string/jumbo v0, "TRANSIT_TASK_OPEN_BEHIND"

    return-object v0

    .line 1807
    :pswitch_3b
    const-string/jumbo v0, "TRANSIT_ACTIVITY_RELAUNCH"

    return-object v0

    .line 1810
    :pswitch_3f
    const-string/jumbo v0, "TRANSIT_DOCK_TASK_FROM_RECENTS"

    return-object v0

    .line 1766
    nop

    :pswitch_data_44
    .packed-switch -0x1
        :pswitch_7
        :pswitch_b
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_37
        :pswitch_3
        :pswitch_3b
        :pswitch_3f
    .end packed-switch
.end method

.method private calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J
    .registers 9
    .param p1, "cutOff"    # Z
    .param p2, "translationX"    # F
    .param p3, "translationY"    # F
    .param p4, "displayFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 715
    if-nez p1, :cond_5

    .line 716
    const-wide/16 v2, 0x150

    return-wide v2

    .line 718
    :cond_5
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 719
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 718
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 721
    .local v0, "fraction":F
    const/high16 v1, 0x42a80000    # 84.0f

    .line 720
    mul-float/2addr v1, v0

    const/high16 v2, 0x43a80000    # 336.0f

    add-float/2addr v1, v2

    float-to-long v2, v1

    return-wide v2
.end method

.method private static computePivot(IF)F
    .registers 5
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    .prologue
    .line 588
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, p1, v1

    .line 589
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_11

    .line 590
    int-to-float v1, p0

    return v1

    .line 592
    :cond_11
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method

.method private createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .registers 6
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "taskId"    # I

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1177
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 1178
    const/4 v1, 0x1

    .line 1177
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .registers 6
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "taskId"    # I

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1184
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 1185
    const/4 v1, 0x0

    .line 1184
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;
    .registers 36
    .param p1, "sourceFrame"    # Landroid/graphics/Rect;
    .param p2, "destFrame"    # Landroid/graphics/Rect;
    .param p3, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p4, "enter"    # Z

    .prologue
    .line 1190
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v0, v4

    move/from16 v27, v0

    .line 1191
    .local v27, "sourceWidth":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v0, v4

    move/from16 v25, v0

    .line 1192
    .local v25, "sourceHeight":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v0, v4

    move/from16 v20, v0

    .line 1193
    .local v20, "destWidth":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v0, v4

    move/from16 v18, v0

    .line 1194
    .local v18, "destHeight":F
    if-eqz p4, :cond_c1

    div-float v3, v27, v20

    .line 1195
    .local v3, "scaleH":F
    :goto_20
    if-eqz p4, :cond_c5

    div-float v5, v25, v18

    .line 1196
    .local v5, "scaleV":F
    :goto_24
    new-instance v23, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1197
    .local v23, "set":Landroid/view/animation/AnimationSet;
    if-nez p3, :cond_c9

    .line 1198
    const/16 v28, 0x0

    .line 1199
    .local v28, "surfaceInsetsH":I
    :goto_30
    if-nez p3, :cond_d5

    .line 1200
    const/16 v29, 0x0

    .line 1203
    .local v29, "surfaceInsetsV":I
    :goto_34
    if-eqz p4, :cond_e1

    .end local v20    # "destWidth":F
    :goto_36
    move/from16 v0, v28

    int-to-float v4, v0

    add-float v4, v4, v20

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v4, v6

    .line 1204
    .local v7, "scaleHCenter":F
    if-eqz p4, :cond_e5

    .end local v18    # "destHeight":F
    :goto_41
    move/from16 v0, v29

    int-to-float v4, v0

    add-float v4, v4, v18

    const/high16 v6, 0x40000000    # 2.0f

    div-float v8, v4, v6

    .line 1205
    .local v8, "scaleVCenter":F
    if-eqz p4, :cond_e9

    .line 1206
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1208
    .local v2, "scale":Landroid/view/animation/ScaleAnimation;
    :goto_55
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v24, v4, v6

    .line 1209
    .local v24, "sourceHCenter":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v26, v4, v6

    .line 1210
    .local v26, "sourceVCenter":I
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v17, v4, v6

    .line 1211
    .local v17, "destHCenter":I
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v19, v4, v6

    .line 1212
    .local v19, "destVCenter":I
    if-eqz p4, :cond_f9

    sub-int v21, v24, v17

    .line 1213
    .local v21, "fromX":I
    :goto_89
    if-eqz p4, :cond_fc

    sub-int v22, v26, v19

    .line 1214
    .local v22, "fromY":I
    :goto_8d
    if-eqz p4, :cond_ff

    new-instance v30, Landroid/view/animation/TranslateAnimation;

    move/from16 v0, v21

    int-to-float v4, v0

    const/4 v6, 0x0

    move/from16 v0, v22

    int-to-float v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, v30

    invoke-direct {v0, v4, v6, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1216
    .local v30, "translation":Landroid/view/animation/TranslateAnimation;
    :goto_9e
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1217
    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    move-object/from16 v16, v0

    .line 1220
    .local v16, "callback":Landroid/os/IRemoteCallback;
    if-eqz v16, :cond_c0

    .line 1221
    new-instance v4, Lcom/android/server/wm/AppTransition$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1}, Lcom/android/server/wm/AppTransition$3;-><init>(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1234
    :cond_c0
    return-object v23

    .line 1194
    .end local v2    # "scale":Landroid/view/animation/ScaleAnimation;
    .end local v3    # "scaleH":F
    .end local v5    # "scaleV":F
    .end local v7    # "scaleHCenter":F
    .end local v8    # "scaleVCenter":F
    .end local v16    # "callback":Landroid/os/IRemoteCallback;
    .end local v17    # "destHCenter":I
    .end local v19    # "destVCenter":I
    .end local v21    # "fromX":I
    .end local v22    # "fromY":I
    .end local v23    # "set":Landroid/view/animation/AnimationSet;
    .end local v24    # "sourceHCenter":I
    .end local v26    # "sourceVCenter":I
    .end local v28    # "surfaceInsetsH":I
    .end local v29    # "surfaceInsetsV":I
    .end local v30    # "translation":Landroid/view/animation/TranslateAnimation;
    .restart local v18    # "destHeight":F
    .restart local v20    # "destWidth":F
    :cond_c1
    div-float v3, v20, v27

    .restart local v3    # "scaleH":F
    goto/16 :goto_20

    .line 1195
    :cond_c5
    div-float v5, v18, v25

    .restart local v5    # "scaleV":F
    goto/16 :goto_24

    .line 1198
    .restart local v23    # "set":Landroid/view/animation/AnimationSet;
    :cond_c9
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int v28, v4, v6

    .restart local v28    # "surfaceInsetsH":I
    goto/16 :goto_30

    .line 1200
    :cond_d5
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int v29, v4, v6

    .restart local v29    # "surfaceInsetsV":I
    goto/16 :goto_34

    :cond_e1
    move/from16 v20, v27

    .line 1203
    goto/16 :goto_36

    .end local v20    # "destWidth":F
    .restart local v7    # "scaleHCenter":F
    :cond_e5
    move/from16 v18, v25

    .line 1204
    goto/16 :goto_41

    .line 1207
    .end local v18    # "destHeight":F
    .restart local v8    # "scaleVCenter":F
    :cond_e9
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v9, v2

    move v11, v3

    move v13, v5

    move v14, v7

    move v15, v8

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .restart local v2    # "scale":Landroid/view/animation/ScaleAnimation;
    goto/16 :goto_55

    .line 1212
    .restart local v17    # "destHCenter":I
    .restart local v19    # "destVCenter":I
    .restart local v24    # "sourceHCenter":I
    .restart local v26    # "sourceVCenter":I
    :cond_f9
    sub-int v21, v17, v24

    .restart local v21    # "fromX":I
    goto :goto_89

    .line 1213
    :cond_fc
    sub-int v22, v19, v26

    .restart local v22    # "fromY":I
    goto :goto_8d

    .line 1215
    :cond_ff
    new-instance v30, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    move/from16 v0, v21

    int-to-float v6, v0

    const/4 v9, 0x0

    move/from16 v0, v22

    int-to-float v10, v0

    move-object/from16 v0, v30

    invoke-direct {v0, v4, v6, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v30    # "translation":Landroid/view/animation/TranslateAnimation;
    goto :goto_9e
.end method

.method private createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 36
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appFrame"    # Landroid/graphics/Rect;
    .param p4, "displayFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 727
    if-eqz p2, :cond_19a

    .line 728
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 729
    .local v16, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 733
    .local v8, "appHeight":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 735
    const/16 v27, 0x0

    .line 736
    .local v27, "t":F
    if-lez v8, :cond_25

    .line 737
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v27, v6, v7

    .line 739
    :cond_25
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    const/high16 v10, 0x40e00000    # 7.0f

    div-float/2addr v7, v10

    mul-float v7, v7, v27

    float-to-int v7, v7

    add-int v30, v6, v7

    .line 740
    .local v30, "translationY":I
    const/16 v29, 0x0

    .line 741
    .local v29, "translationX":I
    move/from16 v9, v30

    .line 742
    .local v9, "translationYCorrection":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    .line 743
    .local v17, "centerX":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    .line 744
    .local v18, "centerY":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v25, v6, 0x2

    .line 745
    .local v25, "halfWidth":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v24, v6, 0x2

    .line 746
    .local v24, "halfHeight":I
    sub-int v6, v17, v25

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v20, v6, v7

    .line 747
    .local v20, "clipStartX":I
    sub-int v6, v18, v24

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, v6, v7

    .line 748
    .local v5, "clipStartY":I
    const/16 v21, 0x0

    .line 753
    .local v21, "cutOff":Z
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v7, v18, v24

    if-le v6, v7, :cond_84

    .line 754
    sub-int v6, v18, v24

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int v30, v6, v7

    .line 755
    const/4 v9, 0x0

    .line 756
    const/4 v5, 0x0

    .line 757
    const/16 v21, 0x1

    .line 759
    :cond_84
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int v7, v17, v25

    if-le v6, v7, :cond_98

    .line 760
    sub-int v6, v17, v25

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v29, v6, v7

    .line 761
    const/16 v20, 0x0

    .line 762
    const/16 v21, 0x1

    .line 764
    :cond_98
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int v7, v17, v25

    if-ge v6, v7, :cond_b4

    .line 765
    add-int v6, v17, v25

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->right:I

    sub-int v29, v6, v7

    .line 766
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v20, v16, v6

    .line 767
    const/16 v21, 0x1

    .line 769
    :cond_b4
    move/from16 v0, v29

    int-to-float v6, v0

    .line 770
    move/from16 v0, v30

    int-to-float v7, v0

    .line 769
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/android/server/wm/AppTransition;->calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J

    move-result-wide v22

    .line 773
    .local v22, "duration":J
    new-instance v19, Lcom/android/server/wm/animation/ClipRectLRAnimation;

    .line 774
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int v6, v6, v20

    const/4 v7, 0x0

    .line 773
    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/android/server/wm/animation/ClipRectLRAnimation;-><init>(IIII)V

    .line 775
    .local v19, "clipAnimLR":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 776
    move-wide/from16 v0, v22

    long-to-float v6, v0

    const/high16 v7, 0x40200000    # 2.5f

    div-float/2addr v6, v7

    float-to-long v6, v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 778
    new-instance v28, Landroid/view/animation/TranslateAnimation;

    move/from16 v0, v29

    int-to-float v6, v0

    const/4 v7, 0x0

    move/from16 v0, v30

    int-to-float v10, v0

    const/4 v11, 0x0

    move-object/from16 v0, v28

    invoke-direct {v0, v6, v7, v10, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 779
    .local v28, "translate":Landroid/view/animation/TranslateAnimation;
    if-eqz v21, :cond_192

    sget-object v6, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_102
    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 781
    move-object/from16 v0, v28

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 783
    new-instance v4, Lcom/android/server/wm/animation/ClipRectTBAnimation;

    .line 784
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v6, v5

    .line 787
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 785
    const/4 v7, 0x0

    .line 786
    const/4 v10, 0x0

    .line 783
    invoke-direct/range {v4 .. v11}, Lcom/android/server/wm/animation/ClipRectTBAnimation;-><init>(IIIIIILandroid/view/animation/Interpolator;)V

    .line 788
    .local v4, "clipAnimTB":Landroid/view/animation/Animation;
    sget-object v6, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 789
    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 792
    const-wide/16 v6, 0x4

    div-long v14, v22, v6

    .line 793
    .local v14, "alphaDuration":J
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-direct {v12, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 794
    .local v12, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v12, v14, v15}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 795
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 797
    new-instance v26, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 798
    .local v26, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 799
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 800
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 801
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 802
    const/4 v6, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 803
    move-object/from16 v0, v26

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-virtual {v0, v1, v8, v2, v8}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 804
    move-object/from16 v13, v26

    .line 805
    .local v13, "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 806
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 810
    if-eqz v21, :cond_198

    .line 811
    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 810
    :goto_18d
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    .line 839
    .end local v4    # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v5    # "clipStartY":I
    .end local v8    # "appHeight":I
    .end local v9    # "translationYCorrection":I
    .end local v12    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v14    # "alphaDuration":J
    .end local v16    # "appWidth":I
    .end local v17    # "centerX":I
    .end local v18    # "centerY":I
    .end local v19    # "clipAnimLR":Landroid/view/animation/Animation;
    .end local v20    # "clipStartX":I
    .end local v21    # "cutOff":Z
    .end local v24    # "halfHeight":I
    .end local v25    # "halfWidth":I
    .end local v26    # "set":Landroid/view/animation/AnimationSet;
    .end local v27    # "t":F
    .end local v28    # "translate":Landroid/view/animation/TranslateAnimation;
    .end local v29    # "translationX":I
    .end local v30    # "translationY":I
    :goto_191
    return-object v13

    .line 780
    .end local v13    # "anim":Landroid/view/animation/Animation;
    .restart local v5    # "clipStartY":I
    .restart local v8    # "appHeight":I
    .restart local v9    # "translationYCorrection":I
    .restart local v16    # "appWidth":I
    .restart local v17    # "centerX":I
    .restart local v18    # "centerY":I
    .restart local v19    # "clipAnimLR":Landroid/view/animation/Animation;
    .restart local v20    # "clipStartX":I
    .restart local v21    # "cutOff":Z
    .restart local v24    # "halfHeight":I
    .restart local v25    # "halfWidth":I
    .restart local v27    # "t":F
    .restart local v28    # "translate":Landroid/view/animation/TranslateAnimation;
    .restart local v29    # "translationX":I
    .restart local v30    # "translationY":I
    :cond_192
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    goto/16 :goto_102

    .line 811
    .restart local v4    # "clipAnimTB":Landroid/view/animation/Animation;
    .restart local v12    # "alpha":Landroid/view/animation/AlphaAnimation;
    .restart local v13    # "anim":Landroid/view/animation/Animation;
    .restart local v14    # "alphaDuration":J
    .restart local v26    # "set":Landroid/view/animation/AnimationSet;
    :cond_198
    const/4 v6, 0x0

    goto :goto_18d

    .line 814
    .end local v4    # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v5    # "clipStartY":I
    .end local v8    # "appHeight":I
    .end local v9    # "translationYCorrection":I
    .end local v12    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v13    # "anim":Landroid/view/animation/Animation;
    .end local v14    # "alphaDuration":J
    .end local v16    # "appWidth":I
    .end local v17    # "centerX":I
    .end local v18    # "centerY":I
    .end local v19    # "clipAnimLR":Landroid/view/animation/Animation;
    .end local v20    # "clipStartX":I
    .end local v21    # "cutOff":Z
    .end local v22    # "duration":J
    .end local v24    # "halfHeight":I
    .end local v25    # "halfWidth":I
    .end local v26    # "set":Landroid/view/animation/AnimationSet;
    .end local v27    # "t":F
    .end local v28    # "translate":Landroid/view/animation/TranslateAnimation;
    .end local v29    # "translationX":I
    .end local v30    # "translationY":I
    :cond_19a
    packed-switch p1, :pswitch_data_1da

    .line 820
    const-wide/16 v22, 0x150

    .line 823
    .restart local v22    # "duration":J
    :goto_19f
    const/16 v6, 0xe

    move/from16 v0, p1

    if-eq v0, v6, :cond_1ab

    .line 824
    const/16 v6, 0xf

    move/from16 v0, p1

    if-ne v0, v6, :cond_1d0

    .line 829
    :cond_1ab
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v13, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 830
    .restart local v13    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 835
    :goto_1b7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 836
    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 837
    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_191

    .line 817
    .end local v13    # "anim":Landroid/view/animation/Animation;
    .end local v22    # "duration":J
    :pswitch_1c8
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v0, v6

    move-wide/from16 v22, v0

    .line 818
    .restart local v22    # "duration":J
    goto :goto_19f

    .line 833
    :cond_1d0
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v13, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v13    # "anim":Landroid/view/animation/Animation;
    goto :goto_1b7

    .line 814
    :pswitch_data_1da
    .packed-switch 0x6
        :pswitch_1c8
        :pswitch_1c8
    .end packed-switch
.end method

.method private createCurvedMotion(FFFF)Landroid/view/animation/Animation;
    .registers 8
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    .prologue
    .line 1007
    sub-float v1, p2, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_12

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_18

    .line 1008
    :cond_12
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v1

    .line 1010
    :cond_18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->createCurvedPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 1011
    .local v0, "path":Landroid/graphics/Path;
    new-instance v1, Lcom/android/server/wm/animation/CurvedTranslateAnimation;

    invoke-direct {v1, v0}, Lcom/android/server/wm/animation/CurvedTranslateAnimation;-><init>(Landroid/graphics/Path;)V

    return-object v1
.end method

.method private createCurvedPath(FFFF)Landroid/graphics/Path;
    .registers 12
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    .prologue
    const v3, 0x3f666666    # 0.9f

    const v2, 0x3dcccccd    # 0.1f

    .line 1016
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1017
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, p1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1019
    cmpl-float v1, p3, p4

    if-lez v1, :cond_20

    .line 1021
    mul-float v1, v3, p3

    mul-float/2addr v2, p4

    add-float v4, v1, v2

    move v1, p1

    move v2, p3

    move v3, p2

    move v5, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1026
    :goto_1f
    return-object v0

    .line 1024
    :cond_20
    mul-float v1, v2, p3

    mul-float v2, v3, p4

    add-float v4, v1, v2

    move v1, p1

    move v2, p3

    move v3, p1

    move v5, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_1f
.end method

.method private createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 19
    .param p1, "containingFrame"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 1349
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v4, v11, Landroid/graphics/Rect;->left:I

    .line 1351
    .local v4, "left":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v8, v11, Landroid/graphics/Rect;->top:I

    .line 1352
    .local v8, "top":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    neg-int v12, v4

    neg-int v13, v8

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1355
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x1

    invoke-direct {v5, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1356
    .local v5, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v3, v11

    .line 1357
    .local v3, "fromWidth":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v7, v11

    .line 1358
    .local v7, "toWidth":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v2, v11

    .line 1362
    .local v2, "fromHeight":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    int-to-float v6, v11

    .line 1363
    .local v6, "toHeight":F
    const/4 v10, 0x0

    .line 1364
    .local v10, "translateAdjustment":I
    cmpg-float v11, v3, v7

    if-gtz v11, :cond_9f

    cmpg-float v11, v2, v6

    if-gtz v11, :cond_9f

    .line 1368
    new-instance v11, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v11, v12, v13}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v5, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1382
    :goto_7c
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int v11, v4, v11

    int-to-float v11, v11

    .line 1383
    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    sub-int/2addr v13, v10

    int-to-float v13, v13

    const/4 v14, 0x0

    .line 1382
    invoke-direct {v9, v11, v12, v13, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1384
    .local v9, "translate":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v5, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1385
    const-wide/16 v12, 0x150

    invoke-virtual {v5, v12, v13}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1386
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1387
    return-object v5

    .line 1372
    .end local v9    # "translate":Landroid/view/animation/TranslateAnimation;
    :cond_9f
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    div-float v12, v3, v7

    const/high16 v13, 0x3f800000    # 1.0f

    div-float v14, v2, v6

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v5, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1376
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    mul-float/2addr v11, v2

    div-float/2addr v11, v6

    float-to-int v10, v11

    goto :goto_7c
.end method

.method private createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 18
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "containingFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 598
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 600
    .local v10, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 601
    .local v9, "appHeight":I
    if-eqz p2, :cond_74

    .line 603
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v4, v10

    div-float v1, v2, v4

    .line 604
    .local v1, "scaleW":F
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    int-to-float v4, v9

    div-float v3, v2, v4

    .line 605
    .local v3, "scaleH":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 606
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v1}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v5

    .line 607
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v3}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v6

    .line 605
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 608
    .local v0, "scale":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 610
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v8, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 611
    .local v8, "alpha":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 613
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v11, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 614
    .local v11, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 615
    invoke-virtual {v11, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 616
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 617
    move-object v7, v11

    .line 635
    .end local v0    # "scale":Landroid/view/animation/Animation;
    .end local v1    # "scaleW":F
    .end local v3    # "scaleH":F
    .end local v8    # "alpha":Landroid/view/animation/Animation;
    .end local v11    # "set":Landroid/view/animation/AnimationSet;
    .local v7, "a":Landroid/view/animation/Animation;
    :goto_5f
    packed-switch p1, :pswitch_data_98

    .line 641
    const-wide/16 v12, 0x150

    .line 644
    .local v12, "duration":J
    :goto_64
    invoke-virtual {v7, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 645
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 646
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 647
    invoke-virtual {v7, v10, v9, v10, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 648
    return-object v7

    .line 618
    .end local v7    # "a":Landroid/view/animation/Animation;
    .end local v12    # "duration":J
    :cond_74
    const/16 v2, 0xe

    if-eq p1, v2, :cond_7c

    .line 619
    const/16 v2, 0xf

    if-ne p1, v2, :cond_89

    .line 624
    :cond_7c
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v7, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 625
    .restart local v7    # "a":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    goto :goto_5f

    .line 628
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_89
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v7, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto :goto_5f

    .line 638
    :pswitch_93
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v12, v2

    .line 639
    .restart local v12    # "duration":J
    goto :goto_64

    .line 635
    nop

    :pswitch_data_98
    .packed-switch 0x6
        :pswitch_93
        :pswitch_93
    .end packed-switch
.end method

.method private fetchAppTransitionSpecsFromFuture()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1724
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v1, :cond_16

    .line 1725
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 1726
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1728
    .local v0, "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    iput-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1729
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/wm/AppTransition$4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/AppTransition$4;-><init>(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1723
    .end local v0    # "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    :cond_16
    return-void
.end method

.method private getAspectScaleDuration()J
    .registers 3

    .prologue
    .line 1030
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_9

    .line 1031
    const-wide/16 v0, 0x1c5

    return-wide v0

    .line 1033
    :cond_9
    const-wide/16 v0, 0x150

    return-wide v0
.end method

.method private getAspectScaleInterpolator()Landroid/view/animation/Interpolator;
    .registers 3

    .prologue
    .line 1038
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_9

    .line 1039
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0

    .line 1041
    :cond_9
    sget-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .registers 7
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v3, 0x0

    .line 445
    if-eqz p1, :cond_2a

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_2a

    .line 449
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_26

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 450
    .local v0, "packageName":Ljava/lang/String;
    :goto_d
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 451
    .local v1, "resId":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_19

    .line 452
    const-string/jumbo v0, "android"

    .line 456
    :cond_19
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    .line 457
    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 456
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    return-object v2

    .line 449
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_26
    const-string/jumbo v0, "android"

    .restart local v0    # "packageName":Ljava/lang/String;
    goto :goto_d

    .line 459
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2a
    return-object v3
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .line 465
    if-eqz p1, :cond_1a

    .line 466
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_d

    .line 467
    const-string/jumbo p1, "android"

    .line 471
    :cond_d
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    .line 472
    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 471
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    return-object v0

    .line 474
    :cond_1a
    return-object v0
.end method

.method private getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v0, :cond_a

    .line 653
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_1b

    .line 654
    :cond_a
    sget-object v0, Lcom/android/server/wm/AppTransition;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Starting rect for app requested, but none available"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 655
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 651
    :goto_1a
    return-void

    .line 657
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1a
.end method

.method private isTvUiMode(I)Z
    .registers 4
    .param p1, "uiMode"    # I

    .prologue
    const/4 v0, 0x0

    .line 1948
    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method private loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 508
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_f

    .line 509
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 510
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_f

    .line 511
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 512
    move v0, p2

    .line 515
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_f
    if-eqz v0, :cond_16

    .line 516
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 518
    :cond_16
    return-object v3
.end method

.method private notifyAppTransitionCancelledLocked()V
    .registers 3

    .prologue
    .line 428
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 429
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked()V

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 427
    :cond_17
    return-void
.end method

.method private notifyAppTransitionPendingLocked()V
    .registers 3

    .prologue
    .line 422
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 423
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 421
    :cond_17
    return-void
.end method

.method private notifyAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .registers 7
    .param p1, "openToken"    # Landroid/os/IBinder;
    .param p2, "closeToken"    # Landroid/os/IBinder;
    .param p3, "openAnimation"    # Landroid/view/animation/Animation;
    .param p4, "closeAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 435
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 436
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 434
    :cond_17
    return-void
.end method

.method private prepare()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_16

    .line 355
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 356
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionPendingLocked()V

    .line 357
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 358
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    .line 359
    const-wide/16 v0, 0x150

    iput-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 360
    const/4 v0, 0x1

    return v0

    .line 362
    :cond_16
    return v1
.end method

.method private putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V
    .registers 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 677
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    .line 678
    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 677
    const/4 v2, -0x1

    invoke-direct {v0, v2, p5, v1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 676
    return-void
.end method

.method private setAppTransition(I)V
    .registers 2
    .param p1, "transit"    # I

    .prologue
    .line 287
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 286
    return-void
.end method

.method private transitTypeToString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1834
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_3c

    .line 1852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1836
    :pswitch_1c
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_NONE"

    return-object v0

    .line 1838
    :pswitch_20
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    return-object v0

    .line 1840
    :pswitch_24
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    return-object v0

    .line 1842
    :pswitch_28
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    return-object v0

    .line 1844
    :pswitch_2c
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    return-object v0

    .line 1846
    :pswitch_30
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    return-object v0

    .line 1848
    :pswitch_34
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    return-object v0

    .line 1850
    :pswitch_38
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    return-object v0

    .line 1834
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_20
        :pswitch_28
        :pswitch_2c
        :pswitch_30
        :pswitch_34
        :pswitch_38
        :pswitch_24
    .end packed-switch
.end method


# virtual methods
.method canSkipFirstFrame()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1396
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eq v2, v0, :cond_14

    .line 1397
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_14

    .line 1398
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_12

    .line 1396
    :goto_11
    return v0

    :cond_12
    move v0, v1

    .line 1398
    goto :goto_11

    :cond_14
    move v0, v1

    .line 1396
    goto :goto_11
.end method

.method clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 395
    iput v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 396
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 398
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 399
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 400
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 401
    iput-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mProlongedAnimationsEnded:Z

    .line 394
    return-void
.end method

.method createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;
    .registers 43
    .param p1, "thumbTransitState"    # I
    .param p2, "uiMode"    # I
    .param p3, "orientation"    # I
    .param p4, "transit"    # I
    .param p5, "containingFrame"    # Landroid/graphics/Rect;
    .param p6, "contentInsets"    # Landroid/graphics/Rect;
    .param p7, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p8, "freeform"    # Z
    .param p9, "taskId"    # I

    .prologue
    .line 1053
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 1054
    .local v14, "appWidth":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v13

    .line 1055
    .local v13, "appHeight":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v28

    .line 1057
    .local v28, "thumbWidthI":I
    if-lez v28, :cond_53

    move/from16 v5, v28

    :goto_1d
    int-to-float v0, v5

    move/from16 v27, v0

    .line 1058
    .local v27, "thumbWidth":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v24

    .line 1059
    .local v24, "thumbHeightI":I
    if-lez v24, :cond_55

    move/from16 v5, v24

    :goto_2c
    int-to-float v0, v5

    move/from16 v23, v0

    .line 1060
    .local v23, "thumbHeight":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int v25, v5, v6

    .line 1061
    .local v25, "thumbStartX":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v26, v5, v6

    .line 1063
    .local v26, "thumbStartY":I
    packed-switch p1, :pswitch_data_28a

    .line 1167
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Invalid thumbnail transition state"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1057
    .end local v23    # "thumbHeight":F
    .end local v24    # "thumbHeightI":I
    .end local v25    # "thumbStartX":I
    .end local v26    # "thumbStartY":I
    .end local v27    # "thumbWidth":F
    :cond_53
    const/4 v5, 0x1

    goto :goto_1d

    .line 1059
    .restart local v24    # "thumbHeightI":I
    .restart local v27    # "thumbWidth":F
    :cond_55
    const/4 v5, 0x1

    goto :goto_2c

    .line 1066
    .restart local v23    # "thumbHeight":F
    .restart local v25    # "thumbStartX":I
    .restart local v26    # "thumbStartY":I
    :pswitch_57
    if-nez p1, :cond_7c

    const/16 v17, 0x1

    .line 1067
    .local v17, "scaleUp":Z
    :goto_5b
    if-eqz p8, :cond_7f

    if-eqz v17, :cond_7f

    .line 1068
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    move/from16 v3, p9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v7

    .line 1171
    .end local v17    # "scaleUp":Z
    .local v7, "a":Landroid/view/animation/Animation;
    :goto_6b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v12

    move-object/from16 v6, p0

    move v8, v14

    move v9, v13

    .line 1170
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v5

    return-object v5

    .line 1066
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_7c
    const/16 v17, 0x0

    .restart local v17    # "scaleUp":Z
    goto :goto_5b

    .line 1070
    :cond_7f
    if-eqz p8, :cond_8e

    .line 1071
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    move/from16 v3, p9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v7

    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto :goto_6b

    .line 1074
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_8e
    new-instance v18, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1077
    .local v18, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1089
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/wm/AppTransition;->isTvUiMode(I)Z

    move-result v5

    if-nez v5, :cond_db

    const/4 v5, 0x1

    move/from16 v0, p3

    if-ne v0, v5, :cond_1e5

    .line 1092
    :cond_db
    move-object/from16 v0, p6

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int v5, v14, v5

    move-object/from16 v0, p6

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 1091
    div-float v16, v27, v5

    .line 1093
    .local v16, "scale":F
    div-float v5, v23, v16

    float-to-int v0, v5

    move/from16 v30, v0

    .line 1094
    .local v30, "unscaledThumbHeight":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int v6, v6, v30

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1096
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1098
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    .line 1099
    if-eqz v17, :cond_1b5

    move/from16 v5, v16

    :goto_10b
    if-eqz v17, :cond_1b9

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1100
    :goto_10f
    if-eqz v17, :cond_1bd

    move/from16 v7, v16

    :goto_113
    if-eqz v17, :cond_1c1

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1101
    :goto_117
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 1102
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    move-object/from16 v0, p6

    iget v11, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 1098
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1103
    .local v4, "scaleAnim":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v0, v5

    move/from16 v21, v0

    .line 1104
    .local v21, "targetX":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 1105
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    mul-float v6, v6, v16

    .line 1104
    sub-float v31, v5, v6

    .line 1106
    .local v31, "x":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v0, v5

    move/from16 v22, v0

    .line 1107
    .local v22, "targetY":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 1108
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    mul-float v6, v6, v16

    .line 1107
    sub-float v32, v5, v6

    .line 1109
    .local v32, "y":F
    sub-float v19, v21, v31

    .line 1110
    .local v19, "startX":F
    sub-float v20, v22, v32

    .line 1111
    .local v20, "startY":F
    if-eqz v17, :cond_1c5

    .line 1112
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1114
    .local v15, "clipAnim":Landroid/view/animation/Animation;
    :goto_187
    if-eqz v17, :cond_1d3

    .line 1115
    const/4 v5, 0x0

    move-object/from16 v0, p6

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float v6, v20, v6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v5, v6, v8}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v29

    .line 1118
    .local v29, "translateAnim":Landroid/view/animation/Animation;
    :goto_19a
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1119
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1120
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1139
    .end local v4    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v16    # "scale":F
    .end local v19    # "startX":F
    .end local v20    # "startY":F
    .end local v21    # "targetX":F
    .end local v22    # "targetY":F
    .end local v30    # "unscaledThumbHeight":I
    .end local v31    # "x":F
    .end local v32    # "y":F
    :goto_1ab
    move-object/from16 v7, v18

    .line 1140
    .restart local v7    # "a":Landroid/view/animation/Animation;
    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    goto/16 :goto_6b

    .line 1099
    .end local v7    # "a":Landroid/view/animation/Animation;
    .end local v15    # "clipAnim":Landroid/view/animation/Animation;
    .end local v29    # "translateAnim":Landroid/view/animation/Animation;
    .restart local v16    # "scale":F
    .restart local v30    # "unscaledThumbHeight":I
    :cond_1b5
    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_10b

    :cond_1b9
    move/from16 v6, v16

    goto/16 :goto_10f

    .line 1100
    :cond_1bd
    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_113

    :cond_1c1
    move/from16 v8, v16

    goto/16 :goto_117

    .line 1113
    .restart local v4    # "scaleAnim":Landroid/view/animation/Animation;
    .restart local v19    # "startX":F
    .restart local v20    # "startY":F
    .restart local v21    # "targetX":F
    .restart local v22    # "targetY":F
    .restart local v31    # "x":F
    .restart local v32    # "y":F
    :cond_1c5
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .restart local v15    # "clipAnim":Landroid/view/animation/Animation;
    goto :goto_187

    .line 1116
    :cond_1d3
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float v8, v20, v8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v5, v1, v6, v8}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v29

    .restart local v29    # "translateAnim":Landroid/view/animation/Animation;
    goto :goto_19a

    .line 1124
    .end local v4    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v15    # "clipAnim":Landroid/view/animation/Animation;
    .end local v16    # "scale":F
    .end local v19    # "startX":F
    .end local v20    # "startY":F
    .end local v21    # "targetX":F
    .end local v22    # "targetY":F
    .end local v29    # "translateAnim":Landroid/view/animation/Animation;
    .end local v30    # "unscaledThumbHeight":I
    .end local v31    # "x":F
    .end local v32    # "y":F
    :cond_1e5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int v6, v6, v24

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1125
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int v6, v6, v28

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1127
    if-eqz v17, :cond_232

    .line 1128
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1130
    .restart local v15    # "clipAnim":Landroid/view/animation/Animation;
    :goto_210
    if-eqz v17, :cond_240

    .line 1131
    move/from16 v0, v25

    int-to-float v5, v0

    const/4 v6, 0x0

    .line 1132
    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int v8, v26, v8

    int-to-float v8, v8

    const/4 v9, 0x0

    .line 1131
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v8, v9}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v29

    .line 1136
    .restart local v29    # "translateAnim":Landroid/view/animation/Animation;
    :goto_224
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1137
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1ab

    .line 1129
    .end local v15    # "clipAnim":Landroid/view/animation/Animation;
    .end local v29    # "translateAnim":Landroid/view/animation/Animation;
    :cond_232
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .restart local v15    # "clipAnim":Landroid/view/animation/Animation;
    goto :goto_210

    .line 1133
    :cond_240
    const/4 v5, 0x0

    move/from16 v0, v25

    int-to-float v6, v0

    const/4 v8, 0x0

    .line 1134
    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int v9, v26, v9

    int-to-float v9, v9

    .line 1133
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v8, v9}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v29

    .restart local v29    # "translateAnim":Landroid/view/animation/Animation;
    goto :goto_224

    .line 1146
    .end local v15    # "clipAnim":Landroid/view/animation/Animation;
    .end local v17    # "scaleUp":Z
    .end local v18    # "set":Landroid/view/animation/AnimationSet;
    .end local v29    # "translateAnim":Landroid/view/animation/Animation;
    :pswitch_253
    const/16 v5, 0xe

    move/from16 v0, p4

    if-ne v0, v5, :cond_263

    .line 1149
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v7, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_6b

    .line 1151
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_263
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v7, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_6b

    .line 1157
    .end local v7    # "a":Landroid/view/animation/Animation;
    :pswitch_26e
    const/16 v5, 0xe

    move/from16 v0, p4

    if-ne v0, v5, :cond_27e

    .line 1160
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v7, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_6b

    .line 1162
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_27e
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v7, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_6b

    .line 1063
    nop

    :pswitch_data_28a
    .packed-switch 0x0
        :pswitch_57
        :pswitch_253
        :pswitch_26e
        :pswitch_57
    .end packed-switch
.end method

.method createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;III)Landroid/view/animation/Animation;
    .registers 43
    .param p1, "appRect"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;
    .param p3, "thumbnailHeader"    # Landroid/graphics/Bitmap;
    .param p4, "taskId"    # I
    .param p5, "uiMode"    # I
    .param p6, "orientation"    # I

    .prologue
    .line 905
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v32

    .line 906
    .local v32, "thumbWidthI":I
    if-lez v32, :cond_1a3

    move/from16 v7, v32

    :goto_8
    int-to-float v0, v7

    move/from16 v31, v0

    .line 907
    .local v31, "thumbWidth":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    .line 908
    .local v30, "thumbHeightI":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v22

    .line 910
    .local v22, "appWidth":I
    move/from16 v0, v22

    int-to-float v7, v0

    div-float v8, v7, v31

    .line 911
    .local v8, "scaleW":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1, v7}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 918
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/wm/AppTransition;->isTvUiMode(I)Z

    move-result v7

    if-nez v7, :cond_32

    const/4 v7, 0x1

    move/from16 v0, p6

    if-ne v0, v7, :cond_1a6

    .line 919
    :cond_32
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v0, v7

    move/from16 v26, v0

    .line 920
    .local v26, "fromX":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v0, v7

    move/from16 v27, v0

    .line 924
    .local v27, "fromY":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v9, v8, v9

    mul-float/2addr v7, v9

    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    add-float v33, v7, v9

    .line 925
    .local v33, "toX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    const/high16 v9, 0x3f800000    # 1.0f

    div-float/2addr v9, v8

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v9, v10, v9

    mul-float/2addr v7, v9

    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float v34, v7, v9

    .line 926
    .local v34, "toY":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v11, v7

    .line 927
    .local v11, "pivotX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    div-float v12, v7, v8

    .line 936
    .local v12, "pivotY":F
    :goto_85
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v24

    .line 937
    .local v24, "duration":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v28

    .line 938
    .local v28, "interpolator":Landroid/view/animation/Interpolator;
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_1d4

    .line 940
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move v10, v8

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 941
    .local v6, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 942
    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 943
    new-instance v21, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 944
    .local v21, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v9, 0x13

    if-ne v7, v9, :cond_1ca

    .line 945
    sget-object v7, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 944
    :goto_bb
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 946
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v9, 0x13

    if-ne v7, v9, :cond_1d0

    .line 947
    const-wide/16 v16, 0x2

    div-long v16, v24, v16

    .line 946
    :goto_cc
    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 949
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v33

    move/from16 v3, v27

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v35

    .line 950
    .local v35, "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 951
    move-object/from16 v0, v35

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 953
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v7, v9, v10, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 954
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 958
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 959
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    div-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, v7, Landroid/graphics/Rect;->right:I

    .line 960
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    div-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, v7, Landroid/graphics/Rect;->bottom:I

    .line 962
    if-eqz p2, :cond_155

    .line 963
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->left:I

    neg-int v9, v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    .line 964
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->top:I

    neg-int v10, v10

    int-to-float v10, v10

    mul-float/2addr v10, v8

    float-to-int v10, v10

    .line 965
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    neg-int v13, v13

    int-to-float v13, v13

    mul-float/2addr v13, v8

    float-to-int v13, v13

    .line 966
    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    neg-int v14, v14

    int-to-float v14, v14

    mul-float/2addr v14, v8

    float-to-int v14, v14

    .line 963
    invoke-virtual {v7, v9, v10, v13, v14}, Landroid/graphics/Rect;->inset(IIII)V

    .line 969
    :cond_155
    new-instance v23, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, v23

    invoke-direct {v0, v7, v9}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 970
    .local v23, "clipAnim":Landroid/view/animation/Animation;
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 971
    invoke-virtual/range {v23 .. v25}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 974
    new-instance v29, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 975
    .local v29, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 976
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 977
    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 978
    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 979
    move-object/from16 v15, v29

    .line 1000
    .end local v23    # "clipAnim":Landroid/view/animation/Animation;
    .local v15, "a":Landroid/view/animation/Animation;
    :goto_192
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v17

    const-wide/16 v18, 0x0

    .line 1001
    const/16 v20, 0x0

    move-object/from16 v14, p0

    move/from16 v16, v22

    .line 1000
    invoke-virtual/range {v14 .. v20}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v7

    return-object v7

    .line 906
    .end local v6    # "scale":Landroid/view/animation/Animation;
    .end local v8    # "scaleW":F
    .end local v11    # "pivotX":F
    .end local v12    # "pivotY":F
    .end local v15    # "a":Landroid/view/animation/Animation;
    .end local v21    # "alpha":Landroid/view/animation/Animation;
    .end local v22    # "appWidth":I
    .end local v24    # "duration":J
    .end local v26    # "fromX":F
    .end local v27    # "fromY":F
    .end local v28    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v29    # "set":Landroid/view/animation/AnimationSet;
    .end local v30    # "thumbHeightI":I
    .end local v31    # "thumbWidth":F
    .end local v33    # "toX":F
    .end local v34    # "toY":F
    .end local v35    # "translate":Landroid/view/animation/Animation;
    :cond_1a3
    const/4 v7, 0x1

    goto/16 :goto_8

    .line 929
    .restart local v8    # "scaleW":F
    .restart local v22    # "appWidth":I
    .restart local v30    # "thumbHeightI":I
    .restart local v31    # "thumbWidth":F
    :cond_1a6
    const/4 v11, 0x0

    .line 930
    .restart local v11    # "pivotX":F
    const/4 v12, 0x0

    .line 931
    .restart local v12    # "pivotY":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v0, v7

    move/from16 v26, v0

    .line 932
    .restart local v26    # "fromX":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v0, v7

    move/from16 v27, v0

    .line 933
    .restart local v27    # "fromY":F
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v7

    move/from16 v33, v0

    .line 934
    .restart local v33    # "toX":F
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v7

    move/from16 v34, v0

    .restart local v34    # "toY":F
    goto/16 :goto_85

    .line 945
    .restart local v6    # "scale":Landroid/view/animation/Animation;
    .restart local v21    # "alpha":Landroid/view/animation/Animation;
    .restart local v24    # "duration":J
    .restart local v28    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_1ca
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    goto/16 :goto_bb

    :cond_1d0
    move-wide/from16 v16, v24

    .line 948
    goto/16 :goto_cc

    .line 982
    .end local v6    # "scale":Landroid/view/animation/Animation;
    .end local v21    # "alpha":Landroid/view/animation/Animation;
    :cond_1d4
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move-object v13, v6

    move v14, v8

    move/from16 v16, v8

    move/from16 v18, v11

    move/from16 v19, v12

    invoke-direct/range {v13 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 983
    .restart local v6    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 984
    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 985
    new-instance v21, Landroid/view/animation/AlphaAnimation;

    const/4 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    invoke-direct {v0, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 986
    .restart local v21    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 987
    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 988
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v26

    move/from16 v3, v34

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v35

    .line 989
    .restart local v35    # "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 990
    move-object/from16 v0, v35

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 993
    new-instance v29, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 994
    .restart local v29    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 995
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 996
    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 997
    move-object/from16 v15, v29

    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_192
.end method

.method createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;
    .registers 27
    .param p1, "thumbTransitState"    # I
    .param p2, "containingFrame"    # Landroid/graphics/Rect;
    .param p3, "transit"    # I
    .param p4, "taskId"    # I

    .prologue
    .line 1285
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v15

    .line 1286
    .local v15, "appWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 1287
    .local v14, "appHeight":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 1289
    .local v21, "thumbnailHeader":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1290
    if-eqz v21, :cond_3f

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 1291
    .local v20, "thumbWidthI":I
    :goto_1f
    if-lez v20, :cond_42

    .end local v20    # "thumbWidthI":I
    :goto_21
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v19, v0

    .line 1292
    .local v19, "thumbWidth":F
    if-eqz v21, :cond_45

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 1293
    .local v18, "thumbHeightI":I
    :goto_2c
    if-lez v18, :cond_48

    .end local v18    # "thumbHeightI":I
    :goto_2e
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v17, v0

    .line 1295
    .local v17, "thumbHeight":F
    packed-switch p1, :pswitch_data_e2

    .line 1342
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Invalid thumbnail transition state"

    invoke-direct {v4, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v17    # "thumbHeight":F
    .end local v19    # "thumbWidth":F
    :cond_3f
    move/from16 v20, v15

    .line 1290
    goto :goto_1f

    .line 1291
    .restart local v20    # "thumbWidthI":I
    :cond_42
    const/16 v20, 0x1

    goto :goto_21

    .end local v20    # "thumbWidthI":I
    .restart local v19    # "thumbWidth":F
    :cond_45
    move/from16 v18, v14

    .line 1292
    goto :goto_2c

    .line 1293
    .restart local v18    # "thumbHeightI":I
    :cond_48
    const/16 v18, 0x1

    goto :goto_2e

    .line 1298
    .end local v18    # "thumbHeightI":I
    .restart local v17    # "thumbHeight":F
    :pswitch_4b
    int-to-float v4, v15

    div-float v3, v19, v4

    .line 1299
    .local v3, "scaleW":F
    int-to-float v4, v14

    div-float v5, v17, v4

    .line 1300
    .local v5, "scaleH":F
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1301
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v7, v3}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v7

    .line 1302
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v8

    .line 1300
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1345
    .end local v3    # "scaleW":F
    .end local v5    # "scaleH":F
    .local v2, "a":Landroid/view/animation/Animation;
    :goto_6e
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v2, v15, v14, v1}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v4

    return-object v4

    .line 1307
    .end local v2    # "a":Landroid/view/animation/Animation;
    :pswitch_77
    const/16 v4, 0xe

    move/from16 v0, p3

    if-ne v0, v4, :cond_86

    .line 1311
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v2, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v2    # "a":Landroid/view/animation/Animation;
    goto :goto_6e

    .line 1314
    .end local v2    # "a":Landroid/view/animation/Animation;
    :cond_86
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v2    # "a":Landroid/view/animation/Animation;
    goto :goto_6e

    .line 1321
    .end local v2    # "a":Landroid/view/animation/Animation;
    :pswitch_90
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1322
    .restart local v2    # "a":Landroid/view/animation/Animation;
    goto :goto_6e

    .line 1326
    .end local v2    # "a":Landroid/view/animation/Animation;
    :pswitch_9a
    int-to-float v4, v15

    div-float v3, v19, v4

    .line 1327
    .restart local v3    # "scaleW":F
    int-to-float v4, v14

    div-float v5, v17, v4

    .line 1328
    .restart local v5    # "scaleH":F
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v3}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    .line 1330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v12

    move v8, v3

    move v10, v5

    .line 1328
    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1332
    .local v6, "scale":Landroid/view/animation/Animation;
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v13, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1334
    .local v13, "alpha":Landroid/view/animation/Animation;
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1335
    .local v16, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1336
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1337
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1338
    move-object/from16 v2, v16

    .line 1339
    .restart local v2    # "a":Landroid/view/animation/Animation;
    goto :goto_6e

    .line 1295
    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_77
        :pswitch_90
        :pswitch_9a
    .end packed-switch
.end method

.method createThumbnailScaleAnimationLocked(IIILandroid/graphics/Bitmap;)Landroid/view/animation/Animation;
    .registers 24
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "transit"    # I
    .param p4, "thumbnailHeader"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1244
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1245
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 1246
    .local v17, "thumbWidthI":I
    if-lez v17, :cond_7e

    .end local v17    # "thumbWidthI":I
    :goto_f
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 1247
    .local v16, "thumbWidth":F
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 1248
    .local v15, "thumbHeightI":I
    if-lez v15, :cond_81

    .end local v15    # "thumbHeightI":I
    :goto_1a
    int-to-float v14, v15

    .line 1250
    .local v14, "thumbHeight":F
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_83

    .line 1252
    move/from16 v0, p1

    int-to-float v7, v0

    div-float v6, v7, v16

    .line 1253
    .local v6, "scaleW":F
    move/from16 v0, p2

    int-to-float v7, v0

    div-float v8, v7, v14

    .line 1254
    .local v8, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1255
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    const/high16 v10, 0x3f800000    # 1.0f

    div-float/2addr v10, v6

    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    .line 1256
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v8

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    .line 1254
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1257
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1259
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v12, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1260
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1263
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v13, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1264
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1265
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1266
    move-object v5, v13

    .line 1276
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v13    # "set":Landroid/view/animation/AnimationSet;
    .local v5, "a":Landroid/view/animation/Animation;
    :goto_71
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v7

    return-object v7

    .line 1246
    .end local v5    # "a":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    .end local v14    # "thumbHeight":F
    .end local v16    # "thumbWidth":F
    .restart local v17    # "thumbWidthI":I
    :cond_7e
    const/16 v17, 0x1

    goto :goto_f

    .line 1248
    .end local v17    # "thumbWidthI":I
    .restart local v15    # "thumbHeightI":I
    .restart local v16    # "thumbWidth":F
    :cond_81
    const/4 v15, 0x1

    goto :goto_1a

    .line 1269
    .end local v15    # "thumbHeightI":I
    .restart local v14    # "thumbHeight":F
    :cond_83
    move/from16 v0, p1

    int-to-float v7, v0

    div-float v6, v7, v16

    .line 1270
    .restart local v6    # "scaleW":F
    move/from16 v0, p2

    int-to-float v7, v0

    div-float v8, v7, v14

    .line 1271
    .restart local v8    # "scaleH":F
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1272
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v6

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    .line 1273
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    const/high16 v18, 0x3f800000    # 1.0f

    div-float v18, v18, v8

    move/from16 v0, v18

    invoke-static {v11, v0}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    .line 1271
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto :goto_71
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1858
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1859
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1860
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_2a

    .line 1861
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1862
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1864
    :cond_2a
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_104

    .line 1904
    :goto_2f
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_41

    .line 1905
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1906
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1857
    :cond_41
    return-void

    .line 1866
    :pswitch_42
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1867
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1868
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1869
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1870
    const-string/jumbo v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1871
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2f

    .line 1874
    :pswitch_72
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1875
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1876
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionInPlace=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1877
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2f

    .line 1880
    :pswitch_93
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1881
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1882
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1883
    const-string/jumbo v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1884
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1885
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1886
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1887
    const-string/jumbo v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1888
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_2f

    .line 1895
    :pswitch_d8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDefaultNextAppTransitionAnimationSpec="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1896
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1897
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionAnimationsSpecs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1898
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1899
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1900
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_2f

    .line 1864
    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_42
        :pswitch_93
        :pswitch_d8
        :pswitch_d8
        :pswitch_d8
        :pswitch_d8
        :pswitch_72
    .end packed-switch
.end method

.method freeze()V
    .registers 2

    .prologue
    .line 405
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    .line 406
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 407
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 408
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionCancelledLocked()V

    .line 404
    return-void
.end method

.method getAppStackClipMode()I
    .registers 3

    .prologue
    .line 1583
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_c

    .line 1584
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_e

    .line 1586
    :cond_c
    const/4 v0, 0x2

    .line 1583
    :goto_d
    return v0

    .line 1585
    :cond_e
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    .line 1587
    const/4 v0, 0x0

    goto :goto_d
.end method

.method getAppTransition()I
    .registers 2

    .prologue
    .line 283
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getAppTransitionThumbnailHeader(I)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "taskId"    # I

    .prologue
    const/4 v1, 0x0

    .line 317
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 318
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_d

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 321
    :cond_d
    if-eqz v0, :cond_11

    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->bitmap:Landroid/graphics/Bitmap;

    :cond_11
    return-object v1
.end method

.method getLastClipRevealMaxTranslation()I
    .registers 2

    .prologue
    .line 692
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    return v0
.end method

.method getLastClipRevealTransitionDuration()J
    .registers 3

    .prologue
    .line 685
    iget-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    return-wide v0
.end method

.method getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 662
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 663
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_c

    .line 664
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 666
    :cond_c
    if-eqz v0, :cond_12

    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v1, :cond_3b

    .line 667
    :cond_12
    sget-object v1, Lcom/android/server/wm/AppTransition;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Starting rect for task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " requested, but not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 668
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 667
    invoke-static {v1, v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 669
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 661
    :goto_3a
    return-void

    .line 671
    :cond_3b
    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3a
.end method

.method getThumbnailTransitionState(Z)I
    .registers 3
    .param p1, "enter"    # Z

    .prologue
    .line 883
    if-eqz p1, :cond_a

    .line 884
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_8

    .line 885
    const/4 v0, 0x0

    return v0

    .line 887
    :cond_8
    const/4 v0, 0x2

    return v0

    .line 890
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_10

    .line 891
    const/4 v0, 0x1

    return v0

    .line 893
    :cond_10
    const/4 v0, 0x3

    return v0
.end method

.method goodToGo(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/AppWindowAnimator;Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 12
    .param p1, "topOpeningAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "topClosingAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/AppWindowAnimator;",
            "Lcom/android/server/wm/AppWindowAnimator;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p4, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v6, 0x2

    const/4 v2, 0x0

    .line 367
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 368
    iput v6, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 370
    if-eqz p1, :cond_38

    iget-object v3, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object v5, v3

    .line 371
    :goto_e
    if-eqz p2, :cond_3a

    iget-object v3, p2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object v4, v3

    .line 372
    :goto_15
    if-eqz p1, :cond_3c

    iget-object v3, p1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 373
    :goto_19
    if-eqz p2, :cond_1d

    iget-object v2, p2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 369
    :cond_1d
    invoke-direct {p0, v5, v4, v3, v2}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 374
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyAppTransitionStarting()V

    .line 379
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v3, 0x13

    if-ne v2, v3, :cond_37

    iget-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mProlongedAnimationsEnded:Z

    if-eqz v2, :cond_3e

    .line 366
    :cond_37
    return-void

    :cond_38
    move-object v5, v2

    .line 370
    goto :goto_e

    :cond_3a
    move-object v4, v2

    .line 371
    goto :goto_15

    :cond_3c
    move-object v3, v2

    .line 372
    goto :goto_19

    .line 380
    :cond_3e
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_44
    if-ltz v1, :cond_37

    .line 381
    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 382
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    invoke-virtual {v0, v6}, Lcom/android/server/wm/AppWindowAnimator;->startProlongAnimation(I)V

    .line 380
    add-int/lit8 v1, v1, -0x1

    goto :goto_44
.end method

.method hadClipRevealAnimation()Z
    .registers 2

    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    return v0
.end method

.method isFetchingAppTransitionsSpecs()Z
    .registers 2

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    return v0
.end method

.method isNextAppTransitionThumbnailDown()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 341
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_b

    .line 342
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_c

    .line 341
    :cond_b
    :goto_b
    return v0

    .line 342
    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isNextAppTransitionThumbnailUp()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 336
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    .line 337
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_c

    .line 336
    :cond_b
    :goto_b
    return v0

    .line 337
    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isNextThumbnailTransitionAspectScaled()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 326
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_b

    .line 327
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_c

    .line 326
    :cond_b
    :goto_b
    return v0

    .line 327
    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isNextThumbnailTransitionScaleUp()Z
    .registers 2

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return v0
.end method

.method isReady()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 291
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq v1, v0, :cond_a

    .line 292
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    .line 291
    :cond_a
    :goto_a
    return v0

    .line 292
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method isRunning()Z
    .registers 3

    .prologue
    .line 301
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isTimeout()Z
    .registers 3

    .prologue
    .line 309
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isTransitionEqual(I)Z
    .registers 3
    .param p1, "transit"    # I

    .prologue
    .line 279
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isTransitionSet()Z
    .registers 3

    .prologue
    .line 275
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)Landroid/view/animation/Animation;
    .registers 30
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "uiMode"    # I
    .param p5, "orientation"    # I
    .param p6, "frame"    # Landroid/graphics/Rect;
    .param p7, "displayFrame"    # Landroid/graphics/Rect;
    .param p8, "insets"    # Landroid/graphics/Rect;
    .param p9, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p10, "isVoiceInteraction"    # Z
    .param p11, "freeform"    # Z
    .param p12, "taskId"    # I

    .prologue
    .line 1427
    if-eqz p10, :cond_21

    const/4 v5, 0x6

    move/from16 v0, p2

    if-eq v0, v5, :cond_d

    .line 1428
    const/16 v5, 0x8

    move/from16 v0, p2

    if-ne v0, v5, :cond_1b

    .line 1430
    :cond_d
    if-eqz p3, :cond_3c

    .line 1431
    const v5, 0x10a00a0

    .line 1430
    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v15

    .line 1579
    :goto_1a
    return-object v15

    .line 1429
    :cond_1b
    const/16 v5, 0xa

    move/from16 v0, p2

    if-eq v0, v5, :cond_d

    .line 1437
    :cond_21
    if-eqz p10, :cond_46

    const/4 v5, 0x7

    move/from16 v0, p2

    if-eq v0, v5, :cond_2e

    .line 1438
    const/16 v5, 0x9

    move/from16 v0, p2

    if-ne v0, v5, :cond_40

    .line 1440
    :cond_2e
    if-eqz p3, :cond_57

    .line 1441
    const v5, 0x10a009e

    .line 1440
    :goto_33
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v15

    .local v15, "a":Landroid/view/animation/Animation;
    goto :goto_1a

    .line 1432
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_3c
    const v5, 0x10a00a1

    goto :goto_12

    .line 1439
    :cond_40
    const/16 v5, 0xb

    move/from16 v0, p2

    if-eq v0, v5, :cond_2e

    .line 1447
    :cond_46
    const/16 v5, 0x12

    move/from16 v0, p2

    if-ne v0, v5, :cond_5b

    .line 1448
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v15

    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto :goto_1a

    .line 1442
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_57
    const v5, 0x10a009f

    goto :goto_33

    .line 1454
    :cond_5b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_78

    .line 1455
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p3, :cond_73

    .line 1456
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1455
    :goto_6c
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v15

    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto :goto_1a

    .line 1456
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_73
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    goto :goto_6c

    .line 1462
    :cond_78
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_8e

    .line 1463
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v15

    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto :goto_1a

    .line 1469
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_8e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_a6

    .line 1470
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppTransition;->createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v15

    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1a

    .line 1476
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_a6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_bb

    .line 1477
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v15

    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1a

    .line 1483
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_bb
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_c9

    .line 1484
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_ed

    .line 1486
    :cond_c9
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_eb

    const/4 v5, 0x1

    .line 1485
    :goto_d1
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1487
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, p2

    move/from16 v3, p12

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;

    move-result-object v15

    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1a

    .line 1486
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_eb
    const/4 v5, 0x0

    goto :goto_d1

    .line 1497
    :cond_ed
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_fb

    .line 1498
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_129

    .line 1500
    :cond_fb
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_127

    const/4 v5, 0x1

    .line 1499
    :goto_103
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1502
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v6

    move-object/from16 v5, p0

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p2

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p11

    move/from16 v14, p12

    .line 1501
    invoke-virtual/range {v5 .. v14}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;

    move-result-object v15

    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1a

    .line 1500
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_127
    const/4 v5, 0x0

    goto :goto_103

    .line 1513
    :cond_129
    const/16 v16, 0x0

    .line 1514
    .local v16, "animAttr":I
    packed-switch p2, :pswitch_data_198

    .line 1571
    :goto_12e
    :pswitch_12e
    if-eqz v16, :cond_194

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v15

    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1a

    .line 1516
    .end local v15    # "a":Landroid/view/animation/Animation;
    :pswitch_13c
    if-eqz p3, :cond_141

    .line 1517
    const/16 v16, 0x4

    goto :goto_12e

    .line 1518
    :cond_141
    const/16 v16, 0x5

    goto :goto_12e

    .line 1521
    :pswitch_144
    if-eqz p3, :cond_149

    .line 1522
    const/16 v16, 0x6

    goto :goto_12e

    .line 1523
    :cond_149
    const/16 v16, 0x7

    goto :goto_12e

    .line 1527
    :pswitch_14c
    if-eqz p3, :cond_151

    .line 1528
    const/16 v16, 0x8

    goto :goto_12e

    .line 1529
    :cond_151
    const/16 v16, 0x9

    goto :goto_12e

    .line 1532
    :pswitch_154
    if-eqz p3, :cond_159

    .line 1533
    const/16 v16, 0xa

    goto :goto_12e

    .line 1534
    :cond_159
    const/16 v16, 0xb

    goto :goto_12e

    .line 1537
    :pswitch_15c
    if-eqz p3, :cond_161

    .line 1538
    const/16 v16, 0xc

    goto :goto_12e

    .line 1539
    :cond_161
    const/16 v16, 0xd

    goto :goto_12e

    .line 1542
    :pswitch_164
    if-eqz p3, :cond_169

    .line 1543
    const/16 v16, 0xe

    goto :goto_12e

    .line 1544
    :cond_169
    const/16 v16, 0xf

    goto :goto_12e

    .line 1547
    :pswitch_16c
    if-eqz p3, :cond_171

    .line 1548
    const/16 v16, 0x10

    goto :goto_12e

    .line 1549
    :cond_171
    const/16 v16, 0x11

    goto :goto_12e

    .line 1552
    :pswitch_174
    if-eqz p3, :cond_179

    .line 1553
    const/16 v16, 0x12

    goto :goto_12e

    .line 1554
    :cond_179
    const/16 v16, 0x13

    goto :goto_12e

    .line 1557
    :pswitch_17c
    if-eqz p3, :cond_181

    .line 1558
    const/16 v16, 0x14

    goto :goto_12e

    .line 1559
    :cond_181
    const/16 v16, 0x15

    goto :goto_12e

    .line 1562
    :pswitch_184
    if-eqz p3, :cond_189

    .line 1563
    const/16 v16, 0x16

    goto :goto_12e

    .line 1564
    :cond_189
    const/16 v16, 0x17

    goto :goto_12e

    .line 1567
    :pswitch_18c
    if-eqz p3, :cond_191

    .line 1568
    const/16 v16, 0x19

    goto :goto_12e

    .line 1569
    :cond_191
    const/16 v16, 0x18

    goto :goto_12e

    .line 1571
    :cond_194
    const/4 v15, 0x0

    .local v15, "a":Landroid/view/animation/Animation;
    goto/16 :goto_1a

    .line 1514
    nop

    :pswitch_data_198
    .packed-switch 0x6
        :pswitch_13c
        :pswitch_144
        :pswitch_14c
        :pswitch_154
        :pswitch_15c
        :pswitch_164
        :pswitch_174
        :pswitch_16c
        :pswitch_17c
        :pswitch_184
        :pswitch_18c
        :pswitch_12e
        :pswitch_12e
        :pswitch_14c
    .end packed-switch
.end method

.method loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .registers 9
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 480
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_15

    .line 481
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 482
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_15

    .line 483
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 484
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 487
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_15
    if-eqz v0, :cond_1c

    .line 488
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 490
    :cond_1c
    return-object v5
.end method

.method loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .registers 6
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 494
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 495
    .local v0, "context":Landroid/content/Context;
    if-ltz p2, :cond_12

    .line 496
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    .line 497
    .local v1, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v1, :cond_d

    .line 498
    iget-object v0, v1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 500
    :cond_d
    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    .line 502
    .end local v1    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_12
    return-object v2
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 416
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 417
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 415
    :cond_17
    return-void
.end method

.method notifyProlongedAnimationsEnded()V
    .registers 2

    .prologue
    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mProlongedAnimationsEnded:Z

    .line 390
    return-void
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I

    .prologue
    .line 1710
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1711
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1712
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1713
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1714
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    .line 1709
    :goto_10
    return-void

    .line 1716
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_10
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1600
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1601
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1602
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1603
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1604
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1605
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1606
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1607
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1599
    :goto_17
    return-void

    .line 1609
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_17
.end method

.method overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V
    .registers 14
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p7, "scaleUp"    # Z

    .prologue
    .line 1651
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1652
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1653
    if-eqz p7, :cond_1f

    const/4 v0, 0x5

    :goto_c
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1655
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    .line 1656
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    .line 1658
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1659
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1650
    :goto_1e
    return-void

    .line 1654
    :cond_1f
    const/4 v0, 0x6

    goto :goto_c

    .line 1661
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_1e
.end method

.method overridePendingAppTransitionClipReveal(IIII)V
    .registers 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    .line 1626
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1627
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1628
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1629
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    .line 1630
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1625
    :cond_19
    return-void
.end method

.method public overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .registers 14
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "onAnimationStartedCallback"    # Landroid/os/IRemoteCallback;
    .param p3, "onAnimationFinishedCallback"    # Landroid/os/IRemoteCallback;
    .param p4, "scaleUp"    # Z

    .prologue
    .line 1668
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1669
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1670
    if-eqz p4, :cond_3a

    const/4 v0, 0x5

    :goto_c
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1672
    iput-boolean p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1673
    if-eqz p1, :cond_3c

    .line 1674
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_13
    array-length v0, p1

    if-ge v6, v0, :cond_3c

    .line 1675
    aget-object v8, p1, v6

    .line 1676
    .local v8, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-eqz v8, :cond_37

    .line 1677
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    iget v1, v8, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1678
    if-nez v6, :cond_37

    .line 1681
    iget-object v7, v8, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 1682
    .local v7, "rect":Landroid/graphics/Rect;
    iget v1, v7, Landroid/graphics/Rect;->left:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 1683
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, v8, Landroid/view/AppTransitionAnimationSpec;->bitmap:Landroid/graphics/Bitmap;

    move-object v0, p0

    .line 1682
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    .line 1674
    .end local v7    # "rect":Landroid/graphics/Rect;
    :cond_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 1671
    .end local v6    # "i":I
    .end local v8    # "spec":Landroid/view/AppTransitionAnimationSpec;
    :cond_3a
    const/4 v0, 0x6

    goto :goto_c

    .line 1688
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1689
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1690
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1667
    :goto_43
    return-void

    .line 1692
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_43
.end method

.method overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .registers 5
    .param p1, "specsFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p2, "callback"    # Landroid/os/IRemoteCallback;
    .param p3, "scaleUp"    # Z

    .prologue
    .line 1699
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1700
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1701
    if-eqz p3, :cond_15

    const/4 v0, 0x5

    :goto_c
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1703
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1704
    iput-boolean p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1705
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 1698
    :cond_14
    return-void

    .line 1702
    :cond_15
    const/4 v0, 0x6

    goto :goto_c
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .registers 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    .line 1615
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1616
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1617
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1618
    add-int v3, p1, p3

    .line 1619
    add-int v4, p2, p4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 1618
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    .line 1620
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1614
    :cond_1a
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V
    .registers 12
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "scaleUp"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1636
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1637
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1638
    if-eqz p5, :cond_1f

    const/4 v0, 0x3

    :goto_d
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1640
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v4, v3

    move-object v5, p1

    .line 1641
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    .line 1642
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1643
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1635
    :goto_1e
    return-void

    .line 1639
    :cond_1f
    const/4 v0, 0x4

    goto :goto_d

    .line 1645
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_1e
.end method

.method postAnimationCallback()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1591
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_1a

    .line 1592
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 1593
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1592
    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1594
    iput-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1590
    :cond_1a
    return-void
.end method

.method prepareAppTransitionLocked(IZ)Z
    .registers 8
    .param p1, "transit"    # I
    .param p2, "alwaysKeepCurrent"    # Z

    .prologue
    const/16 v4, 0xd

    .line 1924
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-nez v1, :cond_2a

    .line 1925
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    .line 1936
    :cond_f
    :goto_f
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->prepare()Z

    move-result v0

    .line 1937
    .local v0, "prepared":Z
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1938
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1939
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 1941
    :cond_29
    return v0

    .line 1926
    .end local v0    # "prepared":Z
    :cond_2a
    if-nez p2, :cond_f

    .line 1927
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3c

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1929
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    goto :goto_f

    .line 1930
    :cond_3c
    const/4 v1, 0x6

    if-ne p1, v1, :cond_f

    .line 1931
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v1

    .line 1930
    if-eqz v1, :cond_f

    .line 1933
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    goto :goto_f
.end method

.method prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .registers 13
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .prologue
    .line 866
    packed-switch p4, :pswitch_data_14

    .line 872
    const/16 v7, 0x150

    .line 875
    .local v7, "duration":I
    :goto_5
    int-to-long v4, v7

    .line 876
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 875
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 869
    .end local v7    # "duration":I
    :pswitch_11
    iget v7, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .restart local v7    # "duration":I
    goto :goto_5

    .line 866
    :pswitch_data_14
    .packed-switch 0x6
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 9
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "duration"    # J
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 847
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_9

    .line 848
    invoke-virtual {p1, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 850
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 851
    if-eqz p6, :cond_12

    .line 852
    invoke-virtual {p1, p6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 854
    :cond_12
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 855
    return-object p1
.end method

.method registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/WindowManagerInternal$AppTransitionListener;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 2
    .param p1, "newUserId"    # I

    .prologue
    .line 1911
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 1910
    return-void
.end method

.method setIdle()V
    .registers 2

    .prologue
    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 304
    return-void
.end method

.method setReady()V
    .registers 2

    .prologue
    .line 296
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 297
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    .line 295
    return-void
.end method

.method setTimeout()V
    .registers 2

    .prologue
    .line 313
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 312
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNextAppTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

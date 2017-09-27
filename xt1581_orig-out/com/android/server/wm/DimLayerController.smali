.class Lcom/android/server/wm/DimLayerController;
.super Ljava/lang/Object;
.source "DimLayerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DimLayerController$DimLayerState;
    }
.end annotation


# static fields
.field private static final DEFAULT_DIM_AMOUNT_DEAD_WINDOW:F = 0.5f

.field private static final DEFAULT_DIM_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_LOCAL:Ljava/lang/String; = "DimLayerController"


# instance fields
.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

.field private mState:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/wm/DimLayer$DimLayerUser;",
            "Lcom/android/server/wm/DimLayerController$DimLayerState;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    .line 46
    iput-object p1, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 45
    return-void
.end method

.method private animateDimLayers(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z
    .registers 12
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 222
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 229
    .local v4, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v6, :cond_41

    .line 230
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v1

    .line 231
    .local v1, "dimLayer":I
    const/4 v0, 0x0

    .line 241
    .local v0, "dimAmount":F
    :goto_13
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->getTargetAlpha()F

    move-result v5

    .line 242
    .local v5, "targetAlpha":F
    cmpl-float v6, v5, v0

    if-eqz v6, :cond_82

    .line 243
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v6, :cond_5d

    .line 244
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v8, v9}, Lcom/android/server/wm/DimLayer;->hide(J)V

    .line 257
    :cond_28
    :goto_28
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 258
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v6

    if-nez v6, :cond_90

    .line 260
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->show()V

    .line 265
    :cond_3f
    const/4 v6, 0x0

    return v6

    .line 233
    .end local v0    # "dimAmount":F
    .end local v1    # "dimLayer":I
    .end local v5    # "targetAlpha":F
    :cond_41
    iget-boolean v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimAbove:Z

    if-eqz v6, :cond_4e

    .line 234
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v1, v6, 0x1

    .line 235
    .restart local v1    # "dimLayer":I
    const/high16 v0, 0x3f000000    # 0.5f

    .restart local v0    # "dimAmount":F
    goto :goto_13

    .line 237
    .end local v0    # "dimAmount":F
    .end local v1    # "dimLayer":I
    :cond_4e
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v1, v6, -0x1

    .line 238
    .restart local v1    # "dimLayer":I
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .restart local v0    # "dimAmount":F
    goto :goto_13

    .line 246
    .restart local v5    # "targetAlpha":F
    :cond_5d
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v6, :cond_7f

    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_7f

    .line 247
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v2

    .line 249
    .local v2, "duration":J
    :goto_71
    cmpl-float v6, v5, v0

    if-lez v6, :cond_79

    .line 250
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/DimLayerController;->getDimLayerFadeDuration(J)J

    move-result-wide v2

    .line 252
    :cond_79
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6, v1, v0, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    goto :goto_28

    .line 248
    .end local v2    # "duration":J
    :cond_7f
    const-wide/16 v2, 0xc8

    .restart local v2    # "duration":J
    goto :goto_71

    .line 254
    .end local v2    # "duration":J
    :cond_82
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v6

    if-eq v6, v1, :cond_28

    .line 255
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    goto :goto_28

    .line 262
    :cond_90
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->stepAnimation()Z

    move-result v6

    return v6
.end method

.method private getContinueDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z
    .registers 4
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 133
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-eqz v0, :cond_d

    iget-boolean v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private getDimLayerFadeDuration(J)J
    .registers 8
    .param p1, "duration"    # J

    .prologue
    .line 274
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 275
    .local v0, "tv":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 276
    const/high16 v2, 0x1130000

    const/4 v3, 0x1

    .line 275
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 277
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_22

    .line 278
    long-to-float v1, p1

    long-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-long p1, v1

    .line 282
    :cond_21
    :goto_21
    return-wide p1

    .line 279
    :cond_22
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_21

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_21

    .line 280
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-long p1, v1

    goto :goto_21
.end method

.method private static getDimLayerTag(Lcom/android/server/wm/DimLayer$DimLayerUser;)Ljava/lang/String;
    .registers 3
    .param p0, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DimLayerController/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreateDimLayerState(Lcom/android/server/wm/DimLayer$DimLayerUser;)Lcom/android/server/wm/DimLayerController$DimLayerState;
    .registers 5
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 98
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-nez v0, :cond_15

    .line 99
    new-instance v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .end local v0    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    invoke-direct {v0, v2}, Lcom/android/server/wm/DimLayerController$DimLayerState;-><init>(Lcom/android/server/wm/DimLayerController$DimLayerState;)V

    .line 100
    .restart local v0    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_15
    return-object v0
.end method

.method private setContinueDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;)V
    .registers 4
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 107
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-nez v0, :cond_b

    .line 110
    return-void

    .line 112
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    .line 105
    return-void
.end method

.method private stopDimmingIfNeeded(Lcom/android/server/wm/DimLayer$DimLayerUser;)V
    .registers 5
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 175
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v1, :cond_16

    .line 176
    return-void

    .line 179
    :cond_16
    iget-boolean v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    if-nez v1, :cond_30

    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 180
    iput-object v2, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    .line 181
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-interface {p1, v1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    .line 182
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 168
    :cond_30
    return-void
.end method


# virtual methods
.method animateDimLayers()Z
    .registers 10

    .prologue
    const/4 v8, -0x1

    .line 187
    const/4 v0, -0x1

    .line 188
    .local v0, "fullScreen":I
    const/4 v1, -0x1

    .line 189
    .local v1, "fullScreenAndDimming":I
    const/4 v3, 0x0

    .line 191
    .local v3, "result":Z
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .end local v3    # "result":Z
    .local v2, "i":I
    :goto_c
    if-ltz v2, :cond_41

    .line 192
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DimLayer$DimLayerUser;

    .line 193
    .local v5, "user":Lcom/android/server/wm/DimLayer$DimLayerUser;
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 198
    .local v4, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    invoke-interface {v5}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    move-result v6

    if-eqz v6, :cond_3b

    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v7, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-ne v6, v7, :cond_3b

    .line 199
    move v0, v2

    .line 200
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DimLayerController$DimLayerState;

    iget-boolean v6, v6, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    if-eqz v6, :cond_38

    .line 201
    move v1, v2

    .line 191
    :cond_38
    :goto_38
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 206
    :cond_3b
    invoke-direct {p0, v5}, Lcom/android/server/wm/DimLayerController;->animateDimLayers(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z

    move-result v6

    or-int/2addr v3, v6

    .local v3, "result":Z
    goto :goto_38

    .line 211
    .end local v3    # "result":Z
    .end local v4    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    .end local v5    # "user":Lcom/android/server/wm/DimLayer$DimLayerUser;
    :cond_41
    if-eq v1, v8, :cond_51

    .line 212
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DimLayer$DimLayerUser;

    invoke-direct {p0, v6}, Lcom/android/server/wm/DimLayerController;->animateDimLayers(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z

    move-result v6

    or-int/2addr v3, v6

    .line 218
    :cond_50
    :goto_50
    return v3

    .line 213
    :cond_51
    if-eq v0, v8, :cond_50

    .line 216
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DimLayer$DimLayerUser;

    invoke-direct {p0, v6}, Lcom/android/server/wm/DimLayerController;->animateDimLayers(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z

    move-result v6

    or-int/2addr v3, v6

    .restart local v3    # "result":Z
    goto :goto_50
.end method

.method applyDim(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V
    .registers 7
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "animator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p3, "aboveApp"    # Z

    .prologue
    .line 315
    if-nez p1, :cond_23

    .line 316
    sget-object v0, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Trying to apply dim layer for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 317
    const-string/jumbo v2, ", but no dim layer user found."

    .line 316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void

    .line 320
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayerController;->getContinueDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 321
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayerController;->setContinueDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DimLayerController;->isDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 324
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DimLayerController;->startDimmingIfNeeded(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V

    .line 314
    :cond_35
    return-void
.end method

.method applyDimAbove(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)V
    .registers 4
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "animator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 310
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/DimLayerController;->applyDim(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V

    .line 309
    return-void
.end method

.method applyDimBehind(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)V
    .registers 4
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "animator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/DimLayerController;->applyDim(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V

    .line 305
    return-void
.end method

.method close()V
    .registers 4

    .prologue
    .line 286
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 287
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 288
    .local v1, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v2, v1, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v2}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 286
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 290
    .end local v1    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    :cond_1a
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 291
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    .line 285
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 11
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 340
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "DimLayerController"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    const-string/jumbo v0, "  "

    .line 342
    .local v0, "doubleSpace":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "prefixPlusDoubleSpace":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "n":I
    :goto_35
    if-ge v1, v2, :cond_c8

    .line 345
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DimLayer$DimLayerUser;

    invoke-interface {v5}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 347
    .local v4, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "dimLayer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 348
    iget-object v5, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v7, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-ne v5, v7, :cond_c5

    const-string/jumbo v5, "shared"

    .line 347
    :goto_7f
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 349
    const-string/jumbo v6, ", animator="

    .line 347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 349
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    .line 347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 349
    const-string/jumbo v6, ", continueDimming="

    .line 347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 349
    iget-boolean v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    .line 347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    iget-object v5, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v5, :cond_c1

    .line 351
    iget-object v5, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 344
    :cond_c1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_35

    .line 348
    :cond_c5
    iget-object v5, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    goto :goto_7f

    .line 339
    .end local v4    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    :cond_c8
    return-void
.end method

.method isDimming()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_24

    .line 117
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 118
    .local v1, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v2, v1, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v2, :cond_21

    iget-object v2, v1, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v2}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 119
    const/4 v2, 0x1

    return v2

    .line 116
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 122
    .end local v1    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    :cond_24
    return v3
.end method

.method isDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)Z
    .registers 5
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 270
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-eqz v0, :cond_15

    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne v1, p2, :cond_15

    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v1

    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method removeDimLayerUser(Lcom/android/server/wm/DimLayer$DimLayerUser;)V
    .registers 5
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 295
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 296
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-eqz v0, :cond_1a

    .line 298
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-eq v1, v2, :cond_15

    .line 299
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 301
    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_1a
    return-void
.end method

.method resetDimming()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_18

    .line 127
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DimLayerController$DimLayerState;

    iput-boolean v2, v1, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    .line 126
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 125
    :cond_18
    return-void
.end method

.method startDimmingIfNeeded(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V
    .registers 7
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "newWinAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p3, "aboveApp"    # Z

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayerController;->getOrCreateDimLayerState(Lcom/android/server/wm/DimLayer$DimLayerUser;)Lcom/android/server/wm/DimLayerController$DimLayerState;

    move-result-object v0

    .line 141
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iput-boolean p3, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimAbove:Z

    .line 146
    invoke-virtual {p2}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_20

    .line 147
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 148
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v2, p2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-gt v1, v2, :cond_3c

    .line 149
    :cond_20
    iput-object p2, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    .line 150
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_30

    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 154
    :cond_30
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-interface {p1, v1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    .line 156
    :goto_35
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 137
    :cond_3c
    return-void

    .line 152
    :cond_3d
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    goto :goto_35
.end method

.method stopDimmingIfNeeded()V
    .registers 4

    .prologue
    .line 162
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_18

    .line 163
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayer$DimLayerUser;

    .line 164
    .local v0, "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayerController;->stopDimmingIfNeeded(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    .line 162
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 160
    .end local v0    # "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    :cond_18
    return-void
.end method

.method updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V
    .registers 8
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayerController;->getOrCreateDimLayerState(Lcom/android/server/wm/DimLayer$DimLayerUser;)Lcom/android/server/wm/DimLayerController$DimLayerState;

    move-result-object v3

    .line 52
    .local v3, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v4, :cond_29

    .line 53
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-ne v4, v5, :cond_27

    const/4 v2, 0x1

    .line 55
    .local v2, "previousFullscreen":Z
    :goto_f
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 56
    .local v0, "displayId":I
    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 57
    if-eqz v2, :cond_2b

    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v4, :cond_2b

    .line 59
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v4}, Lcom/android/server/wm/DimLayer;->setBoundsForFullscreen()V

    .line 60
    return-void

    .line 53
    .end local v0    # "displayId":I
    .end local v2    # "previousFullscreen":Z
    :cond_27
    const/4 v2, 0x0

    .restart local v2    # "previousFullscreen":Z
    goto :goto_f

    .line 52
    .end local v2    # "previousFullscreen":Z
    :cond_29
    const/4 v2, 0x0

    .restart local v2    # "previousFullscreen":Z
    goto :goto_f

    .line 63
    .restart local v0    # "displayId":I
    :cond_2b
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    .line 64
    .local v1, "newDimLayer":Lcom/android/server/wm/DimLayer;
    if-nez v1, :cond_52

    .line 65
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v4, :cond_44

    .line 67
    iget-object v1, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    .line 73
    :goto_35
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-interface {p1, v4}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    .line 74
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 75
    iput-object v1, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    .line 87
    :cond_41
    :goto_41
    iput-object v1, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    .line 50
    return-void

    .line 70
    :cond_44
    new-instance v1, Lcom/android/server/wm/DimLayer;

    .end local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 71
    invoke-static {p1}, Lcom/android/server/wm/DimLayerController;->getDimLayerTag(Lcom/android/server/wm/DimLayer$DimLayerUser;)Ljava/lang/String;

    move-result-object v5

    .line 70
    invoke-direct {v1, v4, p1, v0, v5}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    .restart local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    goto :goto_35

    .line 76
    :cond_52
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v4, :cond_41

    .line 77
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v4}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    goto :goto_41

    .line 80
    .end local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    :cond_5c
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v4, :cond_62

    if-eqz v2, :cond_7a

    .line 81
    :cond_62
    new-instance v1, Lcom/android/server/wm/DimLayer;

    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 82
    invoke-static {p1}, Lcom/android/server/wm/DimLayerController;->getDimLayerTag(Lcom/android/server/wm/DimLayer$DimLayerUser;)Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-direct {v1, v4, p1, v0, v5}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    .line 84
    .restart local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    :goto_6f
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-interface {p1, v4}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    .line 85
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_41

    .line 83
    .end local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    :cond_7a
    iget-object v1, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    .restart local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    goto :goto_6f
.end method

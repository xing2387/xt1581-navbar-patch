.class Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;
.super Landroid/view/SurfaceControl;
.source "WindowSurfaceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowSurfaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SurfaceTrace"
.end annotation


# static fields
.field private static final LOG_SURFACE_TRACE:Z

.field private static final SURFACE_TAG:Ljava/lang/String;

.field static final sSurfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDsdx:F

.field private mDsdy:F

.field private mDtdx:F

.field private mDtdy:F

.field private final mFinalCrop:Landroid/graphics/Rect;

.field private mIsOpaque:Z

.field private mLayer:I

.field private mLayerStack:I

.field private final mName:Ljava/lang/String;

.field private final mPosition:Landroid/graphics/PointF;

.field private mShown:Z

.field private final mSize:Landroid/graphics/Point;

.field private mSurfaceTraceAlpha:F

.field private final mWindowCrop:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 537
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->SURFACE_TAG:Ljava/lang/String;

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    .line 536
    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    .registers 10
    .param p1, "s"    # Landroid/view/SurfaceSession;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "format"    # I
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 556
    invoke-direct/range {p0 .. p6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    .line 541
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSurfaceTraceAlpha:F

    .line 543
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    .line 544
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSize:Landroid/graphics/Point;

    .line 545
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mWindowCrop:Landroid/graphics/Rect;

    .line 546
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mFinalCrop:Landroid/graphics/Rect;

    .line 547
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mShown:Z

    .line 557
    if-eqz p2, :cond_39

    .end local p2    # "name":Ljava/lang/String;
    :goto_27
    iput-object p2, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mName:Ljava/lang/String;

    .line 558
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSize:Landroid/graphics/Point;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Point;->set(II)V

    .line 561
    sget-object v1, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    monitor-enter v1

    .line 562
    :try_start_31
    sget-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_3d

    monitor-exit v1

    .line 555
    return-void

    .line 557
    .restart local p2    # "name":Ljava/lang/String;
    :cond_39
    const-string/jumbo p2, "Not named"

    goto :goto_27

    .line 561
    .end local p2    # "name":Ljava/lang/String;
    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static dumpAllSurfaces(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 738
    sget-object v4, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    monitor-enter v4

    .line 739
    :try_start_3
    sget-object v3, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_107

    move-result v0

    .line 740
    .local v0, "N":I
    if-gtz v0, :cond_d

    monitor-exit v4

    .line 741
    return-void

    .line 743
    :cond_d
    if-eqz p1, :cond_12

    .line 744
    :try_start_f
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    :cond_12
    const-string/jumbo v3, "WINDOW MANAGER SURFACES (dumpsys window surfaces)"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    if-ge v1, v0, :cond_105

    .line 748
    sget-object v3, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;

    .line 749
    .local v2, "s":Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;
    const-string/jumbo v3, "  Surface #"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, ": #"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 750
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 751
    const-string/jumbo v3, " "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    const-string/jumbo v3, "    mLayerStack="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mLayerStack:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 753
    const-string/jumbo v3, " mLayer="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mLayer:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 754
    const-string/jumbo v3, "    mShown="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mShown:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " mAlpha="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 755
    iget v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSurfaceTraceAlpha:F

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v3, " mIsOpaque="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 756
    iget-boolean v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mIsOpaque:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 757
    const-string/jumbo v3, "    mPosition="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 758
    iget-object v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 759
    const-string/jumbo v3, " mSize="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, "x"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 760
    iget-object v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 761
    const-string/jumbo v3, "    mCrop="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v3, p0}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 762
    const-string/jumbo v3, "    mFinalCrop="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mFinalCrop:Landroid/graphics/Rect;

    invoke-virtual {v3, p0}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 763
    const-string/jumbo v3, "    Transform: ("

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDsdx:F

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v3, ", "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 764
    iget v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDtdx:F

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v3, ", "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDsdy:F

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 765
    const-string/jumbo v3, ", "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDtdy:F

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v3, ")"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_101
    .catchall {:try_start_f .. :try_end_101} :catchall_107

    .line 747
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_19

    .end local v2    # "s":Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;
    :cond_105
    monitor-exit v4

    .line 737
    return-void

    .line 738
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_107
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .prologue
    .line 712
    invoke-super {p0}, Landroid/view/SurfaceControl;->destroy()V

    .line 715
    sget-object v1, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    monitor-enter v1

    .line 716
    :try_start_6
    sget-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_d

    monitor-exit v1

    .line 711
    return-void

    .line 715
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mShown:Z

    if-eqz v0, :cond_7

    .line 695
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mShown:Z

    .line 697
    :cond_7
    invoke-super {p0}, Landroid/view/SurfaceControl;->hide()V

    .line 691
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 722
    invoke-super {p0}, Landroid/view/SurfaceControl;->release()V

    .line 725
    sget-object v1, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    monitor-enter v1

    .line 726
    :try_start_6
    sget-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_d

    monitor-exit v1

    .line 721
    return-void

    .line 725
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setAlpha(F)V
    .registers 3
    .param p1, "alpha"    # F

    .prologue
    .line 568
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSurfaceTraceAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_8

    .line 571
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSurfaceTraceAlpha:F

    .line 573
    :cond_8
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 567
    return-void
.end method

.method public setFinalCrop(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 640
    if-eqz p1, :cond_f

    .line 641
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mFinalCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 645
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mFinalCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 648
    :cond_f
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    .line 639
    return-void
.end method

.method public setGeometryAppliesWithResize()V
    .registers 1

    .prologue
    .line 612
    invoke-super {p0}, Landroid/view/SurfaceControl;->setGeometryAppliesWithResize()V

    .line 609
    return-void
.end method

.method public setLayer(I)V
    .registers 7
    .param p1, "zorder"    # I

    .prologue
    .line 578
    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mLayer:I

    if-eq p1, v2, :cond_6

    .line 581
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mLayer:I

    .line 583
    :cond_6
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 585
    sget-object v3, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    monitor-enter v3

    .line 586
    :try_start_c
    sget-object v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 588
    sget-object v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_19
    if-ltz v0, :cond_27

    .line 589
    sget-object v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;

    .line 590
    .local v1, "s":Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;
    iget v2, v1, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mLayer:I

    if-ge v2, p1, :cond_30

    .line 594
    .end local v1    # "s":Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;
    :cond_27
    sget-object v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_33

    monitor-exit v3

    .line 577
    return-void

    .line 588
    .restart local v1    # "s":Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;
    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 585
    .end local v0    # "i":I
    .end local v1    # "s":Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;
    :catchall_33
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setLayerStack(I)V
    .registers 3
    .param p1, "layerStack"    # I

    .prologue
    .line 653
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mLayerStack:I

    if-eq p1, v0, :cond_6

    .line 656
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mLayerStack:I

    .line 658
    :cond_6
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 652
    return-void
.end method

.method public setMatrix(FFFF)V
    .registers 6
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    .prologue
    .line 678
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDsdx:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDtdx:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_18

    .line 682
    :cond_c
    :goto_c
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDsdx:F

    .line 683
    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDtdx:F

    .line 684
    iput p3, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDsdy:F

    .line 685
    iput p4, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDtdy:F

    .line 687
    :cond_14
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 677
    return-void

    .line 678
    :cond_18
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDsdy:F

    cmpl-float v0, p3, v0

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDtdy:F

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_14

    goto :goto_c
.end method

.method public setOpaque(Z)V
    .registers 3
    .param p1, "isOpaque"    # Z

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mIsOpaque:Z

    if-eq p1, v0, :cond_6

    .line 666
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mIsOpaque:Z

    .line 668
    :cond_6
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V

    .line 662
    return-void
.end method

.method public setPosition(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_15

    .line 603
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 605
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 599
    return-void
.end method

.method public setSecure(Z)V
    .registers 2
    .param p1, "isSecure"    # Z

    .prologue
    .line 673
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V

    .line 672
    return-void
.end method

.method public setSize(II)V
    .registers 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eq p2, v0, :cond_11

    .line 620
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSize:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 622
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 616
    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .registers 2
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 734
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 731
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 627
    if-eqz p1, :cond_f

    .line 628
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 632
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 635
    :cond_f
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 626
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mShown:Z

    if-nez v0, :cond_7

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mShown:Z

    .line 707
    :cond_7
    invoke-super {p0}, Landroid/view/SurfaceControl;->show()V

    .line 701
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Surface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 773
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mName:Ljava/lang/String;

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 773
    const-string/jumbo v1, " ("

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 773
    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mLayerStack:I

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 773
    const-string/jumbo v1, "): shown="

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 773
    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mShown:Z

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 773
    const-string/jumbo v1, " layer="

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 773
    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mLayer:I

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 774
    const-string/jumbo v1, " alpha="

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 774
    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSurfaceTraceAlpha:F

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 774
    const-string/jumbo v1, " "

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 774
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 774
    const-string/jumbo v1, ","

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 774
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 775
    const-string/jumbo v1, " "

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 775
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 775
    const-string/jumbo v1, "x"

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 775
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 776
    const-string/jumbo v1, " crop="

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 776
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 777
    const-string/jumbo v1, " opaque="

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 777
    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mIsOpaque:Z

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 778
    const-string/jumbo v1, " ("

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 778
    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDsdx:F

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 778
    const-string/jumbo v1, ","

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 778
    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDtdx:F

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 778
    const-string/jumbo v1, ","

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 778
    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDsdy:F

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 778
    const-string/jumbo v1, ","

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 778
    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDtdy:F

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 778
    const-string/jumbo v1, ")"

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

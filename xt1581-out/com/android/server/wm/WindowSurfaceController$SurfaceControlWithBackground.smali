.class Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;
.super Landroid/view/SurfaceControl;
.source "WindowSurfaceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowSurfaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SurfaceControlWithBackground"
.end annotation


# instance fields
.field private mAppForcedInvisible:Z

.field private mAppToken:Lcom/android/server/wm/AppWindowToken;

.field private mBackgroundControl:Landroid/view/SurfaceControl;

.field public mLayer:I

.field private mOpaque:Z

.field public mVisible:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowSurfaceController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowSurfaceController;Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/AppWindowToken;)V
    .registers 16
    .param p1, "this$0"    # Lcom/android/server/wm/WindowSurfaceController;
    .param p2, "s"    # Landroid/view/SurfaceSession;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "format"    # I
    .param p7, "flags"    # I
    .param p8, "token"    # Lcom/android/server/wm/AppWindowToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 785
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->this$0:Lcom/android/server/wm/WindowSurfaceController;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 789
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mOpaque:Z

    .line 780
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppForcedInvisible:Z

    .line 782
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    .line 783
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mLayer:I

    .line 790
    new-instance v0, Landroid/view/SurfaceControl;

    .line 791
    const/high16 v1, 0x20000

    or-int v6, p7, v1

    const/4 v5, -0x1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    .line 790
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 792
    and-int/lit16 v0, p7, 0x400

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    :goto_2d
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mOpaque:Z

    .line 793
    iput-object p8, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 795
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppWindowToken;->addSurfaceViewBackground(Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;)V

    .line 788
    return-void

    .line 792
    :cond_37
    const/4 v0, 0x0

    goto :goto_2d
.end method


# virtual methods
.method public deferTransactionUntil(Landroid/os/IBinder;J)V
    .registers 6
    .param p1, "handle"    # Landroid/os/IBinder;
    .param p2, "frame"    # J

    .prologue
    .line 901
    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    .line 902
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    .line 900
    return-void
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 882
    invoke-super {p0}, Landroid/view/SurfaceControl;->destroy()V

    .line 883
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 884
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppWindowToken;->removeSurfaceViewBackground(Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;)V

    .line 881
    return-void
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 864
    invoke-super {p0}, Landroid/view/SurfaceControl;->hide()V

    .line 865
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    if-eqz v0, :cond_f

    .line 866
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    .line 867
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateSurfaceViewBackgroundVisibilities()V

    .line 863
    :cond_f
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 889
    invoke-super {p0}, Landroid/view/SurfaceControl;->release()V

    .line 890
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 888
    return-void
.end method

.method public setAlpha(F)V
    .registers 3
    .param p1, "alpha"    # F

    .prologue
    .line 800
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 801
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 799
    return-void
.end method

.method public setFinalCrop(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 834
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    .line 835
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    .line 833
    return-void
.end method

.method public setLayer(I)V
    .registers 4
    .param p1, "zorder"    # I

    .prologue
    .line 806
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 807
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 808
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mLayer:I

    if-eq v0, p1, :cond_15

    .line 809
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mLayer:I

    .line 810
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateSurfaceViewBackgroundVisibilities()V

    .line 805
    :cond_15
    return-void
.end method

.method public setLayerStack(I)V
    .registers 3
    .param p1, "layerStack"    # I

    .prologue
    .line 840
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 841
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 839
    return-void
.end method

.method public setMatrix(FFFF)V
    .registers 6
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    .prologue
    .line 858
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 859
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 857
    return-void
.end method

.method public setOpaque(Z)V
    .registers 3
    .param p1, "isOpaque"    # Z

    .prologue
    .line 846
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V

    .line 847
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mOpaque:Z

    .line 848
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppForcedInvisible:Z

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->updateBackgroundVisibility(Z)V

    .line 845
    return-void
.end method

.method public setPosition(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 816
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 817
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 815
    return-void
.end method

.method public setSecure(Z)V
    .registers 2
    .param p1, "isSecure"    # Z

    .prologue
    .line 853
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V

    .line 852
    return-void
.end method

.method public setSize(II)V
    .registers 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 822
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 823
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 821
    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .registers 3
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 895
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 896
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 894
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 828
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 829
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 827
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 873
    invoke-super {p0}, Landroid/view/SurfaceControl;->show()V

    .line 874
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    if-nez v0, :cond_f

    .line 875
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    .line 876
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateSurfaceViewBackgroundVisibilities()V

    .line 872
    :cond_f
    return-void
.end method

.method updateBackgroundVisibility(Z)V
    .registers 3
    .param p1, "forcedInvisible"    # Z

    .prologue
    .line 906
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppForcedInvisible:Z

    .line 907
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mOpaque:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppForcedInvisible:Z

    if-eqz v0, :cond_14

    .line 910
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 905
    :goto_13
    return-void

    .line 908
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    goto :goto_13
.end method

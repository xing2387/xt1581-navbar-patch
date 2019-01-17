.class public final Lcom/google/android/gms/internal/mi;
.super Landroid/graphics/drawable/Drawable;
.source "Unknown"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mi$1;,
        Lcom/google/android/gms/internal/mi$a;,
        Lcom/google/android/gms/internal/mi$b;
    }
.end annotation


# instance fields
.field private OQ:Z

.field private OX:I

.field private OY:J

.field private OZ:I

.field private Pa:I

.field private Pb:I

.field private Pc:I

.field private Pd:Z

.field private Pe:Lcom/google/android/gms/internal/mi$b;

.field private Pf:Landroid/graphics/drawable/Drawable;

.field private Pg:Landroid/graphics/drawable/Drawable;

.field private Ph:Z

.field private Pi:Z

.field private Pj:Z

.field private Pk:I

.field private mFrom:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mi;-><init>(Lcom/google/android/gms/internal/mi$b;)V

    if-eqz p1, :cond_29

    :goto_6
    iput-object p1, p0, Lcom/google/android/gms/internal/mi;->Pf:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mi;->Pe:Lcom/google/android/gms/internal/mi$b;

    iget v1, v0, Lcom/google/android/gms/internal/mi$b;->Po:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/mi$b;->Po:I

    if-eqz p2, :cond_2e

    :goto_18
    iput-object p2, p0, Lcom/google/android/gms/internal/mi;->Pg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mi;->Pe:Lcom/google/android/gms/internal/mi$b;

    iget v1, v0, Lcom/google/android/gms/internal/mi$b;->Po:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/mi$b;->Po:I

    return-void

    :cond_29
    invoke-static {}, Lcom/google/android/gms/internal/mi$a;->il()Lcom/google/android/gms/internal/mi$a;

    move-result-object p1

    goto :goto_6

    :cond_2e
    invoke-static {}, Lcom/google/android/gms/internal/mi$a;->il()Lcom/google/android/gms/internal/mi$a;

    move-result-object p2

    goto :goto_18
.end method

.method constructor <init>(Lcom/google/android/gms/internal/mi$b;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput v1, p0, Lcom/google/android/gms/internal/mi;->OX:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/gms/internal/mi;->Pa:I

    iput v1, p0, Lcom/google/android/gms/internal/mi;->Pc:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mi;->OQ:Z

    new-instance v0, Lcom/google/android/gms/internal/mi$b;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mi$b;-><init>(Lcom/google/android/gms/internal/mi$b;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mi;->Pe:Lcom/google/android/gms/internal/mi$b;

    return-void
.end method


# virtual methods
.method public canConstantState()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mi;->Ph:Z

    if-eqz v2, :cond_9

    :goto_6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mi;->Pi:Z

    return v0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/mi;->Pf:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-nez v2, :cond_16

    :cond_11
    :goto_11
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mi;->Pi:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/mi;->Ph:Z

    goto :goto_6

    :cond_16
    iget-object v2, p0, Lcom/google/android/gms/internal/mi;->Pg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_11

    move v0, v1

    goto :goto_11
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/mi;->OX:I

    packed-switch v2, :pswitch_data_92

    :cond_9
    :goto_9
    iget v1, p0, Lcom/google/android/gms/internal/mi;->Pc:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mi;->OQ:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/mi;->Pf:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/google/android/gms/internal/mi;->Pg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_62

    if-nez v2, :cond_78

    :goto_15
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-nez v2, :cond_7f

    :goto_1a
    if-gtz v1, :cond_85

    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mi;->invalidateSelf()V

    return-void

    :pswitch_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/mi;->OY:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/mi;->OX:I

    move v0, v1

    goto :goto_9

    :pswitch_2b
    iget-wide v2, p0, Lcom/google/android/gms/internal/mi;->OY:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_5b

    move v2, v0

    :goto_34
    if-nez v2, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/mi;->OY:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/google/android/gms/internal/mi;->Pb:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v2, v6

    if-ltz v3, :cond_5d

    :goto_46
    if-nez v0, :cond_5f

    :goto_48
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/mi;->mFrom:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/gms/internal/mi;->OZ:I

    iget v4, p0, Lcom/google/android/gms/internal/mi;->mFrom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/gms/internal/mi;->Pc:I

    goto :goto_9

    :cond_5b
    move v2, v1

    goto :goto_34

    :cond_5d
    move v0, v1

    goto :goto_46

    :cond_5f
    iput v1, p0, Lcom/google/android/gms/internal/mi;->OX:I

    goto :goto_48

    :cond_62
    if-nez v2, :cond_6c

    :cond_64
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_67
    iget v0, p0, Lcom/google/android/gms/internal/mi;->Pa:I

    if-eq v1, v0, :cond_6f

    :goto_6b
    return-void

    :cond_6c
    if-eqz v1, :cond_64

    goto :goto_67

    :cond_6f
    iget v0, p0, Lcom/google/android/gms/internal/mi;->Pa:I

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_6b

    :cond_78
    iget v0, p0, Lcom/google/android/gms/internal/mi;->Pa:I

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_15

    :cond_7f
    iget v0, p0, Lcom/google/android/gms/internal/mi;->Pa:I

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1a

    :cond_85
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/gms/internal/mi;->Pa:I

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1c

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_20
        :pswitch_2b
    .end packed-switch
.end method

.method public getChangingConfigurations()I
    .registers 3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mi;->Pe:Lcom/google/android/gms/internal/mi$b;

    iget v1, v1, Lcom/google/android/gms/internal/mi$b;->Pn:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/mi;->Pe:Lcom/google/android/gms/internal/mi$b;

    iget v1, v1, Lcom/google/android/gms/internal/mi$b;->Po:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mi;->canConstantState()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/mi;->Pe:Lcom/google/android/gms/internal/mi$b;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mi;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/mi$b;->Pn:I

    iget-object v0, p0, Lcom/google/android/gms/internal/mi;->Pe:Lcom/google/android/gms/internal/mi$b;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mi;->Pf:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mi;->Pg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mi;->Pf:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mi;->Pg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mi;->Pj:Z

    if-eqz v0, :cond_7

    :goto_4
    iget v0, p0, Lcom/google/android/gms/internal/mi;->Pk:I

    return v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/mi;->Pf:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mi;->Pg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/mi;->Pk:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mi;->Pj:Z

    goto :goto_4
.end method

.method public ik()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mi;->Pg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/ob;->jr()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mi;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mi;->Pd:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-object p0

    :cond_5
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mi;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/mi;->Pf:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/gms/internal/mi;->Pg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mi;->Pd:Z

    goto :goto_4

    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mi;->Pf:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mi;->Pg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/internal/ob;->jr()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mi;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    goto :goto_6
.end method

.method public setAlpha(I)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/mi;->Pc:I

    iget v1, p0, Lcom/google/android/gms/internal/mi;->Pa:I

    if-eq v0, v1, :cond_c

    :goto_6
    iput p1, p0, Lcom/google/android/gms/internal/mi;->Pa:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mi;->invalidateSelf()V

    return-void

    :cond_c
    iput p1, p0, Lcom/google/android/gms/internal/mi;->Pc:I

    goto :goto_6
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mi;->Pf:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mi;->Pg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public startTransition(I)V
    .registers 4

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/mi;->mFrom:I

    iget v0, p0, Lcom/google/android/gms/internal/mi;->Pa:I

    iput v0, p0, Lcom/google/android/gms/internal/mi;->OZ:I

    iput v1, p0, Lcom/google/android/gms/internal/mi;->Pc:I

    iput p1, p0, Lcom/google/android/gms/internal/mi;->Pb:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mi;->OX:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mi;->invalidateSelf()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/ob;->jr()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mi;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    goto :goto_6
.end method

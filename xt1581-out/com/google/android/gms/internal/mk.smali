.class public final Lcom/google/android/gms/internal/mk;
.super Landroid/widget/ImageView;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mk$a;
    }
.end annotation


# instance fields
.field private Pp:Landroid/net/Uri;

.field private Pq:I

.field private Pr:I

.field private Ps:Lcom/google/android/gms/internal/mk$a;

.field private Pt:I

.field private Pu:F


# virtual methods
.method public bi(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/mk;->Pq:I

    return-void
.end method

.method public g(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/mk;->Pp:Landroid/net/Uri;

    return-void
.end method

.method public im()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/mk;->Pq:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/mk;->Ps:Lcom/google/android/gms/internal/mk$a;

    if-nez v0, :cond_c

    :goto_4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/gms/internal/mk;->Pr:I

    if-nez v0, :cond_1e

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/mk;->Ps:Lcom/google/android/gms/internal/mk$a;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mk;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mk;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/mk$a;->l(II)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_4

    :cond_1e
    iget v0, p0, Lcom/google/android/gms/internal/mk;->Pr:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_b
.end method

.method protected onMeasure(II)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget v0, p0, Lcom/google/android/gms/internal/mk;->Pt:I

    packed-switch v0, :pswitch_data_20

    :pswitch_8
    return-void

    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mk;->getMeasuredHeight()I

    move-result v1

    int-to-float v0, v1

    iget v2, p0, Lcom/google/android/gms/internal/mk;->Pu:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_12
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mk;->setMeasuredDimension(II)V

    return-void

    :pswitch_16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mk;->getMeasuredWidth()I

    move-result v0

    int-to-float v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/mk;->Pu:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_12

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_16
    .end packed-switch
.end method

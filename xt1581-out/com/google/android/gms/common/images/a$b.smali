.class public final Lcom/google/android/gms/common/images/a$b;
.super Lcom/google/android/gms/common/images/a;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private OU:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/images/a;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/b;->h(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/a$b;->OU:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/a;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/b;->h(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/a$b;->OU:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZZZ)V
    .registers 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p4, :cond_1c

    :cond_4
    move v3, v2

    :goto_5
    if-nez v3, :cond_21

    :cond_7
    invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/common/images/a$b;->c(ZZ)Z

    move-result v4

    iget-boolean v0, p0, Lcom/google/android/gms/common/images/a$b;->OO:Z

    if-nez v0, :cond_35

    :cond_f
    move-object v0, p2

    :goto_10
    if-nez v4, :cond_41

    :goto_12
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v5, p1, Lcom/google/android/gms/internal/mk;

    if-nez v5, :cond_4a

    :goto_19
    if-nez v4, :cond_60

    :goto_1b
    return-void

    :cond_1c
    if-nez p5, :cond_4

    const/4 v0, 0x1

    move v3, v0

    goto :goto_5

    :cond_21
    instance-of v0, p1, Lcom/google/android/gms/internal/mk;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mk;->im()I

    move-result v0

    iget v4, p0, Lcom/google/android/gms/common/images/a$b;->ON:I

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/google/android/gms/common/images/a$b;->ON:I

    if-ne v0, v4, :cond_7

    return-void

    :cond_35
    if-eqz p2, :cond_f

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    move-object v0, p2

    goto :goto_10

    :cond_41
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/common/images/a$b;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/google/android/gms/internal/mi;

    move-result-object v0

    goto :goto_12

    :cond_4a
    check-cast p1, Lcom/google/android/gms/internal/mk;

    if-nez p5, :cond_58

    :goto_4e
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/mk;->g(Landroid/net/Uri;)V

    if-nez v3, :cond_5d

    move v1, v2

    :goto_54
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/mk;->bi(I)V

    goto :goto_19

    :cond_58
    iget-object v1, p0, Lcom/google/android/gms/common/images/a$b;->OL:Lcom/google/android/gms/common/images/a$a;

    iget-object v1, v1, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    goto :goto_4e

    :cond_5d
    iget v1, p0, Lcom/google/android/gms/common/images/a$b;->ON:I

    goto :goto_54

    :cond_60
    check-cast v0, Lcom/google/android/gms/internal/mi;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mi;->startTransition(I)V

    goto :goto_1b
.end method


# virtual methods
.method protected a(Landroid/graphics/drawable/Drawable;ZZZ)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/common/images/a$b;->OU:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-nez v1, :cond_b

    :goto_a
    return-void

    :cond_b
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/images/a$b;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZZZ)V

    goto :goto_a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    instance-of v0, p1, Lcom/google/android/gms/common/images/a$b;

    if-eqz v0, :cond_1e

    if-eq p0, p1, :cond_1f

    check-cast p1, Lcom/google/android/gms/common/images/a$b;

    iget-object v0, p0, Lcom/google/android/gms/common/images/a$b;->OU:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/google/android/gms/common/images/a$b;->OU:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-nez v1, :cond_20

    :cond_1c
    move v0, v3

    :goto_1d
    return v0

    :cond_1e
    return v3

    :cond_1f
    return v2

    :cond_20
    if-eqz v0, :cond_1c

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/s;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v2

    goto :goto_1d
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

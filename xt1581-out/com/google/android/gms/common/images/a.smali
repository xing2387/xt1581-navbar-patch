.class public abstract Lcom/google/android/gms/common/images/a;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/a$a;,
        Lcom/google/android/gms/common/images/a$b;,
        Lcom/google/android/gms/common/images/a$c;
    }
.end annotation


# instance fields
.field final OL:Lcom/google/android/gms/common/images/a$a;

.field protected OM:I

.field protected ON:I

.field protected OO:Z

.field protected OP:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

.field private OQ:Z

.field private OR:Z

.field private OS:Z

.field protected OT:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/common/images/a;->OM:I

    iput v0, p0, Lcom/google/android/gms/common/images/a;->ON:I

    iput-boolean v0, p0, Lcom/google/android/gms/common/images/a;->OO:Z

    iput-boolean v1, p0, Lcom/google/android/gms/common/images/a;->OQ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/common/images/a;->OR:Z

    iput-boolean v1, p0, Lcom/google/android/gms/common/images/a;->OS:Z

    new-instance v0, Lcom/google/android/gms/common/images/a$a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/images/a$a;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/a;->OL:Lcom/google/android/gms/common/images/a$a;

    iput p2, p0, Lcom/google/android/gms/common/images/a;->ON:I

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/android/gms/internal/ml;I)Landroid/graphics/drawable/Drawable;
    .registers 8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, p0, Lcom/google/android/gms/common/images/a;->OT:I

    if-gtz v0, :cond_d

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v2, Lcom/google/android/gms/internal/ml$a;

    iget v0, p0, Lcom/google/android/gms/common/images/a;->OT:I

    invoke-direct {v2, p3, v0}, Lcom/google/android/gms/internal/ml$a;-><init>(II)V

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ml;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    :goto_1c
    return-object v0

    :cond_1d
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Lcom/google/android/gms/common/images/a;->OT:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2b

    :goto_27
    invoke-virtual {p2, v2, v0}, Lcom/google/android/gms/internal/ml;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_2b
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_27
.end method


# virtual methods
.method protected a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mj;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/google/android/gms/internal/mi;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_a

    move-object p1, v0

    :cond_4
    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/mi;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/mi;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_a
    instance-of v0, p1, Lcom/google/android/gms/internal/mi;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/mi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mi;->ik()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_4
.end method

.method a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/b;->h(Ljava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/common/images/a;->OT:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1c

    :goto_b
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/android/gms/common/images/a;->OP:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    if-nez v1, :cond_21

    :goto_18
    invoke-virtual {p0, v0, p3, v3, v4}, Lcom/google/android/gms/common/images/a;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void

    :cond_1c
    invoke-static {p2}, Lcom/google/android/gms/internal/mj;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_b

    :cond_21
    iget-object v1, p0, Lcom/google/android/gms/common/images/a;->OP:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    iget-object v2, p0, Lcom/google/android/gms/common/images/a;->OL:Lcom/google/android/gms/common/images/a$a;

    iget-object v2, v2, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0, v4}, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;->onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_18
.end method

.method a(Landroid/content/Context;Lcom/google/android/gms/internal/ml;)V
    .registers 6

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/common/images/a;->OS:Z

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/images/a;->OM:I

    if-nez v1, :cond_10

    :goto_b
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/google/android/gms/common/images/a;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    goto :goto_5

    :cond_10
    iget v0, p0, Lcom/google/android/gms/common/images/a;->OM:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ml;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_b
.end method

.method a(Landroid/content/Context;Lcom/google/android/gms/internal/ml;Z)V
    .registers 8

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget v1, p0, Lcom/google/android/gms/common/images/a;->ON:I

    if-nez v1, :cond_e

    :goto_6
    iget-object v1, p0, Lcom/google/android/gms/common/images/a;->OP:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    if-nez v1, :cond_15

    :goto_a
    invoke-virtual {p0, v0, p3, v3, v3}, Lcom/google/android/gms/common/images/a;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void

    :cond_e
    iget v0, p0, Lcom/google/android/gms/common/images/a;->ON:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ml;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_6

    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/common/images/a;->OP:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    iget-object v2, p0, Lcom/google/android/gms/common/images/a;->OL:Lcom/google/android/gms/common/images/a$a;

    iget-object v2, v2, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;->onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_a
.end method

.method protected abstract a(Landroid/graphics/drawable/Drawable;ZZZ)V
.end method

.method public bg(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/common/images/a;->ON:I

    return-void
.end method

.method protected c(ZZ)Z
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/common/images/a;->OQ:Z

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    if-nez p2, :cond_5

    if-nez p1, :cond_c

    :cond_a
    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    iget-boolean v1, p0, Lcom/google/android/gms/common/images/a;->OR:Z

    if-nez v1, :cond_a

    goto :goto_5
.end method

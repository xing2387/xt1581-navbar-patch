.class public final Lcom/google/android/gms/common/internal/x;
.super Landroid/widget/Button;
.source "Unknown"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private b(Landroid/content/res/Resources;II)V
    .registers 7

    packed-switch p2, :pswitch_data_42

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown button size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    sget v0, Lcom/google/android/gms/R$drawable;->common_signin_btn_text_dark:I

    sget v1, Lcom/google/android/gms/R$drawable;->common_signin_btn_text_light:I

    invoke-direct {p0, p3, v0, v1}, Lcom/google/android/gms/common/internal/x;->c(III)I

    move-result v0

    :goto_25
    const/4 v1, -0x1

    if-eq v0, v1, :cond_39

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/x;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :pswitch_30
    sget v0, Lcom/google/android/gms/R$drawable;->common_signin_btn_icon_dark:I

    sget v1, Lcom/google/android/gms/R$drawable;->common_signin_btn_icon_light:I

    invoke-direct {p0, p3, v0, v1}, Lcom/google/android/gms/common/internal/x;->c(III)I

    move-result v0

    goto :goto_25

    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Could not find background resource!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_30
    .end packed-switch
.end method

.method private c(III)I
    .registers 7

    packed-switch p1, :pswitch_data_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown color scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    return p2

    :pswitch_1e
    return p3

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method

.method private c(Landroid/content/res/Resources;)V
    .registers 6

    const/high16 v3, 0x42400000    # 48.0f

    const/high16 v2, 0x3f000000    # 0.5f

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/x;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/x;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v0, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/x;->setMinHeight(I)V

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/x;->setMinWidth(I)V

    return-void
.end method

.method private c(Landroid/content/res/Resources;II)V
    .registers 7

    sget v0, Lcom/google/android/gms/R$color;->common_signin_btn_text_dark:I

    sget v1, Lcom/google/android/gms/R$color;->common_signin_btn_text_light:I

    invoke-direct {p0, p3, v0, v1}, Lcom/google/android/gms/common/internal/x;->c(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/x;->setTextColor(Landroid/content/res/ColorStateList;)V

    packed-switch p2, :pswitch_data_46

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown button size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2c
    sget v0, Lcom/google/android/gms/R$string;->common_signin_button_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/x;->setText(Ljava/lang/CharSequence;)V

    :goto_35
    return-void

    :pswitch_36
    sget v0, Lcom/google/android/gms/R$string;->common_signin_button_text_long:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/x;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35

    :pswitch_40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/x;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_36
        :pswitch_40
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;II)V
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez p2, :cond_2e

    :cond_4
    move v0, v2

    :goto_5
    const-string/jumbo v3, "Unknown button size %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-gez p3, :cond_33

    :cond_15
    move v0, v2

    :goto_16
    const-string/jumbo v3, "Unknown color scheme %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/x;->c(Landroid/content/res/Resources;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/x;->b(Landroid/content/res/Resources;II)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/x;->c(Landroid/content/res/Resources;II)V

    return-void

    :cond_2e
    const/4 v0, 0x3

    if-ge p2, v0, :cond_4

    move v0, v1

    goto :goto_5

    :cond_33
    const/4 v0, 0x2

    if-ge p3, v0, :cond_15

    move v0, v1

    goto :goto_16
.end method

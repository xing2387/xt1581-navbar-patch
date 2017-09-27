.class public final Lcom/google/android/gms/common/SignInButton;
.super Landroid/widget/FrameLayout;
.source "Unknown"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final COLOR_DARK:I = 0x0

.field public static final COLOR_LIGHT:I = 0x1

.field public static final SIZE_ICON_ONLY:I = 0x2

.field public static final SIZE_STANDARD:I = 0x0

.field public static final SIZE_WIDE:I = 0x1


# instance fields
.field private Mk:Landroid/view/View;

.field private Ml:Landroid/view/View$OnClickListener;

.field private mColor:I

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Ml:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method

.method private H(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Mk:Landroid/view/View;

    if-nez v0, :cond_22

    :goto_4
    :try_start_4
    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iget v1, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/w;->b(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Mk:Landroid/view/View;
    :try_end_e
    .catch Lcom/google/android/gms/dynamic/g$a; {:try_start_4 .. :try_end_e} :catch_28

    :goto_e
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Mk:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/SignInButton;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Mk:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/gms/common/SignInButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Mk:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Mk:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/SignInButton;->removeView(Landroid/view/View;)V

    goto :goto_4

    :catch_28
    move-exception v0

    const-string/jumbo v0, "SignInButton"

    const-string/jumbo v1, "Sign in button not found, using placeholder instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iget v1, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/SignInButton;->a(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Mk:Landroid/view/View;

    goto :goto_e
.end method

.method private static a(Landroid/content/Context;II)Landroid/widget/Button;
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/internal/x;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/x;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/internal/x;->a(Landroid/content/res/Resources;II)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Ml:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Mk:Landroid/view/View;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Ml:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_4
.end method

.method public setColorScheme(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Mk:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/SignInButton;->Ml:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Mk:Landroid/view/View;

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Mk:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6
.end method

.method public setSize(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method

.method public setStyle(II)V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez p1, :cond_30

    :cond_4
    move v0, v2

    :goto_5
    const-string/jumbo v3, "Unknown button size %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-gez p2, :cond_35

    :cond_15
    move v0, v2

    :goto_16
    const-string/jumbo v3, "Unknown color scheme %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    invoke-virtual {p0}, Lcom/google/android/gms/common/SignInButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/SignInButton;->H(Landroid/content/Context;)V

    return-void

    :cond_30
    const/4 v0, 0x3

    if-ge p1, v0, :cond_4

    move v0, v1

    goto :goto_5

    :cond_35
    const/4 v0, 0x2

    if-ge p2, v0, :cond_15

    move v0, v1

    goto :goto_16
.end method

.class Lcom/google/android/gms/dynamic/a$5;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/dynamic/a;->b(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Xi:I

.field final synthetic nn:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/dynamic/a$5;->nn:Landroid/content/Context;

    iput p2, p0, Lcom/google/android/gms/dynamic/a$5;->Xi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/dynamic/a$5;->nn:Landroid/content/Context;

    iget v1, p0, Lcom/google/android/gms/dynamic/a$5;->Xi:I

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->aR(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
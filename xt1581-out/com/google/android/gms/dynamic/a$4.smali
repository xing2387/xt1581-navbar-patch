.class Lcom/google/android/gms/dynamic/a$4;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/dynamic/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/dynamic/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Xb:Lcom/google/android/gms/dynamic/a;

.field final synthetic Xe:Landroid/os/Bundle;

.field final synthetic Xf:Landroid/widget/FrameLayout;

.field final synthetic Xg:Landroid/view/LayoutInflater;

.field final synthetic Xh:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/a;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/dynamic/a$4;->Xb:Lcom/google/android/gms/dynamic/a;

    iput-object p2, p0, Lcom/google/android/gms/dynamic/a$4;->Xf:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/gms/dynamic/a$4;->Xg:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/google/android/gms/dynamic/a$4;->Xh:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/google/android/gms/dynamic/a$4;->Xe:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/dynamic/a$4;->Xf:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/dynamic/a$4;->Xf:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/dynamic/a$4;->Xb:Lcom/google/android/gms/dynamic/a;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/a;->b(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/dynamic/a$4;->Xg:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/google/android/gms/dynamic/a$4;->Xh:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/google/android/gms/dynamic/a$4;->Xe:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getState()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
.class Lcom/google/android/gms/dynamic/a$2;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/dynamic/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/dynamic/a;->onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Xb:Lcom/google/android/gms/dynamic/a;

.field final synthetic Xc:Landroid/app/Activity;

.field final synthetic Xd:Landroid/os/Bundle;

.field final synthetic Xe:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/a;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/dynamic/a$2;->Xb:Lcom/google/android/gms/dynamic/a;

    iput-object p2, p0, Lcom/google/android/gms/dynamic/a$2;->Xc:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/dynamic/a$2;->Xd:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/dynamic/a$2;->Xe:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/dynamic/a$2;->Xb:Lcom/google/android/gms/dynamic/a;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a;->b(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/dynamic/a$2;->Xc:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/dynamic/a$2;->Xd:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/dynamic/a$2;->Xe:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public getState()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.class final Lcom/google/android/gms/common/api/e$a;
.super Landroid/os/Handler;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic Nv:Lcom/google/android/gms/common/api/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/e;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/e$a;->Nv:Lcom/google/android/gms/common/api/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v0, :cond_6

    const/4 v0, 0x0

    :cond_6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->M(Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/e$a;->Nv:Lcom/google/android/gms/common/api/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/e$b;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/e$b;)V

    return-void
.end method

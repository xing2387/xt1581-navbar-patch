.class final Lcom/google/android/gms/common/internal/i$a;
.super Landroid/os/Handler;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic PU:Lcom/google/android/gms/common/internal/i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/i;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/internal/i$a;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_21

    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_34

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v3, :cond_4b

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v5, :cond_67

    :cond_15
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_7a

    :cond_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/i$b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/i$b;->iD()V

    return-void

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$a;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/i;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/i$b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/i$b;->iC()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/i$b;->unregister()V

    return-void

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$a;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/j;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/j;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_4b
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$a;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;ILandroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$a;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/j;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/j;->bl(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$a;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-static {v0, v3, v2, v4}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;IILandroid/os/IInterface;)Z

    return-void

    :cond_67
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$a;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/i;->isConnected()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/i$b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/i$b;->iC()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/i$b;->unregister()V

    return-void

    :cond_7a
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_19

    const-string/jumbo v0, "GmsClient"

    const-string/jumbo v1, "Don\'t know how to handle this message."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

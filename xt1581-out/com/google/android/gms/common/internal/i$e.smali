.class public final Lcom/google/android/gms/common/internal/i$e;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field final synthetic PU:Lcom/google/android/gms/common/internal/i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/i;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/i$e;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$e;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/i;->as(Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$e;->PU:Lcom/google/android/gms/common/internal/i;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i$e;->PU:Lcom/google/android/gms/common/internal/i;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

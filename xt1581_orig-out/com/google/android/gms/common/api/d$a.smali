.class Lcom/google/android/gms/common/api/d$a;
.super Landroid/content/BroadcastReceiver;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private Nt:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/d;)V
    .registers 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/d$a;->Nt:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_a

    :goto_7
    if-nez v0, :cond_f

    :cond_9
    return-void

    :cond_a
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_f
    const-string/jumbo v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$a;->Nt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/d;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_28
    :goto_28
    return-void

    :cond_29
    return-void

    :cond_2a
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->hO()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->connect()V

    goto :goto_28
.end method

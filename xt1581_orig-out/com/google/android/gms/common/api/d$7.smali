.class Lcom/google/android/gms/common/api/d$7;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/g;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic JY:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic No:Lcom/google/android/gms/common/api/d;

.field final synthetic Nr:Lcom/google/android/gms/common/api/g;

.field final synthetic Ns:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/g;ZLcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/common/api/d$7;->No:Lcom/google/android/gms/common/api/d;

    iput-object p2, p0, Lcom/google/android/gms/common/api/d$7;->Nr:Lcom/google/android/gms/common/api/g;

    iput-boolean p3, p0, Lcom/google/android/gms/common/api/d$7;->Ns:Z

    iput-object p4, p0, Lcom/google/android/gms/common/api/d$7;->JY:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$7;->Nr:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/g;->setResult(Lcom/google/android/gms/common/api/Result;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/d$7;->Ns:Z

    if-nez v0, :cond_1e

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$7;->No:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$7;->No:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->reconnect()V

    goto :goto_6

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$7;->JY:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_f
.end method

.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/d$7;->i(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

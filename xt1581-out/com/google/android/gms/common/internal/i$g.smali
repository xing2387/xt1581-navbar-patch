.class public final Lcom/google/android/gms/common/internal/i$g;
.super Lcom/google/android/gms/common/internal/i$b;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/i",
        "<TT;>.b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic PU:Lcom/google/android/gms/common/internal/i;

.field public final PZ:Landroid/os/Bundle;

.field public final Qa:Landroid/os/IBinder;

.field public final statusCode:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/i;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/i$b;-><init>(Lcom/google/android/gms/common/internal/i;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/common/internal/i$g;->statusCode:I

    iput-object p3, p0, Lcom/google/android/gms/common/internal/i$g;->Qa:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/i$g;->PZ:Landroid/os/Bundle;

    return-void
.end method

.method private at(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_18

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/i;->bP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/i;->m(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0

    :catch_18
    move-exception v0

    return-object v2

    :cond_1a
    return-object v2
.end method


# virtual methods
.method protected b(Ljava/lang/Boolean;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    iget v0, p0, Lcom/google/android/gms/common/internal/i$g;->statusCode:I

    sparse-switch v0, :sswitch_data_ca

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->PZ:Landroid/os/Bundle;

    if-nez v0, :cond_9b

    move-object v0, v1

    :goto_e
    iget-object v2, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/i;->d(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/i$e;

    move-result-object v2

    if-nez v2, :cond_a8

    :goto_16
    iget-object v2, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-static {v2, v6, v1}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;ILandroid/os/IInterface;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/j;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    iget v3, p0, Lcom/google/android/gms/common/internal/i$g;->statusCode:I

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/j;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_2b
    return-void

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-static {v0, v6, v1}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;ILandroid/os/IInterface;)V

    return-void

    :sswitch_32
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->Qa:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/i$g;->at(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_70

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/i;->e(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/k;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/i;->bO()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/i;->d(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/i$e;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/i;->iz()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/common/internal/k;->b(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/internal/i$e;)Lcom/google/android/gms/common/internal/i$e;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-static {v0, v6, v1}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;ILandroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/j;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/j;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_2b

    :cond_70
    iget-object v2, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-static {v2, v3, v4, v0}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/j;->eb()V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/i;->c(Lcom/google/android/gms/common/internal/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->F(Landroid/content/Context;)V

    return-void

    :sswitch_8d
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-static {v0, v6, v1}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;ILandroid/os/IInterface;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "A fatal developer error has occurred. Check the logs for further information."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9b
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->PZ:Landroid/os/Bundle;

    const-string/jumbo v2, "pendingIntent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    goto/16 :goto_e

    :cond_a8
    iget-object v2, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/i;->e(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/k;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/i;->bO()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/i;->d(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/i$e;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/i;->iz()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/common/internal/k;->b(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i$g;->PU:Lcom/google/android/gms/common/internal/i;

    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/internal/i$e;)Lcom/google/android/gms/common/internal/i$e;

    goto/16 :goto_16

    :sswitch_data_ca
    .sparse-switch
        0x0 -> :sswitch_32
        0xa -> :sswitch_8d
    .end sparse-switch
.end method

.method protected synthetic i(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/i$g;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected iC()V
    .registers 1

    return-void
.end method

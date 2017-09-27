.class Lcom/google/android/gms/internal/mt$a$a;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/mt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mt$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private lf:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mt$a$a;->lf:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ms;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_5
    const-string/jumbo v2, "com.google.android.gms.common.internal.service.ICommonService"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_1c

    :goto_d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mt$a$a;->lf:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v4, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_21

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1c
    :try_start_1c
    invoke-interface {p1}, Lcom/google/android/gms/internal/ms;->asBinder()Landroid/os/IBinder;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_21

    move-result-object v0

    goto :goto_d

    :catchall_21
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mt$a$a;->lf:Landroid/os/IBinder;

    return-object v0
.end method

.class Lcom/google/android/gms/internal/le$a$a;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/le;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/le$a;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/le$a$a;->lf:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/lf;ILjava/lang/String;IZZZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    :try_start_b
    const-string/jumbo v5, "com.google.android.gms.car.ICarMediaPlaybackStatus"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_41

    :goto_13
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeInt(I)V

    if-nez p5, :cond_46

    move v2, v0

    :goto_22
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    if-nez p6, :cond_48

    move v2, v0

    :goto_28
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    if-nez p7, :cond_4a

    :goto_2d
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/le$a$a;->lf:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_b .. :try_end_3a} :catchall_4c

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_41
    :try_start_41
    invoke-interface {p1}, Lcom/google/android/gms/internal/lf;->asBinder()Landroid/os/IBinder;
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_4c

    move-result-object v2

    goto :goto_13

    :cond_46
    move v2, v1

    goto :goto_22

    :cond_48
    move v2, v1

    goto :goto_28

    :cond_4a
    move v0, v1

    goto :goto_2d

    :catchall_4c
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/lf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;II)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_9
    const-string/jumbo v3, "com.google.android.gms.car.ICarMediaPlaybackStatus"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_3a

    :goto_11
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/le$a$a;->lf:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_3f

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3a
    :try_start_3a
    invoke-interface {p1}, Lcom/google/android/gms/internal/lf;->asBinder()Landroid/os/IBinder;
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3f

    move-result-object v0

    goto :goto_11

    :catchall_3f
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/lf;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_a
    const-string/jumbo v4, "com.google.android.gms.car.ICarMediaPlaybackStatus"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_2c

    :goto_12
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/le$a$a;->lf:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_33

    move-result v1

    if-nez v1, :cond_31

    :goto_25
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return v0

    :cond_2c
    :try_start_2c
    invoke-interface {p1}, Lcom/google/android/gms/internal/lf;->asBinder()Landroid/os/IBinder;
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_33

    move-result-object v1

    goto :goto_12

    :cond_31
    const/4 v0, 0x1

    goto :goto_25

    :catchall_33
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/le$a$a;->lf:Landroid/os/IBinder;

    return-object v0
.end method

.method public b(Lcom/google/android/gms/internal/lf;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_a
    const-string/jumbo v4, "com.google.android.gms.car.ICarMediaPlaybackStatus"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_2c

    :goto_12
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/le$a$a;->lf:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_33

    move-result v1

    if-nez v1, :cond_31

    :goto_25
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return v0

    :cond_2c
    :try_start_2c
    invoke-interface {p1}, Lcom/google/android/gms/internal/lf;->asBinder()Landroid/os/IBinder;
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_33

    move-result-object v1

    goto :goto_12

    :cond_31
    const/4 v0, 0x1

    goto :goto_25

    :catchall_33
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

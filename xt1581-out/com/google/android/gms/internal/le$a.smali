.class public abstract Lcom/google/android/gms/internal/le$a;
.super Landroid/os/Binder;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/le;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/le;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/le$a$a;
    }
.end annotation


# direct methods
.method public static ad(Landroid/os/IBinder;)Lcom/google/android/gms/internal/le;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo v0, "com.google.android.gms.car.ICarMediaPlaybackStatus"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/le$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/le$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_12
    return-object v0

    :cond_13
    instance-of v1, v0, Lcom/google/android/gms/internal/le;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/google/android/gms/internal/le;

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_ba

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_a
    const-string/jumbo v0, "com.google.android.gms.car.ICarMediaPlaybackStatus"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_11
    const-string/jumbo v1, "com.google.android.gms.car.ICarMediaPlaybackStatus"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/lf$a;->ae(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lf;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_48

    move v5, v0

    :goto_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_4a

    move v6, v0

    :goto_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-nez v7, :cond_4c

    move v7, v0

    :goto_40
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/le$a;->a(Lcom/google/android/gms/internal/lf;ILjava/lang/String;IZZZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :cond_48
    move v5, v9

    goto :goto_32

    :cond_4a
    move v6, v9

    goto :goto_39

    :cond_4c
    move v7, v9

    goto :goto_40

    :sswitch_4e
    const-string/jumbo v0, "com.google.android.gms.car.ICarMediaPlaybackStatus"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/lf$a;->ae(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lf;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/le$a;->a(Lcom/google/android/gms/internal/lf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_80
    const-string/jumbo v1, "com.google.android.gms.car.ICarMediaPlaybackStatus"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/lf$a;->ae(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lf;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/le$a;->a(Lcom/google/android/gms/internal/lf;)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v1, :cond_9b

    :goto_97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :cond_9b
    move v0, v9

    goto :goto_97

    :sswitch_9d
    const-string/jumbo v1, "com.google.android.gms.car.ICarMediaPlaybackStatus"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/lf$a;->ae(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lf;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/le$a;->b(Lcom/google/android/gms/internal/lf;)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v1, :cond_b8

    :goto_b4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :cond_b8
    move v0, v9

    goto :goto_b4

    :sswitch_data_ba
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_4e
        0x3 -> :sswitch_80
        0x4 -> :sswitch_9d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

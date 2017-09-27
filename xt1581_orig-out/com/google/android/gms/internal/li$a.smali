.class public abstract Lcom/google/android/gms/internal/li$a;
.super Landroid/os/Binder;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/li;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/li;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/li$a$a;
    }
.end annotation


# direct methods
.method public static ah(Landroid/os/IBinder;)Lcom/google/android/gms/internal/li;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo v0, "com.google.android.gms.car.ICarNavigationStatus"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/li$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/li$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_12
    return-object v0

    :cond_13
    instance-of v1, v0, Lcom/google/android/gms/internal/li;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/google/android/gms/internal/li;

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_c6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_a
    const-string/jumbo v0, "com.google.android.gms.car.ICarNavigationStatus"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_11
    const-string/jumbo v0, "com.google.android.gms.car.ICarNavigationStatus"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/li$a;->aA(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_22
    const-string/jumbo v0, "com.google.android.gms.car.ICarNavigationStatus"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/li$a;->a(ILjava/lang/String;II[BI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_48
    const-string/jumbo v0, "com.google.android.gms.car.ICarNavigationStatus"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/li$a;->j(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_5d
    const-string/jumbo v1, "com.google.android.gms.car.ICarNavigationStatus"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/li$a;->isSupported()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v1, :cond_70

    :goto_6c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :cond_70
    move v0, v7

    goto :goto_6c

    :sswitch_72
    const-string/jumbo v1, "com.google.android.gms.car.ICarNavigationStatus"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/li$a;->gR()Lcom/google/android/gms/internal/jp;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v1, :cond_85

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_84
    return v7

    :cond_85
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v7}, Lcom/google/android/gms/internal/jp;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_84

    :sswitch_8c
    const-string/jumbo v1, "com.google.android.gms.car.ICarNavigationStatus"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/lj$a;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lj;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/li$a;->a(Lcom/google/android/gms/internal/lj;)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v1, :cond_a7

    :goto_a3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :cond_a7
    move v0, v7

    goto :goto_a3

    :sswitch_a9
    const-string/jumbo v1, "com.google.android.gms.car.ICarNavigationStatus"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/lj$a;->ai(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lj;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/li$a;->b(Lcom/google/android/gms/internal/lj;)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v1, :cond_c4

    :goto_c0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :cond_c4
    move v0, v7

    goto :goto_c0

    :sswitch_data_c6
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_22
        0x3 -> :sswitch_48
        0x4 -> :sswitch_5d
        0x5 -> :sswitch_72
        0x6 -> :sswitch_8c
        0x7 -> :sswitch_a9
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

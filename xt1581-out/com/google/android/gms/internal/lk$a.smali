.class public abstract Lcom/google/android/gms/internal/lk$a;
.super Landroid/os/Binder;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/lk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/lk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/lk$a$a;
    }
.end annotation


# direct methods
.method public static aj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lk;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo v0, "com.google.android.gms.car.ICarPhoneStatus"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/lk$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/lk$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_12
    return-object v0

    :cond_13
    instance-of v1, v0, Lcom/google/android/gms/internal/lk;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/google/android/gms/internal/lk;

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_70

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_a
    const-string/jumbo v0, "com.google.android.gms.car.ICarPhoneStatus"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_11
    const-string/jumbo v0, "com.google.android.gms.car.ICarPhoneStatus"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ll$a;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ll;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x0

    :goto_26
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/lk$a;->a(Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/internal/kh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_2d
    sget-object v0, Lcom/google/android/gms/internal/kh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kh;

    goto :goto_26

    :sswitch_36
    const-string/jumbo v2, "com.google.android.gms.car.ICarPhoneStatus"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ll$a;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ll;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/lk$a;->a(Lcom/google/android/gms/internal/ll;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v2, :cond_51

    :goto_4d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_51
    move v0, v1

    goto :goto_4d

    :sswitch_53
    const-string/jumbo v2, "com.google.android.gms.car.ICarPhoneStatus"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ll$a;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ll;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/lk$a;->b(Lcom/google/android/gms/internal/ll;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v2, :cond_6e

    :goto_6a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_6e
    move v0, v1

    goto :goto_6a

    :sswitch_data_70
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_36
        0x3 -> :sswitch_53
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

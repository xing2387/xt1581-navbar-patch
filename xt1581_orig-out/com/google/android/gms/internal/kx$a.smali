.class public abstract Lcom/google/android/gms/internal/kx$a;
.super Landroid/os/Binder;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/kx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/kx$a$a;
    }
.end annotation


# direct methods
.method public static W(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kx;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo v0, "com.google.android.gms.car.ICarBluetooth"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/kx$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/kx$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_12
    return-object v0

    :cond_13
    instance-of v1, v0, Lcom/google/android/gms/internal/kx;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/google/android/gms/internal/kx;

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

    sparse-switch p1, :sswitch_data_a8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_a
    const-string/jumbo v0, "com.google.android.gms.car.ICarBluetooth"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_11
    const-string/jumbo v0, "com.google.android.gms.car.ICarBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kx$a;->gJ()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_22
    const-string/jumbo v2, "com.google.android.gms.car.ICarBluetooth"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ky$a;->X(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ky;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/kx$a;->a(Lcom/google/android/gms/internal/ky;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v2, :cond_3d

    :goto_39
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_3d
    move v0, v1

    goto :goto_39

    :sswitch_3f
    const-string/jumbo v2, "com.google.android.gms.car.ICarBluetooth"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kx$a;->isEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v2, :cond_52

    :goto_4e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_52
    move v0, v1

    goto :goto_4e

    :sswitch_54
    const-string/jumbo v2, "com.google.android.gms.car.ICarBluetooth"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kx$a;->gK()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v2, :cond_67

    :goto_63
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_67
    move v0, v1

    goto :goto_63

    :sswitch_69
    const-string/jumbo v2, "com.google.android.gms.car.ICarBluetooth"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kx$a;->gL()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v2, :cond_7c

    :goto_78
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_7c
    move v0, v1

    goto :goto_78

    :sswitch_7e
    const-string/jumbo v2, "com.google.android.gms.car.ICarBluetooth"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kx$a;->gM()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v2, :cond_91

    :goto_8d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_91
    move v0, v1

    goto :goto_8d

    :sswitch_93
    const-string/jumbo v2, "com.google.android.gms.car.ICarBluetooth"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kx$a;->gN()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v2, :cond_a6

    :goto_a2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_a6
    move v0, v1

    goto :goto_a2

    :sswitch_data_a8
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_22
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_54
        0x5 -> :sswitch_69
        0x6 -> :sswitch_7e
        0x7 -> :sswitch_93
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

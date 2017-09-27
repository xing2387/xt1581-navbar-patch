.class public abstract Lcom/google/android/gms/internal/lp$a;
.super Landroid/os/Binder;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/lp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/lp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/lp$a$a;
    }
.end annotation


# direct methods
.method public static ao(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lp;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo v0, "com.google.android.gms.car.ICarVendorExtension"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/lp$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/lp$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_12
    return-object v0

    :cond_13
    instance-of v1, v0, Lcom/google/android/gms/internal/lp;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/google/android/gms/internal/lp;

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

    sparse-switch p1, :sswitch_data_104

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_a
    const-string/jumbo v0, "com.google.android.gms.car.ICarVendorExtension"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_11
    const-string/jumbo v2, "com.google.android.gms.car.ICarVendorExtension"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/lq$a;->ap(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lq;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/lp$a;->a(Lcom/google/android/gms/internal/lq;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v2, :cond_2c

    :goto_28
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_2c
    move v0, v1

    goto :goto_28

    :sswitch_2e
    const-string/jumbo v0, "com.google.android.gms.car.ICarVendorExtension"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/lq$a;->ap(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lp$a;->b(Lcom/google/android/gms/internal/lq;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_43
    const-string/jumbo v0, "com.google.android.gms.car.ICarVendorExtension"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/lq$a;->ap(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lp$a;->c(Lcom/google/android/gms/internal/lq;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_5c
    const-string/jumbo v0, "com.google.android.gms.car.ICarVendorExtension"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/lq$a;->ap(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lp$a;->d(Lcom/google/android/gms/internal/lq;)[B

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1

    :sswitch_75
    const-string/jumbo v2, "com.google.android.gms.car.ICarVendorExtension"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/lq$a;->ap(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lq;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/lp$a;->e(Lcom/google/android/gms/internal/lq;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v2, :cond_90

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8f
    return v1

    :cond_90
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8f

    :sswitch_97
    const-string/jumbo v0, "com.google.android.gms.car.ICarVendorExtension"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/lq$a;->ap(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/lp$a;->a(Lcom/google/android/gms/internal/lq;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_b0
    const-string/jumbo v0, "com.google.android.gms.car.ICarVendorExtension"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/lq$a;->ap(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/lp$a;->b(Lcom/google/android/gms/internal/lq;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_c9
    const-string/jumbo v2, "com.google.android.gms.car.ICarVendorExtension"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/lq$a;->ap(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lq;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/lp$a;->f(Lcom/google/android/gms/internal/lq;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v2, :cond_e4

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e3
    return v1

    :cond_e4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e3

    :sswitch_eb
    const-string/jumbo v0, "com.google.android.gms.car.ICarVendorExtension"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/lq$a;->ap(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/lp$a;->c(Lcom/google/android/gms/internal/lq;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_data_104
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_43
        0x4 -> :sswitch_5c
        0x5 -> :sswitch_75
        0x6 -> :sswitch_97
        0x7 -> :sswitch_b0
        0x8 -> :sswitch_c9
        0x9 -> :sswitch_eb
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

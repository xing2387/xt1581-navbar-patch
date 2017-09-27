.class public abstract Lcom/google/android/gms/internal/lc$a;
.super Landroid/os/Binder;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/lc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/lc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/lc$a$a;
    }
.end annotation


# direct methods
.method public static ab(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lc;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo v0, "com.google.android.gms.car.ICarMediaBrowser"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/lc$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/lc$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_12
    return-object v0

    :cond_13
    instance-of v1, v0, Lcom/google/android/gms/internal/lc;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/google/android/gms/internal/lc;

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_de

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_b
    const-string/jumbo v0, "com.google.android.gms.car.ICarMediaBrowser"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_12
    const-string/jumbo v1, "com.google.android.gms.car.ICarMediaBrowser"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ld$a;->ac(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ld;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_2d

    :goto_26
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/lc$a;->a(Lcom/google/android/gms/internal/ld;Lcom/google/android/gms/internal/js;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_2d
    sget-object v0, Lcom/google/android/gms/internal/js;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/js;

    goto :goto_26

    :sswitch_36
    const-string/jumbo v1, "com.google.android.gms.car.ICarMediaBrowser"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ld$a;->ac(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ld;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_51

    :goto_4a
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/lc$a;->a(Lcom/google/android/gms/internal/ld;Lcom/google/android/gms/internal/ju;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_51
    sget-object v0, Lcom/google/android/gms/internal/ju;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ju;

    goto :goto_4a

    :sswitch_5a
    const-string/jumbo v1, "com.google.android.gms.car.ICarMediaBrowser"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ld$a;->ac(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ld;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_75

    :goto_6e
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/lc$a;->a(Lcom/google/android/gms/internal/ld;Lcom/google/android/gms/internal/jw;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_75
    sget-object v0, Lcom/google/android/gms/internal/jw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jw;

    goto :goto_6e

    :sswitch_7e
    const-string/jumbo v1, "com.google.android.gms.car.ICarMediaBrowser"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ld$a;->ac(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ld;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_99

    :goto_92
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/lc$a;->a(Lcom/google/android/gms/internal/ld;Lcom/google/android/gms/internal/jy;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_99
    sget-object v0, Lcom/google/android/gms/internal/jy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jy;

    goto :goto_92

    :sswitch_a2
    const-string/jumbo v0, "com.google.android.gms.car.ICarMediaBrowser"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ld$a;->ac(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ld;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lc$a;->a(Lcom/google/android/gms/internal/ld;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_be

    move v0, v1

    :goto_ba
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_be
    move v0, v2

    goto :goto_ba

    :sswitch_c0
    const-string/jumbo v0, "com.google.android.gms.car.ICarMediaBrowser"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ld$a;->ac(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ld;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lc$a;->b(Lcom/google/android/gms/internal/ld;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_db

    :goto_d7
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_db
    move v1, v2

    goto :goto_d7

    nop

    :sswitch_data_de
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_36
        0x3 -> :sswitch_5a
        0x4 -> :sswitch_7e
        0x5 -> :sswitch_a2
        0x6 -> :sswitch_c0
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

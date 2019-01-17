.class public abstract Lcom/google/android/gms/internal/lm$a;
.super Landroid/os/Binder;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/lm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/lm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/lm$a$a;
    }
.end annotation


# direct methods
.method public static al(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lm;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo v0, "com.google.android.gms.car.ICarSensor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/lm$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/lm$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_12
    return-object v0

    :cond_13
    instance-of v1, v0, Lcom/google/android/gms/internal/lm;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/google/android/gms/internal/lm;

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_ea

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_b
    const-string/jumbo v0, "com.google.android.gms.car.ICarSensor"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_12
    const-string/jumbo v0, "com.google.android.gms.car.ICarSensor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lm$a;->gS()[I

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return v2

    :sswitch_23
    const-string/jumbo v0, "com.google.android.gms.car.ICarSensor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/lo$a;->an(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lo;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/gms/internal/lm$a;->a(IILcom/google/android/gms/internal/lo;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_47

    move v0, v1

    :goto_43
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_47
    move v0, v2

    goto :goto_43

    :sswitch_49
    const-string/jumbo v0, "com.google.android.gms.car.ICarSensor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lm$a;->aB(I)Lcom/google/android/gms/internal/kk;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_60

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5f
    return v2

    :cond_60
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v2}, Lcom/google/android/gms/internal/kk;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5f

    :sswitch_67
    const-string/jumbo v0, "com.google.android.gms.car.ICarSensor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/lo$a;->an(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm$a;->a(ILcom/google/android/gms/internal/lo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :sswitch_80
    const-string/jumbo v0, "com.google.android.gms.car.ICarSensor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ln$a;->am(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ln;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/gms/internal/lm$a;->a(IILcom/google/android/gms/internal/ln;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_a3

    :goto_9f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_a3
    move v1, v2

    goto :goto_9f

    :sswitch_a5
    const-string/jumbo v0, "com.google.android.gms.car.ICarSensor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ln$a;->am(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ln;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm$a;->a(ILcom/google/android/gms/internal/ln;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :sswitch_be
    const-string/jumbo v3, "com.google.android.gms.car.ICarSensor"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ln$a;->am(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ln;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_df

    :goto_d2
    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/internal/lm$a;->a(Lcom/google/android/gms/internal/ln;Lcom/google/android/gms/internal/kk;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_e8

    :goto_db
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_df
    sget-object v0, Lcom/google/android/gms/internal/kk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kk;

    goto :goto_d2

    :cond_e8
    move v1, v2

    goto :goto_db

    :sswitch_data_ea
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_23
        0x3 -> :sswitch_49
        0x4 -> :sswitch_67
        0x5 -> :sswitch_80
        0x6 -> :sswitch_a5
        0x7 -> :sswitch_be
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

.class public abstract Lcom/google/android/gms/internal/kz$a;
.super Landroid/os/Binder;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/kz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/kz$a$a;
    }
.end annotation


# direct methods
.method public static Y(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kz;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo v0, "com.google.android.gms.car.ICarCall"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/kz$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/kz$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_12
    return-object v0

    :cond_13
    instance-of v1, v0, Lcom/google/android/gms/internal/kz;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/google/android/gms/internal/kz;

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

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_218

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_b
    const-string/jumbo v0, "com.google.android.gms.car.ICarCall"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_12
    const-string/jumbo v0, "com.google.android.gms.car.ICarCall"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kz$a;->getCalls()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    :sswitch_23
    const-string/jumbo v0, "com.google.android.gms.car.ICarCall"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kz$a;->gO()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_37

    move v0, v1

    :goto_33
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_37
    move v0, v2

    goto :goto_33

    :sswitch_39
    const-string/jumbo v0, "com.google.android.gms.car.ICarCall"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_4c

    :goto_45
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/kz$a;->setMuted(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_4c
    move v1, v2

    goto :goto_45

    :sswitch_4e
    const-string/jumbo v0, "com.google.android.gms.car.ICarCall"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kz$a;->gP()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :sswitch_5f
    const-string/jumbo v0, "com.google.android.gms.car.ICarCall"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kz$a;->gQ()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :sswitch_70
    const-string/jumbo v0, "com.google.android.gms.car.ICarCall"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kz$a;->setAudioRoute(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :sswitch_81
    const-string/jumbo v0, "com.google.android.gms.car.ICarCall"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/la$a;->Z(Landroid/os/IBinder;)Lcom/google/android/gms/internal/la;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kz$a;->a(Lcom/google/android/gms/internal/la;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_9c

    :goto_98
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_9c
    move v1, v2

    goto :goto_98

    :sswitch_9e
    const-string/jumbo v0, "com.google.android.gms.car.ICarCall"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/la$a;->Z(Landroid/os/IBinder;)Lcom/google/android/gms/internal/la;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kz$a;->b(Lcom/google/android/gms/internal/la;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_b9

    :goto_b5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_b9
    move v1, v2

    goto :goto_b5

    :sswitch_bb
    const-string/jumbo v0, "com.google.android.gms.car.ICarCall"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_cf

    move-object v0, v3

    :goto_c8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kz$a;->g(Lcom/google/android/gms/internal/jf;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_cf
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    goto :goto_c8

    :sswitch_d8
    const-string/jumbo v0, "com.google.android.gms.car.ICarCall"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_f5

    :goto_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_ff

    :goto_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v1, v0}, Lcom/google/android/gms/internal/kz$a;->a(Lcom/google/android/gms/internal/jf;ZLjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_f5
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    move-object v3, v0

    goto :goto_e4

    :cond_ff
    move v1, v2

    goto :goto_ea

    :sswitch_101
    const-string/jumbo v0, "com.google.android.gms.car.ICarCall"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_114

    :goto_10d
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/kz$a;->h(Lcom/google/android/gms/internal/jf;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_114
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    move-object v3, v0

    goto :goto_10d

    :sswitch_11e
    const-string/jumbo v0, "com.google.android.gms.car.ICarCall"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_131

    :goto_12a
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/kz$a;->i(Lcom/google/android/gms/internal/jf;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_131
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    move-object v3, v0

    goto :goto_12a

    :sswitch_13b
    const-string/jumbo v0, "com.google.android.gms.car.ICarCall"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_14e

    :goto_147
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/kz$a;->j(Lcom/google/android/gms/internal/jf;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_14e
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    move-object v3, v0

    goto :goto_147

    :sswitch_158
    const-string/jumbo v0, "com.google.android.gms.car.ICarCall"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_170

    :goto_164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/internal/kz$a;->a(Lcom/google/android/gms/internal/jf;C)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_170
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    move-object v3, v0

    goto :goto_164

    :sswitch_17a
    const-string/jumbo v0, "com.google.android.gms.car.ICarCall"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_18d

    :goto_186
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/kz$a;->k(Lcom/google/android/gms/internal/jf;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_18d
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    move-object v3, v0

    goto :goto_186

    :sswitch_197
    const-string/jumbo v0, "com.google.android.gms.car.ICarCall"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1b0

    :goto_1a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1ba

    :goto_1a9
    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/internal/kz$a;->a(Lcom/google/android/gms/internal/jf;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_1b0
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    move-object v3, v0

    goto :goto_1a3

    :cond_1ba
    move v1, v2

    goto :goto_1a9

    :sswitch_1bc
    const-string/jumbo v0, "com.google.android.gms.car.ICarCall"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1d6

    move-object v1, v3

    :goto_1c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1e0

    :goto_1cf
    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/internal/kz$a;->c(Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/jf;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_1d6
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    move-object v1, v0

    goto :goto_1c9

    :cond_1e0
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    move-object v3, v0

    goto :goto_1cf

    :sswitch_1ea
    const-string/jumbo v0, "com.google.android.gms.car.ICarCall"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1fd

    :goto_1f6
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/kz$a;->l(Lcom/google/android/gms/internal/jf;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_1fd
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    move-object v3, v0

    goto :goto_1f6

    :sswitch_207
    const-string/jumbo v0, "com.google.android.gms.car.ICarCall"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kz$a;->aC(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :sswitch_data_218
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_23
        0x3 -> :sswitch_39
        0x4 -> :sswitch_4e
        0x5 -> :sswitch_5f
        0x6 -> :sswitch_70
        0x7 -> :sswitch_81
        0x8 -> :sswitch_9e
        0x9 -> :sswitch_bb
        0xa -> :sswitch_d8
        0xb -> :sswitch_101
        0xc -> :sswitch_11e
        0xd -> :sswitch_13b
        0xe -> :sswitch_158
        0xf -> :sswitch_17a
        0x10 -> :sswitch_197
        0x11 -> :sswitch_1bc
        0x12 -> :sswitch_1ea
        0x13 -> :sswitch_207
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

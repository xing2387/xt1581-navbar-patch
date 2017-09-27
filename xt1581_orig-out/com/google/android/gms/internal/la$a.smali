.class public abstract Lcom/google/android/gms/internal/la$a;
.super Landroid/os/Binder;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/la;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/la;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/la$a$a;
    }
.end annotation


# direct methods
.method public static Z(Landroid/os/IBinder;)Lcom/google/android/gms/internal/la;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo v0, "com.google.android.gms.car.ICarCallListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/la$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/la$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_12
    return-object v0

    :cond_13
    instance-of v1, v0, Lcom/google/android/gms/internal/la;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/google/android/gms/internal/la;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_184

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_b
    const-string/jumbo v0, "com.google.android.gms.car.ICarCallListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_12
    const-string/jumbo v0, "com.google.android.gms.car.ICarCallListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_23

    move-object v0, v1

    :goto_1f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/la$a;->a(Landroid/view/KeyEvent;)V

    return v2

    :cond_23
    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    goto :goto_1f

    :sswitch_2c
    const-string/jumbo v1, "com.google.android.gms.car.ICarCallListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_44

    :goto_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/internal/la$a;->a(ZII)V

    return v2

    :cond_44
    move v0, v2

    goto :goto_38

    :sswitch_46
    const-string/jumbo v0, "com.google.android.gms.car.ICarCallListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_56

    :goto_52
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/la$a;->a(Lcom/google/android/gms/internal/jf;)V

    return v2

    :cond_56
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    move-object v1, v0

    goto :goto_52

    :sswitch_60
    const-string/jumbo v0, "com.google.android.gms.car.ICarCallListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_70

    :goto_6c
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/la$a;->b(Lcom/google/android/gms/internal/jf;)V

    return v2

    :cond_70
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    move-object v1, v0

    goto :goto_6c

    :sswitch_7a
    const-string/jumbo v0, "com.google.android.gms.car.ICarCallListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_8e

    :goto_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/la$a;->a(Lcom/google/android/gms/internal/jf;I)V

    return v2

    :cond_8e
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    move-object v1, v0

    goto :goto_86

    :sswitch_98
    const-string/jumbo v0, "com.google.android.gms.car.ICarCallListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_af

    move-object v3, v1

    :goto_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_b9

    :goto_ab
    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/internal/la$a;->a(Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/jf;)V

    return v2

    :cond_af
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    move-object v3, v0

    goto :goto_a5

    :cond_b9
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    move-object v1, v0

    goto :goto_ab

    :sswitch_c3
    const-string/jumbo v0, "com.google.android.gms.car.ICarCallListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_d9

    :goto_cf
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/la$a;->a(Lcom/google/android/gms/internal/jf;Ljava/util/List;)V

    return v2

    :cond_d9
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    move-object v1, v0

    goto :goto_cf

    :sswitch_e3
    const-string/jumbo v0, "com.google.android.gms.car.ICarCallListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_fa

    move-object v3, v1

    :goto_f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_104

    :goto_f6
    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/internal/la$a;->a(Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/jf$a;)V

    return v2

    :cond_fa
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    move-object v3, v0

    goto :goto_f0

    :cond_104
    sget-object v0, Lcom/google/android/gms/internal/jf$a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf$a;

    move-object v1, v0

    goto :goto_f6

    :sswitch_10e
    const-string/jumbo v0, "com.google.android.gms.car.ICarCallListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_122

    :goto_11a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/la$a;->b(Lcom/google/android/gms/internal/jf;Ljava/util/List;)V

    return v2

    :cond_122
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    move-object v1, v0

    goto :goto_11a

    :sswitch_12c
    const-string/jumbo v0, "com.google.android.gms.car.ICarCallListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_140

    :goto_138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/la$a;->a(Lcom/google/android/gms/internal/jf;Ljava/lang/String;)V

    return v2

    :cond_140
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    move-object v1, v0

    goto :goto_138

    :sswitch_14a
    const-string/jumbo v0, "com.google.android.gms.car.ICarCallListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_15a

    :goto_156
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/la$a;->c(Lcom/google/android/gms/internal/jf;)V

    return v2

    :cond_15a
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    move-object v1, v0

    goto :goto_156

    :sswitch_164
    const-string/jumbo v0, "com.google.android.gms.car.ICarCallListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_17a

    :goto_170
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/la$a;->c(Lcom/google/android/gms/internal/jf;Ljava/util/List;)V

    return v2

    :cond_17a
    sget-object v0, Lcom/google/android/gms/internal/jf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    move-object v1, v0

    goto :goto_170

    :sswitch_data_184
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_46
        0x4 -> :sswitch_60
        0x5 -> :sswitch_7a
        0x6 -> :sswitch_98
        0x7 -> :sswitch_c3
        0x8 -> :sswitch_e3
        0x9 -> :sswitch_10e
        0xa -> :sswitch_12c
        0xb -> :sswitch_14a
        0xc -> :sswitch_164
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

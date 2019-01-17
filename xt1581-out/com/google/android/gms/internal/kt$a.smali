.class public abstract Lcom/google/android/gms/internal/kt$a;
.super Landroid/os/Binder;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/kt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/kt$a$a;
    }
.end annotation


# direct methods
.method public static S(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kt;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioRecord"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/kt$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/kt$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_12
    return-object v0

    :cond_13
    instance-of v1, v0, Lcom/google/android/gms/internal/kt;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/google/android/gms/internal/kt;

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

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_c2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_a
    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioRecord"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_11
    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioRecord"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ku$a;->T(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ku;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kt$a;->a(Lcom/google/android/gms/internal/ku;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_26
    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioRecord"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ku$a;->T(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ku;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kt$a;->b(Lcom/google/android/gms/internal/ku;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_3b
    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioRecord"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ku$a;->T(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ku;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kt$a;->c(Lcom/google/android/gms/internal/ku;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_50
    const-string/jumbo v2, "com.google.android.gms.car.ICarAudioRecord"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ku$a;->T(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ku;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/kt$a;->d(Lcom/google/android/gms/internal/ku;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v2, :cond_6b

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6a
    return v1

    :cond_6b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6a

    :sswitch_72
    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioRecord"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ku$a;->T(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ku;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kt$a;->e(Lcom/google/android/gms/internal/ku;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_87
    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioRecord"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ku$a;->T(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ku;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/kt$a;->a(Lcom/google/android/gms/internal/ku;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_a0
    const-string/jumbo v2, "com.google.android.gms.car.ICarAudioRecord"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ku$a;->T(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ku;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/kt$a;->b(Lcom/google/android/gms/internal/ku;I)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v2, :cond_bf

    :goto_bb
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_bf
    move v0, v1

    goto :goto_bb

    nop

    :sswitch_data_c2
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_26
        0x3 -> :sswitch_3b
        0x4 -> :sswitch_50
        0x5 -> :sswitch_72
        0x6 -> :sswitch_87
        0x7 -> :sswitch_a0
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

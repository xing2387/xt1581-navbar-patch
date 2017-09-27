.class public abstract Lcom/google/android/gms/internal/kv$a;
.super Landroid/os/Binder;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/kv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/kv$a$a;
    }
.end annotation


# direct methods
.method public static U(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kv;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioTrack"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/kv$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/kv$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_12
    return-object v0

    :cond_13
    instance-of v1, v0, Lcom/google/android/gms/internal/kv;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/google/android/gms/internal/kv;

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

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_e4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_9
    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioTrack"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_10
    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioTrack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/kw$a;->V(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kv$a;->a(Lcom/google/android/gms/internal/kw;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :sswitch_25
    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioTrack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/kw$a;->V(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kv$a;->b(Lcom/google/android/gms/internal/kw;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_41

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_40
    return v2

    :cond_41
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_40

    :sswitch_48
    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioTrack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/kw$a;->V(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kv$a;->c(Lcom/google/android/gms/internal/kw;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :sswitch_5d
    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioTrack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/kw$a;->V(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kv$a;->d(Lcom/google/android/gms/internal/kw;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :sswitch_72
    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioTrack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/kw$a;->V(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kv$a;->e(Lcom/google/android/gms/internal/kw;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :sswitch_87
    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioTrack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/kw$a;->V(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kv$a;->f(Lcom/google/android/gms/internal/kw;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :sswitch_9c
    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioTrack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/kw$a;->V(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kv$a;->g(Lcom/google/android/gms/internal/kw;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :sswitch_b1
    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioTrack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/kw$a;->V(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kw;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/kv$a;->a(Lcom/google/android/gms/internal/kw;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :sswitch_ca
    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioTrack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/kw$a;->V(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kw;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/kv$a;->b(Lcom/google/android/gms/internal/kw;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    nop

    :sswitch_data_e4
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_25
        0x3 -> :sswitch_48
        0x4 -> :sswitch_5d
        0x5 -> :sswitch_72
        0x6 -> :sswitch_87
        0x7 -> :sswitch_9c
        0x8 -> :sswitch_b1
        0x9 -> :sswitch_ca
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

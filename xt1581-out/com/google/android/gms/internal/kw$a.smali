.class public abstract Lcom/google/android/gms/internal/kw$a;
.super Landroid/os/Binder;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/kw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/kw$a$a;
    }
.end annotation


# direct methods
.method public static V(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kw;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioTrackCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/kw$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/kw$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_12
    return-object v0

    :cond_13
    instance-of v1, v0, Lcom/google/android/gms/internal/kw;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/google/android/gms/internal/kw;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_28

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_9
    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioTrackCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_10
    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioTrackCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kw$a;->ga()V

    return v1

    :sswitch_1a
    const-string/jumbo v0, "com.google.android.gms.car.ICarAudioTrackCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kw$a;->ae(I)V

    return v1

    :sswitch_data_28
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1a
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

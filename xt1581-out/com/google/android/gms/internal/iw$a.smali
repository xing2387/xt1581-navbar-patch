.class public abstract Lcom/google/android/gms/internal/iw$a;
.super Landroid/os/Binder;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/iw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/iw$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.google.android.gms.auth.api.IGoogleAuthApiCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/iw$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static L(Landroid/os/IBinder;)Lcom/google/android/gms/internal/iw;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo v0, "com.google.android.gms.auth.api.IGoogleAuthApiCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/iw$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/iw$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_12
    return-object v0

    :cond_13
    instance-of v1, v0, Lcom/google/android/gms/internal/iw;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/google/android/gms/internal/iw;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_50

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_a
    const-string/jumbo v0, "com.google.android.gms.auth.api.IGoogleAuthApiCallbacks"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_11
    const-string/jumbo v1, "com.google.android.gms.auth.api.IGoogleAuthApiCallbacks"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_24

    :goto_1d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/iw$a;->a(Lcom/google/android/gms/internal/iu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :cond_24
    sget-object v0, Lcom/google/android/gms/internal/iu;->CREATOR:Lcom/google/android/gms/internal/iv;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/iv;->u(Landroid/os/Parcel;)Lcom/google/android/gms/internal/iu;

    move-result-object v0

    goto :goto_1d

    :sswitch_2b
    const-string/jumbo v1, "com.google.android.gms.auth.api.IGoogleAuthApiCallbacks"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_46

    :goto_3f
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/iw$a;->a(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :cond_46
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    goto :goto_3f

    nop

    :sswitch_data_50
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2b
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

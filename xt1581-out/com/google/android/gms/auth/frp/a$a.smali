.class public abstract Lcom/google/android/gms/auth/frp/a$a;
.super Landroid/os/Binder;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/auth/frp/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/frp/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/frp/a$a$a;
    }
.end annotation


# direct methods
.method public static M(Landroid/os/IBinder;)Lcom/google/android/gms/auth/frp/a;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo v0, "com.google.android.gms.auth.frp.IFrpService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_c
    new-instance v0, Lcom/google/android/gms/auth/frp/a$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/frp/a$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_12
    return-object v0

    :cond_13
    instance-of v1, v0, Lcom/google/android/gms/auth/frp/a;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/google/android/gms/auth/frp/a;

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

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_64

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_b
    const-string/jumbo v0, "com.google.android.gms.auth.frp.IFrpService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_12
    const-string/jumbo v2, "com.google.android.gms.auth.frp.IFrpService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/frp/a$a;->isChallengeRequired()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v2, :cond_25

    :goto_21
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_25
    move v0, v1

    goto :goto_21

    :sswitch_27
    const-string/jumbo v2, "com.google.android.gms.auth.frp.IFrpService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/frp/a$a;->isChallengeSupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v2, :cond_3a

    :goto_36
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_3a
    move v0, v1

    goto :goto_36

    :sswitch_3c
    const-string/jumbo v3, "com.google.android.gms.auth.frp.IFrpService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_55

    :goto_48
    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/frp/a$a;->unlockFactoryResetProtection(Lcom/google/android/gms/auth/frp/b;)Lcom/google/android/gms/auth/frp/d;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v2, :cond_5c

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_54
    return v1

    :cond_55
    sget-object v2, Lcom/google/android/gms/auth/frp/b;->CREATOR:Lcom/google/android/gms/auth/frp/c;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/auth/frp/c;->v(Landroid/os/Parcel;)Lcom/google/android/gms/auth/frp/b;

    move-result-object v2

    goto :goto_48

    :cond_5c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v1}, Lcom/google/android/gms/auth/frp/d;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_54

    nop

    :sswitch_data_64
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_27
        0x3 -> :sswitch_3c
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

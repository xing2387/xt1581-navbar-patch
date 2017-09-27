.class public abstract Lcom/google/android/gms/internal/ri$a;
.super Landroid/os/Binder;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/ri;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ri$a$a;
    }
.end annotation


# direct methods
.method public static cp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ri;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo v0, "com.google.android.gms.playlog.internal.IPlayLogService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ri$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ri$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_12
    return-object v0

    :cond_13
    instance-of v1, v0, Lcom/google/android/gms/internal/ri;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/google/android/gms/internal/ri;

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

    const/4 v1, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_7a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_a
    const-string/jumbo v0, "com.google.android.gms.playlog.internal.IPlayLogService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_11
    const-string/jumbo v0, "com.google.android.gms.playlog.internal.IPlayLogService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2c

    move-object v0, v1

    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_33

    :goto_28
    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ri$a;->a(Ljava/lang/String;Lcom/google/android/gms/internal/rn;Lcom/google/android/gms/internal/rj;)V

    return v4

    :cond_2c
    sget-object v0, Lcom/google/android/gms/internal/rn;->CREATOR:Lcom/google/android/gms/internal/ro;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ro;->dQ(Landroid/os/Parcel;)Lcom/google/android/gms/internal/rn;

    move-result-object v0

    goto :goto_22

    :cond_33
    sget-object v1, Lcom/google/android/gms/internal/rj;->CREATOR:Lcom/google/android/gms/internal/rl;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/rl;->dP(Landroid/os/Parcel;)Lcom/google/android/gms/internal/rj;

    move-result-object v1

    goto :goto_28

    :sswitch_3a
    const-string/jumbo v0, "com.google.android.gms.playlog.internal.IPlayLogService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_54

    :goto_4a
    sget-object v2, Lcom/google/android/gms/internal/rj;->CREATOR:Lcom/google/android/gms/internal/rl;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ri$a;->a(Ljava/lang/String;Lcom/google/android/gms/internal/rn;Ljava/util/List;)V

    return v4

    :cond_54
    sget-object v1, Lcom/google/android/gms/internal/rn;->CREATOR:Lcom/google/android/gms/internal/ro;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ro;->dQ(Landroid/os/Parcel;)Lcom/google/android/gms/internal/rn;

    move-result-object v1

    goto :goto_4a

    :sswitch_5b
    const-string/jumbo v0, "com.google.android.gms.playlog.internal.IPlayLogService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_73

    :goto_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ri$a;->a(Ljava/lang/String;Lcom/google/android/gms/internal/rn;[B)V

    return v4

    :cond_73
    sget-object v1, Lcom/google/android/gms/internal/rn;->CREATOR:Lcom/google/android/gms/internal/ro;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ro;->dQ(Landroid/os/Parcel;)Lcom/google/android/gms/internal/rn;

    move-result-object v1

    goto :goto_6b

    :sswitch_data_7a
    .sparse-switch
        0x2 -> :sswitch_11
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_5b
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

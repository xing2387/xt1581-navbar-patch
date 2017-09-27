.class public abstract Lcom/google/android/gms/dynamic/c$a;
.super Landroid/os/Binder;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/dynamic/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamic/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamic/c$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/dynamic/c$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static aU(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/c;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_c
    new-instance v0, Lcom/google/android/gms/dynamic/c$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/c$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_12
    return-object v0

    :cond_13
    instance-of v1, v0, Lcom/google/android/gms/dynamic/c;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/google/android/gms/dynamic/c;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_250

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_b
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_12
    const-string/jumbo v1, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->kr()Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v1, :cond_25

    :goto_21
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    :cond_25
    invoke-interface {v1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_21

    :sswitch_2a
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_3d

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3c
    return v2

    :cond_3d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3c

    :sswitch_44
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->getId()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :sswitch_55
    const-string/jumbo v1, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->ks()Lcom/google/android/gms/dynamic/c;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v1, :cond_68

    :goto_64
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    :cond_68
    invoke-interface {v1}, Lcom/google/android/gms/dynamic/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_64

    :sswitch_6d
    const-string/jumbo v1, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->kt()Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v1, :cond_80

    :goto_7c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    :cond_80
    invoke-interface {v1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_7c

    :sswitch_85
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->getRetainInstance()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_99

    move v0, v1

    :goto_95
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_99
    move v0, v2

    goto :goto_95

    :sswitch_9b
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_ac
    const-string/jumbo v1, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->ku()Lcom/google/android/gms/dynamic/c;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v1, :cond_bf

    :goto_bb
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    :cond_bf
    invoke-interface {v1}, Lcom/google/android/gms/dynamic/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_bb

    :sswitch_c4
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->getTargetRequestCode()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :sswitch_d5
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->getUserVisibleHint()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_e8

    :goto_e4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_e8
    move v1, v2

    goto :goto_e4

    :sswitch_ea
    const-string/jumbo v1, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->getView()Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v1, :cond_fd

    :goto_f9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    :cond_fd
    invoke-interface {v1}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_f9

    :sswitch_102
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->isAdded()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_115

    :goto_111
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_115
    move v1, v2

    goto :goto_111

    :sswitch_117
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->isDetached()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_12a

    :goto_126
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_12a
    move v1, v2

    goto :goto_126

    :sswitch_12c
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->isHidden()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_13f

    :goto_13b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_13f
    move v1, v2

    goto :goto_13b

    :sswitch_141
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->isInLayout()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_154

    :goto_150
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_154
    move v1, v2

    goto :goto_150

    :sswitch_156
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->isRemoving()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_169

    :goto_165
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_169
    move v1, v2

    goto :goto_165

    :sswitch_16b
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->isResumed()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_17e

    :goto_17a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_17e
    move v1, v2

    goto :goto_17a

    :sswitch_180
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/c$a;->isVisible()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_193

    :goto_18f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_193
    move v1, v2

    goto :goto_18f

    :sswitch_195
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->aV(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/c$a;->d(Lcom/google/android/gms/dynamic/d;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :sswitch_1aa
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1bd

    :goto_1b6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/dynamic/c$a;->setHasOptionsMenu(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_1bd
    move v1, v2

    goto :goto_1b6

    :sswitch_1bf
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1d2

    :goto_1cb
    invoke-virtual {p0, v1}, Lcom/google/android/gms/dynamic/c$a;->setMenuVisibility(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_1d2
    move v1, v2

    goto :goto_1cb

    :sswitch_1d4
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1e7

    :goto_1e0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/dynamic/c$a;->setRetainInstance(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_1e7
    move v1, v2

    goto :goto_1e0

    :sswitch_1e9
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1fc

    :goto_1f5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/dynamic/c$a;->setUserVisibleHint(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_1fc
    move v1, v2

    goto :goto_1f5

    :sswitch_1fe
    const-string/jumbo v1, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_211

    :goto_20a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/c$a;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_211
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_20a

    :sswitch_21a
    const-string/jumbo v1, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_231

    :goto_226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/dynamic/c$a;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_231
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_226

    :sswitch_23a
    const-string/jumbo v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->aV(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/c$a;->e(Lcom/google/android/gms/dynamic/d;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    nop

    :sswitch_data_250
    .sparse-switch
        0x2 -> :sswitch_12
        0x3 -> :sswitch_2a
        0x4 -> :sswitch_44
        0x5 -> :sswitch_55
        0x6 -> :sswitch_6d
        0x7 -> :sswitch_85
        0x8 -> :sswitch_9b
        0x9 -> :sswitch_ac
        0xa -> :sswitch_c4
        0xb -> :sswitch_d5
        0xc -> :sswitch_ea
        0xd -> :sswitch_102
        0xe -> :sswitch_117
        0xf -> :sswitch_12c
        0x10 -> :sswitch_141
        0x11 -> :sswitch_156
        0x12 -> :sswitch_16b
        0x13 -> :sswitch_180
        0x14 -> :sswitch_195
        0x15 -> :sswitch_1aa
        0x16 -> :sswitch_1bf
        0x17 -> :sswitch_1d4
        0x18 -> :sswitch_1e9
        0x19 -> :sswitch_1fe
        0x1a -> :sswitch_21a
        0x1b -> :sswitch_23a
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

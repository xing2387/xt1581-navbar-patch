.class public Lcom/google/android/gms/internal/ja;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/iz;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/iz;Landroid/os/Parcel;I)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->ab(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/iz;->Go:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iz;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/iz;->Gp:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/iz;->Gq:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->H(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public Z(I)[Lcom/google/android/gms/internal/iz;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/internal/iz;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ja;->x(Landroid/os/Parcel;)Lcom/google/android/gms/internal/iz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ja;->Z(I)[Lcom/google/android/gms/internal/iz;

    move-result-object v0

    return-object v0
.end method

.method public x(Landroid/os/Parcel;)Lcom/google/android/gms/internal/iz;
    .registers 9

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->aa(Landroid/os/Parcel;)I

    move-result v4

    move v1, v0

    move v2, v0

    move v3, v0

    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-lt v5, v4, :cond_1a

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ne v5, v4, :cond_3d

    new-instance v4, Lcom/google/android/gms/internal/iz;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/google/android/gms/internal/iz;-><init>(IIII)V

    return-object v4

    :cond_1a
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->Z(Landroid/os/Parcel;)I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->bo(I)I

    move-result v6

    sparse-switch v6, :sswitch_data_58

    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_8

    :sswitch_29
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_8

    :sswitch_2e
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_8

    :sswitch_33
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_8

    :sswitch_38
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v0

    goto :goto_8

    :cond_3d
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    nop

    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_29
        0x2 -> :sswitch_33
        0x3 -> :sswitch_38
        0x3e8 -> :sswitch_2e
    .end sparse-switch
.end method

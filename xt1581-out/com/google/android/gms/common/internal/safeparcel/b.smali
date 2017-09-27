.class public Lcom/google/android/gms/common/internal/safeparcel/b;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method private static F(Landroid/os/Parcel;I)I
    .registers 3

    const/high16 v0, -0x10000

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    return v0
.end method

.method private static G(Landroid/os/Parcel;I)V
    .registers 5

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int v1, v0, p1

    add-int/lit8 v2, p1, -0x4

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static H(Landroid/os/Parcel;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;IB)V
    .registers 4

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ID)V
    .registers 6

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;IF)V
    .registers 4

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;IJ)V
    .registers 6

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_e

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    return-void

    :cond_e
    if-nez p3, :cond_11

    :goto_10
    return-void

    :cond_11
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    goto :goto_10
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_e

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    return-void

    :cond_e
    if-nez p3, :cond_11

    :goto_10
    return-void

    :cond_11
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    goto :goto_10
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Parcel;Z)V
    .registers 7

    const/4 v2, 0x0

    if-eqz p2, :cond_12

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {p0, p2, v2, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    return-void

    :cond_12
    if-nez p3, :cond_15

    :goto_14
    return-void

    :cond_15
    invoke-static {p0, p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    goto :goto_14
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_e

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)I

    move-result v0

    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    return-void

    :cond_e
    if-nez p4, :cond_11

    :goto_10
    return-void

    :cond_11
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    goto :goto_10
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_11

    const/4 v1, 0x4

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_18

    :goto_d
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_11
    if-nez p3, :cond_14

    :goto_13
    return-void

    :cond_14
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    goto :goto_13

    :cond_18
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/Integer;Z)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_f

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_f
    if-nez p3, :cond_12

    :goto_11
    return-void

    :cond_12
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    goto :goto_11
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/Long;Z)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_10

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_10
    if-nez p3, :cond_13

    :goto_12
    return-void

    :cond_13
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    goto :goto_12
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_e

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    return-void

    :cond_e
    if-nez p3, :cond_11

    :goto_10
    return-void

    :cond_11
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    goto :goto_10
.end method

.method public static a(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_15

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v0

    :goto_f
    if-lt v1, v3, :cond_1c

    invoke-static {p0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    return-void

    :cond_15
    if-nez p3, :cond_18

    :goto_17
    return-void

    :cond_18
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    goto :goto_17

    :cond_1c
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f
.end method

.method public static a(Landroid/os/Parcel;IS)V
    .registers 4

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;IZ)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    if-nez p2, :cond_b

    :goto_7
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_b
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static a(Landroid/os/Parcel;I[BZ)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_e

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    return-void

    :cond_e
    if-nez p3, :cond_11

    :goto_10
    return-void

    :cond_11
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    goto :goto_10
.end method

.method public static a(Landroid/os/Parcel;I[FZ)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_e

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    return-void

    :cond_e
    if-nez p3, :cond_11

    :goto_10
    return-void

    :cond_11
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    goto :goto_10
.end method

.method public static a(Landroid/os/Parcel;I[IZ)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_e

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    return-void

    :cond_e
    if-nez p3, :cond_11

    :goto_10
    return-void

    :cond_11
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    goto :goto_10
.end method

.method public static a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I[TT;IZ)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_12

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)I

    move-result v2

    array-length v3, p2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    :goto_c
    if-lt v0, v3, :cond_19

    invoke-static {p0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    return-void

    :cond_12
    if-nez p4, :cond_15

    :goto_14
    return-void

    :cond_15
    invoke-static {p0, p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    goto :goto_14

    :cond_19
    aget-object v4, p2, v0

    if-eqz v4, :cond_23

    invoke-static {p0, v4, p3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_23
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20
.end method

.method public static a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_e

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    return-void

    :cond_e
    if-nez p3, :cond_11

    :goto_10
    return-void

    :cond_11
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    goto :goto_10
.end method

.method public static a(Landroid/os/Parcel;I[[BZ)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_11

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)I

    move-result v1

    array-length v2, p2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    if-lt v0, v2, :cond_18

    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    return-void

    :cond_11
    if-nez p3, :cond_14

    :goto_13
    return-void

    :cond_14
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    goto :goto_13

    :cond_18
    aget-object v3, p2, v0

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private static a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v0, v2, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static ab(Landroid/os/Parcel;)I
    .registers 2

    const/16 v0, 0x4f45

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)I

    move-result v0

    return v0
.end method

.method private static b(Landroid/os/Parcel;II)V
    .registers 4

    const v0, 0xffff

    if-ge p2, v0, :cond_c

    shl-int/lit8 v0, p2, 0x10

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    return-void

    :cond_c
    const/high16 v0, -0x10000

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b
.end method

.method public static b(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_e

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    return-void

    :cond_e
    if-nez p3, :cond_11

    :goto_10
    return-void

    :cond_11
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    goto :goto_10
.end method

.method public static c(Landroid/os/Parcel;II)V
    .registers 4

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static c(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p2, :cond_15

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)I

    move-result v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    :goto_f
    if-lt v1, v4, :cond_1c

    invoke-static {p0, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    return-void

    :cond_15
    if-nez p3, :cond_18

    :goto_17
    return-void

    :cond_18
    invoke-static {p0, p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    goto :goto_17

    :cond_1c
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    if-eqz v0, :cond_2b

    invoke-static {p0, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_2b
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_27
.end method

.method public static d(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_e

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    return-void

    :cond_e
    if-nez p3, :cond_11

    :goto_10
    return-void

    :cond_11
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    goto :goto_10
.end method

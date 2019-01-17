.class public final Lcom/google/android/gms/internal/tt$c;
.super Lcom/google/android/gms/internal/tj;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/tj",
        "<",
        "Lcom/google/android/gms/internal/tt$c;",
        ">;"
    }
.end annotation


# instance fields
.field public aDg:[B

.field public aDh:[[B


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/tj;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tt$c;->tD()Lcom/google/android/gms/internal/tt$c;

    return-void
.end method


# virtual methods
.method public A(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tt$c;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->sW()I

    move-result v0

    sparse-switch v0, :sswitch_data_4c

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/tt$c;->a(Lcom/google/android/gms/internal/th;I)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :sswitch_f
    return-object p0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$c;->aDg:[B

    goto :goto_1

    :sswitch_17
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ts;->b(Lcom/google/android/gms/internal/th;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$c;->aDh:[[B

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$c;->aDh:[[B

    array-length v0, v0

    :goto_24
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    if-nez v0, :cond_39

    :goto_29
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_3f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/tt$c;->aDh:[[B

    goto :goto_1

    :cond_37
    move v0, v1

    goto :goto_24

    :cond_39
    iget-object v3, p0, Lcom/google/android/gms/internal/tt$c;->aDh:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_29

    :cond_3f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->sW()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    nop

    :sswitch_data_4c
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_10
        0x12 -> :sswitch_17
    .end sparse-switch
.end method

.method public a(Lcom/google/android/gms/internal/ti;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$c;->aDg:[B

    sget-object v2, Lcom/google/android/gms/internal/ts;->aDa:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_b
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$c;->aDh:[[B

    if-nez v1, :cond_1a

    :cond_f
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/tj;->a(Lcom/google/android/gms/internal/ti;)V

    return-void

    :cond_13
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$c;->aDg:[B

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ti;->a(I[B)V

    goto :goto_b

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$c;->aDh:[[B

    array-length v1, v1

    if-lez v1, :cond_f

    :goto_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$c;->aDh:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$c;->aDh:[[B

    aget-object v1, v1, v0

    if-nez v1, :cond_2d

    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2d
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ti;->a(I[B)V

    goto :goto_2a
.end method

.method public synthetic b(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tp;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/tt$c;->A(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tt$c;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .registers 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/tj;->c()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$c;->aDg:[B

    sget-object v3, Lcom/google/android/gms/internal/ts;->aDa:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_15

    :goto_10
    iget-object v2, p0, Lcom/google/android/gms/internal/tt$c;->aDh:[[B

    if-nez v2, :cond_1d

    :cond_14
    :goto_14
    return v0

    :cond_15
    iget-object v2, p0, Lcom/google/android/gms/internal/tt$c;->aDg:[B

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ti;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_10

    :cond_1d
    iget-object v2, p0, Lcom/google/android/gms/internal/tt$c;->aDh:[[B

    array-length v2, v2

    if-lez v2, :cond_14

    move v2, v1

    move v3, v1

    :goto_24
    iget-object v4, p0, Lcom/google/android/gms/internal/tt$c;->aDh:[[B

    array-length v4, v4

    if-lt v1, v4, :cond_2e

    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    goto :goto_14

    :cond_2e
    iget-object v4, p0, Lcom/google/android/gms/internal/tt$c;->aDh:[[B

    aget-object v4, v4, v1

    if-nez v4, :cond_37

    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_37
    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/ti;->s([B)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_34
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v2, 0x0

    if-eq p1, p0, :cond_22

    instance-of v0, p1, Lcom/google/android/gms/internal/tt$c;

    if-eqz v0, :cond_24

    check-cast p1, Lcom/google/android/gms/internal/tt$c;

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$c;->aDg:[B

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$c;->aDg:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$c;->aDh:[[B

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$c;->aDh:[[B

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/tn;->a([[B[[B)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/tt$c;->a(Lcom/google/android/gms/internal/tj;)Z

    move-result v0

    return v0

    :cond_22
    const/4 v0, 0x1

    return v0

    :cond_24
    return v2

    :cond_25
    return v2

    :cond_26
    return v2
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$c;->aDg:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$c;->aDh:[[B

    invoke-static {v1}, Lcom/google/android/gms/internal/tn;->a([[B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tt$c;->tn()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public tD()Lcom/google/android/gms/internal/tt$c;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ts;->aDa:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$c;->aDg:[B

    sget-object v0, Lcom/google/android/gms/internal/ts;->aCZ:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$c;->aDh:[[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$c;->aCG:Lcom/google/android/gms/internal/tl;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/tt$c;->aCR:I

    return-object p0
.end method

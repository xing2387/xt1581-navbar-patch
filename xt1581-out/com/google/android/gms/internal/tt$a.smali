.class public final Lcom/google/android/gms/internal/tt$a;
.super Lcom/google/android/gms/internal/tj;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/tj",
        "<",
        "Lcom/google/android/gms/internal/tt$a;",
        ">;"
    }
.end annotation


# instance fields
.field public aDb:[Ljava/lang/String;

.field public aDc:[Ljava/lang/String;

.field public aDd:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/tj;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tt$a;->tB()Lcom/google/android/gms/internal/tt$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ti;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDb:[Ljava/lang/String;

    if-nez v0, :cond_11

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDc:[Ljava/lang/String;

    if-nez v0, :cond_2a

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDd:[I

    if-nez v0, :cond_43

    :cond_d
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/tj;->a(Lcom/google/android/gms/internal/ti;)V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDb:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    :goto_17
    iget-object v2, p0, Lcom/google/android/gms/internal/tt$a;->aDb:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$a;->aDb:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_25

    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_25
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ti;->b(ILjava/lang/String;)V

    goto :goto_22

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDc:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_9

    move v0, v1

    :goto_30
    iget-object v2, p0, Lcom/google/android/gms/internal/tt$a;->aDc:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$a;->aDc:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_3e

    :goto_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_3e
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ti;->b(ILjava/lang/String;)V

    goto :goto_3b

    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDd:[I

    array-length v0, v0

    if-lez v0, :cond_d

    :goto_48
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDd:[I

    array-length v0, v0

    if-ge v1, v0, :cond_d

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$a;->aDd:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ti;->z(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_48
.end method

.method public synthetic b(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tp;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/tt$a;->y(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tt$a;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .registers 7

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/tj;->c()I

    move-result v4

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDb:[Ljava/lang/String;

    if-nez v0, :cond_13

    :cond_9
    move v0, v4

    :goto_a
    iget-object v2, p0, Lcom/google/android/gms/internal/tt$a;->aDc:[Ljava/lang/String;

    if-nez v2, :cond_37

    :cond_e
    :goto_e
    iget-object v2, p0, Lcom/google/android/gms/internal/tt$a;->aDd:[I

    if-nez v2, :cond_5a

    :cond_12
    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDb:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_9

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_1b
    iget-object v5, p0, Lcom/google/android/gms/internal/tt$a;->aDb:[Ljava/lang/String;

    array-length v5, v5

    if-lt v0, v5, :cond_26

    add-int v0, v4, v2

    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    goto :goto_a

    :cond_26
    iget-object v5, p0, Lcom/google/android/gms/internal/tt$a;->aDb:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-nez v5, :cond_2f

    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/ti;->dw(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_2c

    :cond_37
    iget-object v2, p0, Lcom/google/android/gms/internal/tt$a;->aDc:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_e

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_3f
    iget-object v5, p0, Lcom/google/android/gms/internal/tt$a;->aDc:[Ljava/lang/String;

    array-length v5, v5

    if-lt v2, v5, :cond_49

    add-int/2addr v0, v3

    mul-int/lit8 v2, v4, 0x1

    add-int/2addr v0, v2

    goto :goto_e

    :cond_49
    iget-object v5, p0, Lcom/google/android/gms/internal/tt$a;->aDc:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-nez v5, :cond_52

    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_52
    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/ti;->dw(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_4f

    :cond_5a
    iget-object v2, p0, Lcom/google/android/gms/internal/tt$a;->aDd:[I

    array-length v2, v2

    if-lez v2, :cond_12

    move v2, v1

    :goto_60
    iget-object v3, p0, Lcom/google/android/gms/internal/tt$a;->aDd:[I

    array-length v3, v3

    if-lt v1, v3, :cond_6d

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$a;->aDd:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_12

    :cond_6d
    iget-object v3, p0, Lcom/google/android/gms/internal/tt$a;->aDd:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ti;->hI(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_60
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v2, 0x0

    if-eq p1, p0, :cond_2c

    instance-of v0, p1, Lcom/google/android/gms/internal/tt$a;

    if-eqz v0, :cond_2e

    check-cast p1, Lcom/google/android/gms/internal/tt$a;

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDb:[Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$a;->aDb:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/tn;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDc:[Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$a;->aDc:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/tn;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDd:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$a;->aDd:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/tn;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/tt$a;->a(Lcom/google/android/gms/internal/tj;)Z

    move-result v0

    return v0

    :cond_2c
    const/4 v0, 0x1

    return v0

    :cond_2e
    return v2

    :cond_2f
    return v2

    :cond_30
    return v2

    :cond_31
    return v2
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDb:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/tn;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$a;->aDc:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/tn;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$a;->aDd:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/tn;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tt$a;->tn()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public tB()Lcom/google/android/gms/internal/tt$a;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ts;->aCY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDb:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ts;->aCY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDc:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ts;->aCT:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDd:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aCG:Lcom/google/android/gms/internal/tl;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/tt$a;->aCR:I

    return-object p0
.end method

.method public y(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tt$a;
    .registers 7
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

    sparse-switch v0, :sswitch_data_f0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/tt$a;->a(Lcom/google/android/gms/internal/th;I)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :sswitch_f
    return-object p0

    :sswitch_10
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ts;->b(Lcom/google/android/gms/internal/th;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDb:[Ljava/lang/String;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDb:[Ljava/lang/String;

    array-length v0, v0

    :goto_1d
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-nez v0, :cond_32

    :goto_22
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_38

    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/tt$a;->aDb:[Ljava/lang/String;

    goto :goto_1

    :cond_30
    move v0, v1

    goto :goto_1d

    :cond_32
    iget-object v3, p0, Lcom/google/android/gms/internal/tt$a;->aDb:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_22

    :cond_38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->sW()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :sswitch_44
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ts;->b(Lcom/google/android/gms/internal/th;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDc:[Ljava/lang/String;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDc:[Ljava/lang/String;

    array-length v0, v0

    :goto_51
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-nez v0, :cond_66

    :goto_56
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_6c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/tt$a;->aDc:[Ljava/lang/String;

    goto :goto_1

    :cond_64
    move v0, v1

    goto :goto_51

    :cond_66
    iget-object v3, p0, Lcom/google/android/gms/internal/tt$a;->aDc:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_56

    :cond_6c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->sW()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    :sswitch_78
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ts;->b(Lcom/google/android/gms/internal/th;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDd:[I

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDd:[I

    array-length v0, v0

    :goto_85
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-nez v0, :cond_9b

    :goto_8a
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_a1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->sZ()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/tt$a;->aDd:[I

    goto/16 :goto_1

    :cond_99
    move v0, v1

    goto :goto_85

    :cond_9b
    iget-object v3, p0, Lcom/google/android/gms/internal/tt$a;->aDd:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8a

    :cond_a1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->sZ()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->sW()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    :sswitch_ad
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->td()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/th;->hB(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->getPosition()I

    move-result v2

    move v0, v1

    :goto_ba
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->ti()I

    move-result v4

    if-gtz v4, :cond_d9

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/th;->hD(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$a;->aDd:[I

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$a;->aDd:[I

    array-length v2, v2

    :goto_ca
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-nez v2, :cond_e1

    :goto_cf
    array-length v4, v0

    if-lt v2, v4, :cond_e7

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$a;->aDd:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/th;->hC(I)V

    goto/16 :goto_1

    :cond_d9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->sZ()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_ba

    :cond_df
    move v2, v1

    goto :goto_ca

    :cond_e1
    iget-object v4, p0, Lcom/google/android/gms/internal/tt$a;->aDd:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_cf

    :cond_e7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->sZ()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_cf

    :sswitch_data_f0
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_10
        0x12 -> :sswitch_44
        0x18 -> :sswitch_78
        0x1a -> :sswitch_ad
    .end sparse-switch
.end method

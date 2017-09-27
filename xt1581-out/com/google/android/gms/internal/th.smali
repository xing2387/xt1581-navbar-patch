.class public final Lcom/google/android/gms/internal/th;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private aCA:I

.field private aCB:I

.field private aCC:I

.field private aCD:I

.field private aCE:I

.field private aCw:I

.field private aCx:I

.field private aCy:I

.field private aCz:I

.field private final buffer:[B


# direct methods
.method private constructor <init>([BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/th;->aCB:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/th;->aCD:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/android/gms/internal/th;->aCE:I

    iput-object p1, p0, Lcom/google/android/gms/internal/th;->buffer:[B

    iput p2, p0, Lcom/google/android/gms/internal/th;->aCw:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/android/gms/internal/th;->aCx:I

    iput p2, p0, Lcom/google/android/gms/internal/th;->aCz:I

    return-void
.end method

.method public static C(J)J
    .registers 6

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static a([BII)Lcom/google/android/gms/internal/th;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/th;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/th;-><init>([BII)V

    return-object v0
.end method

.method public static hA(I)I
    .registers 3

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static p([B)Lcom/google/android/gms/internal/th;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/th;->a([BII)Lcom/google/android/gms/internal/th;

    move-result-object v0

    return-object v0
.end method

.method private th()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/th;->aCx:I

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCy:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/th;->aCx:I

    iget v0, p0, Lcom/google/android/gms/internal/th;->aCx:I

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCB:I

    if-gt v0, v1, :cond_11

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/th;->aCy:I

    :goto_10
    return-void

    :cond_11
    iget v1, p0, Lcom/google/android/gms/internal/th;->aCB:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/th;->aCy:I

    iget v0, p0, Lcom/google/android/gms/internal/th;->aCx:I

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCy:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/th;->aCx:I

    goto :goto_10
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/tp;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->td()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCC:I

    iget v2, p0, Lcom/google/android/gms/internal/th;->aCD:I

    if-ge v1, v2, :cond_25

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/th;->hB(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCC:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/th;->aCC:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/tp;->b(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tp;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/th;->hy(I)V

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCC:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/th;->aCC:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/th;->hC(I)V

    return-void

    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/to;->ty()Lcom/google/android/gms/internal/to;

    move-result-object v0

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/tp;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/th;->aCC:I

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCD:I

    if-ge v0, v1, :cond_1e

    iget v0, p0, Lcom/google/android/gms/internal/th;->aCC:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/th;->aCC:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/tp;->b(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tp;

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ts;->E(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/th;->hy(I)V

    iget v0, p0, Lcom/google/android/gms/internal/th;->aCC:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/th;->aCC:I

    return-void

    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/to;->ty()Lcom/google/android/gms/internal/to;

    move-result-object v0

    throw v0
.end method

.method public getPosition()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/th;->aCz:I

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCw:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hB(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/to;
        }
    .end annotation

    if-ltz p1, :cond_f

    iget v0, p0, Lcom/google/android/gms/internal/th;->aCz:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCB:I

    if-gt v0, v1, :cond_14

    iput v0, p0, Lcom/google/android/gms/internal/th;->aCB:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/th;->th()V

    return v1

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/to;->tt()Lcom/google/android/gms/internal/to;

    move-result-object v0

    throw v0

    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/to;->ts()Lcom/google/android/gms/internal/to;

    move-result-object v0

    throw v0
.end method

.method public hC(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/th;->aCB:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/th;->th()V

    return-void
.end method

.method public hD(I)V
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/th;->aCz:I

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCw:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_f

    if-ltz p1, :cond_39

    iget v0, p0, Lcom/google/android/gms/internal/th;->aCw:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/th;->aCz:I

    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is beyond current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/th;->aCz:I

    iget v3, p0, Lcom/google/android/gms/internal/th;->aCw:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hE(I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    if-ltz p1, :cond_16

    iget v0, p0, Lcom/google/android/gms/internal/th;->aCz:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCB:I

    if-gt v0, v1, :cond_1b

    iget v0, p0, Lcom/google/android/gms/internal/th;->aCx:I

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCz:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_28

    invoke-static {}, Lcom/google/android/gms/internal/to;->ts()Lcom/google/android/gms/internal/to;

    move-result-object v0

    throw v0

    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/to;->tt()Lcom/google/android/gms/internal/to;

    move-result-object v0

    throw v0

    :cond_1b
    iget v0, p0, Lcom/google/android/gms/internal/th;->aCB:I

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCz:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/th;->hF(I)V

    invoke-static {}, Lcom/google/android/gms/internal/to;->ts()Lcom/google/android/gms/internal/to;

    move-result-object v0

    throw v0

    :cond_28
    new-array v0, p1, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/th;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/th;->aCz:I

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCz:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/th;->aCz:I

    return-object v0
.end method

.method public hF(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_15

    iget v0, p0, Lcom/google/android/gms/internal/th;->aCz:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCB:I

    if-gt v0, v1, :cond_1a

    iget v0, p0, Lcom/google/android/gms/internal/th;->aCx:I

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCz:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_27

    invoke-static {}, Lcom/google/android/gms/internal/to;->ts()Lcom/google/android/gms/internal/to;

    move-result-object v0

    throw v0

    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/to;->tt()Lcom/google/android/gms/internal/to;

    move-result-object v0

    throw v0

    :cond_1a
    iget v0, p0, Lcom/google/android/gms/internal/th;->aCB:I

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCz:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/th;->hF(I)V

    invoke-static {}, Lcom/google/android/gms/internal/to;->ts()Lcom/google/android/gms/internal/to;

    move-result-object v0

    throw v0

    :cond_27
    iget v0, p0, Lcom/google/android/gms/internal/th;->aCz:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/th;->aCz:I

    return-void
.end method

.method public hy(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/to;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/th;->aCA:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/to;->tw()Lcom/google/android/gms/internal/to;

    move-result-object v0

    throw v0
.end method

.method public hz(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/ts;->hT(I)I

    move-result v0

    packed-switch v0, :pswitch_data_34

    invoke-static {}, Lcom/google/android/gms/internal/to;->tx()Lcom/google/android/gms/internal/to;

    move-result-object v0

    throw v0

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->sZ()I

    return v2

    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tg()J

    return v2

    :pswitch_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->td()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/th;->hF(I)V

    return v2

    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->sX()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ts;->hU(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ts;->E(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/th;->hy(I)V

    return v2

    :pswitch_2d
    const/4 v0, 0x0

    return v0

    :pswitch_2f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tf()I

    return v2

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_1d
        :pswitch_2d
        :pswitch_2f
    .end packed-switch
.end method

.method public readBytes()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->td()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCx:I

    iget v2, p0, Lcom/google/android/gms/internal/th;->aCz:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_11

    :cond_c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/th;->hE(I)[B

    move-result-object v0

    return-object v0

    :cond_11
    if-lez v0, :cond_c

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/google/android/gms/internal/th;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/th;->aCz:I

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/android/gms/internal/th;->aCz:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/th;->aCz:I

    return-object v1
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tg()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->td()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCx:I

    iget v2, p0, Lcom/google/android/gms/internal/th;->aCz:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_18

    :cond_b
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/th;->hE(I)[B

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1

    :cond_18
    if-lez v0, :cond_b

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/th;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/th;->aCz:I

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget v2, p0, Lcom/google/android/gms/internal/th;->aCz:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/th;->aCz:I

    return-object v1
.end method

.method public sW()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tj()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->td()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/th;->aCA:I

    iget v0, p0, Lcom/google/android/gms/internal/th;->aCA:I

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/google/android/gms/internal/th;->aCA:I

    return v0

    :cond_14
    iput v1, p0, Lcom/google/android/gms/internal/th;->aCA:I

    return v1

    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/to;->tv()Lcom/google/android/gms/internal/to;

    move-result-object v0

    throw v0
.end method

.method public sX()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->sW()I

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/th;->hz(I)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0
.end method

.method public sY()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->te()J

    move-result-wide v0

    return-wide v0
.end method

.method public sZ()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->td()I

    move-result v0

    return v0
.end method

.method public ta()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->td()I

    move-result v1

    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public tb()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->td()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/th;->hA(I)I

    move-result v0

    return v0
.end method

.method public tc()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->te()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/th;->C(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public td()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tk()B

    move-result v0

    if-gez v0, :cond_34

    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tk()B

    move-result v2

    if-gez v2, :cond_35

    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tk()B

    move-result v2

    if-gez v2, :cond_39

    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tk()B

    move-result v2

    if-gez v2, :cond_3d

    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tk()B

    move-result v2

    shl-int/lit8 v3, v2, 0x1c

    or-int/2addr v0, v3

    if-ltz v2, :cond_49

    :goto_33
    return v0

    :cond_34
    return v0

    :cond_35
    shl-int/lit8 v1, v2, 0x7

    or-int/2addr v0, v1

    goto :goto_33

    :cond_39
    shl-int/lit8 v1, v2, 0xe

    or-int/2addr v0, v1

    goto :goto_33

    :cond_3d
    shl-int/lit8 v1, v2, 0x15

    or-int/2addr v0, v1

    goto :goto_33

    :cond_41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tk()B

    move-result v2

    if-gez v2, :cond_51

    add-int/lit8 v1, v1, 0x1

    :cond_49
    const/4 v2, 0x5

    if-lt v1, v2, :cond_41

    invoke-static {}, Lcom/google/android/gms/internal/to;->tu()Lcom/google/android/gms/internal/to;

    move-result-object v0

    throw v0

    :cond_51
    return v0
.end method

.method public te()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    :goto_3
    const/16 v3, 0x40

    if-lt v2, v3, :cond_c

    invoke-static {}, Lcom/google/android/gms/internal/to;->tu()Lcom/google/android/gms/internal/to;

    move-result-object v0

    throw v0

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tk()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1c

    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    :cond_1c
    return-wide v0
.end method

.method public tf()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tk()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tk()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tk()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tk()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public tg()J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v12, 0xff

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tk()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tk()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tk()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tk()B

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tk()B

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tk()B

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tk()B

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->tk()B

    move-result v7

    int-to-long v8, v0

    and-long/2addr v8, v12

    int-to-long v0, v1

    and-long/2addr v0, v12

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v12

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v12

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v12

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v12

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v12

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v12

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public ti()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/th;->aCB:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/google/android/gms/internal/th;->aCz:I

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCB:I

    sub-int v0, v1, v0

    return v0

    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method public tj()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/th;->aCz:I

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCx:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public tk()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/th;->aCz:I

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCx:I

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/th;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCz:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/th;->aCz:I

    aget-byte v0, v0, v1

    return v0

    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/to;->ts()Lcom/google/android/gms/internal/to;

    move-result-object v0

    throw v0
.end method

.method public y(II)[B
    .registers 7

    const/4 v3, 0x0

    if-eqz p2, :cond_e

    new-array v0, p2, [B

    iget v1, p0, Lcom/google/android/gms/internal/th;->aCw:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/google/android/gms/internal/th;->buffer:[B

    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_e
    sget-object v0, Lcom/google/android/gms/internal/ts;->aDa:[B

    return-object v0
.end method

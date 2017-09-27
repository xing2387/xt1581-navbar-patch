.class public final Lcom/google/android/gms/internal/ti;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ti$a;
    }
.end annotation


# instance fields
.field private final aCF:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ti;->aCF:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private constructor <init>([BII)V
    .registers 5

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ti;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static B(II)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/ti;->hL(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ti;->hI(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static C(II)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/ti;->hL(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ti;->hJ(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static F(J)I
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ti;->I(J)I

    move-result v0

    return v0
.end method

.method public static G(J)I
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ti;->K(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ti;->I(J)I

    move-result v0

    return v0
.end method

.method public static I(J)I
    .registers 6

    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 v0, 0x2

    return v0

    :cond_14
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 v0, 0x3

    return v0

    :cond_1e
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    const/4 v0, 0x4

    return v0

    :cond_28
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    const/4 v0, 0x5

    return v0

    :cond_34
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    const/4 v0, 0x6

    return v0

    :cond_40
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_49

    const/4 v0, 0x7

    return v0

    :cond_49
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_53

    const/16 v0, 0x8

    return v0

    :cond_53
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5d

    const/16 v0, 0x9

    return v0

    :cond_5d
    const/16 v0, 0xa

    return v0
.end method

.method public static K(J)J
    .registers 6

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static X(Z)I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method private static a(Ljava/lang/CharSequence;)I
    .registers 9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_5
    if-lt v0, v2, :cond_e

    :cond_7
    move v1, v0

    move v0, v2

    :goto_9
    if-lt v1, v2, :cond_19

    :goto_b
    if-lt v0, v2, :cond_31

    return v0

    :cond_e
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x80

    if-ge v1, v3, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_19
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-lt v3, v4, :cond_27

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ti;->a(Ljava/lang/CharSequence;I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_b

    :cond_27
    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_9

    :cond_31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UTF-8 length does not fit in int: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    const-wide v6, 0x100000000L

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Ljava/lang/CharSequence;I)I
    .registers 7

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v1, 0x0

    move v0, p1

    :goto_6
    if-lt v0, v2, :cond_9

    return v1

    :cond_9
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-lt v3, v4, :cond_1b

    add-int/lit8 v1, v1, 0x2

    const v4, 0xd800

    if-le v4, v3, :cond_21

    :cond_18
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1b
    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v1, v3

    goto :goto_18

    :cond_21
    const v4, 0xdfff

    if-gt v3, v4, :cond_18

    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    const/high16 v4, 0x10000

    if-lt v3, v4, :cond_31

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unpaired surrogate at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Ljava/lang/CharSequence;[BII)I
    .registers 12

    const/4 v0, 0x0

    const/16 v7, 0x80

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int v4, p2, p3

    :goto_9
    if-lt v0, v3, :cond_13

    :cond_b
    if-eq v0, v3, :cond_26

    add-int v1, p2, v0

    move v2, v1

    :goto_10
    if-lt v0, v3, :cond_29

    return v2

    :cond_13
    add-int v1, v0, p2

    if-ge v1, v4, :cond_b

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ge v1, v7, :cond_b

    add-int v2, p2, v0

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_26
    add-int v0, p2, v3

    return v0

    :cond_29
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_65

    :cond_2f
    const/16 v1, 0x800

    if-lt v5, v1, :cond_71

    :cond_33
    const v1, 0xd800

    if-ge v5, v1, :cond_8a

    :cond_38
    add-int/lit8 v1, v4, -0x3

    if-le v2, v1, :cond_90

    :goto_3c
    add-int/lit8 v1, v4, -0x4

    if-le v2, v1, :cond_b1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed writing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " at index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    if-ge v2, v4, :cond_2f

    add-int/lit8 v1, v2, 0x1

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    :goto_6d
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_10

    :cond_71
    add-int/lit8 v1, v4, -0x2

    if-gt v2, v1, :cond_33

    add-int/lit8 v6, v2, 0x1

    ushr-int/lit8 v1, v5, 0x6

    or-int/lit16 v1, v1, 0x3c0

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    :goto_7f
    add-int/lit8 v1, v6, 0x1

    and-int/lit8 v2, v5, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v6

    goto :goto_6d

    :cond_8a
    const v1, 0xdfff

    if-lt v1, v5, :cond_38

    goto :goto_3c

    :cond_90
    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v6, v5, 0xc

    or-int/lit16 v6, v6, 0x1e0

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, p1, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, p1, v1

    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    goto :goto_6d

    :cond_b1
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v1, v6, :cond_d5

    :cond_b9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unpaired surrogate at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d5
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_b9

    invoke-static {v5, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v6, v5, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, p1, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, p1, v1

    add-int/lit8 v6, v2, 0x1

    ushr-int/lit8 v1, v5, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    goto/16 :goto_7f
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ti;->b(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    :goto_f
    return-void

    :cond_10
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_16
    :try_start_16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ti;->a(Ljava/lang/CharSequence;[BII)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_33
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_16 .. :try_end_33} :catch_34

    goto :goto_f

    :catch_34
    move-exception v0

    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/nio/BufferOverflowException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public static b(ID)I
    .registers 6

    invoke-static {p0}, Lcom/google/android/gms/internal/ti;->hL(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ti;->f(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILcom/google/android/gms/internal/tp;)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/ti;->hL(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/google/android/gms/internal/ti;->d(Lcom/google/android/gms/internal/tp;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(I[B)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/ti;->hL(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ti;->s([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b([BII)Lcom/google/android/gms/internal/ti;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ti;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ti;-><init>([BII)V

    return-object v0
.end method

.method private static b(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 8

    const/4 v0, 0x0

    const/16 v5, 0x80

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_7
    if-lt v0, v1, :cond_a

    return-void

    :cond_a
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-lt v2, v5, :cond_36

    const/16 v3, 0x800

    if-lt v2, v3, :cond_3b

    const v3, 0xd800

    if-ge v2, v3, :cond_4c

    :cond_19
    ushr-int/lit8 v3, v2, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_36
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_33

    :cond_3b
    ushr-int/lit8 v3, v2, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_33

    :cond_4c
    const v3, 0xdfff

    if-lt v3, v2, :cond_19

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v3, v4, :cond_75

    :cond_59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unpaired surrogate at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_75
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    ushr-int/lit8 v3, v2, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v3, v2, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_33
.end method

.method public static c(IF)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/ti;->hL(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ti;->e(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static c(ILcom/google/android/gms/internal/tp;)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/ti;->hL(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ti;->e(Lcom/google/android/gms/internal/tp;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static c(IZ)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/ti;->hL(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ti;->X(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(IJ)I
    .registers 6

    invoke-static {p0}, Lcom/google/android/gms/internal/ti;->hL(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ti;->F(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(Lcom/google/android/gms/internal/tp;)I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tp;->tA()I

    move-result v0

    return v0
.end method

.method public static dw(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ti;->a(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ti;->hN(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static e(F)I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public static e(IJ)I
    .registers 6

    invoke-static {p0}, Lcom/google/android/gms/internal/ti;->hL(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ti;->G(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static e(Lcom/google/android/gms/internal/tp;)I
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tp;->tA()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ti;->hN(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static f(D)I
    .registers 3

    const/16 v0, 0x8

    return v0
.end method

.method public static hI(I)I
    .registers 2

    if-gez p0, :cond_5

    const/16 v0, 0xa

    return v0

    :cond_5
    invoke-static {p0}, Lcom/google/android/gms/internal/ti;->hN(I)I

    move-result v0

    return v0
.end method

.method public static hJ(I)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ti;->hP(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ti;->hN(I)I

    move-result v0

    return v0
.end method

.method public static hL(I)I
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ts;->E(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ti;->hN(I)I

    move-result v0

    return v0
.end method

.method public static hN(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-eqz v0, :cond_14

    and-int/lit16 v0, p0, -0x4000

    if-eqz v0, :cond_16

    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-eqz v0, :cond_18

    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1a

    const/4 v0, 0x5

    return v0

    :cond_14
    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x2

    return v0

    :cond_18
    const/4 v0, 0x3

    return v0

    :cond_1a
    const/4 v0, 0x4

    return v0
.end method

.method public static hP(I)I
    .registers 3

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public static j(ILjava/lang/String;)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/ti;->hL(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ti;->dw(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static q([B)Lcom/google/android/gms/internal/ti;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ti;->b([BII)Lcom/google/android/gms/internal/ti;

    move-result-object v0

    return-object v0
.end method

.method public static s([B)I
    .registers 3

    array-length v0, p0

    invoke-static {v0}, Lcom/google/android/gms/internal/ti;->hN(I)I

    move-result v0

    array-length v1, p0

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public A(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ti;->D(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ti;->hH(I)V

    return-void
.end method

.method public D(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ts;->E(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hM(I)V

    return-void
.end method

.method public D(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ti;->H(J)V

    return-void
.end method

.method public E(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ti;->K(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ti;->H(J)V

    return-void
.end method

.method public H(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hK(I)V

    return-void

    :cond_e
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hK(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public J(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hK(I)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hK(I)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hK(I)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hK(I)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hK(I)V

    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hK(I)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hK(I)V

    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hK(I)V

    return-void
.end method

.method public W(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_7

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hK(I)V

    return-void

    :cond_7
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public a(ID)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ti;->D(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ti;->e(D)V

    return-void
.end method

.method public a(ILcom/google/android/gms/internal/tp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ti;->D(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ti;->c(Lcom/google/android/gms/internal/tp;)V

    return-void
.end method

.method public a(I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ti;->D(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ti;->r([B)V

    return-void
.end method

.method public b(B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->aCF:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->aCF:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/ti$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ti;->aCF:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ti;->aCF:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ti$a;-><init>(II)V

    throw v0
.end method

.method public b(IF)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ti;->D(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ti;->d(F)V

    return-void
.end method

.method public b(IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ti;->D(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ti;->D(J)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ti;->D(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ti;->dv(Ljava/lang/String;)V

    return-void
.end method

.method public b(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ti;->D(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ti;->W(Z)V

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/tp;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/tp;->a(Lcom/google/android/gms/internal/ti;)V

    return-void
.end method

.method public c(IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ti;->D(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ti;->E(J)V

    return-void
.end method

.method public c(Lcom/google/android/gms/internal/tp;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tp;->tz()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hM(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/tp;->a(Lcom/google/android/gms/internal/ti;)V

    return-void
.end method

.method public c([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->aCF:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p3, :cond_1a

    new-instance v0, Lcom/google/android/gms/internal/ti$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ti;->aCF:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ti;->aCF:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ti$a;-><init>(II)V

    throw v0

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->aCF:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public d(F)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hO(I)V

    return-void
.end method

.method public dv(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ti;->hN(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ti;->hN(I)I

    move-result v1

    if-eq v0, v1, :cond_21

    invoke-static {p1}, Lcom/google/android/gms/internal/ti;->a(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hM(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->aCF:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ti;->a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    :goto_20
    return-void

    :cond_21
    iget-object v1, p0, Lcom/google/android/gms/internal/ti;->aCF:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ti;->aCF:Ljava/nio/ByteBuffer;

    add-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/google/android/gms/internal/ti;->aCF:Ljava/nio/ByteBuffer;

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ti;->a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ti;->aCF:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ti;->aCF:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v1, v2, v1

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hM(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->aCF:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_4a
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_4a} :catch_4b

    goto :goto_20

    :catch_4b
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/ti$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ti;->aCF:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ti;->aCF:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ti$a;-><init>(II)V

    throw v0
.end method

.method public e(D)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ti;->J(J)V

    return-void
.end method

.method public hG(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_7

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ti;->H(J)V

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ti;->hM(I)V

    goto :goto_6
.end method

.method public hH(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ti;->hP(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hM(I)V

    return-void
.end method

.method public hK(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->b(B)V

    return-void
.end method

.method public hM(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_e

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hK(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_e
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ti;->hK(I)V

    return-void
.end method

.method public hO(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hK(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hK(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hK(I)V

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hK(I)V

    return-void
.end method

.method public r([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ti;->hM(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ti;->t([B)V

    return-void
.end method

.method public t([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ti;->c([BII)V

    return-void
.end method

.method public tl()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->aCF:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public tm()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ti;->tl()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public z(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ti;->D(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ti;->hG(I)V

    return-void
.end method

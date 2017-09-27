.class Lcom/google/android/gms/internal/tl;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final aCJ:Lcom/google/android/gms/internal/tm;


# instance fields
.field private aCK:Z

.field private aCL:[I

.field private aCM:[Lcom/google/android/gms/internal/tm;

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/tm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/tm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/tl;->aCJ:Lcom/google/android/gms/internal/tm;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/tl;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/tl;->aCK:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/tl;->idealIntArraySize(I)I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/tl;->aCL:[I

    new-array v0, v0, [Lcom/google/android/gms/internal/tm;

    iput-object v0, p0, Lcom/google/android/gms/internal/tl;->aCM:[Lcom/google/android/gms/internal/tm;

    iput v2, p0, Lcom/google/android/gms/internal/tl;->mSize:I

    return-void
.end method

.method private a([I[II)Z
    .registers 8

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    if-lt v0, p3, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    aget v2, p1, v0

    aget v3, p2, v0

    if-ne v2, v3, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_f
    return v1
.end method

.method private a([Lcom/google/android/gms/internal/tm;[Lcom/google/android/gms/internal/tm;I)Z
    .registers 8

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    if-lt v0, p3, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/tm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    return v1
.end method

.method private gc()V
    .registers 9

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/tl;->mSize:I

    iget-object v4, p0, Lcom/google/android/gms/internal/tl;->aCL:[I

    iget-object v5, p0, Lcom/google/android/gms/internal/tl;->aCM:[Lcom/google/android/gms/internal/tm;

    move v1, v2

    move v0, v2

    :goto_9
    if-lt v1, v3, :cond_10

    iput-boolean v2, p0, Lcom/google/android/gms/internal/tl;->aCK:Z

    iput v0, p0, Lcom/google/android/gms/internal/tl;->mSize:I

    return-void

    :cond_10
    aget-object v6, v5, v1

    sget-object v7, Lcom/google/android/gms/internal/tl;->aCJ:Lcom/google/android/gms/internal/tm;

    if-ne v6, v7, :cond_19

    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    if-ne v1, v0, :cond_1e

    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_1e
    aget v7, v4, v1

    aput v7, v4, v0

    aput-object v6, v5, v0

    const/4 v6, 0x0

    aput-object v6, v5, v1

    goto :goto_1b
.end method

.method private hS(I)I
    .registers 6

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/tl;->mSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-le v1, v0, :cond_a

    xor-int/lit8 v0, v1, -0x1

    return v0

    :cond_a
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/tl;->aCL:[I

    aget v3, v3, v2

    if-lt v3, p1, :cond_17

    if-gt v3, p1, :cond_1a

    return v2

    :cond_17
    add-int/lit8 v1, v2, 0x1

    goto :goto_5

    :cond_1a
    add-int/lit8 v0, v2, -0x1

    goto :goto_5
.end method

.method private idealByteArraySize(I)I
    .registers 5

    const/4 v2, 0x1

    const/4 v0, 0x4

    :goto_2
    const/16 v1, 0x20

    if-lt v0, v1, :cond_7

    return p1

    :cond_7
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-le p1, v1, :cond_10

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    shl-int v0, v2, v0

    add-int/lit8 v0, v0, -0xc

    return v0
.end method

.method private idealIntArraySize(I)I
    .registers 3

    mul-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/tl;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public a(ILcom/google/android/gms/internal/tm;)V
    .registers 9

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/tl;->hS(I)I

    move-result v0

    if-gez v0, :cond_2c

    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/google/android/gms/internal/tl;->mSize:I

    if-lt v0, v1, :cond_31

    :cond_d
    iget-boolean v1, p0, Lcom/google/android/gms/internal/tl;->aCK:Z

    if-nez v1, :cond_42

    :cond_11
    :goto_11
    iget v1, p0, Lcom/google/android/gms/internal/tl;->mSize:I

    iget-object v2, p0, Lcom/google/android/gms/internal/tl;->aCL:[I

    array-length v2, v2

    if-ge v1, v2, :cond_53

    :goto_18
    iget v1, p0, Lcom/google/android/gms/internal/tl;->mSize:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_74

    :goto_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/tl;->aCL:[I

    aput p1, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/tl;->aCM:[Lcom/google/android/gms/internal/tm;

    aput-object p2, v1, v0

    iget v0, p0, Lcom/google/android/gms/internal/tl;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/tl;->mSize:I

    :goto_2b
    return-void

    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/tl;->aCM:[Lcom/google/android/gms/internal/tm;

    aput-object p2, v1, v0

    goto :goto_2b

    :cond_31
    iget-object v1, p0, Lcom/google/android/gms/internal/tl;->aCM:[Lcom/google/android/gms/internal/tm;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/android/gms/internal/tl;->aCJ:Lcom/google/android/gms/internal/tm;

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/tl;->aCL:[I

    aput p1, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/tl;->aCM:[Lcom/google/android/gms/internal/tm;

    aput-object p2, v1, v0

    return-void

    :cond_42
    iget v1, p0, Lcom/google/android/gms/internal/tl;->mSize:I

    iget-object v2, p0, Lcom/google/android/gms/internal/tl;->aCL:[I

    array-length v2, v2

    if-lt v1, v2, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/internal/tl;->gc()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/tl;->hS(I)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_53
    iget v1, p0, Lcom/google/android/gms/internal/tl;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/tl;->idealIntArraySize(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v1, v1, [Lcom/google/android/gms/internal/tm;

    iget-object v3, p0, Lcom/google/android/gms/internal/tl;->aCL:[I

    iget-object v4, p0, Lcom/google/android/gms/internal/tl;->aCL:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/tl;->aCM:[Lcom/google/android/gms/internal/tm;

    iget-object v4, p0, Lcom/google/android/gms/internal/tl;->aCM:[Lcom/google/android/gms/internal/tm;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/gms/internal/tl;->aCL:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/tl;->aCM:[Lcom/google/android/gms/internal/tm;

    goto :goto_18

    :cond_74
    iget-object v1, p0, Lcom/google/android/gms/internal/tl;->aCL:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/tl;->aCL:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/tl;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/tl;->aCM:[Lcom/google/android/gms/internal/tm;

    iget-object v2, p0, Lcom/google/android/gms/internal/tl;->aCM:[Lcom/google/android/gms/internal/tm;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/tl;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1d
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tl;->tq()Lcom/google/android/gms/internal/tl;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p0, :cond_22

    instance-of v2, p1, Lcom/google/android/gms/internal/tl;

    if-eqz v2, :cond_23

    check-cast p1, Lcom/google/android/gms/internal/tl;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tl;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tl;->size()I

    move-result v3

    if-ne v2, v3, :cond_24

    iget-object v2, p0, Lcom/google/android/gms/internal/tl;->aCL:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/tl;->aCL:[I

    iget v4, p0, Lcom/google/android/gms/internal/tl;->mSize:I

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gms/internal/tl;->a([I[II)Z

    move-result v2

    if-nez v2, :cond_25

    :goto_20
    move v0, v1

    :cond_21
    return v0

    :cond_22
    return v0

    :cond_23
    return v1

    :cond_24
    return v1

    :cond_25
    iget-object v2, p0, Lcom/google/android/gms/internal/tl;->aCM:[Lcom/google/android/gms/internal/tm;

    iget-object v3, p1, Lcom/google/android/gms/internal/tl;->aCM:[Lcom/google/android/gms/internal/tm;

    iget v4, p0, Lcom/google/android/gms/internal/tl;->mSize:I

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gms/internal/tl;->a([Lcom/google/android/gms/internal/tm;[Lcom/google/android/gms/internal/tm;I)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_20
.end method

.method public hQ(I)Lcom/google/android/gms/internal/tm;
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/tl;->hS(I)I

    move-result v0

    if-gez v0, :cond_8

    :cond_6
    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/tl;->aCM:[Lcom/google/android/gms/internal/tm;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/android/gms/internal/tl;->aCJ:Lcom/google/android/gms/internal/tm;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/tl;->aCM:[Lcom/google/android/gms/internal/tm;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public hR(I)Lcom/google/android/gms/internal/tm;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/tl;->aCK:Z

    if-nez v0, :cond_9

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/tl;->aCM:[Lcom/google/android/gms/internal/tm;

    aget-object v0, v0, p1

    return-object v0

    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/tl;->gc()V

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/tl;->aCK:Z

    if-nez v1, :cond_c

    :goto_5
    const/16 v1, 0x11

    :goto_7
    iget v2, p0, Lcom/google/android/gms/internal/tl;->mSize:I

    if-lt v0, v2, :cond_10

    return v1

    :cond_c
    invoke-direct {p0}, Lcom/google/android/gms/internal/tl;->gc()V

    goto :goto_5

    :cond_10
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/tl;->aCL:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/tl;->aCM:[Lcom/google/android/gms/internal/tm;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/tm;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public isEmpty()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tl;->size()I

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public size()I
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/tl;->aCK:Z

    if-nez v0, :cond_7

    :goto_4
    iget v0, p0, Lcom/google/android/gms/internal/tl;->mSize:I

    return v0

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/tl;->gc()V

    goto :goto_4
.end method

.method public final tq()Lcom/google/android/gms/internal/tl;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tl;->size()I

    move-result v1

    new-instance v2, Lcom/google/android/gms/internal/tl;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/tl;-><init>(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/tl;->aCL:[I

    iget-object v4, v2, Lcom/google/android/gms/internal/tl;->aCL:[I

    invoke-static {v3, v0, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_11
    if-lt v0, v1, :cond_16

    iput v1, v2, Lcom/google/android/gms/internal/tl;->mSize:I

    return-object v2

    :cond_16
    iget-object v3, p0, Lcom/google/android/gms/internal/tl;->aCM:[Lcom/google/android/gms/internal/tm;

    aget-object v3, v3, v0

    if-nez v3, :cond_1f

    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1f
    iget-object v3, v2, Lcom/google/android/gms/internal/tl;->aCM:[Lcom/google/android/gms/internal/tm;

    iget-object v4, p0, Lcom/google/android/gms/internal/tl;->aCM:[Lcom/google/android/gms/internal/tm;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/tm;->tr()Lcom/google/android/gms/internal/tm;

    move-result-object v4

    aput-object v4, v3, v0

    goto :goto_1c
.end method

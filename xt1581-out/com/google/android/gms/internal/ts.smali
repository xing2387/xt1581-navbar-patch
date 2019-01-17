.class public final Lcom/google/android/gms/internal/ts;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final aCT:[I

.field public static final aCU:[J

.field public static final aCV:[F

.field public static final aCW:[D

.field public static final aCX:[Z

.field public static final aCY:[Ljava/lang/String;

.field public static final aCZ:[[B

.field public static final aDa:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/ts;->aCT:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/ts;->aCU:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/ts;->aCV:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/ts;->aCW:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/ts;->aCX:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/ts;->aCY:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/ts;->aCZ:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/ts;->aDa:[B

    return-void
.end method

.method static E(II)I
    .registers 3

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static final b(Lcom/google/android/gms/internal/th;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/th;->hz(I)Z

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/th;->sW()I

    move-result v2

    if-eq v2, p1, :cond_12

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/th;->hD(I)V

    return v0

    :cond_12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/th;->hz(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method static hT(I)I
    .registers 2

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static hU(I)I
    .registers 2

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

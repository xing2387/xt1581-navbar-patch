.class public abstract Lcom/google/android/gms/internal/tp;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field protected volatile aCR:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/tp;->aCR:I

    return-void
.end method

.method public static final a(Lcom/google/android/gms/internal/tp;[B)Lcom/google/android/gms/internal/tp;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/tp;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/to;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/tp;->b(Lcom/google/android/gms/internal/tp;[BII)Lcom/google/android/gms/internal/tp;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Lcom/google/android/gms/internal/tp;[BII)V
    .registers 7

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ti;->b([BII)Lcom/google/android/gms/internal/ti;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/tp;->a(Lcom/google/android/gms/internal/ti;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ti;->tm()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final b(Lcom/google/android/gms/internal/tp;[BII)Lcom/google/android/gms/internal/tp;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/tp;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/to;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/th;->a([BII)Lcom/google/android/gms/internal/th;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/tp;->b(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/th;->hy(I)V
    :try_end_b
    .catch Lcom/google/android/gms/internal/to; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_e

    return-object p0

    :catch_c
    move-exception v0

    throw v0

    :catch_e
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final f(Lcom/google/android/gms/internal/tp;)[B
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tp;->tA()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/tp;->a(Lcom/google/android/gms/internal/tp;[BII)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ti;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public abstract b(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tp;->tp()Lcom/google/android/gms/internal/tp;

    move-result-object v0

    return-object v0
.end method

.method public tA()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tp;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/tp;->aCR:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/tq;->g(Lcom/google/android/gms/internal/tp;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tp()Lcom/google/android/gms/internal/tp;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/tp;

    return-object v0
.end method

.method public tz()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/tp;->aCR:I

    if-ltz v0, :cond_7

    :goto_4
    iget v0, p0, Lcom/google/android/gms/internal/tp;->aCR:I

    return v0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/tp;->tA()I

    goto :goto_4
.end method

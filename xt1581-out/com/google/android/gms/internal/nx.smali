.class public final Lcom/google/android/gms/internal/nx;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/nx;->a(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v2, p3, [B

    const-wide/16 v0, 0x0

    :goto_4
    const/4 v3, 0x0

    :try_start_5
    array-length v4, v2

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_10

    if-nez p2, :cond_1b

    :goto_f
    return-wide v0

    :cond_10
    int-to-long v4, v3

    add-long/2addr v0, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    goto :goto_4

    :catchall_17
    move-exception v0

    if-nez p2, :cond_22

    :goto_1a
    throw v0

    :cond_1b
    invoke-static {p0}, Lcom/google/android/gms/internal/nx;->b(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/nx;->b(Ljava/io/Closeable;)V

    goto :goto_f

    :cond_22
    invoke-static {p0}, Lcom/google/android/gms/internal/nx;->b(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/nx;->b(Ljava/io/Closeable;)V

    goto :goto_1a
.end method

.method public static a(Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method public static a(Ljava/io/InputStream;Z)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/nx;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/io/Closeable;)V
    .registers 2

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method public static d(Ljava/io/InputStream;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/nx;->a(Ljava/io/InputStream;Z)[B

    move-result-object v0

    return-object v0
.end method

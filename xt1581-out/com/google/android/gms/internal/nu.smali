.class public final Lcom/google/android/gms/internal/nu;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public static b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    if-nez v0, :cond_12

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    return-void

    :cond_12
    iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    array-length v0, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {p0, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_b
.end method

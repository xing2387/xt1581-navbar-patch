.class public final Lcom/google/android/gms/internal/tt$b;
.super Lcom/google/android/gms/internal/tj;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/tj",
        "<",
        "Lcom/google/android/gms/internal/tt$b;",
        ">;"
    }
.end annotation


# instance fields
.field public aDe:I

.field public aDf:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/tj;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tt$b;->tC()Lcom/google/android/gms/internal/tt$b;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ti;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/tt$b;->aDe:I

    if-nez v0, :cond_1e

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$b;->aDf:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    :goto_f
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$b;->version:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :goto_1a
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/tj;->a(Lcom/google/android/gms/internal/ti;)V

    return-void

    :cond_1e
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/tt$b;->aDe:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->z(II)V

    goto :goto_4

    :cond_25
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$b;->aDf:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->b(ILjava/lang/String;)V

    goto :goto_f

    :cond_2c
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$b;->version:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->b(ILjava/lang/String;)V

    goto :goto_1a
.end method

.method public synthetic b(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tp;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/tt$b;->z(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tt$b;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/tj;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/tt$b;->aDe:I

    if-nez v1, :cond_1f

    :goto_8
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$b;->aDf:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    :goto_13
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$b;->version:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    :goto_1e
    return v0

    :cond_1f
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/tt$b;->aDe:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->B(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_8

    :cond_28
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$b;->aDf:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_13

    :cond_31
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$b;->version:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1e
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v2, 0x0

    if-eq p1, p0, :cond_30

    instance-of v0, p1, Lcom/google/android/gms/internal/tt$b;

    if-eqz v0, :cond_32

    check-cast p1, Lcom/google/android/gms/internal/tt$b;

    iget v0, p0, Lcom/google/android/gms/internal/tt$b;->aDe:I

    iget v1, p1, Lcom/google/android/gms/internal/tt$b;->aDe:I

    if-ne v0, v1, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$b;->aDf:Ljava/lang/String;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$b;->aDf:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$b;->aDf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$b;->version:Ljava/lang/String;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$b;->version:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$b;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_2b
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/tt$b;->a(Lcom/google/android/gms/internal/tj;)Z

    move-result v0

    return v0

    :cond_30
    const/4 v0, 0x1

    return v0

    :cond_32
    return v2

    :cond_33
    return v2

    :cond_34
    iget-object v0, p1, Lcom/google/android/gms/internal/tt$b;->aDf:Ljava/lang/String;

    if-eqz v0, :cond_1d

    return v2

    :cond_39
    return v2

    :cond_3a
    iget-object v0, p1, Lcom/google/android/gms/internal/tt$b;->version:Ljava/lang/String;

    if-eqz v0, :cond_2b

    return v2

    :cond_3f
    return v2
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/tt$b;->aDe:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$b;->aDf:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$b;->aDf:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$b;->version:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$b;->version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tt$b;->tn()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_27
    move v0, v1

    goto :goto_11
.end method

.method public tC()Lcom/google/android/gms/internal/tt$b;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/tt$b;->aDe:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$b;->aDf:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$b;->version:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$b;->aCG:Lcom/google/android/gms/internal/tl;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/tt$b;->aCR:I

    return-object p0
.end method

.method public z(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tt$b;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->sW()I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/tt$b;->a(Lcom/google/android/gms/internal/th;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->sZ()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    goto :goto_0

    :pswitch_17
    iput v0, p0, Lcom/google/android/gms/internal/tt$b;->aDe:I

    goto :goto_0

    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$b;->aDf:Ljava/lang/String;

    goto :goto_0

    :sswitch_21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$b;->version:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_21
    .end sparse-switch

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

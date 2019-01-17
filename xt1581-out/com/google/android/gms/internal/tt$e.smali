.class public final Lcom/google/android/gms/internal/tt$e;
.super Lcom/google/android/gms/internal/tj;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/tj",
        "<",
        "Lcom/google/android/gms/internal/tt$e;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile aDv:[Lcom/google/android/gms/internal/tt$e;


# instance fields
.field public fv:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/tj;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tt$e;->tG()Lcom/google/android/gms/internal/tt$e;

    return-void
.end method

.method public static tF()[Lcom/google/android/gms/internal/tt$e;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/tt$e;->aDv:[Lcom/google/android/gms/internal/tt$e;

    if-eqz v0, :cond_7

    :goto_4
    sget-object v0, Lcom/google/android/gms/internal/tt$e;->aDv:[Lcom/google/android/gms/internal/tt$e;

    return-object v0

    :cond_7
    sget-object v1, Lcom/google/android/gms/internal/tn;->aCQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/tt$e;->aDv:[Lcom/google/android/gms/internal/tt$e;

    if-eqz v0, :cond_13

    :goto_e
    monitor-exit v1

    goto :goto_4

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_10

    throw v0

    :cond_13
    const/4 v0, 0x0

    :try_start_14
    new-array v0, v0, [Lcom/google/android/gms/internal/tt$e;

    sput-object v0, Lcom/google/android/gms/internal/tt$e;->aDv:[Lcom/google/android/gms/internal/tt$e;
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_10

    goto :goto_e
.end method


# virtual methods
.method public C(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tt$e;
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

    sparse-switch v0, :sswitch_data_1e

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/tt$e;->a(Lcom/google/android/gms/internal/th;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$e;->fv:Ljava/lang/String;

    goto :goto_0

    :sswitch_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$e;->value:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_f
        0x12 -> :sswitch_16
    .end sparse-switch
.end method

.method public a(Lcom/google/android/gms/internal/ti;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$e;->fv:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :goto_b
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$e;->value:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    :goto_16
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/tj;->a(Lcom/google/android/gms/internal/ti;)V

    return-void

    :cond_1a
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$e;->fv:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->b(ILjava/lang/String;)V

    goto :goto_b

    :cond_21
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$e;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->b(ILjava/lang/String;)V

    goto :goto_16
.end method

.method public synthetic b(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tp;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/tt$e;->C(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tt$e;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/tj;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$e;->fv:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :goto_f
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$e;->value:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    :goto_1a
    return v0

    :cond_1b
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$e;->fv:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_f

    :cond_24
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$e;->value:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v2, 0x0

    if-eq p1, p0, :cond_2a

    instance-of v0, p1, Lcom/google/android/gms/internal/tt$e;

    if-eqz v0, :cond_2c

    check-cast p1, Lcom/google/android/gms/internal/tt$e;

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$e;->fv:Ljava/lang/String;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$e;->fv:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$e;->fv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$e;->value:Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$e;->value:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$e;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_25
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/tt$e;->a(Lcom/google/android/gms/internal/tj;)Z

    move-result v0

    return v0

    :cond_2a
    const/4 v0, 0x1

    return v0

    :cond_2c
    return v2

    :cond_2d
    iget-object v0, p1, Lcom/google/android/gms/internal/tt$e;->fv:Ljava/lang/String;

    if-eqz v0, :cond_17

    return v2

    :cond_32
    return v2

    :cond_33
    iget-object v0, p1, Lcom/google/android/gms/internal/tt$e;->value:Ljava/lang/String;

    if-eqz v0, :cond_25

    return v2

    :cond_38
    return v2
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$e;->fv:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$e;->fv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$e;->value:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$e;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tt$e;->tn()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_22
    move v0, v1

    goto :goto_b
.end method

.method public tG()Lcom/google/android/gms/internal/tt$e;
    .registers 2

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$e;->fv:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$e;->value:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$e;->aCG:Lcom/google/android/gms/internal/tl;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/tt$e;->aCR:I

    return-object p0
.end method

.class public final Lcom/google/android/gms/internal/tt$d;
.super Lcom/google/android/gms/internal/tj;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/tj",
        "<",
        "Lcom/google/android/gms/internal/tt$d;",
        ">;"
    }
.end annotation


# instance fields
.field public aDi:J

.field public aDj:I

.field public aDk:I

.field public aDl:Z

.field public aDm:[Lcom/google/android/gms/internal/tt$e;

.field public aDn:Lcom/google/android/gms/internal/tt$b;

.field public aDo:[B

.field public aDp:[B

.field public aDq:[B

.field public aDr:Lcom/google/android/gms/internal/tt$a;

.field public aDs:Ljava/lang/String;

.field public aDt:J

.field public aDu:Lcom/google/android/gms/internal/tt$c;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/tj;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tt$d;->tE()Lcom/google/android/gms/internal/tt$d;

    return-void
.end method


# virtual methods
.method public B(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tt$d;
    .registers 6
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

    sparse-switch v0, :sswitch_data_d4

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/tt$d;->a(Lcom/google/android/gms/internal/th;I)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :sswitch_f
    return-object p0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->sY()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDi:J

    goto :goto_1

    :sswitch_17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    goto :goto_1

    :sswitch_1e
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ts;->b(Lcom/google/android/gms/internal/th;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    array-length v0, v0

    :goto_2b
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/tt$e;

    if-nez v0, :cond_46

    :goto_30
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_4c

    new-instance v3, Lcom/google/android/gms/internal/tt$e;

    invoke-direct {v3}, Lcom/google/android/gms/internal/tt$e;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/th;->a(Lcom/google/android/gms/internal/tp;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    goto :goto_1

    :cond_44
    move v0, v1

    goto :goto_2b

    :cond_46
    iget-object v3, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_30

    :cond_4c
    new-instance v3, Lcom/google/android/gms/internal/tt$e;

    invoke-direct {v3}, Lcom/google/android/gms/internal/tt$e;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/th;->a(Lcom/google/android/gms/internal/tp;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->sW()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDo:[B

    goto :goto_1

    :sswitch_65
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    if-eqz v0, :cond_6f

    :goto_69
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/th;->a(Lcom/google/android/gms/internal/tp;)V

    goto :goto_1

    :cond_6f
    new-instance v0, Lcom/google/android/gms/internal/tt$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/tt$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    goto :goto_69

    :sswitch_77
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDp:[B

    goto :goto_1

    :sswitch_7e
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    if-eqz v0, :cond_89

    :goto_82
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/th;->a(Lcom/google/android/gms/internal/tp;)V

    goto/16 :goto_1

    :cond_89
    new-instance v0, Lcom/google/android/gms/internal/tt$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/tt$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    goto :goto_82

    :sswitch_91
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->ta()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/tt$d;->aDl:Z

    goto/16 :goto_1

    :sswitch_99
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->sZ()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/tt$d;->aDj:I

    goto/16 :goto_1

    :sswitch_a1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->sZ()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/tt$d;->aDk:I

    goto/16 :goto_1

    :sswitch_a9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDq:[B

    goto/16 :goto_1

    :sswitch_b1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_b9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->tc()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDt:J

    goto/16 :goto_1

    :sswitch_c1
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    if-eqz v0, :cond_cc

    :goto_c5
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/th;->a(Lcom/google/android/gms/internal/tp;)V

    goto/16 :goto_1

    :cond_cc
    new-instance v0, Lcom/google/android/gms/internal/tt$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/tt$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    goto :goto_c5

    :sswitch_data_d4
    .sparse-switch
        0x0 -> :sswitch_f
        0x8 -> :sswitch_10
        0x12 -> :sswitch_17
        0x1a -> :sswitch_1e
        0x32 -> :sswitch_5e
        0x3a -> :sswitch_65
        0x42 -> :sswitch_77
        0x4a -> :sswitch_7e
        0x50 -> :sswitch_91
        0x58 -> :sswitch_99
        0x60 -> :sswitch_a1
        0x6a -> :sswitch_a9
        0x72 -> :sswitch_b1
        0x78 -> :sswitch_b9
        0x82 -> :sswitch_c1
    .end sparse-switch
.end method

.method public a(Lcom/google/android/gms/internal/ti;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDi:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDi:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ti;->b(IJ)V

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    :goto_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    if-nez v1, :cond_7a

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDo:[B

    sget-object v1, Lcom/google/android/gms/internal/ts;->aDa:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_92

    :goto_28
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    if-nez v0, :cond_99

    :goto_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDp:[B

    sget-object v1, Lcom/google/android/gms/internal/ts;->aDa:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_a0

    :goto_36
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    if-nez v0, :cond_a8

    :goto_3a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/tt$d;->aDl:Z

    if-nez v0, :cond_b0

    :goto_3e
    iget v0, p0, Lcom/google/android/gms/internal/tt$d;->aDj:I

    if-nez v0, :cond_b8

    :goto_42
    iget v0, p0, Lcom/google/android/gms/internal/tt$d;->aDk:I

    if-nez v0, :cond_c0

    :goto_46
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDq:[B

    sget-object v1, Lcom/google/android/gms/internal/ts;->aDa:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_c9

    :goto_50
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    :goto_5b
    iget-wide v0, p0, Lcom/google/android/gms/internal/tt$d;->aDt:J

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6b

    const/16 v0, 0xf

    iget-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDt:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/ti;->c(IJ)V

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    if-nez v0, :cond_d9

    :goto_6f
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/tj;->a(Lcom/google/android/gms/internal/ti;)V

    return-void

    :cond_73
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ti;->b(ILjava/lang/String;)V

    goto :goto_1a

    :cond_7a
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    array-length v1, v1

    if-lez v1, :cond_1e

    :goto_7f
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    array-length v1, v1

    if-ge v0, v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    aget-object v1, v1, v0

    if-nez v1, :cond_8d

    :goto_8a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    :cond_8d
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ti;->a(ILcom/google/android/gms/internal/tp;)V

    goto :goto_8a

    :cond_92
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDo:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->a(I[B)V

    goto :goto_28

    :cond_99
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->a(ILcom/google/android/gms/internal/tp;)V

    goto :goto_2c

    :cond_a0
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDp:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->a(I[B)V

    goto :goto_36

    :cond_a8
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->a(ILcom/google/android/gms/internal/tp;)V

    goto :goto_3a

    :cond_b0
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/android/gms/internal/tt$d;->aDl:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->b(IZ)V

    goto :goto_3e

    :cond_b8
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/android/gms/internal/tt$d;->aDj:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->z(II)V

    goto :goto_42

    :cond_c0
    const/16 v0, 0xc

    iget v1, p0, Lcom/google/android/gms/internal/tt$d;->aDk:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->z(II)V

    goto/16 :goto_46

    :cond_c9
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDq:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->a(I[B)V

    goto :goto_50

    :cond_d1
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->b(ILjava/lang/String;)V

    goto :goto_5b

    :cond_d9
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->a(ILcom/google/android/gms/internal/tp;)V

    goto :goto_6f
.end method

.method public synthetic b(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tp;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/tt$d;->B(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tt$d;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .registers 8

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/tj;->c()I

    move-result v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDi:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/internal/tt$d;->aDi:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/ti;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_15
    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    :goto_20
    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    if-nez v2, :cond_81

    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDo:[B

    sget-object v2, Lcom/google/android/gms/internal/ts;->aDa:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_a0

    :goto_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    if-nez v1, :cond_a9

    :goto_32
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDp:[B

    sget-object v2, Lcom/google/android/gms/internal/ts;->aDa:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_b2

    :goto_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    if-nez v1, :cond_bc

    :goto_40
    iget-boolean v1, p0, Lcom/google/android/gms/internal/tt$d;->aDl:Z

    if-nez v1, :cond_c7

    :goto_44
    iget v1, p0, Lcom/google/android/gms/internal/tt$d;->aDj:I

    if-nez v1, :cond_d2

    :goto_48
    iget v1, p0, Lcom/google/android/gms/internal/tt$d;->aDk:I

    if-nez v1, :cond_dd

    :goto_4c
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDq:[B

    sget-object v2, Lcom/google/android/gms/internal/ts;->aDa:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_e8

    :goto_56
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f3

    :goto_61
    iget-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDt:J

    const-wide/32 v4, 0x2bf20

    cmp-long v1, v2, v4

    if-eqz v1, :cond_73

    const/16 v1, 0xf

    iget-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDt:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ti;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_73
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    if-nez v1, :cond_fe

    :goto_77
    return v0

    :cond_78
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ti;->j(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_20

    :cond_81
    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    array-length v2, v2

    if-lez v2, :cond_24

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_89
    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    array-length v2, v2

    if-lt v0, v2, :cond_90

    move v0, v1

    goto :goto_24

    :cond_90
    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    aget-object v2, v2, v0

    if-nez v2, :cond_99

    :goto_96
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    :cond_99
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ti;->c(ILcom/google/android/gms/internal/tp;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_96

    :cond_a0
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDo:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2e

    :cond_a9
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->c(ILcom/google/android/gms/internal/tp;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_32

    :cond_b2
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDp:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3c

    :cond_bc
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->c(ILcom/google/android/gms/internal/tp;)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_40

    :cond_c7
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/internal/tt$d;->aDl:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->c(IZ)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_44

    :cond_d2
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/gms/internal/tt$d;->aDj:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->B(II)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_48

    :cond_dd
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/gms/internal/tt$d;->aDk:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->B(II)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_4c

    :cond_e8
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDq:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_56

    :cond_f3
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_61

    :cond_fe
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->c(ILcom/google/android/gms/internal/tp;)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_77
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x0

    if-eq p1, p0, :cond_12

    instance-of v0, p1, Lcom/google/android/gms/internal/tt$d;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/google/android/gms/internal/tt$d;

    iget-wide v0, p0, Lcom/google/android/gms/internal/tt$d;->aDi:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/tt$d;->aDi:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    return v4

    :cond_12
    const/4 v0, 0x1

    return v0

    :cond_14
    return v4

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    :cond_23
    iget v0, p0, Lcom/google/android/gms/internal/tt$d;->aDj:I

    iget v1, p1, Lcom/google/android/gms/internal/tt$d;->aDj:I

    if-ne v0, v1, :cond_96

    iget v0, p0, Lcom/google/android/gms/internal/tt$d;->aDk:I

    iget v1, p1, Lcom/google/android/gms/internal/tt$d;->aDk:I

    if-ne v0, v1, :cond_97

    iget-boolean v0, p0, Lcom/google/android/gms/internal/tt$d;->aDl:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/tt$d;->aDl:Z

    if-ne v0, v1, :cond_98

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/tn;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/tt$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDo:[B

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$d;->aDo:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDp:[B

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$d;->aDp:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDq:[B

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$d;->aDq:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_a2

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/tt$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    :cond_79
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    :cond_87
    iget-wide v0, p0, Lcom/google/android/gms/internal/tt$d;->aDt:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/tt$d;->aDt:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_af

    return v4

    :cond_90
    iget-object v0, p1, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    if-eqz v0, :cond_23

    return v4

    :cond_95
    return v4

    :cond_96
    return v4

    :cond_97
    return v4

    :cond_98
    return v4

    :cond_99
    return v4

    :cond_9a
    iget-object v0, p1, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    if-eqz v0, :cond_4d

    return v4

    :cond_9f
    return v4

    :cond_a0
    return v4

    :cond_a1
    return v4

    :cond_a2
    return v4

    :cond_a3
    iget-object v0, p1, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    if-eqz v0, :cond_79

    return v4

    :cond_a8
    return v4

    :cond_a9
    iget-object v0, p1, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    if-eqz v0, :cond_87

    return v4

    :cond_ae
    return v4

    :cond_af
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/tt$c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    :cond_bd
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/tt$d;->a(Lcom/google/android/gms/internal/tj;)Z

    move-result v0

    return v0

    :cond_c2
    iget-object v0, p1, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    if-eqz v0, :cond_bd

    return v4

    :cond_c7
    return v4
.end method

.method public hashCode()I
    .registers 8

    const/16 v6, 0x20

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDi:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/tt$d;->aDi:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/tt$d;->aDj:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/tt$d;->aDk:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/tt$d;->aDl:Z

    if-nez v0, :cond_98

    const/16 v0, 0x4d5

    :goto_2b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    invoke-static {v2}, Lcom/google/android/gms/internal/tn;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tt$b;->hashCode()I

    move-result v0

    :goto_41
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDo:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDp:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDq:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tt$a;->hashCode()I

    move-result v0

    :goto_69
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_76
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDt:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/tt$d;->aDt:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    if-eqz v2, :cond_8d

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tt$c;->hashCode()I

    move-result v1

    :cond_8d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tt$d;->tn()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_96
    move v0, v1

    goto :goto_18

    :cond_98
    const/16 v0, 0x4cf

    goto :goto_2b

    :cond_9b
    move v0, v1

    goto :goto_41

    :cond_9d
    move v0, v1

    goto :goto_69

    :cond_9f
    move v0, v1

    goto :goto_76
.end method

.method public tE()Lcom/google/android/gms/internal/tt$d;
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/tt$d;->aDi:J

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/internal/tt$d;->aDj:I

    iput v3, p0, Lcom/google/android/gms/internal/tt$d;->aDk:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/tt$d;->aDl:Z

    invoke-static {}, Lcom/google/android/gms/internal/tt$e;->tF()[Lcom/google/android/gms/internal/tt$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    iput-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    sget-object v0, Lcom/google/android/gms/internal/ts;->aDa:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDo:[B

    sget-object v0, Lcom/google/android/gms/internal/ts;->aDa:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDp:[B

    sget-object v0, Lcom/google/android/gms/internal/ts;->aDa:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDq:[B

    iput-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/google/android/gms/internal/tt$d;->aDt:J

    iput-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    iput-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aCG:Lcom/google/android/gms/internal/tl;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/tt$d;->aCR:I

    return-object p0
.end method

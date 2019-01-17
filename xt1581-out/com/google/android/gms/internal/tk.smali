.class public Lcom/google/android/gms/internal/tk;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/tj",
        "<TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final aCH:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final aCI:Z

.field public final tag:I

.field protected final type:I


# direct methods
.method private constructor <init>(ILjava/lang/Class;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/tk;->type:I

    iput-object p2, p0, Lcom/google/android/gms/internal/tk;->aCH:Ljava/lang/Class;

    iput p3, p0, Lcom/google/android/gms/internal/tk;->tag:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/tk;->aCI:Z

    return-void
.end method

.method public static a(ILjava/lang/Class;I)Lcom/google/android/gms/internal/tk;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/google/android/gms/internal/tj",
            "<TM;>;T:",
            "Lcom/google/android/gms/internal/tp;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;I)",
            "Lcom/google/android/gms/internal/tk",
            "<TM;TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/tk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/tk;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method private p(Ljava/util/List;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/tr;",
            ">;)TT;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_26

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_39

    iget-object v1, p0, Lcom/google/android/gms/internal/tk;->aCH:Ljava/lang/Class;

    iget-object v4, p0, Lcom/google/android/gms/internal/tk;->aCH:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_23
    if-lt v2, v0, :cond_3b

    return-object v1

    :cond_26
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/tr;

    iget-object v4, v0, Lcom/google/android/gms/internal/tr;->aCS:[B

    array-length v4, v4

    if-nez v4, :cond_35

    :goto_31
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_35
    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/internal/tk;->a(Lcom/google/android/gms/internal/tr;Ljava/util/List;)V

    goto :goto_31

    :cond_39
    const/4 v0, 0x0

    return-object v0

    :cond_3b
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23
.end method

.method private q(Ljava/util/List;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/tr;",
            ">;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/tr;

    iget-object v1, p0, Lcom/google/android/gms/internal/tk;->aCH:Ljava/lang/Class;

    iget-object v0, v0, Lcom/google/android/gms/internal/tr;->aCS:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/th;->p([B)Lcom/google/android/gms/internal/th;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/tk;->x(Lcom/google/android/gms/internal/th;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method E(Ljava/lang/Object;)I
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/tk;->aCI:Z

    if-nez v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/tk;->G(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/tk;->F(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected F(Ljava/lang/Object;)I
    .registers 6

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    move v1, v0

    :goto_6
    if-lt v1, v2, :cond_9

    return v0

    :cond_9
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_12

    :goto_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_12
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/tk;->G(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_f
.end method

.method protected G(Ljava/lang/Object;)I
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/tk;->tag:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ts;->hU(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/tk;->type:I

    packed-switch v1, :pswitch_data_36

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/tk;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_27
    check-cast p1, Lcom/google/android/gms/internal/tp;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ti;->b(ILcom/google/android/gms/internal/tp;)I

    move-result v0

    return v0

    :pswitch_2e
    check-cast p1, Lcom/google/android/gms/internal/tp;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ti;->c(ILcom/google/android/gms/internal/tp;)I

    move-result v0

    return v0

    nop

    :pswitch_data_36
    .packed-switch 0xa
        :pswitch_27
        :pswitch_2e
    .end packed-switch
.end method

.method protected a(Lcom/google/android/gms/internal/tr;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/tr;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/tr;->aCS:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/th;->p([B)Lcom/google/android/gms/internal/th;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/tk;->x(Lcom/google/android/gms/internal/th;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Ljava/lang/Object;Lcom/google/android/gms/internal/ti;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/tk;->aCI:Z

    if-nez v0, :cond_8

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/tk;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/ti;)V

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/tk;->c(Ljava/lang/Object;Lcom/google/android/gms/internal/ti;)V

    goto :goto_7
.end method

.method protected b(Ljava/lang/Object;Lcom/google/android/gms/internal/ti;)V
    .registers 6

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/tk;->tag:I

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ti;->hM(I)V

    iget v0, p0, Lcom/google/android/gms/internal/tk;->type:I

    packed-switch v0, :pswitch_data_44

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/tk;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_26

    :catch_26
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_2d
    :try_start_2d
    check-cast p1, Lcom/google/android/gms/internal/tp;

    iget v0, p0, Lcom/google/android/gms/internal/tk;->tag:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ts;->hU(I)I

    move-result v0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ti;->b(Lcom/google/android/gms/internal/tp;)V

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ti;->D(II)V

    :goto_3c
    return-void

    :pswitch_3d
    check-cast p1, Lcom/google/android/gms/internal/tp;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ti;->c(Lcom/google/android/gms/internal/tp;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_42} :catch_26

    goto :goto_3c

    nop

    :pswitch_data_44
    .packed-switch 0xa
        :pswitch_2d
        :pswitch_3d
    .end packed-switch
.end method

.method protected c(Ljava/lang/Object;Lcom/google/android/gms/internal/ti;)V
    .registers 6

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_11

    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/internal/tk;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/ti;)V

    goto :goto_e
.end method

.method final o(Ljava/util/List;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/tr;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    iget-boolean v0, p0, Lcom/google/android/gms/internal/tk;->aCI:Z

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/tk;->q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    return-object v0

    :cond_d
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/tk;->p(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b
.end method

.method protected x(Lcom/google/android/gms/internal/th;)Ljava/lang/Object;
    .registers 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/tk;->aCI:Z

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/google/android/gms/internal/tk;->aCH:Ljava/lang/Class;

    move-object v1, v0

    :goto_7
    :try_start_7
    iget v0, p0, Lcom/google/android/gms/internal/tk;->type:I

    packed-switch v0, :pswitch_data_8a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/tk;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_28
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_28} :catch_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_28} :catch_65
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_28} :catch_80

    :catch_28
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error creating instance of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/internal/tk;->aCH:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    goto :goto_7

    :pswitch_4b
    :try_start_4b
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/tp;

    iget v2, p0, Lcom/google/android/gms/internal/tk;->tag:I

    invoke-static {v2}, Lcom/google/android/gms/internal/ts;->hU(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/th;->a(Lcom/google/android/gms/internal/tp;I)V

    return-object v0

    :pswitch_5b
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/tp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/th;->a(Lcom/google/android/gms/internal/tp;)V
    :try_end_64
    .catch Ljava/lang/InstantiationException; {:try_start_4b .. :try_end_64} :catch_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_4b .. :try_end_64} :catch_65
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_64} :catch_80

    return-object v0

    :catch_65
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error creating instance of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_80
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Error reading extension field"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_8a
    .packed-switch 0xa
        :pswitch_4b
        :pswitch_5b
    .end packed-switch
.end method

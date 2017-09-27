.class public Lcom/google/android/gms/internal/nj;
.super Lcom/google/android/gms/internal/nc;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/nk;


# instance fields
.field private final Dw:I

.field private final QV:Lcom/google/android/gms/internal/ng;

.field private final Rc:Landroid/os/Parcel;

.field private final Rd:I

.field private Re:I

.field private Rf:I

.field private final mClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/nk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nj;->CREATOR:Lcom/google/android/gms/internal/nk;

    return-void
.end method

.method constructor <init>(ILandroid/os/Parcel;Lcom/google/android/gms/internal/ng;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/android/gms/internal/nc;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/nj;->Dw:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcel;

    iput-object v0, p0, Lcom/google/android/gms/internal/nj;->Rc:Landroid/os/Parcel;

    iput v1, p0, Lcom/google/android/gms/internal/nj;->Rd:I

    iput-object p3, p0, Lcom/google/android/gms/internal/nj;->QV:Lcom/google/android/gms/internal/ng;

    iget-object v0, p0, Lcom/google/android/gms/internal/nj;->QV:Lcom/google/android/gms/internal/ng;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/nj;->QV:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ng;->jd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/nj;->mClassName:Ljava/lang/String;

    :goto_1f
    iput v1, p0, Lcom/google/android/gms/internal/nj;->Re:I

    return-void

    :cond_22
    iput-object v2, p0, Lcom/google/android/gms/internal/nj;->mClassName:Ljava/lang/String;

    goto :goto_1f
.end method

.method private constructor <init>(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Lcom/google/android/gms/internal/ng;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/nc;-><init>()V

    iput v2, p0, Lcom/google/android/gms/internal/nj;->Dw:I

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/nj;->Rc:Landroid/os/Parcel;

    iget-object v0, p0, Lcom/google/android/gms/internal/nj;->Rc:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iput v2, p0, Lcom/google/android/gms/internal/nj;->Rd:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ng;

    iput-object v0, p0, Lcom/google/android/gms/internal/nj;->QV:Lcom/google/android/gms/internal/ng;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/nj;->mClassName:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/nj;->Re:I

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/nc;)Lcom/google/android/gms/internal/nj;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/nc;",
            ":",
            "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/nj;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/internal/nj;->b(Lcom/google/android/gms/internal/nc;)Lcom/google/android/gms/internal/ng;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/nj;

    check-cast p0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/internal/nj;-><init>(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Lcom/google/android/gms/internal/ng;Ljava/lang/String;)V

    return-object v2
.end method

.method private static a(Lcom/google/android/gms/internal/ng;Lcom/google/android/gms/internal/nc;)V
    .registers 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ng;->b(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    return-void

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nc;->iN()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nc;->iN()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ng;->a(Ljava/lang/Class;Ljava/util/HashMap;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nc$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nc$a;->iV()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1e

    :try_start_36
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/nc;

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/nj;->a(Lcom/google/android/gms/internal/ng;Lcom/google/android/gms/internal/nc;)V
    :try_end_3f
    .catch Ljava/lang/InstantiationException; {:try_start_36 .. :try_end_3f} :catch_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_36 .. :try_end_3f} :catch_63

    goto :goto_1e

    :catch_40
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not instantiate an object of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nc$a;->iV()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_63
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not access object of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nc$a;->iV()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private a(Ljava/lang/StringBuilder;ILjava/lang/Object;)V
    .registers 7

    packed-switch p2, :pswitch_data_7e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_20
    return-void

    :pswitch_21
    const-string/jumbo v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ny;->bs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :pswitch_3b
    const-string/jumbo v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p3, [B

    check-cast p3, [B

    invoke-static {p3}, Lcom/google/android/gms/internal/nr;->d([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :pswitch_55
    const-string/jumbo v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p3, [B

    check-cast p3, [B

    invoke-static {p3}, Lcom/google/android/gms/internal/nr;->e([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :pswitch_6e
    check-cast p3, Ljava/util/HashMap;

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/nz;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    goto :goto_20

    :pswitch_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Method does not accept concrete type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_21
        :pswitch_3b
        :pswitch_55
        :pswitch_6e
        :pswitch_74
    .end packed-switch
.end method

.method private a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Landroid/os/Parcel;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/android/gms/internal/nc$a",
            "<**>;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/nc$a;->iM()I

    move-result v0

    packed-switch v0, :pswitch_data_be

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown field out type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/nc$a;->iM()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/nj;->a(Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/nj;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)V

    :goto_34
    return-void

    :pswitch_35
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/nj;->a(Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/nj;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)V

    goto :goto_34

    :pswitch_41
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/nj;->a(Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/nj;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)V

    goto :goto_34

    :pswitch_51
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/nj;->a(Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/nj;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)V

    goto :goto_34

    :pswitch_61
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/nj;->a(Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/nj;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)V

    goto :goto_34

    :pswitch_71
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/nj;->a(Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/nj;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)V

    goto :goto_34

    :pswitch_7d
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/nj;->a(Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/nj;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)V

    goto :goto_34

    :pswitch_8d
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/nj;->a(Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/nj;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)V

    goto :goto_34

    :pswitch_99
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->r(Landroid/os/Parcel;I)[B

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/nj;->a(Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/nj;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)V

    goto :goto_34

    :pswitch_a5
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/nj;->g(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/nj;->a(Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/nj;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)V

    goto :goto_34

    :pswitch_b5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Method does not accept concrete type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_25
        :pswitch_35
        :pswitch_41
        :pswitch_51
        :pswitch_61
        :pswitch_71
        :pswitch_7d
        :pswitch_8d
        :pswitch_99
        :pswitch_99
        :pswitch_a5
        :pswitch_b5
    .end packed-switch
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/internal/nc$a;Landroid/os/Parcel;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nc$a",
            "<**>;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    const-string/jumbo v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/nc$a;->iX()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/google/android/gms/internal/nj;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Landroid/os/Parcel;I)V

    :goto_1a
    return-void

    :cond_1b
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/google/android/gms/internal/nj;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Landroid/os/Parcel;I)V

    goto :goto_1a
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/util/HashMap;Landroid/os/Parcel;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nc$a",
            "<**>;>;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/google/android/gms/internal/nj;->b(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v6

    const/16 v1, 0x7b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/safeparcel/a;->aa(Landroid/os/Parcel;)I

    move-result v7

    move v1, v0

    :cond_f
    :goto_f
    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-lt v0, v7, :cond_21

    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ne v0, v7, :cond_53

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_21
    invoke-static {p3}, Lcom/google/android/gms/common/internal/safeparcel/a;->Z(Landroid/os/Parcel;)I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->bo(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_f

    if-nez v1, :cond_4c

    :goto_37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/nc$a;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/nj;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/internal/nc$a;Landroid/os/Parcel;I)V

    const/4 v0, 0x1

    move v1, v0

    goto :goto_f

    :cond_4c
    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    :cond_53
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method

.method private static b(Lcom/google/android/gms/internal/nc;)Lcom/google/android/gms/internal/ng;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ng;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ng;-><init>(Ljava/lang/Class;)V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/nj;->a(Lcom/google/android/gms/internal/ng;Lcom/google/android/gms/internal/nc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ng;->jb()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ng;->ja()V

    return-object v0
.end method

.method private static b(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nc$a",
            "<**>;>;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nc$a",
            "<**>;>;>;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    return-object v2

    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/nc$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nc$a;->iU()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d
.end method

.method private b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Landroid/os/Parcel;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/android/gms/internal/nc$a",
            "<**>;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/nc$a;->iS()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p2}, Lcom/google/android/gms/internal/nc$a;->iM()I

    move-result v0

    packed-switch v0, :pswitch_data_1a0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unknown field type out"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    const-string/jumbo v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/nc$a;->iM()I

    move-result v0

    packed-switch v0, :pswitch_data_1bc

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unknown field type out."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2d
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->u(Landroid/os/Parcel;I)[I

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/nq;->a(Ljava/lang/StringBuilder;[I)V

    :cond_34
    :goto_34
    const-string/jumbo v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3a
    return-void

    :pswitch_3b
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->w(Landroid/os/Parcel;I)[Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/nq;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    goto :goto_34

    :pswitch_43
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->v(Landroid/os/Parcel;I)[J

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/nq;->a(Ljava/lang/StringBuilder;[J)V

    goto :goto_34

    :pswitch_4b
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->x(Landroid/os/Parcel;I)[F

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/nq;->a(Ljava/lang/StringBuilder;[F)V

    goto :goto_34

    :pswitch_53
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->y(Landroid/os/Parcel;I)[D

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/nq;->a(Ljava/lang/StringBuilder;[D)V

    goto :goto_34

    :pswitch_5b
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->z(Landroid/os/Parcel;I)[Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/nq;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    goto :goto_34

    :pswitch_63
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->t(Landroid/os/Parcel;I)[Z

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/nq;->a(Ljava/lang/StringBuilder;[Z)V

    goto :goto_34

    :pswitch_6b
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/nq;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    goto :goto_34

    :pswitch_73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7c
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->E(Landroid/os/Parcel;I)[Landroid/os/Parcel;

    move-result-object v1

    array-length v3, v1

    move v0, v2

    :goto_82
    if-ge v0, v3, :cond_34

    if-gtz v0, :cond_97

    :goto_86
    aget-object v4, v1, v0

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/nc$a;->iZ()Ljava/util/HashMap;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/nj;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    :cond_97
    const-string/jumbo v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_86

    :pswitch_9e
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3a

    :pswitch_a6
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3a

    :pswitch_ae
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_3a

    :pswitch_b6
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/16 :goto_3a

    :pswitch_bf
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/16 :goto_3a

    :pswitch_c8
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_3a

    :pswitch_d1
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_3a

    :pswitch_da
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ny;->bs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3a

    :pswitch_f5
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->r(Landroid/os/Parcel;I)[B

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/nr;->d([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3a

    :pswitch_110
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->r(Landroid/os/Parcel;I)[B

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/nr;->e([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3a

    :pswitch_12a
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    const-string/jumbo v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_141
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14f

    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3a

    :cond_14f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_189

    :goto_157
    const-string/jumbo v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ny;->bs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_141

    :cond_189
    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_157

    :pswitch_190
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->D(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/nc$a;->iZ()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/nj;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;Landroid/os/Parcel;)V

    goto/16 :goto_3a

    :pswitch_data_1a0
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_a6
        :pswitch_ae
        :pswitch_b6
        :pswitch_bf
        :pswitch_c8
        :pswitch_d1
        :pswitch_da
        :pswitch_f5
        :pswitch_110
        :pswitch_12a
        :pswitch_190
    .end packed-switch

    :pswitch_data_1bc
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_3b
        :pswitch_43
        :pswitch_4b
        :pswitch_53
        :pswitch_5b
        :pswitch_63
        :pswitch_6b
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_7c
    .end packed-switch
.end method

.method private b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/android/gms/internal/nc$a",
            "<**>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/nc$a;->iR()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p2}, Lcom/google/android/gms/internal/nc$a;->iL()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/nj;->a(Ljava/lang/StringBuilder;ILjava/lang/Object;)V

    :goto_d
    return-void

    :cond_e
    check-cast p3, Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/nj;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Ljava/util/ArrayList;)V

    goto :goto_d
.end method

.method private b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/nc$a;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/android/gms/internal/nc$a",
            "<**>;",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_b
    if-lt v0, v1, :cond_14

    const-string/jumbo v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_14
    if-nez v0, :cond_24

    :goto_16
    invoke-virtual {p2}, Lcom/google/android/gms/internal/nc$a;->iL()I

    move-result v2

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/nj;->a(Ljava/lang/StringBuilder;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_24
    const-string/jumbo v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16
.end method

.method public static g(Landroid/os/Bundle;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    return-object v1

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d
.end method


# virtual methods
.method protected bn(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Converting to JSON does not require this method."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bo(Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Converting to JSON does not require this method."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/nj;->CREATOR:Lcom/google/android/gms/internal/nk;

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/nj;->Dw:I

    return v0
.end method

.method public iN()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nc$a",
            "<**>;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/nj;->QV:Lcom/google/android/gms/internal/ng;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/nj;->QV:Lcom/google/android/gms/internal/ng;

    iget-object v1, p0, Lcom/google/android/gms/internal/nj;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ng;->br(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    :cond_e
    return-object v1
.end method

.method public jf()Landroid/os/Parcel;
    .registers 4

    const/4 v2, 0x2

    iget v0, p0, Lcom/google/android/gms/internal/nj;->Re:I

    packed-switch v0, :pswitch_data_24

    :goto_6
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/nj;->Rc:Landroid/os/Parcel;

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gms/internal/nj;->Rc:Landroid/os/Parcel;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->ab(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/nj;->Rf:I

    iget-object v0, p0, Lcom/google/android/gms/internal/nj;->Rc:Landroid/os/Parcel;

    iget v1, p0, Lcom/google/android/gms/internal/nj;->Rf:I

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->H(Landroid/os/Parcel;I)V

    :goto_18
    iput v2, p0, Lcom/google/android/gms/internal/nj;->Re:I

    goto :goto_6

    :pswitch_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/nj;->Rc:Landroid/os/Parcel;

    iget v1, p0, Lcom/google/android/gms/internal/nj;->Rf:I

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->H(Landroid/os/Parcel;I)V

    goto :goto_18

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1b
        :pswitch_6
    .end packed-switch
.end method

.method jg()Lcom/google/android/gms/internal/ng;
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/nj;->Rd:I

    packed-switch v0, :pswitch_data_2a

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid creation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/nj;->Rd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_21
    const/4 v0, 0x0

    return-object v0

    :pswitch_23
    iget-object v0, p0, Lcom/google/android/gms/internal/nj;->QV:Lcom/google/android/gms/internal/ng;

    return-object v0

    :pswitch_26
    iget-object v0, p0, Lcom/google/android/gms/internal/nj;->QV:Lcom/google/android/gms/internal/ng;

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_21
        :pswitch_23
        :pswitch_26
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/nj;->QV:Lcom/google/android/gms/internal/ng;

    const-string/jumbo v1, "Cannot convert to JSON on client side."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nj;->jf()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/nj;->QV:Lcom/google/android/gms/internal/ng;

    iget-object v3, p0, Lcom/google/android/gms/internal/nj;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ng;->br(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/nj;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;Landroid/os/Parcel;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/nj;->CREATOR:Lcom/google/android/gms/internal/nk;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/nk;->a(Lcom/google/android/gms/internal/nj;Landroid/os/Parcel;I)V

    return-void
.end method

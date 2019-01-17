.class public Lcom/google/android/gms/internal/nc$a;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/nc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ne;


# instance fields
.field private final Dw:I

.field protected final QN:I

.field protected final QO:Z

.field protected final QP:I

.field protected final QQ:Z

.field protected final QR:Ljava/lang/String;

.field protected final QS:I

.field protected final QT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/nc;",
            ">;"
        }
    .end annotation
.end field

.field protected final QU:Ljava/lang/String;

.field private QV:Lcom/google/android/gms/internal/ng;

.field private QW:Lcom/google/android/gms/internal/nc$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nc$b",
            "<TI;TO;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ne;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ne;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nc$a;->CREATOR:Lcom/google/android/gms/internal/ne;

    return-void
.end method

.method constructor <init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/mx;)V
    .registers 12

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/nc$a;->Dw:I

    iput p2, p0, Lcom/google/android/gms/internal/nc$a;->QN:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/nc$a;->QO:Z

    iput p4, p0, Lcom/google/android/gms/internal/nc$a;->QP:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/nc$a;->QQ:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/nc$a;->QR:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/nc$a;->QS:I

    if-eqz p8, :cond_23

    const-class v0, Lcom/google/android/gms/internal/nj;

    iput-object v0, p0, Lcom/google/android/gms/internal/nc$a;->QT:Ljava/lang/Class;

    iput-object p8, p0, Lcom/google/android/gms/internal/nc$a;->QU:Ljava/lang/String;

    :goto_1a
    if-eqz p9, :cond_28

    invoke-virtual {p9}, Lcom/google/android/gms/internal/mx;->iJ()Lcom/google/android/gms/internal/nc$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/nc$a;->QW:Lcom/google/android/gms/internal/nc$b;

    :goto_22
    return-void

    :cond_23
    iput-object v1, p0, Lcom/google/android/gms/internal/nc$a;->QT:Ljava/lang/Class;

    iput-object v1, p0, Lcom/google/android/gms/internal/nc$a;->QU:Ljava/lang/String;

    goto :goto_1a

    :cond_28
    iput-object v1, p0, Lcom/google/android/gms/internal/nc$a;->QW:Lcom/google/android/gms/internal/nc$b;

    goto :goto_22
.end method

.method protected constructor <init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/nc$b;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/nc;",
            ">;",
            "Lcom/google/android/gms/internal/nc$b",
            "<TI;TO;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/nc$a;->Dw:I

    iput p1, p0, Lcom/google/android/gms/internal/nc$a;->QN:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/nc$a;->QO:Z

    iput p3, p0, Lcom/google/android/gms/internal/nc$a;->QP:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/nc$a;->QQ:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/nc$a;->QR:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/nc$a;->QS:I

    iput-object p7, p0, Lcom/google/android/gms/internal/nc$a;->QT:Ljava/lang/Class;

    if-eqz p7, :cond_20

    invoke-virtual {p7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/nc$a;->QU:Ljava/lang/String;

    :goto_1d
    iput-object p8, p0, Lcom/google/android/gms/internal/nc$a;->QW:Lcom/google/android/gms/internal/nc$b;

    return-void

    :cond_20
    iput-object v1, p0, Lcom/google/android/gms/internal/nc$a;->QU:Ljava/lang/String;

    goto :goto_1d
.end method

.method public static a(Ljava/lang/String;ILcom/google/android/gms/internal/nc$b;Z)Lcom/google/android/gms/internal/nc$a;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/internal/nc$b",
            "<**>;Z)",
            "Lcom/google/android/gms/internal/nc$a;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/nc$a;

    invoke-interface {p2}, Lcom/google/android/gms/internal/nc$b;->iL()I

    move-result v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/nc$b;->iM()I

    move-result v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v2, p3

    move-object v5, p0

    move v6, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/nc$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/nc$b;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/nc$a;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/nc;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/nc$a",
            "<TT;TT;>;"
        }
    .end annotation

    const/16 v1, 0xb

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/nc$a;

    const/4 v8, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/nc$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/nc$b;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/nc$a;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/nc;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/nc$a",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation

    const/16 v1, 0xb

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/gms/internal/nc$a;

    const/4 v8, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/nc$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/nc$b;)V

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/nc$a;)Lcom/google/android/gms/internal/nc$b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nc$a;->QW:Lcom/google/android/gms/internal/nc$b;

    return-object v0
.end method

.method public static k(Ljava/lang/String;I)Lcom/google/android/gms/internal/nc$a;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/nc$a",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/internal/nc$a;

    move v2, v1

    move v3, v1

    move v4, v1

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/nc$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/nc$b;)V

    return-object v0
.end method

.method public static l(Ljava/lang/String;I)Lcom/google/android/gms/internal/nc$a;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/nc$a",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/nc$a;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/nc$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/nc$b;)V

    return-object v0
.end method

.method public static m(Ljava/lang/String;I)Lcom/google/android/gms/internal/nc$a;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/nc$a",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/nc$a;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/nc$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/nc$b;)V

    return-object v0
.end method

.method public static n(Ljava/lang/String;I)Lcom/google/android/gms/internal/nc$a;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/nc$a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/nc$a;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/nc$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/nc$b;)V

    return-object v0
.end method

.method public static o(Ljava/lang/String;I)Lcom/google/android/gms/internal/nc$a;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/nc$a",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/gms/internal/nc$a;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/nc$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/nc$b;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ng;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nc$a;->QV:Lcom/google/android/gms/internal/ng;

    return-void
.end method

.method public convertBack(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)TI;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nc$a;->QW:Lcom/google/android/gms/internal/nc$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nc$b;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/nc$a;->CREATOR:Lcom/google/android/gms/internal/ne;

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/nc$a;->Dw:I

    return v0
.end method

.method public iL()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/nc$a;->QN:I

    return v0
.end method

.method public iM()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/nc$a;->QP:I

    return v0
.end method

.method public iQ()Lcom/google/android/gms/internal/nc$a;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/nc$a",
            "<TI;TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/nc$a;

    iget v1, p0, Lcom/google/android/gms/internal/nc$a;->Dw:I

    iget v2, p0, Lcom/google/android/gms/internal/nc$a;->QN:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/nc$a;->QO:Z

    iget v4, p0, Lcom/google/android/gms/internal/nc$a;->QP:I

    iget-boolean v5, p0, Lcom/google/android/gms/internal/nc$a;->QQ:Z

    iget-object v6, p0, Lcom/google/android/gms/internal/nc$a;->QR:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/gms/internal/nc$a;->QS:I

    iget-object v8, p0, Lcom/google/android/gms/internal/nc$a;->QU:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nc$a;->iY()Lcom/google/android/gms/internal/mx;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/nc$a;-><init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/mx;)V

    return-object v0
.end method

.method public iR()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/nc$a;->QO:Z

    return v0
.end method

.method public iS()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/nc$a;->QQ:Z

    return v0
.end method

.method public iT()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nc$a;->QR:Ljava/lang/String;

    return-object v0
.end method

.method public iU()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/nc$a;->QS:I

    return v0
.end method

.method public iV()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/nc;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nc$a;->QT:Ljava/lang/Class;

    return-object v0
.end method

.method iW()Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/nc$a;->QU:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/nc$a;->QU:Ljava/lang/String;

    return-object v0

    :cond_8
    return-object v1
.end method

.method public iX()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nc$a;->QW:Lcom/google/android/gms/internal/nc$b;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method iY()Lcom/google/android/gms/internal/mx;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/nc$a;->QW:Lcom/google/android/gms/internal/nc$b;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/nc$a;->QW:Lcom/google/android/gms/internal/nc$b;

    invoke-static {v0}, Lcom/google/android/gms/internal/mx;->a(Lcom/google/android/gms/internal/nc$b;)Lcom/google/android/gms/internal/mx;

    move-result-object v0

    return-object v0

    :cond_c
    return-object v1
.end method

.method public iZ()Ljava/util/HashMap;
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

    iget-object v0, p0, Lcom/google/android/gms/internal/nc$a;->QU:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/nc$a;->QV:Lcom/google/android/gms/internal/ng;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/nc$a;->QV:Lcom/google/android/gms/internal/ng;

    iget-object v1, p0, Lcom/google/android/gms/internal/nc$a;->QU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ng;->br(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/16 v3, 0xa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "Field\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "            versionCode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/nc$a;->Dw:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "                 typeIn="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/nc$a;->QN:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "            typeInArray="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/nc$a;->QO:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "                typeOut="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/nc$a;->QP:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "           typeOutArray="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/nc$a;->QQ:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "        outputFieldName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/nc$a;->QR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "      safeParcelFieldId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/nc$a;->QS:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "       concreteTypeName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nc$a;->iW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nc$a;->iV()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_b6

    :goto_95
    const-string/jumbo v0, "          converterName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/nc$a;->QW:Lcom/google/android/gms/internal/nc$b;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/google/android/gms/internal/nc$a;->QW:Lcom/google/android/gms/internal/nc$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    :goto_aa
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b6
    const-string/jumbo v0, "     concreteType.class="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nc$a;->iV()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_95

    :cond_cd
    const-string/jumbo v0, "null"

    goto :goto_aa
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/nc$a;->CREATOR:Lcom/google/android/gms/internal/ne;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ne;->a(Lcom/google/android/gms/internal/nc$a;Landroid/os/Parcel;I)V

    return-void
.end method

.class public final Lcom/google/android/gms/common/internal/d$a;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/internal/t;


# instance fields
.field private final Dw:I

.field private final EL:Ljava/lang/String;

.field private final MH:I

.field private final MJ:Ljava/lang/String;

.field private final MK:Ljava/lang/String;

.field private final Nh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/internal/t;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/t;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/d$a;->CREATOR:Lcom/google/android/gms/common/internal/t;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/d$a;->Nh:Ljava/util/List;

    iput p1, p0, Lcom/google/android/gms/common/internal/d$a;->Dw:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/d$a;->EL:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d$a;->Nh:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput p4, p0, Lcom/google/android/gms/common/internal/d$a;->MH:I

    iput-object p5, p0, Lcom/google/android/gms/common/internal/d$a;->MJ:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/common/internal/d$a;->MK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;ILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/d$a;-><init>(ILjava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d$a;->EL:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/internal/d$a;->Dw:I

    return v0
.end method

.method public ip()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d$a;->EL:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string/jumbo v0, "<<default account>>"

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d$a;->EL:Ljava/lang/String;

    goto :goto_7
.end method

.method public iq()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/internal/d$a;->MH:I

    return v0
.end method

.method public ir()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/d$a;->Nh:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public it()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d$a;->MJ:Ljava/lang/String;

    return-object v0
.end method

.method public iu()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d$a;->MK:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/t;->a(Lcom/google/android/gms/common/internal/d$a;Landroid/os/Parcel;I)V

    return-void
.end method

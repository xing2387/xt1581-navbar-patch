.class public final Lcom/google/android/gms/common/api/Scope;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Dw:I

.field private final Nx:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/api/f;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "scopeUri must not be null or empty"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/common/api/Scope;->Dw:I

    iput-object p2, p0, Lcom/google/android/gms/common/api/Scope;->Nx:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v1, 0x0

    if-eq p0, p1, :cond_12

    instance-of v0, p1, Lcom/google/android/gms/common/api/Scope;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/common/api/Scope;->Nx:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/common/api/Scope;

    iget-object v1, p1, Lcom/google/android/gms/common/api/Scope;->Nx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_12
    const/4 v0, 0x1

    return v0

    :cond_14
    return v1
.end method

.method public hR()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/Scope;->Nx:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/Scope;->Nx:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/Scope;->Nx:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/api/f;->a(Lcom/google/android/gms/common/api/Scope;Landroid/os/Parcel;I)V

    return-void
.end method
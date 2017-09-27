.class public Lcom/google/android/gms/internal/jl;
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
            "Lcom/google/android/gms/internal/jl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Dw:I

.field public packageName:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/jm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jl;->Dw:I

    iput p2, p0, Lcom/google/android/gms/internal/jl;->type:I

    iput-object p3, p0, Lcom/google/android/gms/internal/jl;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/jl;->Dw:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jm;->a(Lcom/google/android/gms/internal/jl;Landroid/os/Parcel;I)V

    return-void
.end method

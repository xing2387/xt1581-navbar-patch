.class public Lcom/google/android/gms/internal/ju;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ju$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ju;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Aw:Ljava/lang/String;

.field final Dw:I

.field public Ia:[Lcom/google/android/gms/internal/ju$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/jv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ju;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ju;->Dw:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[Lcom/google/android/gms/internal/ju$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ju;->Dw:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ju;->Aw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ju;->Ia:[Lcom/google/android/gms/internal/ju$a;

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

    iget v0, p0, Lcom/google/android/gms/internal/ju;->Dw:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jv;->a(Lcom/google/android/gms/internal/ju;Landroid/os/Parcel;I)V

    return-void
.end method

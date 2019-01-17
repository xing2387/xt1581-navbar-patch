.class public Lcom/google/android/gms/internal/jy;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jy$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/jy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Dw:I

.field public HW:I

.field public If:Lcom/google/android/gms/internal/ju$a;

.field public Ig:[Lcom/google/android/gms/internal/jy$a;

.field public start:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/jz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/jy;->Dw:I

    new-instance v0, Lcom/google/android/gms/internal/ju$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ju$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jy;->If:Lcom/google/android/gms/internal/ju$a;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ju$a;II[Lcom/google/android/gms/internal/jy$a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jy;->Dw:I

    iput-object p2, p0, Lcom/google/android/gms/internal/jy;->If:Lcom/google/android/gms/internal/ju$a;

    iput p3, p0, Lcom/google/android/gms/internal/jy;->start:I

    iput p4, p0, Lcom/google/android/gms/internal/jy;->HW:I

    iput-object p5, p0, Lcom/google/android/gms/internal/jy;->Ig:[Lcom/google/android/gms/internal/jy$a;

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

    iget v0, p0, Lcom/google/android/gms/internal/jy;->Dw:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jz;->a(Lcom/google/android/gms/internal/jy;Landroid/os/Parcel;I)V

    return-void
.end method

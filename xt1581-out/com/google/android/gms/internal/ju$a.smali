.class public Lcom/google/android/gms/internal/ju$a;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ju;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ju$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Dw:I

.field public Ib:Ljava/lang/String;

.field public Ic:[B

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/kd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ju$a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ju$a;->Dw:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ju$a;->Dw:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ju$a;->Ib:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ju$a;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ju$a;->Ic:[B

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

    iget v0, p0, Lcom/google/android/gms/internal/ju$a;->Dw:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/ju$a;Landroid/os/Parcel;I)V

    return-void
.end method

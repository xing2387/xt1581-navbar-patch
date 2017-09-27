.class public Lcom/google/android/gms/auth/frp/d;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/frp/e;


# instance fields
.field public final status:I

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/auth/frp/e;

    invoke-direct {v0}, Lcom/google/android/gms/auth/frp/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/frp/d;->CREATOR:Lcom/google/android/gms/auth/frp/e;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/auth/frp/d;-><init>(II)V

    return-void
.end method

.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/frp/d;->version:I

    iput p2, p0, Lcom/google/android/gms/auth/frp/d;->status:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/frp/e;->a(Lcom/google/android/gms/auth/frp/d;Landroid/os/Parcel;I)V

    return-void
.end method

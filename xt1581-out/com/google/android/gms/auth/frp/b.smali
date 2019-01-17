.class public Lcom/google/android/gms/auth/frp/b;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/frp/c;


# instance fields
.field public final Gj:Ljava/lang/String;

.field public final Gk:Ljava/lang/String;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/auth/frp/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/frp/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/frp/b;->CREATOR:Lcom/google/android/gms/auth/frp/c;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/frp/b;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/frp/b;->Gj:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/frp/b;->Gk:Ljava/lang/String;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/frp/c;->a(Lcom/google/android/gms/auth/frp/b;Landroid/os/Parcel;I)V

    return-void
.end method

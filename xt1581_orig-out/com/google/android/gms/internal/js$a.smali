.class public Lcom/google/android/gms/internal/js$a;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/js;
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
            "Lcom/google/android/gms/internal/js$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Aw:Ljava/lang/String;

.field final Dw:I

.field public HY:Ljava/lang/String;

.field public HZ:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/kc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/js$a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/js$a;->Dw:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/js$a;->Dw:I

    iput-object p2, p0, Lcom/google/android/gms/internal/js$a;->Aw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/js$a;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/js$a;->HY:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/js$a;->HZ:Ljava/lang/String;

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

    iget v0, p0, Lcom/google/android/gms/internal/js$a;->Dw:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/kc;->a(Lcom/google/android/gms/internal/js$a;Landroid/os/Parcel;I)V

    return-void
.end method

.class public Lcom/google/android/gms/internal/ng$b;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/nf;


# instance fields
.field final Rb:Lcom/google/android/gms/internal/nc$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nc$a",
            "<**>;"
        }
    .end annotation
.end field

.field final fv:Ljava/lang/String;

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/nf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ng$b;->CREATOR:Lcom/google/android/gms/internal/nf;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/nc$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nc$a",
            "<**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ng$b;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ng$b;->fv:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ng$b;->Rb:Lcom/google/android/gms/internal/nc$a;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/nc$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nc$a",
            "<**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ng$b;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ng$b;->fv:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ng$b;->Rb:Lcom/google/android/gms/internal/nc$a;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ng$b;->CREATOR:Lcom/google/android/gms/internal/nf;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ng$b;->CREATOR:Lcom/google/android/gms/internal/nf;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/nf;->a(Lcom/google/android/gms/internal/ng$b;Landroid/os/Parcel;I)V

    return-void
.end method

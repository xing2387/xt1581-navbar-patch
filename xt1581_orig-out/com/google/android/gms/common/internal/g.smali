.class public Lcom/google/android/gms/common/internal/g;
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
            "Lcom/google/android/gms/common/internal/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final PF:I

.field PG:I

.field PH:Ljava/lang/String;

.field PI:Landroid/os/IBinder;

.field PJ:[Lcom/google/android/gms/common/api/Scope;

.field PK:Landroid/os/Bundle;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/internal/h;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/g;->version:I

    const v0, 0x6768a8

    iput v0, p0, Lcom/google/android/gms/common/internal/g;->PG:I

    iput p1, p0, Lcom/google/android/gms/common/internal/g;->PF:I

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/g;->version:I

    iput p2, p0, Lcom/google/android/gms/common/internal/g;->PF:I

    iput p3, p0, Lcom/google/android/gms/common/internal/g;->PG:I

    iput-object p4, p0, Lcom/google/android/gms/common/internal/g;->PH:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/common/internal/g;->PI:Landroid/os/IBinder;

    iput-object p6, p0, Lcom/google/android/gms/common/internal/g;->PJ:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/g;->PK:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/internal/o;)Lcom/google/android/gms/common/internal/g;
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-object p0

    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/o;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/g;->PI:Landroid/os/IBinder;

    goto :goto_2
.end method

.method public a([Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/internal/g;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/g;->PJ:[Lcom/google/android/gms/common/api/Scope;

    return-object p0
.end method

.method public bg(Ljava/lang/String;)Lcom/google/android/gms/common/internal/g;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/g;->PH:Ljava/lang/String;

    return-object p0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/os/Bundle;)Lcom/google/android/gms/common/internal/g;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/g;->PK:Landroid/os/Bundle;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/h;->a(Lcom/google/android/gms/common/internal/g;Landroid/os/Parcel;I)V

    return-void
.end method

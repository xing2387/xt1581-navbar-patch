.class public Lcom/google/android/gms/internal/mv;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/mw;


# instance fields
.field final Dw:I

.field public final QF:Ljava/lang/String;

.field public final QG:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/mw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mv;->CREATOR:Lcom/google/android/gms/internal/mw;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mv;->Dw:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mv;->QF:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/mv;->QG:I

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mv;Landroid/os/Parcel;I)V

    return-void
.end method

.class public Lcom/google/android/gms/auth/AccountChangeEventsRequest;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/AccountChangeEventsRequestCreator;


# instance fields
.field EL:Ljava/lang/String;

.field final Fa:I

.field Fd:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/auth/AccountChangeEventsRequestCreator;

    invoke-direct {v0}, Lcom/google/android/gms/auth/AccountChangeEventsRequestCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->CREATOR:Lcom/google/android/gms/auth/AccountChangeEventsRequestCreator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->Fa:I

    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->Fa:I

    iput p2, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->Fd:I

    iput-object p3, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->EL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->EL:Ljava/lang/String;

    return-object v0
.end method

.method public getEventIndex()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->Fd:I

    return v0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/AccountChangeEventsRequest;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->EL:Ljava/lang/String;

    return-object p0
.end method

.method public setEventIndex(I)Lcom/google/android/gms/auth/AccountChangeEventsRequest;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->Fd:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/AccountChangeEventsRequestCreator;->a(Lcom/google/android/gms/auth/AccountChangeEventsRequest;Landroid/os/Parcel;I)V

    return-void
.end method

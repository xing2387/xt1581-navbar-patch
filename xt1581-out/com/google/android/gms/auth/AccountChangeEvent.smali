.class public Lcom/google/android/gms/auth/AccountChangeEvent;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/AccountChangeEventCreator;


# instance fields
.field final EL:Ljava/lang/String;

.field final Fa:I

.field final Fb:J

.field final Fc:I

.field final Fd:I

.field final Fe:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/auth/AccountChangeEventCreator;

    invoke-direct {v0}, Lcom/google/android/gms/auth/AccountChangeEventCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/AccountChangeEvent;->CREATOR:Lcom/google/android/gms/auth/AccountChangeEventCreator;

    return-void
.end method

.method constructor <init>(IJLjava/lang/String;IILjava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fa:I

    iput-wide p2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fb:J

    invoke-static {p4}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->EL:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fc:I

    iput p6, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fd:I

    iput-object p7, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fe:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IILjava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fa:I

    iput-wide p1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fb:J

    invoke-static {p3}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->EL:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fc:I

    iput p5, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fd:I

    iput-object p6, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fe:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p0, :cond_9

    instance-of v2, p1, Lcom/google/android/gms/auth/AccountChangeEvent;

    if-nez v2, :cond_a

    return v1

    :cond_9
    return v0

    :cond_a
    check-cast p1, Lcom/google/android/gms/auth/AccountChangeEvent;

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fa:I

    iget v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->Fa:I

    if-eq v2, v3, :cond_14

    :cond_12
    :goto_12
    move v0, v1

    :cond_13
    return v0

    :cond_14
    iget-wide v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fb:J

    iget-wide v4, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->Fb:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->EL:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->EL:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/s;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fc:I

    iget v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->Fc:I

    if-ne v2, v3, :cond_12

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fd:I

    iget v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->Fd:I

    if-ne v2, v3, :cond_12

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fe:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->Fe:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/s;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_12
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->EL:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeData()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fe:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fc:I

    return v0
.end method

.method public getEventIndex()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fd:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fa:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fb:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->EL:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fe:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, "UNKNOWN"

    iget v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fc:I

    packed-switch v1, :pswitch_data_5c

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AccountChangeEvent {accountName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->EL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", changeType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", changeData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", eventIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Fd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4b
    const-string/jumbo v0, "ADDED"

    goto :goto_8

    :pswitch_4f
    const-string/jumbo v0, "REMOVED"

    goto :goto_8

    :pswitch_53
    const-string/jumbo v0, "RENAMED_TO"

    goto :goto_8

    :pswitch_57
    const-string/jumbo v0, "RENAMED_FROM"

    goto :goto_8

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_4f
        :pswitch_57
        :pswitch_53
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/AccountChangeEventCreator;->a(Lcom/google/android/gms/auth/AccountChangeEvent;Landroid/os/Parcel;I)V

    return-void
.end method

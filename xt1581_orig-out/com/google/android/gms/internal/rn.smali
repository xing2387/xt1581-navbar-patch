.class public Lcom/google/android/gms/internal/rn;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ro;


# instance fields
.field public final aqN:I

.field public final aqO:I

.field public final aqP:Ljava/lang/String;

.field public final aqQ:Ljava/lang/String;

.field public final aqR:Z

.field public final aqS:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ro;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ro;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/rn;->CREATOR:Lcom/google/android/gms/internal/ro;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/rn;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/rn;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/rn;->aqN:I

    iput p4, p0, Lcom/google/android/gms/internal/rn;->aqO:I

    iput-object p5, p0, Lcom/google/android/gms/internal/rn;->aqP:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/rn;->aqQ:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/rn;->aqR:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/rn;->aqS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/rn;->versionCode:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/rn;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/rn;->aqN:I

    iput p3, p0, Lcom/google/android/gms/internal/rn;->aqO:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/rn;->aqS:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/rn;->aqP:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/rn;->aqQ:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/rn;->aqR:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_9

    instance-of v2, p1, Lcom/google/android/gms/internal/rn;

    if-nez v2, :cond_a

    return v1

    :cond_9
    return v0

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/rn;

    iget-object v2, p0, Lcom/google/android/gms/internal/rn;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/rn;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_16
    :goto_16
    move v0, v1

    :cond_17
    return v0

    :cond_18
    iget v2, p0, Lcom/google/android/gms/internal/rn;->aqN:I

    iget v3, p1, Lcom/google/android/gms/internal/rn;->aqN:I

    if-ne v2, v3, :cond_16

    iget v2, p0, Lcom/google/android/gms/internal/rn;->aqO:I

    iget v3, p1, Lcom/google/android/gms/internal/rn;->aqO:I

    if-ne v2, v3, :cond_16

    iget-object v2, p0, Lcom/google/android/gms/internal/rn;->aqS:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/rn;->aqS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/s;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/google/android/gms/internal/rn;->aqP:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/rn;->aqP:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/s;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/google/android/gms/internal/rn;->aqQ:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/rn;->aqQ:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/s;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-boolean v2, p0, Lcom/google/android/gms/internal/rn;->aqR:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/rn;->aqR:Z

    if-eq v2, v3, :cond_17

    goto :goto_16
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/rn;->packageName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/rn;->aqN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/rn;->aqO:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/rn;->aqP:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/rn;->aqQ:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/rn;->aqR:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/16 v3, 0x2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PlayLoggerContext["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/rn;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/rn;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "logSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/rn;->aqO:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "logSourceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/rn;->aqS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uploadAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/rn;->aqP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "loggingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/rn;->aqQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "logAndroidId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/rn;->aqR:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ro;->a(Lcom/google/android/gms/internal/rn;Landroid/os/Parcel;I)V

    return-void
.end method

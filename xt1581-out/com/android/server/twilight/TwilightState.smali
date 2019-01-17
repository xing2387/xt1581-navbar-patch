.class public Lcom/android/server/twilight/TwilightState;
.super Ljava/lang/Object;
.source "TwilightState.java"


# instance fields
.field private final mAmount:F

.field private final mIsNight:Z


# direct methods
.method constructor <init>(ZF)V
    .registers 3
    .param p1, "isNight"    # Z
    .param p2, "amount"    # F

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/android/server/twilight/TwilightState;->mIsNight:Z

    .line 32
    iput p2, p0, Lcom/android/server/twilight/TwilightState;->mAmount:F

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Lcom/android/server/twilight/TwilightState;)Z
    .registers 5
    .param p1, "other"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    const/4 v0, 0x0

    .line 56
    if-eqz p1, :cond_12

    .line 57
    iget-boolean v1, p0, Lcom/android/server/twilight/TwilightState;->mIsNight:Z

    iget-boolean v2, p1, Lcom/android/server/twilight/TwilightState;->mIsNight:Z

    if-ne v1, v2, :cond_12

    .line 58
    iget v1, p0, Lcom/android/server/twilight/TwilightState;->mAmount:F

    iget v2, p1, Lcom/android/server/twilight/TwilightState;->mAmount:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_12

    const/4 v0, 0x1

    .line 56
    :cond_12
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 52
    instance-of v0, p1, Lcom/android/server/twilight/TwilightState;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/android/server/twilight/TwilightState;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/twilight/TwilightState;->equals(Lcom/android/server/twilight/TwilightState;)Z

    move-result v0

    :goto_a
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getAmount()F
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/android/server/twilight/TwilightState;->mAmount:F

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public isNight()Z
    .registers 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightState;->mIsNight:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 68
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 69
    .local v0, "f":Ljava/text/DateFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{TwilightState: isNight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/twilight/TwilightState;->mIsNight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 70
    const-string/jumbo v2, ", mAmount="

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 70
    iget v2, p0, Lcom/android/server/twilight/TwilightState;->mAmount:F

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    const-string/jumbo v2, "}"

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

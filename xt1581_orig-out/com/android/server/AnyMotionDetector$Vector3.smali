.class public final Lcom/android/server/AnyMotionDetector$Vector3;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vector3"
.end annotation


# instance fields
.field public timeMillisSinceBoot:J

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(JFFF)V
    .registers 7
    .param p1, "timeMillisSinceBoot"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-wide p1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    .line 319
    iput p3, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    .line 320
    iput p4, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    .line 321
    iput p5, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    .line 317
    return-void
.end method


# virtual methods
.method public angleBetween(Lcom/android/server/AnyMotionDetector$Vector3;)F
    .registers 8
    .param p1, "other"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lcom/android/server/AnyMotionDetector$Vector3;->cross(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v0

    .line 343
    .local v0, "crossVector":Lcom/android/server/AnyMotionDetector$Vector3;
    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector$Vector3;->norm()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0, p1}, Lcom/android/server/AnyMotionDetector$Vector3;->dotProduct(Lcom/android/server/AnyMotionDetector$Vector3;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 342
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 344
    .local v1, "degrees":F
    const-string/jumbo v2, "AnyMotionDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "angleBetween: this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 345
    const-string/jumbo v4, ", other = "

    .line 344
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 345
    invoke-virtual {p1}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object v4

    .line 344
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 345
    const-string/jumbo v4, ", degrees = "

    .line 344
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return v1
.end method

.method public cross(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;
    .registers 10
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .prologue
    .line 350
    new-instance v1, Lcom/android/server/AnyMotionDetector$Vector3;

    .line 351
    iget-wide v2, p1, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    .line 352
    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v4, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float/2addr v0, v4

    iget v4, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget v5, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float/2addr v4, v5

    sub-float v4, v0, v4

    .line 353
    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget v5, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v0, v5

    iget v5, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    iget v6, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float/2addr v5, v6

    sub-float v5, v0, v5

    .line 354
    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    iget v6, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float/2addr v0, v6

    iget v6, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v7, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    .line 350
    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    return-object v1
.end method

.method public dotProduct(Lcom/android/server/AnyMotionDetector$Vector3;)F
    .registers 5
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .prologue
    .line 368
    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    iget v1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v2, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget v2, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public minus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;
    .registers 9
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .prologue
    .line 380
    new-instance v1, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v2, p1, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    iget v4, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    sub-float v4, v0, v4

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v5, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    sub-float v5, v0, v5

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget v6, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    sub-float v6, v0, v6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    return-object v1
.end method

.method public norm()F
    .registers 3

    .prologue
    .line 325
    invoke-virtual {p0, p0}, Lcom/android/server/AnyMotionDetector$Vector3;->dotProduct(Lcom/android/server/AnyMotionDetector$Vector3;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public normalized()Lcom/android/server/AnyMotionDetector$Vector3;
    .registers 8

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector$Vector3;->norm()F

    move-result v0

    .line 330
    .local v0, "mag":F
    new-instance v1, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget v4, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    div-float/2addr v4, v0

    iget v5, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    div-float/2addr v5, v0

    iget v6, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    div-float/2addr v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    return-object v1
.end method

.method public plus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;
    .registers 9
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .prologue
    .line 376
    new-instance v1, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v2, p1, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    iget v4, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    add-float/2addr v4, v0

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v5, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    add-float/2addr v5, v0

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget v6, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    add-float/2addr v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    return-object v1
.end method

.method public times(F)Lcom/android/server/AnyMotionDetector$Vector3;
    .registers 9
    .param p1, "val"    # F

    .prologue
    .line 372
    new-instance v1, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float v4, v0, p1

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float v5, v0, p1

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float v6, v0, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 359
    const-string/jumbo v0, ""

    .line 360
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "timeMillisSinceBoot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    return-object v0
.end method

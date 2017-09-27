.class Lcom/android/server/policy/FingerprintGestureController$1;
.super Ljava/lang/Object;
.source "FingerprintGestureController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/FingerprintGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/FingerprintGestureController;


# direct methods
.method constructor <init>(Lcom/android/server/policy/FingerprintGestureController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/FingerprintGestureController;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/server/policy/FingerprintGestureController$1;->this$0:Lcom/android/server/policy/FingerprintGestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 172
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v0, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 176
    iget-object v2, p0, Lcom/android/server/policy/FingerprintGestureController$1;->this$0:Lcom/android/server/policy/FingerprintGestureController;

    invoke-static {v2}, Lcom/android/server/policy/FingerprintGestureController;->-get3(Lcom/android/server/policy/FingerprintGestureController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 177
    :try_start_b
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    cmpl-float v3, v3, v6

    if-lez v3, :cond_48

    .line 178
    iget-object v3, p0, Lcom/android/server/policy/FingerprintGestureController$1;->this$0:Lcom/android/server/policy/FingerprintGestureController;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    const/high16 v5, 0x40800000    # 4.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_46

    :goto_21
    invoke-static {v3, v0}, Lcom/android/server/policy/FingerprintGestureController;->-set2(Lcom/android/server/policy/FingerprintGestureController;Z)Z

    .line 184
    :goto_24
    const-string/jumbo v0, "FingerprintController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mStowed="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/policy/FingerprintGestureController$1;->this$0:Lcom/android/server/policy/FingerprintGestureController;

    invoke-static {v3}, Lcom/android/server/policy/FingerprintGestureController;->-get2(Lcom/android/server/policy/FingerprintGestureController;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_b .. :try_end_44} :catchall_57

    monitor-exit v2

    .line 175
    return-void

    :cond_46
    move v0, v1

    .line 178
    goto :goto_21

    .line 180
    :cond_48
    :try_start_48
    iget-object v3, p0, Lcom/android/server/policy/FingerprintGestureController$1;->this$0:Lcom/android/server/policy/FingerprintGestureController;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    cmpl-float v4, v4, v6

    if-nez v4, :cond_5a

    :goto_53
    invoke-static {v3, v0}, Lcom/android/server/policy/FingerprintGestureController;->-set2(Lcom/android/server/policy/FingerprintGestureController;Z)Z
    :try_end_56
    .catchall {:try_start_48 .. :try_end_56} :catchall_57

    goto :goto_24

    .line 176
    :catchall_57
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5a
    move v0, v1

    .line 180
    goto :goto_53
.end method

.class Lcom/android/server/AnyMotionDetector$1;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AnyMotionDetector;


# direct methods
.method constructor <init>(Lcom/android/server/AnyMotionDetector;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/AnyMotionDetector;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 279
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 262
    const/4 v0, -0x1

    .line 263
    .local v0, "status":I
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v2}, Lcom/android/server/AnyMotionDetector;->-get1(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 264
    :try_start_8
    new-instance v1, Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    .line 265
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v6, v6, v8

    .line 264
    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    .line 266
    .local v1, "accelDatum":Lcom/android/server/AnyMotionDetector$Vector3;
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v2}, Lcom/android/server/AnyMotionDetector;->-get3(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->accumulate(Lcom/android/server/AnyMotionDetector$Vector3;)V

    .line 269
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v2}, Lcom/android/server/AnyMotionDetector;->-get3(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->getSampleCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v3}, Lcom/android/server/AnyMotionDetector;->-get2(Lcom/android/server/AnyMotionDetector;)I

    move-result v3

    if-lt v2, v3, :cond_41

    .line 270
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v2}, Lcom/android/server/AnyMotionDetector;->-wrap0(Lcom/android/server/AnyMotionDetector;)I
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_4f

    move-result v0

    :cond_41
    monitor-exit v7

    .line 273
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4e

    .line 274
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v2}, Lcom/android/server/AnyMotionDetector;->-get0(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;->onAnyMotionResult(I)V

    .line 261
    :cond_4e
    return-void

    .line 263
    .end local v1    # "accelDatum":Lcom/android/server/AnyMotionDetector$Vector3;
    :catchall_4f
    move-exception v2

    monitor-exit v7

    throw v2
.end method

.class final Lcom/android/server/GestureLauncherService$GestureEventListener;
.super Ljava/lang/Object;
.source "GestureLauncherService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method private constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$GestureEventListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/GestureLauncherService$GestureEventListener;-><init>(Lcom/android/server/GestureLauncherService;)V

    return-void
.end method

.method private trackCameraLaunchEvent(Landroid/hardware/SensorEvent;)V
    .registers 26
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 408
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 409
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/GestureLauncherService;->-get1(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v20

    sub-long v16, v10, v20

    .line 415
    .local v16, "totalDuration":J
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    .line 417
    .local v18, "values":[F
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const/16 v19, 0x0

    aget v19, v18, v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-long v12, v0

    .line 418
    .local v12, "sensor1OnTime":J
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const/16 v19, 0x1

    aget v19, v18, v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-long v14, v0

    .line 419
    .local v14, "sensor2OnTime":J
    const/16 v19, 0x2

    aget v19, v18, v19

    move/from16 v0, v19

    float-to-int v9, v0

    .line 422
    .local v9, "extra":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/GestureLauncherService;->-get0(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v20

    sub-long v2, v10, v20

    .line 423
    .local v2, "gestureOnTimeDiff":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/GestureLauncherService;->-get2(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v20

    sub-long v4, v12, v20

    .line 424
    .local v4, "sensor1OnTimeDiff":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/GestureLauncherService;->-get3(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v20

    sub-long v6, v14, v20

    .line 425
    .local v6, "sensor2OnTimeDiff":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/GestureLauncherService;->-get4(Lcom/android/server/GestureLauncherService;)I

    move-result v19

    sub-int v8, v9, v19

    .line 429
    .local v8, "extraDiff":I
    const-wide/16 v20, 0x0

    cmp-long v19, v2, v20

    if-ltz v19, :cond_7f

    const-wide/16 v20, 0x0

    cmp-long v19, v4, v20

    if-gez v19, :cond_80

    .line 431
    :cond_7f
    return-void

    .line 429
    :cond_80
    const-wide/16 v20, 0x0

    cmp-long v19, v6, v20

    if-ltz v19, :cond_7f

    .line 440
    invoke-static/range {v2 .. v8}, Lcom/android/server/EventLogTags;->writeCameraGestureTriggered(JJJI)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v10, v11}, Lcom/android/server/GestureLauncherService;->-set0(Lcom/android/server/GestureLauncherService;J)J

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v12, v13}, Lcom/android/server/GestureLauncherService;->-set1(Lcom/android/server/GestureLauncherService;J)J

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v14, v15}, Lcom/android/server/GestureLauncherService;->-set2(Lcom/android/server/GestureLauncherService;J)J

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/android/server/GestureLauncherService;->-set3(Lcom/android/server/GestureLauncherService;I)I

    .line 407
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 403
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->-get8(Lcom/android/server/GestureLauncherService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 385
    return-void

    .line 387
    :cond_9
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->-get5(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;

    move-result-object v1

    if-ne v0, v1, :cond_2c

    .line 393
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    const/4 v1, 0x1

    .line 394
    const/4 v2, 0x0

    .line 393
    invoke-static {v0, v1, v2}, Lcom/android/server/GestureLauncherService;->-wrap0(Lcom/android/server/GestureLauncherService;ZI)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 395
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->-get6(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 396
    invoke-direct {p0, p1}, Lcom/android/server/GestureLauncherService$GestureEventListener;->trackCameraLaunchEvent(Landroid/hardware/SensorEvent;)V

    .line 398
    :cond_2b
    return-void

    .line 382
    :cond_2c
    return-void
.end method

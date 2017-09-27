.class Lcom/android/server/GestureLauncherService$3;
.super Ljava/lang/Object;
.source "GestureLauncherService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$3;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 463
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v0, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 467
    iget-object v2, p0, Lcom/android/server/GestureLauncherService$3;->this$0:Lcom/android/server/GestureLauncherService;

    monitor-enter v2

    .line 468
    :try_start_7
    iget-object v3, p0, Lcom/android/server/GestureLauncherService$3;->this$0:Lcom/android/server/GestureLauncherService;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_24

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    const/high16 v5, 0x40800000    # 4.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_22

    :goto_1d
    invoke-static {v3, v0}, Lcom/android/server/GestureLauncherService;->-set4(Lcom/android/server/GestureLauncherService;Z)Z
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_2e

    monitor-exit v2

    .line 466
    return-void

    :cond_22
    move v0, v1

    .line 468
    goto :goto_1d

    :cond_24
    :try_start_24
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_2e

    cmpl-float v4, v4, v6

    if-nez v4, :cond_22

    goto :goto_1d

    .line 467
    :catchall_2e
    move-exception v0

    monitor-exit v2

    throw v0
.end method

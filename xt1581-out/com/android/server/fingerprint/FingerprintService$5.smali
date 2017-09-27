.class Lcom/android/server/fingerprint/FingerprintService$5;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 185
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v0, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 189
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get11(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 190
    :try_start_b
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2d

    .line 191
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    const/high16 v5, 0x40800000    # 4.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2b

    :goto_21
    invoke-static {v3, v0}, Lcom/android/server/fingerprint/FingerprintService;->-set3(Lcom/android/server/fingerprint/FingerprintService;Z)Z
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_3c

    :goto_24
    monitor-exit v2

    .line 197
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap10(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 188
    return-void

    :cond_2b
    move v0, v1

    .line 191
    goto :goto_21

    .line 193
    :cond_2d
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    cmpl-float v4, v4, v6

    if-nez v4, :cond_3f

    :goto_38
    invoke-static {v3, v0}, Lcom/android/server/fingerprint/FingerprintService;->-set3(Lcom/android/server/fingerprint/FingerprintService;Z)Z
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_3c

    goto :goto_24

    .line 189
    :catchall_3c
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3f
    move v0, v1

    .line 193
    goto :goto_38
.end method

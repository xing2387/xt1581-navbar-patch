.class Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Lcom/motorola/slpc/ModalityManager$MovementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider$MovementMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    .prologue
    .line 3197
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3198
    return-void
.end method


# virtual methods
.method public onEndMovement()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 3248
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string/jumbo v1, "GnssLocationProvider"

    const-string/jumbo v2, "MovementMonitor onEndMovement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    :cond_11
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-nez v1, :cond_23

    .line 3250
    const-string/jumbo v1, "GnssLocationProvider"

    const-string/jumbo v2, "MovementMonitor onEndMovement when not monitoring!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    return-void

    .line 3255
    :cond_23
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->-get2(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;)Z

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->-get1(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 3260
    :cond_33
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-static {v1, v3}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->-set1(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;Z)Z

    .line 3261
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-static {v1, v3}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->-set0(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;Z)Z

    .line 3263
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->-set2(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;J)J

    .line 3267
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    iget-object v2, v1, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    monitor-enter v2

    .line 3269
    :try_start_4b
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->updateSavings(ZZ)Z

    move-result v0

    .line 3273
    .local v0, "changed":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-get12(Lcom/android/server/location/GnssLocationProvider;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->-get0(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;)I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-gtz v1, :cond_c5

    .line 3274
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v1

    if-eqz v1, :cond_91

    const-string/jumbo v1, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MovementMonitor hibernate w/ prop interval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3275
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-static {v4}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->-get3(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;)I

    move-result v4

    .line 3274
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    :cond_91
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->-set3(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;I)I

    .line 3277
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->-get3(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    iget-object v4, v4, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v4}, Lcom/android/server/location/GnssLocationProvider;->-get16(Lcom/android/server/location/GnssLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/server/location/GnssLocationProvider;->-wrap26(Lcom/android/server/location/GnssLocationProvider;ILandroid/app/PendingIntent;)V
    :try_end_ac
    .catchall {:try_start_4b .. :try_end_ac} :catchall_e4

    :goto_ac
    monitor-exit v2

    .line 3288
    if-eqz v0, :cond_b4

    .line 3289
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-static {v1, v8}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->-wrap0(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;Z)V

    .line 3247
    :cond_b4
    return-void

    .line 3256
    .end local v0    # "changed":Z
    :cond_b5
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v1

    if-eqz v1, :cond_c4

    const-string/jumbo v1, "GnssLocationProvider"

    const-string/jumbo v2, "MovementMonitor *ignoring* onEndMovement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    :cond_c4
    return-void

    .line 3279
    .restart local v0    # "changed":Z
    :cond_c5
    :try_start_c5
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 3280
    const-string/jumbo v1, "GnssLocationProvider"

    const-string/jumbo v3, "MovementMonitor hibernate until sensor hub wakes us"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    :cond_d4
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->-set3(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;I)I

    .line 3283
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/server/location/GnssLocationProvider;->-wrap26(Lcom/android/server/location/GnssLocationProvider;ILandroid/app/PendingIntent;)V
    :try_end_e3
    .catchall {:try_start_c5 .. :try_end_e3} :catchall_e4

    goto :goto_ac

    .line 3267
    .end local v0    # "changed":Z
    :catchall_e4
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onStartMovement()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 3201
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string/jumbo v1, "GnssLocationProvider"

    const-string/jumbo v2, "MovementMonitor onStartMovement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3202
    :cond_11
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-nez v1, :cond_23

    .line 3203
    const-string/jumbo v1, "GnssLocationProvider"

    const-string/jumbo v2, "MovementMonitor onStartMovement when not monitoring!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    return-void

    .line 3208
    :cond_23
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->-get2(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;)Z

    move-result v1

    if-nez v1, :cond_43

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->-get1(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 3209
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v1

    if-eqz v1, :cond_42

    const-string/jumbo v1, "GnssLocationProvider"

    const-string/jumbo v2, "MovementMonitor *ignoring* onStartMovement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    :cond_42
    return-void

    .line 3213
    :cond_43
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-static {v1, v3}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->-set0(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;Z)Z

    .line 3216
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->cancelAlarm()V

    .line 3219
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->-get2(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;)Z

    move-result v1

    if-nez v1, :cond_71

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->-get4(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;)I

    move-result v1

    if-eq v1, v3, :cond_71

    .line 3220
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 3221
    const-string/jumbo v1, "GnssLocationProvider"

    const-string/jumbo v2, "onStartMovement(), calling updateNoFix()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    :cond_6c
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->updateNoFix()V

    .line 3226
    :cond_71
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-static {v1, v5}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->-set1(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;Z)Z

    .line 3229
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    iget-object v2, v1, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    monitor-enter v2

    .line 3231
    :try_start_7b
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->updateSavings(ZZ)Z

    move-result v0

    .line 3234
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-get7(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 3236
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/android/server/location/GnssLocationProvider;->-wrap36(Lcom/android/server/location/GnssLocationProvider;ZZ)V
    :try_end_96
    .catchall {:try_start_7b .. :try_end_96} :catchall_9f

    :cond_96
    monitor-exit v2

    .line 3242
    if-eqz v0, :cond_9e

    .line 3243
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-static {v1, v5}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->-wrap0(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;Z)V

    .line 3200
    :cond_9e
    return-void

    .line 3229
    .end local v0    # "changed":Z
    :catchall_9f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

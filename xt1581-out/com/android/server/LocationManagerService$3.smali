.class Lcom/android/server/LocationManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->setupInstBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 338
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "com.motorola.location.instrumentation"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ed

    .line 340
    const-string/jumbo v4, "com.motorola.location.insttype"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "instType":Ljava/lang/String;
    const-string/jumbo v4, "com.motorola.location.instincvalue"

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 343
    .local v2, "instIncValue":J
    const-string/jumbo v4, "gpsUptime"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 344
    iget-object v4, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v4}, Lcom/android/server/LocationManagerService;->-get5(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationMetrics$LocationStats;

    move-result-object v4

    iget-wide v6, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->gpsUptime:J

    add-long/2addr v6, v2

    iput-wide v6, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->gpsUptime:J

    .line 346
    invoke-static {}, Lcom/android/server/LocationManagerService;->-get9()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 347
    const-string/jumbo v4, "LocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "gpsUptime incremented by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 348
    const-string/jumbo v6, " total: "

    .line 347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 348
    iget-object v6, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->-get5(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationMetrics$LocationStats;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/server/location/LocationMetrics$LocationStats;->gpsUptime:J

    .line 347
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v1    # "instType":Ljava/lang/String;
    .end local v2    # "instIncValue":J
    :cond_64
    :goto_64
    return-void

    .line 351
    .restart local v1    # "instType":Ljava/lang/String;
    .restart local v2    # "instIncValue":J
    :cond_65
    const-string/jumbo v4, "hardwareGeofenceCount"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 352
    iget-object v4, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v4}, Lcom/android/server/LocationManagerService;->-get5(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationMetrics$LocationStats;

    move-result-object v4

    iget-wide v6, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->hardwareGeofenceCount:J

    add-long/2addr v6, v2

    iput-wide v6, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->hardwareGeofenceCount:J

    goto :goto_64

    .line 353
    :cond_7a
    const-string/jumbo v4, "flpHwGeofenceCount"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 354
    iget-object v4, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v4}, Lcom/android/server/LocationManagerService;->-get5(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationMetrics$LocationStats;

    move-result-object v4

    iget-wide v6, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->flpHwGeofenceCount:J

    add-long/2addr v6, v2

    iput-wide v6, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->flpHwGeofenceCount:J

    goto :goto_64

    .line 355
    :cond_8f
    const-string/jumbo v4, "smartGpsCount"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 356
    iget-object v4, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v4}, Lcom/android/server/LocationManagerService;->-get5(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationMetrics$LocationStats;

    move-result-object v4

    iget-wide v6, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->smartGpsCount:J

    add-long/2addr v6, v2

    iput-wide v6, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->smartGpsCount:J

    goto :goto_64

    .line 357
    :cond_a4
    const-string/jumbo v4, "smartGpsUptime"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 358
    iget-object v4, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v4}, Lcom/android/server/LocationManagerService;->-get5(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationMetrics$LocationStats;

    move-result-object v4

    iget-wide v6, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->smartGpsUptime:J

    add-long/2addr v6, v2

    iput-wide v6, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->smartGpsUptime:J

    .line 360
    invoke-static {}, Lcom/android/server/LocationManagerService;->-get9()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 361
    const-string/jumbo v4, "LocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "smartGpsUptime incremented by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 362
    const-string/jumbo v6, " total: "

    .line 361
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 362
    iget-object v6, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->-get5(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationMetrics$LocationStats;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/server/location/LocationMetrics$LocationStats;->smartGpsUptime:J

    .line 361
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64

    .line 368
    .end local v1    # "instType":Ljava/lang/String;
    .end local v2    # "instIncValue":J
    :cond_ed
    const-string/jumbo v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_115

    .line 369
    iget-object v4, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v4}, Lcom/android/server/LocationManagerService;->-get0(Lcom/android/server/LocationManagerService;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v5}, Lcom/android/server/LocationManagerService;->-get15(Lcom/android/server/LocationManagerService;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 370
    iget-object v4, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v4}, Lcom/android/server/LocationManagerService;->-wrap8(Lcom/android/server/LocationManagerService;)V

    .line 371
    iget-object v4, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v4}, Lcom/android/server/LocationManagerService;->-get16(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->close()V

    goto/16 :goto_64

    .line 372
    :cond_115
    const-string/jumbo v4, "com.android.internal.location.ALARM_SETTING_CHECKIN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 373
    iget-object v4, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v4}, Lcom/android/server/LocationManagerService;->-get5(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationMetrics$LocationStats;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-virtual {v5}, Lcom/android/server/LocationManagerService;->getLocationSetting()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->locationSetting:Ljava/lang/String;

    .line 374
    iget-object v4, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v4}, Lcom/android/server/LocationManagerService;->-wrap4(Lcom/android/server/LocationManagerService;)V

    goto/16 :goto_64
.end method

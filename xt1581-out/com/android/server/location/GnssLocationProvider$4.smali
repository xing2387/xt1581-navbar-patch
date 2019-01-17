.class Lcom/android/server/location/GnssLocationProvider$4;
.super Landroid/content/BroadcastReceiver;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 555
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v3

    if-eqz v3, :cond_26

    const-string/jumbo v3, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "receive broadcast intent, action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_26
    if-nez v0, :cond_32

    .line 559
    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "action==null in BroadcastReceiver::onReceive()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void

    .line 564
    :cond_32
    const-string/jumbo v3, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 566
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v3

    if-eqz v3, :cond_4a

    const-string/jumbo v3, "GnssLocationProvider"

    const-string/jumbo v4, "ALARM_WAKEUP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_4a
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3, v2, v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap37(Lcom/android/server/location/GnssLocationProvider;ZZ)V

    .line 554
    :cond_4f
    :goto_4f
    return-void

    .line 568
    :cond_50
    const-string/jumbo v3, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 569
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v2

    if-eqz v2, :cond_68

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "ALARM_TIMEOUT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_68
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get8(Lcom/android/server/location/GnssLocationProvider;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v4}, Lcom/android/server/location/GnssLocationProvider;->-get31(Lcom/android/server/location/GnssLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/location/GnssLocationProvider;->-wrap27(Lcom/android/server/location/GnssLocationProvider;ILandroid/app/PendingIntent;)V

    goto :goto_4f

    .line 571
    :cond_7a
    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 572
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get15(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    move-result-object v3

    if-eqz v3, :cond_4f

    .line 573
    const-string/jumbo v3, "plugged"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 574
    .local v1, "plugged":I
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get15(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    move-result-object v3

    if-eqz v1, :cond_9b

    const/4 v2, 0x1

    :cond_9b
    invoke-virtual {v3, v2}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->updateCharging(Z)V

    goto :goto_4f

    .line 576
    .end local v1    # "plugged":I
    :cond_9f
    const-string/jumbo v3, "com.android.internal.location.ALARM_MVMT_MON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 577
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v3

    if-eqz v3, :cond_b7

    const-string/jumbo v3, "GnssLocationProvider"

    const-string/jumbo v4, "ALARM_MVMT_MON"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_b7
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/16 v4, 0x11

    invoke-static {v3, v4, v2, v6}, Lcom/android/server/location/GnssLocationProvider;->-wrap35(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V

    goto :goto_4f

    .line 580
    :cond_bf
    const-string/jumbo v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 581
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, p2}, Lcom/android/server/location/GnssLocationProvider;->-wrap13(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V

    goto :goto_4f

    .line 582
    :cond_ce
    const-string/jumbo v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 583
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, p2}, Lcom/android/server/location/GnssLocationProvider;->-wrap14(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V

    goto/16 :goto_4f

    .line 584
    :cond_de
    const-string/jumbo v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_102

    .line 585
    const-string/jumbo v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 584
    if-nez v2, :cond_102

    .line 586
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 584
    if-nez v2, :cond_102

    .line 587
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 584
    if-eqz v2, :cond_109

    .line 588
    :cond_102
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap40(Lcom/android/server/location/GnssLocationProvider;)V

    goto/16 :goto_4f

    .line 589
    :cond_109
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_119

    .line 590
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, p1}, Lcom/android/server/location/GnssLocationProvider;->-wrap38(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V

    goto/16 :goto_4f

    .line 592
    :cond_119
    const-string/jumbo v2, "com.motorola.slpc.SlpcSystem.BOOTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 593
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v2

    if-eqz v2, :cond_131

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "MOT_SLPC_SYSTEM_BOOTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_131
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap19(Lcom/android/server/location/GnssLocationProvider;)V

    goto/16 :goto_4f
.end method

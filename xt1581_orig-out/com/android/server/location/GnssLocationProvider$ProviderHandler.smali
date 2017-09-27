.class final Lcom/android/server/location/GnssLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2544
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    .line 2545
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2544
    return-void
.end method

.method private handleInitialize()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 2630
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get6(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v12}, Lcom/android/server/location/GnssLocationProvider;->-get22(Lcom/android/server/location/GnssLocationProvider;)Ljava/util/Properties;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/server/location/GnssLocationProvider;->-wrap33(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Ljava/util/Properties;)V

    .line 2639
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->-get6(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v10

    .line 2640
    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get21(Lcom/android/server/location/GnssLocationProvider;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    move-result-object v11

    .line 2639
    invoke-virtual {v10, v11}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 2644
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-wrap1()Z

    move-result v10

    if-eqz v10, :cond_11c

    .line 2645
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2646
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v10, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2647
    const-string/jumbo v10, "sms"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2648
    const-string/jumbo v10, "localhost"

    const-string/jumbo v11, "7275"

    invoke-virtual {v1, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 2649
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->-get6(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get2(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v11

    invoke-virtual {v10, v11, v1, v13, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2651
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2652
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v10, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2654
    :try_start_60
    const-string/jumbo v10, "application/vnd.omaloc-supl-init"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_66
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_60 .. :try_end_66} :catch_110

    .line 2658
    :goto_66
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->-get6(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get2(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v11

    invoke-virtual {v10, v11, v1, v13, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2664
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_75
    :goto_75
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2665
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v10, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2666
    const-string/jumbo v10, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2667
    const-string/jumbo v10, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2668
    const-string/jumbo v10, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2669
    const-string/jumbo v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2670
    const-string/jumbo v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2671
    const-string/jumbo v10, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2673
    const-string/jumbo v10, "com.android.internal.location.ALARM_MVMT_MON"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2674
    const-string/jumbo v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2676
    const-string/jumbo v10, "com.motorola.slpc.SlpcSystem.BOOTED"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2677
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->-get6(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get2(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v11

    invoke-virtual {v10, v11, v1, v13, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2681
    new-instance v7, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v7}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 2682
    .local v7, "networkRequestBuilder":Landroid/net/NetworkRequest$Builder;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 2683
    invoke-virtual {v7, v14}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 2684
    invoke-virtual {v7}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v6

    .line 2685
    .local v6, "networkRequest":Landroid/net/NetworkRequest;
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->-get5(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get17(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 2689
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->-get6(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "location"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 2690
    .local v2, "locManager":Landroid/location/LocationManager;
    const-wide/16 v4, 0x0

    .line 2691
    .local v4, "minTime":J
    const/4 v3, 0x0

    .line 2692
    .local v3, "minDistance":F
    const/4 v8, 0x0

    .line 2694
    .local v8, "oneShot":Z
    const-string/jumbo v10, "passive"

    .line 2693
    invoke-static {v10, v4, v5, v3, v8}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v9

    .line 2700
    .local v9, "request":Landroid/location/LocationRequest;
    invoke-virtual {v9, v14}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 2703
    new-instance v10, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {v10, v11, v13}, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;)V

    .line 2704
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->getLooper()Landroid/os/Looper;

    move-result-object v11

    .line 2701
    invoke-virtual {v2, v9, v10, v11}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 2627
    return-void

    .line 2655
    .end local v2    # "locManager":Landroid/location/LocationManager;
    .end local v3    # "minDistance":F
    .end local v4    # "minTime":J
    .end local v6    # "networkRequest":Landroid/net/NetworkRequest;
    .end local v7    # "networkRequestBuilder":Landroid/net/NetworkRequest$Builder;
    .end local v8    # "oneShot":Z
    .end local v9    # "request":Landroid/location/LocationRequest;
    :catch_110
    move-exception v0

    .line 2656
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string/jumbo v10, "GnssLocationProvider"

    const-string/jumbo v11, "Malformed SUPL init mime type"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_66

    .line 2659
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_11c
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v10

    if-eqz v10, :cond_75

    .line 2660
    const-string/jumbo v10, "GnssLocationProvider"

    const-string/jumbo v11, "Skipped registration for SMS/WAP-PUSH messages because AGPS Ril in GPS HAL is not supported"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_75
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2550
    iget v1, p1, Landroid/os/Message;->what:I

    .line 2552
    .local v1, "message":I
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Gps MessageHandler. msg.what "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " msg.arg1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2553
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 2552
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2553
    const-string/jumbo v4, " msg.arg2: "

    .line 2552
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2553
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 2552
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    :cond_3e
    packed-switch v1, :pswitch_data_128

    .line 2614
    :cond_41
    :goto_41
    :pswitch_41
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v5, :cond_89

    .line 2616
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get30(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2617
    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WakeLock released by handleMessage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2618
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2617
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2618
    const-string/jumbo v4, ")"

    .line 2617
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    :cond_89
    return-void

    .line 2557
    :pswitch_8a
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v5, :cond_94

    .line 2558
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap17(Lcom/android/server/location/GnssLocationProvider;)V

    goto :goto_41

    .line 2560
    :cond_94
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap15(Lcom/android/server/location/GnssLocationProvider;)V

    goto :goto_41

    .line 2564
    :pswitch_9a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;

    .line 2565
    .local v0, "gpsRequest":Lcom/android/server/location/GnssLocationProvider$GpsRequest;
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    iget-object v4, v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;->source:Landroid/os/WorkSource;

    invoke-static {v2, v3, v4}, Lcom/android/server/location/GnssLocationProvider;->-wrap23(Lcom/android/server/location/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    goto :goto_41

    .line 2568
    .end local v0    # "gpsRequest":Lcom/android/server/location/GnssLocationProvider$GpsRequest;
    :pswitch_a8
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Network;

    invoke-static {v3, v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap25(Lcom/android/server/location/GnssLocationProvider;Landroid/net/Network;)V

    goto :goto_41

    .line 2571
    :pswitch_b2
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/net/InetAddress;

    invoke-static {v3, v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap22(Lcom/android/server/location/GnssLocationProvider;Ljava/net/InetAddress;)V

    goto :goto_41

    .line 2574
    :pswitch_bc
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->-wrap21(Lcom/android/server/location/GnssLocationProvider;I)V

    goto/16 :goto_41

    .line 2577
    :pswitch_c5
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap18(Lcom/android/server/location/GnssLocationProvider;)V

    goto/16 :goto_41

    .line 2581
    :pswitch_cc
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get29(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get7(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 2582
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap16(Lcom/android/server/location/GnssLocationProvider;)V

    goto/16 :goto_41

    .line 2587
    :pswitch_e3
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, v6}, Lcom/android/server/location/GnssLocationProvider;->-set1(Lcom/android/server/location/GnssLocationProvider;I)I

    goto/16 :goto_41

    .line 2590
    :pswitch_ea
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, v6}, Lcom/android/server/location/GnssLocationProvider;->-set0(Lcom/android/server/location/GnssLocationProvider;I)I

    goto/16 :goto_41

    .line 2593
    :pswitch_f1
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    invoke-static {v3, v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap24(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V

    goto/16 :goto_41

    .line 2596
    :pswitch_fc
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get6(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->-wrap38(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V

    goto/16 :goto_41

    .line 2599
    :pswitch_109
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->handleInitialize()V

    goto/16 :goto_41

    .line 2603
    :pswitch_10e
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap20(Lcom/android/server/location/GnssLocationProvider;)V

    goto/16 :goto_41

    .line 2608
    :pswitch_115
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get15(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 2609
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get15(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->receivedAlarm()V

    goto/16 :goto_41

    .line 2555
    :pswitch_data_128
    .packed-switch 0x2
        :pswitch_8a
        :pswitch_9a
        :pswitch_a8
        :pswitch_c5
        :pswitch_cc
        :pswitch_f1
        :pswitch_41
        :pswitch_41
        :pswitch_e3
        :pswitch_ea
        :pswitch_fc
        :pswitch_109
        :pswitch_b2
        :pswitch_bc
        :pswitch_10e
        :pswitch_115
    .end packed-switch
.end method

.class Lcom/android/server/LocationManagerService$LocationBackgroundHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationBackgroundHandler"
.end annotation


# instance fields
.field public mLoggingFastUpdate:Z

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;

    .prologue
    .line 2587
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationBackgroundHandler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    .line 2592
    :try_start_1
    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v8, :cond_14f

    .line 2593
    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v7}, Lcom/android/server/LocationManagerService;->-get7(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_172

    .line 2595
    :try_start_c
    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-virtual {v7}, Lcom/android/server/LocationManagerService;->getAllProviders()Ljava/util/List;

    move-result-object v4

    .line 2596
    .local v4, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2598
    .local v0, "activeListeners":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_131

    .line 2599
    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v7}, Lcom/android/server/LocationManagerService;->-get13(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v7

    .line 2600
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 2599
    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 2601
    .local v6, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v6, :cond_12d

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_12d

    .line 2602
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_33
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_12d

    .line 2603
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2604
    .local v5, "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mUidName:Ljava/lang/String;

    const-string/jumbo v9, "android.uid.system"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_55

    .line 2605
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    const-string/jumbo v9, "passive"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12a

    .line 2608
    :cond_55
    :goto_55
    const-string/jumbo v7, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Running, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2609
    const-string/jumbo v10, ", "

    .line 2608
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2609
    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mUidName:Ljava/lang/String;

    .line 2608
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2610
    const-string/jumbo v10, ", mInterval: "

    .line 2608
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2610
    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v10}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v10

    .line 2608
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2611
    const-string/jumbo v10, ", mFastestInterval: "

    .line 2608
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2612
    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v10}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v10

    .line 2608
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2613
    const-string/jumbo v10, ", mSmallestDisplacement: "

    .line 2608
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2614
    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v10}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    move-result v10

    .line 2608
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2615
    const-string/jumbo v10, ", mNumUpdates: "

    .line 2608
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2615
    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v10}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v10

    .line 2608
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2616
    const-string/jumbo v10, ", Receiver: "

    .line 2608
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2616
    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 2608
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    if-eqz v7, :cond_126

    .line 2619
    const-string/jumbo v7, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Lat: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2620
    const-string/jumbo v10, ", Long: "

    .line 2619
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2620
    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    .line 2619
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2621
    const-string/jumbo v10, ", Bearing: "

    .line 2619
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2621
    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getBearing()F

    move-result v10

    .line 2619
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2622
    const-string/jumbo v10, ", Accuracy: "

    .line 2619
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2622
    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    .line 2619
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    :cond_126
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_33

    .line 2606
    :cond_12a
    const/4 v0, 0x1

    goto/16 :goto_55

    .line 2598
    .end local v3    # "j":I
    .end local v5    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_12d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_14

    .line 2628
    .end local v6    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_131
    if-eqz v0, :cond_150

    .line 2629
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->mLoggingFastUpdate:Z

    .line 2630
    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v7}, Lcom/android/server/LocationManagerService;->-get2(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationBackgroundHandler;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->removeMessages(I)V

    .line 2631
    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v7}, Lcom/android/server/LocationManagerService;->-get2(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationBackgroundHandler;

    move-result-object v7

    .line 2632
    invoke-static {}, Lcom/android/server/LocationManagerService;->-get8()J

    move-result-wide v10

    .line 2631
    const/4 v9, 0x1

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_14e
    .catchall {:try_start_c .. :try_end_14e} :catchall_16f

    :goto_14e
    :try_start_14e
    monitor-exit v8
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_14f} :catch_172

    .line 2590
    .end local v0    # "activeListeners":Z
    .end local v2    # "i":I
    .end local v4    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_14f
    :goto_14f
    return-void

    .line 2634
    .restart local v0    # "activeListeners":Z
    .restart local v2    # "i":I
    .restart local v4    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_150
    const/4 v7, 0x0

    :try_start_151
    iput-boolean v7, p0, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->mLoggingFastUpdate:Z

    .line 2635
    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v7}, Lcom/android/server/LocationManagerService;->-get2(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationBackgroundHandler;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->removeMessages(I)V

    .line 2636
    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v7}, Lcom/android/server/LocationManagerService;->-get2(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationBackgroundHandler;

    move-result-object v7

    .line 2637
    invoke-static {}, Lcom/android/server/LocationManagerService;->-get8()J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    .line 2636
    const/4 v9, 0x1

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_16e
    .catchall {:try_start_151 .. :try_end_16e} :catchall_16f

    goto :goto_14e

    .line 2593
    .end local v0    # "activeListeners":Z
    .end local v2    # "i":I
    .end local v4    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_16f
    move-exception v7

    :try_start_170
    monitor-exit v8

    throw v7
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_172} :catch_172

    .line 2641
    :catch_172
    move-exception v1

    .line 2643
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "LocationManagerService"

    const-string/jumbo v8, "Exception in LocationBackgroundHandler.handleMessage:"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14f
.end method

.class Lcom/android/server/notification/NotificationManagerService$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/NotificationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEffects()V
    .registers 4

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 624
    :try_start_5
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_12

    const-string/jumbo v0, "NotificationService"

    const-string/jumbo v2, "clearEffects"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_12
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap19(Lcom/android/server/notification/NotificationManagerService;)V

    .line 626
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap20(Lcom/android/server/notification/NotificationManagerService;)V

    .line 627
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap18(Lcom/android/server/notification/NotificationManagerService;)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_23

    monitor-exit v1

    .line 622
    return-void

    .line 623
    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onClearAll(III)V
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "userId"    # I

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 559
    :try_start_5
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 560
    const/4 v6, 0x1

    move v1, p1

    move v2, p2

    move v3, p3

    .line 559
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_12

    monitor-exit v7

    .line 557
    return-void

    .line 558
    :catchall_12
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public onNotificationActionClick(IILjava/lang/String;I)V
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "actionIndex"    # I

    .prologue
    .line 587
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 588
    :try_start_5
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 589
    .local v2, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v2, :cond_2d

    .line 590
    const-string/jumbo v3, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No notification with key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_42

    monitor-exit v4

    .line 591
    return-void

    .line 593
    :cond_2d
    :try_start_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 595
    .local v0, "now":J
    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v3

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v5

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v6

    .line 594
    invoke-static {p3, p4, v3, v5, v6}, Lcom/android/server/EventLogTags;->writeNotificationActionClicked(Ljava/lang/String;IIII)V
    :try_end_40
    .catchall {:try_start_2d .. :try_end_40} :catchall_42

    monitor-exit v4

    .line 586
    return-void

    .line 587
    .end local v0    # "now":J
    .end local v2    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_42
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onNotificationClear(IILjava/lang/String;Ljava/lang/String;II)V
    .registers 19
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "userId"    # I

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v6, 0x0

    .line 604
    const/16 v7, 0x42

    .line 605
    const/4 v8, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v9, p6

    .line 603
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 602
    return-void
.end method

.method public onNotificationClick(IILjava/lang/String;)V
    .registers 23
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 567
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/notification/NotificationRecord;

    .line 568
    .local v16, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v16, :cond_37

    .line 569
    const-string/jumbo v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No notification with key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_9 .. :try_end_35} :catchall_7c

    monitor-exit v18

    .line 570
    return-void

    .line 572
    :cond_37
    :try_start_37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 574
    .local v14, "now":J
    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v4

    .line 573
    move-object/from16 v0, p3

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/EventLogTags;->writeNotificationClicked(Ljava/lang/String;III)V

    .line 576
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    .line 577
    .local v17, "sbn":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 578
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    .line 579
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v11

    .line 578
    const/16 v8, 0x10

    .line 579
    const/16 v9, 0x40

    const/4 v10, 0x0

    .line 580
    const/4 v12, 0x1

    const/4 v13, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    .line 577
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    :try_end_7a
    .catchall {:try_start_37 .. :try_end_7a} :catchall_7c

    monitor-exit v18

    .line 565
    return-void

    .line 566
    .end local v14    # "now":J
    .end local v16    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v17    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catchall_7c
    move-exception v2

    monitor-exit v18

    throw v2
.end method

.method public onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 30
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "uid"    # I
    .param p7, "initialPid"    # I
    .param p8, "message"    # Ljava/lang/String;
    .param p9, "userId"    # I

    .prologue
    .line 634
    const-string/jumbo v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onNotification error pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 635
    const-string/jumbo v6, "; will crashApplication(uid="

    .line 634
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 635
    const-string/jumbo v6, ", pid="

    .line 634
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 635
    const-string/jumbo v6, ")"

    .line 634
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 637
    const/4 v14, 0x4

    const/4 v15, 0x0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v13, p9

    .line 636
    invoke-virtual/range {v4 .. v15}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 638
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 640
    .local v18, "ident":J
    :try_start_73
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 641
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad notification posted from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 642
    const-string/jumbo v6, ": "

    .line 641
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 640
    move/from16 v0, p6

    move/from16 v1, p7

    move-object/from16 v2, p3

    invoke-interface {v4, v0, v1, v2, v5}, Landroid/app/IActivityManager;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_a3} :catch_a7
    .catchall {:try_start_73 .. :try_end_a3} :catchall_ac

    .line 645
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 633
    :goto_a6
    return-void

    .line 643
    :catch_a7
    move-exception v16

    .line 645
    .local v16, "e":Landroid/os/RemoteException;
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a6

    .line 644
    .end local v16    # "e":Landroid/os/RemoteException;
    :catchall_ac
    move-exception v4

    .line 645
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 644
    throw v4
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    .registers 14
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 675
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v9

    .line 676
    :try_start_7
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    .line 677
    .local v8, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v8, :cond_31

    .line 678
    iget-object v1, v8, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onExpansionChanged(ZZ)V

    .line 679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 681
    .local v6, "now":J
    if-eqz p2, :cond_33

    move v1, v2

    :goto_1f
    if-eqz p3, :cond_35

    .line 682
    :goto_21
    invoke-virtual {v8, v6, v7}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v3

    invoke-virtual {v8, v6, v7}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v4

    invoke-virtual {v8, v6, v7}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v5

    move-object v0, p1

    .line 680
    invoke-static/range {v0 .. v5}, Lcom/android/server/EventLogTags;->writeNotificationExpansion(Ljava/lang/String;IIIII)V
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_37

    .end local v6    # "now":J
    :cond_31
    monitor-exit v9

    .line 674
    return-void

    .restart local v6    # "now":J
    :cond_33
    move v1, v0

    .line 681
    goto :goto_1f

    :cond_35
    move v2, v0

    goto :goto_21

    .line 675
    .end local v6    # "now":J
    .end local v8    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_37
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 11
    .param p1, "newlyVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .param p2, "noLongerVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;

    .prologue
    const/4 v2, 0x0

    .line 652
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 653
    :try_start_6
    array-length v5, p1

    move v3, v2

    :goto_8
    if-ge v3, v5, :cond_2a

    aget-object v0, p1, v3

    .line 654
    .local v0, "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v7, v0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 655
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v1, :cond_1d

    .line 653
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 656
    :cond_1d
    iget v6, v0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v6}, Lcom/android/server/notification/NotificationRecord;->setVisibility(ZI)V

    .line 657
    invoke-virtual {v0}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_27

    goto :goto_1a

    .line 652
    .end local v0    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v1    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_27
    move-exception v2

    monitor-exit v4

    throw v2

    .line 663
    :cond_2a
    :try_start_2a
    array-length v3, p2

    :goto_2b
    if-ge v2, v3, :cond_4a

    aget-object v0, p2, v2

    .line 664
    .restart local v0    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v6, v0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 665
    .restart local v1    # "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v1, :cond_40

    .line 663
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 666
    :cond_40
    iget v5, v0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Lcom/android/server/notification/NotificationRecord;->setVisibility(ZI)V

    .line 667
    invoke-virtual {v0}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V
    :try_end_49
    .catchall {:try_start_2a .. :try_end_49} :catchall_27

    goto :goto_3d

    .end local v0    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v1    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_4a
    monitor-exit v4

    .line 651
    return-void
.end method

.method public onPanelHidden()V
    .registers 1

    .prologue
    .line 618
    invoke-static {}, Lcom/android/server/EventLogTags;->writeNotificationPanelHidden()V

    .line 617
    return-void
.end method

.method public onPanelRevealed(ZI)V
    .registers 3
    .param p1, "clearEffects"    # Z
    .param p2, "items"    # I

    .prologue
    .line 610
    invoke-static {p2}, Lcom/android/server/EventLogTags;->writeNotificationPanelRevealed(I)V

    .line 611
    if-eqz p1, :cond_8

    .line 612
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$1;->clearEffects()V

    .line 609
    :cond_8
    return-void
.end method

.method public onSetDisabled(I)V
    .registers 10
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x0

    .line 530
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 531
    :try_start_6
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 532
    const/high16 v7, 0x40000

    and-int/2addr v7, p1

    if-eqz v7, :cond_e

    const/4 v4, 0x1

    .line 531
    :cond_e
    invoke-static {v6, v4}, Lcom/android/server/notification/NotificationManagerService;->-set5(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 533
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/server/notification/NotificationManagerService;->-wrap9(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 535
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_43

    move-result-wide v2

    .line 537
    .local v2, "identity":J
    :try_start_1e
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v1

    .line 538
    .local v1, "player":Landroid/media/IRingtonePlayer;
    if-eqz v1, :cond_2b

    .line 539
    invoke-interface {v1}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2b} :catch_3e
    .catchall {:try_start_1e .. :try_end_2b} :catchall_46

    .line 543
    :cond_2b
    :try_start_2b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 546
    .end local v1    # "player":Landroid/media/IRingtonePlayer;
    :goto_2e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_43

    move-result-wide v2

    .line 548
    :try_start_32
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->cancel()V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_4b

    .line 550
    :try_start_39
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_43

    .end local v2    # "identity":J
    :cond_3c
    monitor-exit v5

    .line 529
    return-void

    .line 541
    .restart local v2    # "identity":J
    :catch_3e
    move-exception v0

    .line 543
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_2e

    .line 530
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "identity":J
    :catchall_43
    move-exception v4

    monitor-exit v5

    throw v4

    .line 542
    .restart local v2    # "identity":J
    :catchall_46
    move-exception v4

    .line 543
    :try_start_47
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 542
    throw v4

    .line 549
    :catchall_4b
    move-exception v4

    .line 550
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 549
    throw v4
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_43
.end method

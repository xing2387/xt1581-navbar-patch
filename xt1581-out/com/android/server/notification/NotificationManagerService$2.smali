.class Lcom/android/server/notification/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


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
    .line 683
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 29
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 687
    .local v12, "action":Ljava/lang/String;
    if-nez v12, :cond_7

    .line 688
    return-void

    .line 691
    :cond_7
    const/16 v22, 0x0

    .line 692
    .local v22, "queryRestart":Z
    const/16 v20, 0x0

    .line 693
    .local v20, "queryRemove":Z
    const/16 v17, 0x0

    .line 694
    .local v17, "packageChanged":Z
    const/4 v13, 0x1

    .line 695
    .local v13, "cancelNotifications":Z
    const/4 v10, 0x5

    .line 697
    .local v10, "reason":I
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 698
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 697
    .local v20, "queryRemove":Z
    if-nez v20, :cond_4e

    .line 699
    const-string/jumbo v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 697
    if-nez v2, :cond_4e

    .line 700
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 697
    .local v17, "packageChanged":Z
    if-nez v17, :cond_4e

    .line 701
    const-string/jumbo v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 697
    .local v22, "queryRestart":Z
    if-nez v22, :cond_4e

    .line 702
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 697
    if-nez v2, :cond_4e

    .line 703
    const-string/jumbo v2, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 697
    if-eqz v2, :cond_179

    .line 704
    .end local v17    # "packageChanged":Z
    .end local v20    # "queryRemove":Z
    .end local v22    # "queryRestart":Z
    :cond_4e
    const-string/jumbo v2, "android.intent.extra.user_handle"

    .line 705
    const/4 v3, -0x1

    .line 704
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 706
    .local v9, "changeUserId":I
    const/16 v18, 0x0

    .line 707
    .local v18, "pkgList":[Ljava/lang/String;
    if-eqz v20, :cond_d6

    .line 708
    const-string/jumbo v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 709
    :goto_66
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_91

    const-string/jumbo v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " queryReplace="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_91
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 711
    const-string/jumbo v2, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 750
    .local v18, "pkgList":[Ljava/lang/String;
    :goto_a3
    if-eqz v18, :cond_13d

    move-object/from16 v0, v18

    array-length v2, v0

    if-lez v2, :cond_13d

    .line 751
    const/4 v2, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v24, v2

    :goto_b2
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_13d

    aget-object v5, v18, v24

    .line 752
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v13, :cond_d1

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get1()I

    move-result v3

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get0()I

    move-result v4

    if-eqz v22, :cond_13b

    const/4 v8, 0x0

    :goto_cb
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 754
    const/4 v11, 0x0

    .line 753
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 751
    :cond_d1
    add-int/lit8 v2, v24, 0x1

    move/from16 v24, v2

    goto :goto_b2

    .line 707
    .end local v5    # "pkgName":Ljava/lang/String;
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_d6
    const/16 v21, 0x0

    .local v21, "queryReplace":Z
    goto :goto_66

    .line 712
    .end local v21    # "queryReplace":Z
    :cond_d9
    const-string/jumbo v2, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 713
    const-string/jumbo v2, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 714
    .local v18, "pkgList":[Ljava/lang/String;
    const/16 v10, 0xe

    goto :goto_a3

    .line 715
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_ee
    if-eqz v22, :cond_fa

    .line 716
    const-string/jumbo v2, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .local v18, "pkgList":[Ljava/lang/String;
    goto :goto_a3

    .line 718
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_fa
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v23

    .line 719
    .local v23, "uri":Landroid/net/Uri;
    if-nez v23, :cond_101

    .line 720
    return-void

    .line 722
    :cond_101
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 723
    .restart local v5    # "pkgName":Ljava/lang/String;
    if-nez v5, :cond_108

    .line 724
    return-void

    .line 726
    :cond_108
    if-eqz v17, :cond_120

    .line 729
    :try_start_10a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v19

    .line 731
    .local v19, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, -0x1

    if-eq v9, v2, :cond_12a

    move v2, v9

    .line 730
    :goto_112
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_117
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10a .. :try_end_117} :catch_12c
    .catch Landroid/os/RemoteException; {:try_start_10a .. :try_end_117} :catch_17a

    move-result v16

    .line 733
    .local v16, "enabled":I
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_11f

    .line 734
    if-nez v16, :cond_120

    .line 735
    :cond_11f
    const/4 v13, 0x0

    .line 747
    .end local v16    # "enabled":I
    .end local v19    # "pm":Landroid/content/pm/IPackageManager;
    :cond_120
    :goto_120
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v18, v0

    .end local v18    # "pkgList":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v5, v18, v2

    .local v18, "pkgList":[Ljava/lang/String;
    goto/16 :goto_a3

    .line 732
    .local v18, "pkgList":[Ljava/lang/String;
    .restart local v19    # "pm":Landroid/content/pm/IPackageManager;
    :cond_12a
    const/4 v2, 0x0

    goto :goto_112

    .line 737
    .end local v19    # "pm":Landroid/content/pm/IPackageManager;
    :catch_12c
    move-exception v15

    .line 740
    .local v15, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_120

    .line 741
    const-string/jumbo v2, "NotificationService"

    const-string/jumbo v3, "Exception trying to look up app enabled setting"

    invoke-static {v2, v3, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_120

    .line 753
    .end local v15    # "e":Ljava/lang/IllegalArgumentException;
    .end local v23    # "uri":Landroid/net/Uri;
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_13b
    const/4 v8, 0x1

    goto :goto_cb

    .line 758
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_13d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    move/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get16(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    move-result-object v2

    move/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->onPackagesChanged(Z[Ljava/lang/String;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get6(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    move/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v2

    move/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/RankingHelper;->onPackagesChanged(Z[Ljava/lang/String;)V

    .line 685
    .end local v9    # "changeUserId":I
    .end local v18    # "pkgList":[Ljava/lang/String;
    :cond_179
    return-void

    .line 743
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v9    # "changeUserId":I
    .local v18, "pkgList":[Ljava/lang/String;
    .restart local v23    # "uri":Landroid/net/Uri;
    :catch_17a
    move-exception v14

    .local v14, "e":Landroid/os/RemoteException;
    goto :goto_120
.end method

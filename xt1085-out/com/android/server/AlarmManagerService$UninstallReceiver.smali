.class Lcom/android/server/AlarmManagerService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 2849
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2850
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2851
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2852
    const-string/jumbo v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2853
    const-string/jumbo v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2854
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2855
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2857
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2858
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2859
    const-string/jumbo v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2860
    const-string/jumbo v2, "android.intent.action.UID_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2861
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2849
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 2866
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v10, v10, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2867
    :try_start_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2868
    .local v0, "action":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2869
    .local v5, "pkgList":[Ljava/lang/String;
    const-string/jumbo v11, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_33

    .line 2870
    const-string/jumbo v11, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2871
    .local v5, "pkgList":[Ljava/lang/String;
    array-length v11, v5

    :goto_1c
    if-ge v9, v11, :cond_31

    aget-object v3, v5, v9

    .line 2872
    .local v3, "packageName":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v12, v3}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2e

    .line 2873
    const/4 v9, -0x1

    invoke-virtual {p0, v9}, Lcom/android/server/AlarmManagerService$UninstallReceiver;->setResultCode(I)V
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_9e

    monitor-exit v10

    .line 2874
    return-void

    .line 2871
    :cond_2e
    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    .end local v3    # "packageName":Ljava/lang/String;
    :cond_31
    monitor-exit v10

    .line 2877
    return-void

    .line 2878
    .local v5, "pkgList":[Ljava/lang/String;
    :cond_33
    :try_start_33
    const-string/jumbo v11, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_85

    .line 2879
    const-string/jumbo v11, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2904
    .end local v5    # "pkgList":[Ljava/lang/String;
    :cond_43
    :goto_43
    if-eqz v5, :cond_e9

    array-length v11, v5

    if-lez v11, :cond_e9

    .line 2905
    array-length v11, v5

    :goto_49
    if-ge v9, v11, :cond_e9

    aget-object v4, v5, v9

    .line 2906
    .local v4, "pkg":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v12, v4}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    .line 2907
    iget-object v12, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v12, v12, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2908
    iget-object v12, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v12, v12, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    add-int/lit8 v2, v12, -0x1

    .local v2, "i":I
    :goto_63
    if-ltz v2, :cond_e5

    .line 2909
    iget-object v12, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v12, v12, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 2910
    .local v7, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_82

    .line 2911
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-gtz v12, :cond_82

    .line 2912
    iget-object v12, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v12, v12, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2908
    :cond_82
    add-int/lit8 v2, v2, -0x1

    goto :goto_63

    .line 2880
    .end local v2    # "i":I
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v7    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v5    # "pkgList":[Ljava/lang/String;
    :cond_85
    const-string/jumbo v11, "android.intent.action.USER_STOPPED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a1

    .line 2881
    const-string/jumbo v11, "android.intent.extra.user_handle"

    const/4 v12, -0x1

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 2882
    .local v8, "userHandle":I
    if-ltz v8, :cond_43

    .line 2883
    iget-object v11, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v11, v8}, Lcom/android/server/AlarmManagerService;->removeUserLocked(I)V
    :try_end_9d
    .catchall {:try_start_33 .. :try_end_9d} :catchall_9e

    goto :goto_43

    .line 2866
    .end local v0    # "action":Ljava/lang/String;
    .end local v5    # "pkgList":[Ljava/lang/String;
    .end local v8    # "userHandle":I
    :catchall_9e
    move-exception v9

    monitor-exit v10

    throw v9

    .line 2885
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v5    # "pkgList":[Ljava/lang/String;
    :cond_a1
    :try_start_a1
    const-string/jumbo v11, "android.intent.action.UID_REMOVED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_bc

    .line 2886
    const-string/jumbo v11, "android.intent.extra.UID"

    const/4 v12, -0x1

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2887
    .local v6, "uid":I
    if-ltz v6, :cond_43

    .line 2888
    iget-object v11, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v11, v11, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseLongArray;->delete(I)V

    goto :goto_43

    .line 2891
    .end local v6    # "uid":I
    :cond_bc
    const-string/jumbo v11, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d1

    .line 2892
    const-string/jumbo v11, "android.intent.extra.REPLACING"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_cc
    .catchall {:try_start_a1 .. :try_end_cc} :catchall_9e

    move-result v11

    .line 2891
    if-eqz v11, :cond_d1

    monitor-exit v10

    .line 2894
    return-void

    .line 2896
    :cond_d1
    :try_start_d1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 2897
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_43

    .line 2898
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 2899
    .restart local v4    # "pkg":Ljava/lang/String;
    if-eqz v4, :cond_43

    .line 2900
    const/4 v11, 0x1

    new-array v5, v11, [Ljava/lang/String;

    .end local v5    # "pkgList":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v4, v5, v11
    :try_end_e3
    .catchall {:try_start_d1 .. :try_end_e3} :catchall_9e

    .local v5, "pkgList":[Ljava/lang/String;
    goto/16 :goto_43

    .line 2905
    .end local v1    # "data":Landroid/net/Uri;
    .end local v5    # "pkgList":[Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_e5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_49

    .end local v2    # "i":I
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_e9
    monitor-exit v10

    .line 2865
    return-void
.end method

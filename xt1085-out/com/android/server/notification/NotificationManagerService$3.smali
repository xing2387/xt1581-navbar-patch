.class Lcom/android/server/notification/NotificationManagerService$3;
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
    .line 804
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    const/4 v6, 0x1

    const/16 v1, -0x2710

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 807
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 809
    .local v10, "action":Ljava/lang/String;
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 812
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, v6}, Lcom/android/server/notification/NotificationManagerService;->-set11(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 813
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap37(Lcom/android/server/notification/NotificationManagerService;)V

    .line 806
    :cond_1d
    :goto_1d
    return-void

    .line 814
    :cond_1e
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 815
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, v4}, Lcom/android/server/notification/NotificationManagerService;->-set11(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 816
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap37(Lcom/android/server/notification/NotificationManagerService;)V

    goto :goto_1d

    .line 817
    :cond_32
    const-string/jumbo v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 818
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 819
    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 818
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-set6(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 820
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap37(Lcom/android/server/notification/NotificationManagerService;)V

    goto :goto_1d

    .line 821
    :cond_53
    const-string/jumbo v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 822
    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 823
    .local v7, "userHandle":I
    if-ltz v7, :cond_1d

    .line 824
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get1()I

    move-result v1

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get0()I

    move-result v2

    .line 825
    const/4 v8, 0x6

    move v5, v4

    move-object v9, v3

    .line 824
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    goto :goto_1d

    .line 827
    .end local v7    # "userHandle":I
    :cond_76
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 828
    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 829
    .restart local v7    # "userHandle":I
    if-ltz v7, :cond_1d

    .line 830
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get1()I

    move-result v1

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get0()I

    move-result v2

    .line 831
    const/16 v8, 0xf

    move v5, v4

    move-object v9, v3

    .line 830
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    goto :goto_1d

    .line 833
    .end local v7    # "userHandle":I
    :cond_9a
    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 836
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get26(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 837
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get19(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    .line 839
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_1d

    .line 840
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightOff()V

    goto/16 :goto_1d

    .line 843
    :cond_c3
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 844
    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 846
    .local v11, "user":I
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get27(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->update(Landroid/net/Uri;)V

    .line 847
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get29(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 849
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get7(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/notification/ConditionProviders;->onUserSwitched(I)V

    .line 850
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get16(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onUserSwitched(I)V

    .line 851
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get22(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->onUserSwitched(I)V

    .line 852
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get31(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/notification/ZenModeHelper;->onUserSwitched(I)V

    goto/16 :goto_1d

    .line 853
    .end local v11    # "user":I
    :cond_10b
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 854
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get29(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    goto/16 :goto_1d

    .line 855
    :cond_11f
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 856
    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 857
    .restart local v11    # "user":I
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get31(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/notification/ZenModeHelper;->onUserRemoved(I)V

    goto/16 :goto_1d

    .line 858
    .end local v11    # "user":I
    :cond_13a
    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 859
    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 860
    .restart local v11    # "user":I
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get7(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/notification/ConditionProviders;->onUserUnlocked(I)V

    .line 861
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get16(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onUserUnlocked(I)V

    .line 862
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get22(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->onUserUnlocked(I)V

    .line 863
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get31(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/notification/ZenModeHelper;->onUserUnlocked(I)V

    goto/16 :goto_1d
.end method

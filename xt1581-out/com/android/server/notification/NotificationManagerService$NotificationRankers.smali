.class public Lcom/android/server/notification/NotificationManagerService$NotificationRankers;
.super Lcom/android/server/notification/ManagedServices;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationRankers"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/notification/NotificationManagerService$NotificationRankers;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;IZ)V
    .registers 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "importance"    # I
    .param p4, "fromUser"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->notifyEnqueued(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;IZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 3841
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3842
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-get8(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    .line 3841
    return-void
.end method

.method private notifyEnqueued(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;IZ)V
    .registers 11
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "importance"    # I
    .param p4, "fromUser"    # Z

    .prologue
    .line 3904
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Landroid/service/notification/INotificationListener;

    .line 3905
    .local v1, "ranker":Landroid/service/notification/INotificationListener;
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    invoke-direct {v2, p2}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 3907
    .local v2, "sbnHolder":Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;
    :try_start_9
    invoke-interface {v1, v2, p3, p4}, Landroid/service/notification/INotificationListener;->onNotificationEnqueued(Landroid/service/notification/IStatusBarNotificationHolder;IZ)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    .line 3903
    :goto_c
    return-void

    .line 3908
    :catch_d
    move-exception v0

    .line 3909
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to notify ranker (enqueued): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method


# virtual methods
.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 3859
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    return-object v0
.end method

.method protected checkType(Landroid/os/IInterface;)Z
    .registers 3
    .param p1, "service"    # Landroid/os/IInterface;

    .prologue
    .line 3864
    instance-of v0, p1, Landroid/service/notification/INotificationListener;

    return v0
.end method

.method protected getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .registers 3

    .prologue
    .line 3847
    new-instance v0, Lcom/android/server/notification/ManagedServices$Config;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    .line 3848
    .local v0, "c":Lcom/android/server/notification/ManagedServices$Config;
    const-string/jumbo v1, "notification ranker service"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 3849
    const-string/jumbo v1, "android.service.notification.NotificationRankerService"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 3850
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 3851
    const-string/jumbo v1, "android.permission.BIND_NOTIFICATION_RANKER_SERVICE"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 3852
    const-string/jumbo v1, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    .line 3853
    const v1, 0x104046c

    iput v1, v0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    .line 3854
    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 3914
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public onNotificationEnqueued(Lcom/android/server/notification/NotificationRecord;)V
    .registers 13
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 3878
    iget-object v7, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3879
    .local v7, "sbn":Landroid/service/notification/StatusBarNotification;
    new-instance v9, Lcom/android/server/notification/NotificationManagerService$TrimCache;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {v9, v0, v7}, Lcom/android/server/notification/NotificationManagerService$TrimCache;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V

    .line 3884
    .local v9, "trimCache":Lcom/android/server/notification/NotificationManagerService$TrimCache;
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->mServices:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "info$iterator":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 3885
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, v7, v2}, Lcom/android/server/notification/NotificationManagerService;->-wrap4(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v8

    .line 3886
    .local v8, "sbnVisible":Z
    if-eqz v8, :cond_f

    .line 3890
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v4

    .line 3891
    .local v4, "importance":I
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isImportanceFromUser()Z

    move-result v5

    .line 3892
    .local v5, "fromUser":Z
    invoke-virtual {v9, v2}, Lcom/android/server/notification/NotificationManagerService$TrimCache;->ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 3893
    .local v3, "sbnToPost":Landroid/service/notification/StatusBarNotification;
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get8(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Handler;

    move-result-object v10

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers$1;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationRankers;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;IZ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f

    .line 3877
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v3    # "sbnToPost":Landroid/service/notification/StatusBarNotification;
    .end local v4    # "importance":I
    .end local v5    # "fromUser":Z
    .end local v8    # "sbnVisible":Z
    :cond_3f
    return-void
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;)V
    .registers 9
    .param p1, "queryReplace"    # Z
    .param p2, "pkgList"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3931
    iget-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->DEBUG:Z

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPackagesChanged queryReplace="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3932
    const-string/jumbo v5, " pkgList="

    .line 3931
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3932
    if-nez p2, :cond_35

    .line 3931
    :goto_21
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3933
    :cond_2c
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3a

    .line 3934
    return-void

    .line 3932
    :cond_35
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_21

    .line 3937
    :cond_3a
    if-eqz p2, :cond_57

    array-length v1, p2

    if-lez v1, :cond_57

    .line 3938
    array-length v3, p2

    move v1, v2

    :goto_41
    if-ge v1, v3, :cond_57

    aget-object v0, p2, v1

    .line 3939
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 3940
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->registerRanker()V

    .line 3938
    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 3930
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_57
    return-void
.end method

.method protected onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 3
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 3869
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->registerGuestService(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 3868
    return-void
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 5
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 3874
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    iget v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->unregisterService(Landroid/os/IInterface;I)V

    .line 3873
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 8
    .param p1, "user"    # I

    .prologue
    .line 3919
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 3920
    :try_start_5
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 3921
    .local v0, "i":I
    :goto_d
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    if-lez v0, :cond_22

    .line 3922
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 3923
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    iget v5, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {p0, v3, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->unregisterService(Landroid/os/IInterface;I)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_27

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_d

    .end local v0    # "i":I
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .restart local v1    # "i":I
    :cond_22
    monitor-exit v4

    .line 3926
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->registerRanker()V

    .line 3918
    return-void

    .line 3919
    .end local v1    # "i":I
    :catchall_27
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method protected registerRanker()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 3948
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_12

    .line 3949
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "could not start ranker service: no package specified!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3950
    return-void

    .line 3953
    :cond_12
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v3

    .line 3952
    invoke-virtual {p0, v3, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->queryPackageForServices(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v2

    .line 3954
    .local v2, "rankerComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3955
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 3956
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3957
    .local v1, "rankerComponent":Landroid/content/ComponentName;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 3958
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "found multiple ranker services:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    .end local v1    # "rankerComponent":Landroid/content/ComponentName;
    :goto_4b
    return-void

    .line 3960
    .restart local v1    # "rankerComponent":Landroid/content/ComponentName;
    :cond_4c
    invoke-virtual {p0, v1, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->registerSystemService(Landroid/content/ComponentName;I)V

    goto :goto_4b

    .line 3963
    .end local v1    # "rankerComponent":Landroid/content/ComponentName;
    :cond_50
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "could not start ranker service: none found"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b
.end method

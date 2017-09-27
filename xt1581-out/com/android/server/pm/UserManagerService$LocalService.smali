.class Lcom/android/server/pm/UserManagerService$LocalService;
.super Landroid/os/UserManagerInternal;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 3280
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/os/UserManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$LocalService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;)V

    return-void
.end method


# virtual methods
.method public addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/os/UserManagerInternal$UserRestrictionsListener;

    .prologue
    .line 3320
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 3321
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_12

    monitor-exit v1

    .line 3319
    return-void

    .line 3320
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public createUserEvenWhenDisallowed(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    .line 3427
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    const/16 v2, -0x2710

    invoke-static {v1, p1, p2, v2}, Lcom/android/server/pm/UserManagerService;->-wrap0(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3429
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3433
    :cond_11
    :goto_11
    return-object v0

    .line 3430
    :cond_12
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v2, "no_sms"

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 3431
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v2, "no_outgoing_calls"

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    goto :goto_11
.end method

.method public getBaseUserRestrictions(I)Landroid/os/Bundle;
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 3290
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get6(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3291
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get1(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-object v0

    .line 3290
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUserRestriction(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 3315
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUserRunning(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 3438
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    monitor-enter v1

    .line 3439
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_18

    move-result v2

    if-ltz v2, :cond_16

    const/4 v0, 0x1

    :cond_16
    monitor-exit v1

    return v0

    .line 3438
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isUserUnlocked(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 3468
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v2

    monitor-enter v2

    .line 3469
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_1a

    move-result v0

    .line 3470
    .local v0, "state":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    const/4 v1, 0x1

    :goto_16
    monitor-exit v2

    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_16

    .line 3468
    .end local v0    # "state":I
    :catchall_1a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 3459
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v2

    monitor-enter v2

    .line 3460
    :try_start_8
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_1d

    move-result v0

    .line 3461
    .local v0, "state":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_19

    .line 3462
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1b

    :cond_19
    :goto_19
    monitor-exit v2

    .line 3461
    return v1

    .line 3462
    :cond_1b
    const/4 v1, 0x0

    goto :goto_19

    .line 3459
    .end local v0    # "state":I
    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onEphemeralUserStop(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 3411
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-get10(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3412
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->-wrap1(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3413
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3416
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 3417
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3419
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_26

    :cond_24
    monitor-exit v2

    .line 3410
    return-void

    .line 3411
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_26
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public removeAllUsers()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 3380
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    if-nez v3, :cond_d

    .line 3382
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->-wrap4(Lcom/android/server/pm/UserManagerService;)V

    .line 3379
    :goto_c
    return-void

    .line 3385
    :cond_d
    new-instance v2, Lcom/android/server/pm/UserManagerService$LocalService$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/UserManagerService$LocalService$1;-><init>(Lcom/android/server/pm/UserManagerService$LocalService;)V

    .line 3397
    .local v2, "userSwitchedReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3398
    .local v1, "userSwitchedFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3399
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->-get2(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v3

    .line 3400
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->-get3(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    .line 3399
    invoke-virtual {v3, v2, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3404
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->-get2(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3405
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->switchUser(I)Z

    goto :goto_c
.end method

.method public removeUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/os/UserManagerInternal$UserRestrictionsListener;

    .prologue
    .line 3327
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 3328
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_12

    monitor-exit v1

    .line 3326
    return-void

    .line 3327
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeUserState(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 3452
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    monitor-enter v1

    .line 3453
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_12

    monitor-exit v1

    .line 3451
    return-void

    .line 3452
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setBaseUserRestrictionsByDpmsForMigration(ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "baseRestrictions"    # Landroid/os/Bundle;

    .prologue
    .line 3298
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-get6(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3299
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-get1(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3300
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->-wrap3(Lcom/android/server/pm/UserManagerService;I)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_31

    monitor-exit v2

    .line 3303
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->-wrap2(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    .line 3304
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-get5(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3305
    if-eqz v0, :cond_34

    .line 3306
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->-wrap8(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_4f

    :goto_2f
    monitor-exit v2

    .line 3297
    return-void

    .line 3298
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_31
    move-exception v1

    monitor-exit v2

    throw v1

    .line 3308
    .restart local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_34
    :try_start_34
    const-string/jumbo v1, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UserInfo not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_34 .. :try_end_4e} :catchall_4f

    goto :goto_2f

    .line 3304
    :catchall_4f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setDeviceManaged(Z)V
    .registers 4
    .param p1, "isManaged"    # Z

    .prologue
    .line 3334
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get10(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3335
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/UserManagerService;->-set1(Lcom/android/server/pm/UserManagerService;Z)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    monitor-exit v1

    .line 3333
    return-void

    .line 3334
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDevicePolicyUserRestrictions(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "localRestrictions"    # Landroid/os/Bundle;
    .param p3, "globalRestrictions"    # Landroid/os/Bundle;

    .prologue
    .line 3284
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 3283
    return-void
.end method

.method public setForceEphemeralUsers(Z)V
    .registers 4
    .param p1, "forceEphemeralUsers"    # Z

    .prologue
    .line 3373
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get10(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3374
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/UserManagerService;->-set0(Lcom/android/server/pm/UserManagerService;Z)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    monitor-exit v1

    .line 3372
    return-void

    .line 3373
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3348
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3350
    .local v0, "ident":J
    :try_start_4
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->-get5(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_59

    .line 3351
    :try_start_b
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3, p1}, Lcom/android/server/pm/UserManagerService;->-wrap2(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 3352
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_19

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_38

    .line 3353
    :cond_19
    const-string/jumbo v3, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUserIcon: unknown user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_56

    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_59

    .line 3367
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3354
    return-void

    .line 3357
    :cond_38
    if-eqz p2, :cond_50

    .line 3358
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v5, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/UserManagerService;->-wrap7(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    .line 3363
    :goto_41
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3, v2}, Lcom/android/server/pm/UserManagerService;->-wrap8(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_56

    :try_start_46
    monitor-exit v4

    .line 3365
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3, p1}, Lcom/android/server/pm/UserManagerService;->-wrap6(Lcom/android/server/pm/UserManagerService;I)V
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_59

    .line 3367
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3347
    return-void

    .line 3360
    :cond_50
    :try_start_50
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v5, 0x0

    iput-object v5, v3, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_56

    goto :goto_41

    .line 3350
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_56
    move-exception v3

    :try_start_57
    monitor-exit v4

    throw v3
    :try_end_59
    .catchall {:try_start_57 .. :try_end_59} :catchall_59

    .line 3366
    :catchall_59
    move-exception v3

    .line 3367
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3366
    throw v3
.end method

.method public setUserManaged(IZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "isManaged"    # Z

    .prologue
    .line 3341
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get10(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3342
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get4(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_12

    monitor-exit v1

    .line 3340
    return-void

    .line 3341
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setUserState(II)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "userState"    # I

    .prologue
    .line 3445
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    monitor-enter v1

    .line 3446
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_12

    monitor-exit v1

    .line 3444
    return-void

    .line 3445
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.class Lcom/android/server/net/NetworkPolicyManagerService$16;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 3274
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 36
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3277
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    sparse-switch v26, :sswitch_data_3fe

    .line 3436
    const/16 v26, 0x0

    return v26

    .line 3279
    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 3280
    .local v21, "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    .line 3281
    .local v22, "uidRules":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap7(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    .line 3282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v10

    .line 3283
    .local v10, "length":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_42
    if-ge v7, v10, :cond_68

    .line 3284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Landroid/net/INetworkPolicyListener;

    .line 3285
    .local v11, "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v11, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap7(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    .line 3283
    add-int/lit8 v7, v7, 0x1

    goto :goto_42

    .line 3287
    .end local v11    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3288
    const/16 v26, 0x1

    return v26

    .line 3291
    .end local v7    # "i":I
    .end local v10    # "length":I
    .end local v21    # "uid":I
    .end local v22    # "uidRules":I
    :sswitch_78
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, [Ljava/lang/String;

    .line 3292
    .local v14, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap3(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    .line 3293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v10

    .line 3294
    .restart local v10    # "length":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_a4
    if-ge v7, v10, :cond_c6

    .line 3295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Landroid/net/INetworkPolicyListener;

    .line 3296
    .restart local v11    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v11, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap3(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    .line 3294
    add-int/lit8 v7, v7, 0x1

    goto :goto_a4

    .line 3298
    .end local v11    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3299
    const/16 v26, 0x1

    return v26

    .line 3302
    .end local v7    # "i":I
    .end local v10    # "length":I
    .end local v14    # "meteredIfaces":[Ljava/lang/String;
    :sswitch_d6
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 3304
    .local v8, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 3305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 3306
    :try_start_f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get6(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_101
    .catchall {:try_start_f2 .. :try_end_101} :catchall_127

    move-result v26

    if-eqz v26, :cond_123

    .line 3310
    :try_start_104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_111
    .catch Landroid/os/RemoteException; {:try_start_104 .. :try_end_111} :catch_3fb
    .catchall {:try_start_104 .. :try_end_111} :catchall_127

    .line 3315
    :goto_111
    :try_start_111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 3316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    :try_end_123
    .catchall {:try_start_111 .. :try_end_123} :catchall_127

    :cond_123
    monitor-exit v27

    .line 3319
    const/16 v26, 0x1

    return v26

    .line 3305
    :catchall_127
    move-exception v26

    monitor-exit v27

    throw v26

    .line 3322
    .end local v8    # "iface":Ljava/lang/String;
    :sswitch_12a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    if-eqz v26, :cond_180

    const/16 v20, 0x1

    .line 3323
    .local v20, "restrictBackground":Z
    :goto_134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap5(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    .line 3324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v10

    .line 3325
    .restart local v10    # "length":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_15c
    if-ge v7, v10, :cond_183

    .line 3326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Landroid/net/INetworkPolicyListener;

    .line 3327
    .restart local v11    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-static {v0, v11, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap5(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    .line 3325
    add-int/lit8 v7, v7, 0x1

    goto :goto_15c

    .line 3322
    .end local v7    # "i":I
    .end local v10    # "length":I
    .end local v11    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v20    # "restrictBackground":Z
    :cond_180
    const/16 v20, 0x0

    .restart local v20    # "restrictBackground":Z
    goto :goto_134

    .line 3329
    .restart local v7    # "i":I
    .restart local v10    # "length":I
    :cond_183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3331
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v26, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    move-object/from16 v0, v26

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3332
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v26, 0x40000000    # 2.0f

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v26

    sget-object v27, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3334
    const/16 v26, 0x1

    return v26

    .line 3347
    .end local v7    # "i":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "length":I
    .end local v20    # "restrictBackground":Z
    :sswitch_1b7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 3348
    .restart local v21    # "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_22a

    const/4 v5, 0x1

    .line 3349
    .local v5, "changed":Z
    :goto_1cc
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Boolean;

    .line 3352
    .local v24, "whitelisted":Ljava/lang/Boolean;
    if-eqz v24, :cond_239

    .line 3353
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    .line 3354
    .local v25, "whitelistedBool":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v21

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    .line 3356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v10

    .line 3357
    .restart local v10    # "length":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_204
    if-ge v7, v10, :cond_22c

    .line 3358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Landroid/net/INetworkPolicyListener;

    .line 3359
    .restart local v11    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v0, v11, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    .line 3357
    add-int/lit8 v7, v7, 0x1

    goto :goto_204

    .line 3348
    .end local v5    # "changed":Z
    .end local v7    # "i":I
    .end local v10    # "length":I
    .end local v11    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v24    # "whitelisted":Ljava/lang/Boolean;
    .end local v25    # "whitelistedBool":Z
    :cond_22a
    const/4 v5, 0x0

    .restart local v5    # "changed":Z
    goto :goto_1cc

    .line 3362
    .restart local v7    # "i":I
    .restart local v10    # "length":I
    .restart local v24    # "whitelisted":Ljava/lang/Boolean;
    .restart local v25    # "whitelistedBool":Z
    :cond_22c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3364
    .end local v7    # "i":I
    .end local v10    # "length":I
    .end local v25    # "whitelistedBool":Z
    :cond_239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 3365
    .local v17, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v16

    .line 3366
    .local v16, "packages":[Ljava/lang/String;
    if-eqz v5, :cond_292

    if-eqz v16, :cond_292

    .line 3368
    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    .line 3369
    .local v23, "userId":I
    const/16 v26, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v27, v0

    :goto_25e
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_292

    aget-object v15, v16, v26

    .line 3370
    .local v15, "packageName":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    .line 3371
    const-string/jumbo v28, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    .line 3370
    move-object/from16 v0, v28

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3372
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual {v9, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3373
    const/high16 v28, 0x40000000    # 2.0f

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3369
    add-int/lit8 v26, v26, 0x1

    goto :goto_25e

    .line 3377
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v23    # "userId":I
    :cond_292
    const/16 v26, 0x1

    return v26

    .line 3380
    .end local v5    # "changed":Z
    .end local v16    # "packages":[Ljava/lang/String;
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .end local v21    # "uid":I
    .end local v24    # "whitelisted":Ljava/lang/Boolean;
    :sswitch_295
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 3381
    .restart local v21    # "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2f6

    const/4 v4, 0x1

    .line 3383
    .local v4, "blacklisted":Z
    :goto_2aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v21

    invoke-static {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap4(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    .line 3385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v10

    .line 3386
    .restart local v10    # "length":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2d2
    if-ge v7, v10, :cond_2f8

    .line 3387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Landroid/net/INetworkPolicyListener;

    .line 3388
    .restart local v11    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-static {v0, v11, v1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap4(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    .line 3386
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d2

    .line 3381
    .end local v4    # "blacklisted":Z
    .end local v7    # "i":I
    .end local v10    # "length":I
    .end local v11    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_2f6
    const/4 v4, 0x0

    .restart local v4    # "blacklisted":Z
    goto :goto_2aa

    .line 3391
    .restart local v7    # "i":I
    .restart local v10    # "length":I
    :cond_2f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3392
    const/16 v26, 0x1

    return v26

    .line 3395
    .end local v4    # "blacklisted":Z
    .end local v7    # "i":I
    .end local v10    # "length":I
    .end local v21    # "uid":I
    :sswitch_308
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 3399
    .local v12, "lowestRule":J
    const-wide/16 v26, 0x3e8

    :try_start_316
    div-long v18, v12, v26

    .line 3400
    .local v18, "persistThreshold":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_329
    .catch Landroid/os/RemoteException; {:try_start_316 .. :try_end_329} :catch_3f8

    .line 3404
    .end local v18    # "persistThreshold":J
    :goto_329
    const/16 v26, 0x1

    return v26

    .line 3407
    .end local v12    # "lowestRule":J
    :sswitch_32c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap18(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 3408
    const/16 v26, 0x1

    return v26

    .line 3411
    :sswitch_338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap11(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 3413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    .line 3414
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const/16 v30, 0x20

    shl-long v28, v28, v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0xffffffffL

    and-long v30, v30, v32

    or-long v28, v28, v30

    .line 3413
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap13(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V

    .line 3415
    const/16 v26, 0x1

    return v26

    .line 3418
    :sswitch_38a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap11(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 3419
    const/16 v26, 0x1

    return v26

    .line 3423
    :sswitch_3a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 3424
    :try_start_3af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v29, v0

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap19(Lcom/android/server/net/NetworkPolicyManagerService;II)V
    :try_end_3ca
    .catchall {:try_start_3af .. :try_end_3ca} :catchall_3ce

    monitor-exit v27

    .line 3426
    const/16 v26, 0x1

    return v26

    .line 3423
    :catchall_3ce
    move-exception v26

    monitor-exit v27

    throw v26

    .line 3429
    :sswitch_3d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 3430
    :try_start_3de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap12(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    :try_end_3f1
    .catchall {:try_start_3de .. :try_end_3f1} :catchall_3f5

    monitor-exit v27

    .line 3432
    const/16 v26, 0x1

    return v26

    .line 3429
    :catchall_3f5
    move-exception v26

    monitor-exit v27

    throw v26

    .line 3401
    .restart local v12    # "lowestRule":J
    :catch_3f8
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    goto/16 :goto_329

    .line 3311
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v12    # "lowestRule":J
    .restart local v8    # "iface":Ljava/lang/String;
    :catch_3fb
    move-exception v6

    .restart local v6    # "e":Landroid/os/RemoteException;
    goto/16 :goto_111

    .line 3277
    :sswitch_data_3fe
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_78
        0x5 -> :sswitch_d6
        0x6 -> :sswitch_12a
        0x7 -> :sswitch_308
        0x8 -> :sswitch_32c
        0x9 -> :sswitch_1b7
        0xa -> :sswitch_338
        0xb -> :sswitch_38a
        0xc -> :sswitch_295
        0x64 -> :sswitch_3a2
        0x65 -> :sswitch_3d1
    .end sparse-switch
.end method

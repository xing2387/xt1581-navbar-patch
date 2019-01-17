.class Lcom/android/server/MountService$ObbActionHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObbActionHandler"
.end annotation


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbAction;",
            ">;"
        }
    .end annotation
.end field

.field private mBound:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/MountService;
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 3227
    iput-object p1, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    .line 3228
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    .line 3225
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    .line 3227
    return-void
.end method

.method private connectToService()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 3366
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 3367
    .local v0, "service":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v1}, Lcom/android/server/MountService;->-get2(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v2}, Lcom/android/server/MountService;->-get4(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;

    move-result-object v2

    .line 3368
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 3367
    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3369
    iput-boolean v4, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    .line 3370
    return v4

    .line 3372
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method private disconnectService()V
    .registers 3

    .prologue
    .line 3376
    iget-object v0, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/MountService;->-set0(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 3377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    .line 3378
    iget-object v0, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v0}, Lcom/android/server/MountService;->-get2(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v1}, Lcom/android/server/MountService;->-get4(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3375
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 3233
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_162

    .line 3232
    :cond_7
    :goto_7
    return-void

    .line 3235
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/MountService$ObbAction;

    .line 3243
    .local v0, "action":Lcom/android/server/MountService$ObbAction;
    iget-boolean v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    if-nez v9, :cond_23

    .line 3246
    invoke-direct {p0}, Lcom/android/server/MountService$ObbActionHandler;->connectToService()Z

    move-result v9

    if-nez v9, :cond_23

    .line 3247
    const-string/jumbo v9, "MountService"

    const-string/jumbo v10, "Failed to bind to media container service"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3248
    invoke-virtual {v0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    .line 3249
    return-void

    .line 3253
    :cond_23
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 3259
    .end local v0    # "action":Lcom/android/server/MountService$ObbAction;
    :pswitch_29
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_36

    .line 3260
    iget-object v10, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/app/IMediaContainerService;

    invoke-static {v10, v9}, Lcom/android/server/MountService;->-set0(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 3262
    :cond_36
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v9}, Lcom/android/server/MountService;->-get1(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v9

    if-nez v9, :cond_63

    .line 3264
    const-string/jumbo v9, "MountService"

    const-string/jumbo v10, "Cannot bind to media container service"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "action$iterator":Ljava/util/Iterator;
    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$ObbAction;

    .line 3267
    .restart local v0    # "action":Lcom/android/server/MountService$ObbAction;
    invoke-virtual {v0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    goto :goto_4d

    .line 3269
    .end local v0    # "action":Lcom/android/server/MountService$ObbAction;
    :cond_5d
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    goto :goto_7

    .line 3270
    .end local v1    # "action$iterator":Ljava/util/Iterator;
    :cond_63
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_79

    .line 3271
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$ObbAction;

    .line 3272
    .restart local v0    # "action":Lcom/android/server/MountService$ObbAction;
    if-eqz v0, :cond_7

    .line 3273
    invoke-virtual {v0, p0}, Lcom/android/server/MountService$ObbAction;->execute(Lcom/android/server/MountService$ObbActionHandler;)V

    goto :goto_7

    .line 3277
    .end local v0    # "action":Lcom/android/server/MountService$ObbAction;
    :cond_79
    const-string/jumbo v9, "MountService"

    const-string/jumbo v10, "Empty queue"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3284
    :pswitch_83
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 3285
    iget-boolean v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    if-eqz v9, :cond_92

    .line 3286
    invoke-direct {p0}, Lcom/android/server/MountService$ObbActionHandler;->disconnectService()V

    .line 3288
    :cond_92
    invoke-direct {p0}, Lcom/android/server/MountService$ObbActionHandler;->connectToService()Z

    move-result v9

    if-nez v9, :cond_7

    .line 3289
    const-string/jumbo v9, "MountService"

    const-string/jumbo v10, "Failed to bind to media container service"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "action$iterator":Ljava/util/Iterator;
    :goto_a7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$ObbAction;

    .line 3292
    .restart local v0    # "action":Lcom/android/server/MountService$ObbAction;
    invoke-virtual {v0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    goto :goto_a7

    .line 3294
    .end local v0    # "action":Lcom/android/server/MountService$ObbAction;
    :cond_b7
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    goto/16 :goto_7

    .line 3304
    .end local v1    # "action$iterator":Ljava/util/Iterator;
    :pswitch_be
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_cb

    .line 3305
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3307
    :cond_cb
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_dc

    .line 3308
    iget-boolean v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    if-eqz v9, :cond_7

    .line 3309
    invoke-direct {p0}, Lcom/android/server/MountService$ObbActionHandler;->disconnectService()V

    goto/16 :goto_7

    .line 3315
    :cond_dc
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v9}, Lcom/android/server/MountService;->-get8(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 3320
    :pswitch_e7
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 3325
    .local v7, "path":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v9}, Lcom/android/server/MountService;->-get9(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v10

    monitor-enter v10

    .line 3326
    :try_start_f2
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 3328
    .local v6, "obbStatesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v9}, Lcom/android/server/MountService;->-get10(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3329
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/MountService$ObbState;>;"
    :cond_105
    :goto_105
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_120

    .line 3330
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/MountService$ObbState;

    .line 3337
    .local v8, "state":Lcom/android/server/MountService$ObbState;
    iget-object v9, v8, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_105

    .line 3338
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11c
    .catchall {:try_start_f2 .. :try_end_11c} :catchall_11d

    goto :goto_105

    .line 3325
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/MountService$ObbState;>;"
    .end local v6    # "obbStatesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    .end local v8    # "state":Lcom/android/server/MountService$ObbState;
    :catchall_11d
    move-exception v9

    monitor-exit v10

    throw v9

    .line 3342
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/MountService$ObbState;>;"
    .restart local v6    # "obbStatesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_120
    :try_start_120
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "obbState$iterator":Ljava/util/Iterator;
    :goto_124
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/MountService$ObbState;

    .line 3346
    .local v4, "obbState":Lcom/android/server/MountService$ObbState;
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v9, v4}, Lcom/android/server/MountService;->-wrap13(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    :try_end_135
    .catchall {:try_start_120 .. :try_end_135} :catchall_11d

    .line 3349
    :try_start_135
    iget-object v9, v4, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    iget-object v11, v4, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    iget v12, v4, Lcom/android/server/MountService$ObbState;->nonce:I

    .line 3350
    const/4 v13, 0x2

    .line 3349
    invoke-interface {v9, v11, v12, v13}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_13f
    .catch Landroid/os/RemoteException; {:try_start_135 .. :try_end_13f} :catch_140
    .catchall {:try_start_135 .. :try_end_13f} :catchall_11d

    goto :goto_124

    .line 3351
    :catch_140
    move-exception v2

    .line 3352
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_141
    const-string/jumbo v9, "MountService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Couldn\'t send unmount notification for  OBB: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 3353
    iget-object v12, v4, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    .line 3352
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15d
    .catchall {:try_start_141 .. :try_end_15d} :catchall_11d

    goto :goto_124

    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "obbState":Lcom/android/server/MountService$ObbState;
    :cond_15e
    monitor-exit v10

    goto/16 :goto_7

    .line 3233
    nop

    :pswitch_data_162
    .packed-switch 0x1
        :pswitch_8
        :pswitch_29
        :pswitch_be
        :pswitch_83
        :pswitch_e7
    .end packed-switch
.end method

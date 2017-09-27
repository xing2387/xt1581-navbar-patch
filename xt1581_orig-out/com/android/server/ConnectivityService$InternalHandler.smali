.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2628
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 2629
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2628
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2634
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_138

    .line 2633
    :cond_7
    :goto_7
    return-void

    .line 2637
    :sswitch_8
    const/4 v0, 0x0

    .line 2638
    .local v0, "causedBy":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    monitor-enter v6

    .line 2639
    :try_start_c
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->-get5(Lcom/android/server/ConnectivityService;)I

    move-result v7

    if-ne v5, v7, :cond_45

    .line 2640
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get3(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    .line 2639
    if-eqz v5, :cond_45

    .line 2641
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get3(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2642
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get4(Lcom/android/server/ConnectivityService;)Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_47

    move-result-object v0

    .local v0, "causedBy":Ljava/lang/String;
    monitor-exit v6

    .line 2647
    invoke-static {}, Lcom/android/server/ConnectivityService;->-get0()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2648
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x18

    if-ne v5, v6, :cond_4a

    .line 2649
    const-string/jumbo v5, "Failed to find a new network - expiring NetTransition Wakelock"

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    goto :goto_7

    .local v0, "causedBy":Ljava/lang/String;
    :cond_45
    monitor-exit v6

    goto :goto_7

    .line 2638
    :catchall_47
    move-exception v5

    monitor-exit v6

    throw v5

    .line 2651
    .local v0, "causedBy":Ljava/lang/String;
    :cond_4a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NetTransition Wakelock ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2652
    if-nez v0, :cond_5b

    const-string/jumbo v0, "unknown"

    .line 2651
    .end local v0    # "causedBy":Ljava/lang/String;
    :cond_5b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2653
    const-string/jumbo v6, " cleared because we found a replacement network"

    .line 2651
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    goto :goto_7

    .line 2659
    :sswitch_6e
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-wrap6(Lcom/android/server/ConnectivityService;)V

    goto :goto_7

    .line 2663
    :sswitch_74
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/ProxyInfo;

    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap3(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    goto :goto_7

    .line 2667
    :sswitch_7e
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap11(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    goto :goto_7

    .line 2671
    :sswitch_88
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Messenger;

    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap17(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    goto/16 :goto_7

    .line 2675
    :sswitch_93
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap10(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_7

    .line 2680
    :sswitch_9e
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap13(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto/16 :goto_7

    .line 2685
    :sswitch_a9
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5, p1}, Lcom/android/server/ConnectivityService;->-wrap12(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto/16 :goto_7

    .line 2689
    :sswitch_b0
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/PendingIntent;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v5, v7}, Lcom/android/server/ConnectivityService;->-wrap14(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    goto/16 :goto_7

    .line 2693
    :sswitch_bd
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/NetworkRequest;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v5, v7}, Lcom/android/server/ConnectivityService;->-wrap15(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V

    goto/16 :goto_7

    .line 2697
    :sswitch_ca
    iget-object v9, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/Network;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_de

    move v6, v7

    :goto_d5
    iget v10, p1, Landroid/os/Message;->arg2:I

    if-eqz v10, :cond_e0

    :goto_d9
    invoke-static {v9, v5, v6, v7}, Lcom/android/server/ConnectivityService;->-wrap16(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    goto/16 :goto_7

    :cond_de
    move v6, v8

    goto :goto_d5

    :cond_e0
    move v7, v8

    goto :goto_d9

    .line 2701
    :sswitch_e2
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/Network;

    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap9(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    goto/16 :goto_7

    .line 2705
    :sswitch_ed
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-wrap8(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_7

    .line 2710
    :sswitch_f4
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get1(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStartKeepalive(Landroid/os/Message;)V

    goto/16 :goto_7

    .line 2715
    :sswitch_ff
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/Network;

    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap2(Lcom/android/server/ConnectivityService;Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 2716
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 2717
    .local v4, "slot":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 2718
    .local v3, "reason":I
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get1(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v5

    invoke-virtual {v5, v1, v4, v3}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto/16 :goto_7

    .line 2722
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v3    # "reason":I
    .end local v4    # "slot":I
    :sswitch_118
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "nai$iterator":Ljava/util/Iterator;
    :goto_126
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2723
    .restart local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v5, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    iput-boolean v7, v5, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    goto :goto_126

    .line 2634
    nop

    :sswitch_data_138
    .sparse-switch
        0x8 -> :sswitch_8
        0x9 -> :sswitch_6e
        0x10 -> :sswitch_74
        0x11 -> :sswitch_7e
        0x12 -> :sswitch_93
        0x13 -> :sswitch_9e
        0x15 -> :sswitch_9e
        0x16 -> :sswitch_bd
        0x17 -> :sswitch_88
        0x18 -> :sswitch_8
        0x19 -> :sswitch_118
        0x1a -> :sswitch_a9
        0x1b -> :sswitch_b0
        0x1c -> :sswitch_ca
        0x1d -> :sswitch_e2
        0x1e -> :sswitch_ed
        0x1f -> :sswitch_a9
        0x8100b -> :sswitch_f4
        0x8100c -> :sswitch_ff
    .end sparse-switch
.end method

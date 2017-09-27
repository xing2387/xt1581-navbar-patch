.class Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateTrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2036
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 2037
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2036
    return-void
.end method

.method private maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2041
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_2a

    .line 2043
    :pswitch_5
    const/4 v1, 0x0

    return v1

    .line 2045
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, p1}, Lcom/android/server/ConnectivityService;->-wrap5(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    .line 2058
    :cond_c
    :goto_c
    const/4 v1, 0x1

    return v1

    .line 2049
    :pswitch_e
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2050
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_c

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_c

    .line 2054
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :pswitch_24
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, p1}, Lcom/android/server/ConnectivityService;->-wrap4(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_c

    .line 2041
    :pswitch_data_2a
    .packed-switch 0x11000
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_e
        :pswitch_24
    .end packed-switch
.end method

.method private maybeHandleNetworkAgentMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    .line 2062
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2063
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v2, :cond_39

    .line 2064
    invoke-static {}, Lcom/android/server/ConnectivityService;->-get0()Z

    move-result v8

    if-eqz v8, :cond_38

    .line 2065
    invoke-static {}, Lcom/android/server/ConnectivityService;->-get14()Landroid/util/SparseArray;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2066
    .local v7, "what":Ljava/lang/String;
    const-string/jumbo v8, "%s from unknown NetworkAgent"

    new-array v9, v11, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    .line 2068
    .end local v7    # "what":Ljava/lang/String;
    :cond_38
    return-void

    .line 2071
    :cond_39
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_1ba

    .line 2061
    :cond_3e
    :goto_3e
    :pswitch_3e
    return-void

    .line 2073
    :pswitch_3f
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/NetworkCapabilities;

    .line 2074
    .local v3, "networkCapabilities":Landroid/net/NetworkCapabilities;
    const/16 v8, 0x11

    invoke-virtual {v3, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-nez v8, :cond_53

    .line 2075
    const/16 v8, 0x10

    invoke-virtual {v3, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    .line 2074
    if-eqz v8, :cond_74

    .line 2076
    :cond_53
    const-string/jumbo v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "BUG: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " has CS-managed capability."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    :cond_74
    iget-boolean v8, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v8, :cond_80

    iget-object v8, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v8, v3}, Landroid/net/NetworkCapabilities;->equalImmutableCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v8

    if-eqz v8, :cond_86

    .line 2083
    :cond_80
    :goto_80
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v8, v2, v3}, Lcom/android/server/ConnectivityService;->-wrap29(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    goto :goto_3e

    .line 2080
    :cond_86
    const-string/jumbo v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "BUG: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " changed immutable capabilities: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2081
    iget-object v10, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2080
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2081
    const-string/jumbo v10, " -> "

    .line 2080
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 2087
    .end local v3    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :pswitch_b9
    invoke-static {}, Lcom/android/server/ConnectivityService;->-get0()Z

    move-result v8

    if-eqz v8, :cond_f4

    .line 2088
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Update of LinkProperties for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2089
    const-string/jumbo v9, "; created="

    .line 2088
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2089
    iget-boolean v9, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    .line 2088
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2090
    const-string/jumbo v9, "; everConnected="

    .line 2088
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2090
    iget-boolean v9, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    .line 2088
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    .line 2092
    :cond_f4
    iget-object v5, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 2093
    .local v5, "oldLp":Landroid/net/LinkProperties;
    monitor-enter v2

    .line 2094
    :try_start_f7
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/LinkProperties;

    iput-object v8, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;
    :try_end_fd
    .catchall {:try_start_f7 .. :try_end_fd} :catchall_109

    monitor-exit v2

    .line 2096
    iget-boolean v8, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v8, :cond_3e

    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v8, v2, v5}, Lcom/android/server/ConnectivityService;->-wrap31(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    goto/16 :goto_3e

    .line 2093
    :catchall_109
    move-exception v8

    monitor-exit v2

    throw v8

    .line 2100
    .end local v5    # "oldLp":Landroid/net/LinkProperties;
    :pswitch_10c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 2103
    .local v1, "info":Landroid/net/NetworkInfo;
    const/4 v4, 0x0

    .line 2104
    .local v4, "oldInfo":Landroid/net/NetworkInfo;
    monitor-enter v2

    .line 2105
    :try_start_112
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 2106
    .local v4, "oldInfo":Landroid/net/NetworkInfo;
    iput-object v1, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;
    :try_end_116
    .catchall {:try_start_112 .. :try_end_116} :catchall_11e

    monitor-exit v2

    .line 2108
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v8, v2, v4, v1}, Lcom/android/server/ConnectivityService;->-wrap32(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;)V

    goto/16 :goto_3e

    .line 2104
    .end local v4    # "oldInfo":Landroid/net/NetworkInfo;
    :catchall_11e
    move-exception v8

    monitor-exit v2

    throw v8

    .line 2113
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :pswitch_121
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    .line 2114
    .local v6, "score":Ljava/lang/Integer;
    if-eqz v6, :cond_3e

    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v2, v9}, Lcom/android/server/ConnectivityService;->-wrap33(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto/16 :goto_3e

    .line 2119
    .end local v6    # "score":Ljava/lang/Integer;
    :pswitch_132
    :try_start_132
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v9

    iget-object v8, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v10, v8, Landroid/net/Network;->netId:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [Landroid/net/UidRange;

    invoke-interface {v9, v10, v8}, Landroid/os/INetworkManagementService;->addVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_143} :catch_145

    goto/16 :goto_3e

    .line 2120
    :catch_145
    move-exception v0

    .line 2122
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception in addVpnUidRanges: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 2128
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_15f
    :try_start_15f
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v9

    iget-object v8, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v10, v8, Landroid/net/Network;->netId:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [Landroid/net/UidRange;

    invoke-interface {v9, v10, v8}, Landroid/os/INetworkManagementService;->removeVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_170} :catch_172

    goto/16 :goto_3e

    .line 2129
    :catch_172
    move-exception v0

    .line 2131
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception in removeVpnUidRanges: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 2136
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_18c
    iget-boolean v8, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v8, :cond_196

    iget-object v8, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v8, v8, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v8, :cond_1a8

    .line 2139
    :cond_196
    :goto_196
    iget-object v8, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iput-boolean v11, v8, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 2140
    iget-object v9, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v9, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    goto/16 :goto_3e

    .line 2137
    :cond_1a8
    const-string/jumbo v8, "ERROR: already-connected network explicitly selected."

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    goto :goto_196

    .line 2144
    :pswitch_1af
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->-get1(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v8

    invoke-virtual {v8, v2, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleEventPacketKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/os/Message;)V

    goto/16 :goto_3e

    .line 2071
    :pswitch_data_1ba
    .packed-switch 0x81001
        :pswitch_10c
        :pswitch_3f
        :pswitch_b9
        :pswitch_121
        :pswitch_132
        :pswitch_15f
        :pswitch_3e
        :pswitch_18c
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_1af
    .end packed-switch
.end method

.method private maybeHandleNetworkMonitorMessage(Landroid/os/Message;)Z
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 2151
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_136

    .line 2153
    return v1

    .line 2156
    :sswitch_9
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3

    .line 2157
    :try_start_10
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_95

    .local v8, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-exit v3

    .line 2159
    if-eqz v8, :cond_94

    .line 2161
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_98

    const/4 v11, 0x1

    .line 2162
    .local v11, "valid":Z
    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " validation "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v11, :cond_9a

    const-string/jumbo v0, "passed"

    :goto_3f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2163
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_9e

    const-string/jumbo v0, ""

    .line 2162
    :goto_4a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    .line 2164
    iget-boolean v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eq v11, v0, :cond_76

    .line 2165
    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v9

    .line 2166
    .local v9, "oldScore":I
    iput-boolean v11, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    .line 2167
    iget-boolean v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    or-int/2addr v0, v11

    iput-boolean v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    .line 2168
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v3, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0, v8, v3}, Lcom/android/server/ConnectivityService;->-wrap29(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 2170
    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    if-eq v9, v0, :cond_76

    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, v8}, Lcom/android/server/ConnectivityService;->-wrap27(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2172
    .end local v9    # "oldScore":I
    :cond_76
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, v8}, Lcom/android/server/ConnectivityService;->-wrap30(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2174
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2175
    .local v10, "redirectUrlBundle":Landroid/os/Bundle;
    sget-object v3, Landroid/net/NetworkAgent;->REDIRECT_URL_KEY:Ljava/lang/String;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    iget-object v3, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2178
    if-eqz v11, :cond_b7

    move v0, v13

    .line 2177
    :goto_8e
    const v4, 0x81007

    .line 2176
    invoke-virtual {v3, v4, v0, v1, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 2217
    .end local v10    # "redirectUrlBundle":Landroid/os/Bundle;
    .end local v11    # "valid":Z
    :cond_94
    :goto_94
    return v13

    .line 2156
    .end local v8    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catchall_95
    move-exception v0

    monitor-exit v3

    throw v0

    .line 2161
    .restart local v8    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_98
    const/4 v11, 0x0

    .restart local v11    # "valid":Z
    goto :goto_26

    .line 2162
    :cond_9a
    const-string/jumbo v0, "failed"

    goto :goto_3f

    .line 2163
    :cond_9e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " with redirect to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    .line 2178
    .restart local v10    # "redirectUrlBundle":Landroid/os/Bundle;
    :cond_b7
    const/4 v0, 0x2

    goto :goto_8e

    .line 2184
    .end local v8    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v10    # "redirectUrlBundle":Landroid/os/Bundle;
    .end local v11    # "valid":Z
    :sswitch_b9
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2185
    .restart local v8    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v8, v1}, Lcom/android/server/ConnectivityService;->-wrap1(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 2186
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, v8}, Lcom/android/server/ConnectivityService;->-wrap7(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_94

    .line 2191
    .end local v8    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_cd
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 2192
    .local v2, "netId":I
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_108

    const/4 v12, 0x1

    .line 2194
    .local v12, "visible":Z
    :goto_d4
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 2195
    :try_start_db
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_e7
    .catchall {:try_start_db .. :try_end_e7} :catchall_10a

    .restart local v8    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-exit v4

    .line 2198
    if-eqz v8, :cond_fc

    iget-boolean v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    if-eq v12, v0, :cond_fc

    .line 2199
    iput-boolean v12, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    .line 2200
    iget-boolean v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    or-int/2addr v0, v12

    iput-boolean v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    .line 2201
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v4, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0, v8, v4}, Lcom/android/server/ConnectivityService;->-wrap29(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 2203
    :cond_fc
    if-nez v12, :cond_10d

    .line 2204
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    move v4, v1

    move-object v5, v3

    move-object v6, v3

    move v7, v1

    invoke-static/range {v0 .. v7}, Lcom/android/server/ConnectivityService;->-wrap28(Lcom/android/server/ConnectivityService;ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V

    goto :goto_94

    .line 2192
    .end local v8    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v12    # "visible":Z
    :cond_108
    const/4 v12, 0x0

    .restart local v12    # "visible":Z
    goto :goto_d4

    .line 2194
    :catchall_10a
    move-exception v0

    monitor-exit v4

    throw v0

    .line 2206
    .restart local v8    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_10d
    if-nez v8, :cond_117

    .line 2207
    const-string/jumbo v0, "EVENT_PROVISIONING_NOTIFICATION from unknown NetworkMonitor"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    goto/16 :goto_94

    .line 2210
    :cond_117
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    sget-object v3, Lcom/android/server/ConnectivityService$NotificationType;->SIGN_IN:Lcom/android/server/ConnectivityService$NotificationType;

    .line 2211
    iget-object v1, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    iget-object v1, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    .line 2212
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/PendingIntent;

    iget-object v1, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v7, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    move v1, v13

    .line 2210
    invoke-static/range {v0 .. v7}, Lcom/android/server/ConnectivityService;->-wrap28(Lcom/android/server/ConnectivityService;ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V

    goto/16 :goto_94

    .line 2151
    nop

    :sswitch_data_136
    .sparse-switch
        0x82002 -> :sswitch_9
        0x82005 -> :sswitch_b9
        0x8200a -> :sswitch_cd
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2222
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkMonitorMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2221
    :cond_c
    :goto_c
    return-void

    .line 2223
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkAgentMessage(Landroid/os/Message;)V

    goto :goto_c
.end method

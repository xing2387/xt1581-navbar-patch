.class Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidatedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 7

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get6(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 385
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get10(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get6(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/net/metrics/NetworkEvent;->logValidated(IJ)V

    .line 386
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get6(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->reset()V

    .line 388
    :cond_28
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get1(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 389
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    .line 388
    const v3, 0x82002

    .line 389
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 388
    invoke-virtual {v1, v3, v4, v2, v5}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 394
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 399
    const/4 v0, 0x0

    return v0

    .line 396
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get15(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    .line 397
    const/4 v0, 0x1

    return v0

    .line 394
    :pswitch_data_14
    .packed-switch 0x82001
        :pswitch_7
    .end packed-switch
.end method

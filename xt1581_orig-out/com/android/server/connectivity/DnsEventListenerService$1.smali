.class Lcom/android/server/connectivity/DnsEventListenerService$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DnsEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DnsEventListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/DnsEventListenerService;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/DnsEventListenerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/DnsEventListenerService;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/server/connectivity/DnsEventListenerService$1;->this$0:Lcom/android/server/connectivity/DnsEventListenerService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLost(Landroid/net/Network;)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 109
    iget-object v2, p0, Lcom/android/server/connectivity/DnsEventListenerService$1;->this$0:Lcom/android/server/connectivity/DnsEventListenerService;

    monitor-enter v2

    .line 110
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/DnsEventListenerService$1;->this$0:Lcom/android/server/connectivity/DnsEventListenerService;

    invoke-static {v1}, Lcom/android/server/connectivity/DnsEventListenerService;->-get0(Lcom/android/server/connectivity/DnsEventListenerService;)Ljava/util/SortedMap;

    move-result-object v1

    iget v3, p1, Landroid/net/Network;->netId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;

    .line 111
    .local v0, "batch":Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;
    if-eqz v0, :cond_1a

    .line 112
    invoke-virtual {v0}, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->logAndClear()V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit v2

    .line 108
    return-void

    .line 109
    .end local v0    # "batch":Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;
    :catchall_1c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

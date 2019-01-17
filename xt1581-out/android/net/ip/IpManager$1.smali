.class Landroid/net/ip/IpManager$1;
.super Ljava/lang/Object;
.source "IpManager.java"

# interfaces
.implements Lcom/android/server/net/NetlinkTracker$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ip/IpManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;Landroid/os/INetworkManagementService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpManager;


# direct methods
.method constructor <init>(Landroid/net/ip/IpManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/ip/IpManager;

    .prologue
    .line 442
    iput-object p1, p0, Landroid/net/ip/IpManager$1;->this$0:Landroid/net/ip/IpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 5

    .prologue
    .line 449
    :try_start_0
    iget-object v1, p0, Landroid/net/ip/IpManager$1;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get14(Landroid/net/ip/IpManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_10

    .line 454
    :goto_9
    iget-object v1, p0, Landroid/net/ip/IpManager$1;->this$0:Landroid/net/ip/IpManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/net/ip/IpManager;->sendMessage(I)V

    .line 444
    return-void

    .line 450
    :catch_10
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Landroid/net/ip/IpManager$1;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get19(Landroid/net/ip/IpManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in NetlinkTracker.update(), got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

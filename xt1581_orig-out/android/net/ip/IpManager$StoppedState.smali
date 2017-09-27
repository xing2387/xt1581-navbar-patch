.class Landroid/net/ip/IpManager$StoppedState;
.super Lcom/android/internal/util/State;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoppedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpManager;


# direct methods
.method constructor <init>(Landroid/net/ip/IpManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/ip/IpManager;

    .prologue
    .line 971
    iput-object p1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 975
    :try_start_2
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get12(Landroid/net/ip/IpManager;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v2}, Landroid/net/ip/IpManager;->-get6(Landroid/net/ip/IpManager;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V

    .line 976
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get12(Landroid/net/ip/IpManager;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v2}, Landroid/net/ip/IpManager;->-get6(Landroid/net/ip/IpManager;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_3b

    .line 981
    :goto_20
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-wrap11(Landroid/net/ip/IpManager;)V

    .line 982
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get15(Landroid/net/ip/IpManager;)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_3a

    .line 983
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/net/ip/IpManager;->-wrap10(Landroid/net/ip/IpManager;I)V

    .line 984
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1, v4, v5}, Landroid/net/ip/IpManager;->-set6(Landroid/net/ip/IpManager;J)J

    .line 973
    :cond_3a
    return-void

    .line 977
    :catch_3b
    move-exception v0

    .line 978
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get19(Landroid/net/ip/IpManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to clear addresses or disable IPv6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 990
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_5c

    .line 1023
    return v2

    .line 995
    :sswitch_7
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;

    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-set1(Landroid/net/ip/IpManager;Landroid/net/ip/IpManager$ProvisioningConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    .line 996
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get16(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap12(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    .line 1025
    :goto_1b
    :sswitch_1b
    const/4 v0, 0x1

    return v0

    .line 1000
    :sswitch_1d
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0, v2}, Landroid/net/ip/IpManager;->-wrap0(Landroid/net/ip/IpManager;Z)Z

    goto :goto_1b

    .line 1004
    :sswitch_23
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-set7(Landroid/net/ip/IpManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1005
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0, v2}, Landroid/net/ip/IpManager;->-wrap0(Landroid/net/ip/IpManager;Z)Z

    goto :goto_1b

    .line 1009
    :sswitch_32
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/ProxyInfo;

    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-set3(Landroid/net/ip/IpManager;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    .line 1010
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0, v2}, Landroid/net/ip/IpManager;->-wrap0(Landroid/net/ip/IpManager;Z)Z

    goto :goto_1b

    .line 1014
    :sswitch_41
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-set5(Landroid/net/ip/IpManager;Z)Z

    goto :goto_1b

    .line 1019
    :sswitch_4f
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get19(Landroid/net/ip/IpManager;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Unexpected CMD_ON_QUIT (already stopped)."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 990
    :sswitch_data_5c
    .sparse-switch
        0x1 -> :sswitch_1b
        0x2 -> :sswitch_7
        0x5 -> :sswitch_1d
        0x6 -> :sswitch_23
        0x7 -> :sswitch_32
        0x8 -> :sswitch_41
        0x30005 -> :sswitch_4f
    .end sparse-switch
.end method

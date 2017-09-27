.class Landroid/net/ip/IpManager$StoppingState;
.super Lcom/android/internal/util/State;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoppingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpManager;


# direct methods
.method constructor <init>(Landroid/net/ip/IpManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/ip/IpManager;

    .prologue
    .line 1029
    iput-object p1, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 1032
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get5(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1034
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get17(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap12(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    .line 1031
    :cond_13
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1040
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    .line 1047
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0, p1}, Landroid/net/ip/IpManager;->-wrap5(Landroid/net/ip/IpManager;Landroid/os/Message;)V

    .line 1049
    :goto_a
    const/4 v0, 0x1

    return v0

    .line 1042
    :pswitch_c
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-set2(Landroid/net/ip/IpManager;Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient;

    .line 1043
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get17(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap12(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    goto :goto_a

    .line 1040
    :pswitch_data_1e
    .packed-switch 0x30005
        :pswitch_c
    .end packed-switch
.end method

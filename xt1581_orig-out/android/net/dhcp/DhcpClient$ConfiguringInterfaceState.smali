.class Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfiguringInterfaceState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    .line 838
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .prologue
    .line 841
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    .line 842
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get1(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v1

    iget-object v1, v1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    const v2, 0x30008

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 840
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 847
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    .line 848
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 853
    const/4 v0, 0x0

    return v0

    .line 850
    :pswitch_a
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get2(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap13(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    .line 851
    const/4 v0, 0x1

    return v0

    .line 848
    nop

    :pswitch_data_18
    .packed-switch 0x30009
        :pswitch_a
    .end packed-switch
.end method

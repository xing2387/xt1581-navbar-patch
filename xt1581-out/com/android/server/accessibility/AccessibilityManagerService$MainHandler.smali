.class final Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainHandler"
.end annotation


# static fields
.field public static final MSG_ANNOUNCE_NEW_USER_IF_NEEDED:I = 0x5

.field public static final MSG_CLEAR_ACCESSIBILITY_FOCUS:I = 0x9

.field public static final MSG_SEND_ACCESSIBILITY_EVENT_TO_INPUT_FILTER:I = 0x1

.field public static final MSG_SEND_CLEARED_STATE_TO_CLIENTS_FOR_USER:I = 0x3

.field public static final MSG_SEND_KEY_EVENT_TO_INPUT_FILTER:I = 0x8

.field public static final MSG_SEND_STATE_TO_CLIENTS:I = 0x2

.field public static final MSG_SHOW_ENABLED_TOUCH_EXPLORATION_DIALOG:I = 0x7

.field public static final MSG_UPDATE_INPUT_FILTER:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2011
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2012
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2011
    return-void
.end method

.method private announceNewUserIfNeeded()V
    .registers 10

    .prologue
    .line 2078
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2079
    :try_start_7
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap12(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    .line 2080
    .local v3, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->isHandlingAccessibilityEvents()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 2081
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v4

    .line 2082
    const-string/jumbo v6, "user"

    .line 2081
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 2083
    .local v2, "userManager":Landroid/os/UserManager;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 2084
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 2083
    const v7, 0x1040526

    invoke-virtual {v4, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2086
    .local v1, "message":Ljava/lang/String;
    const/16 v4, 0x4000

    .line 2085
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2087
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2088
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v6

    invoke-virtual {v4, v0, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z
    :try_end_59
    .catchall {:try_start_7 .. :try_end_59} :catchall_5b

    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "userManager":Landroid/os/UserManager;
    :cond_59
    monitor-exit v5

    .line 2077
    return-void

    .line 2078
    .end local v3    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_5b
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private sendStateToClients(ILandroid/os/RemoteCallbackList;)V
    .registers 8
    .param p1, "clientState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2104
    .local p2, "clients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/accessibility/IAccessibilityManagerClient;>;"
    :try_start_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 2105
    .local v3, "userClientCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v3, :cond_15

    .line 2106
    invoke-virtual {p2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/IAccessibilityManagerClient;
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_19

    .line 2108
    .local v0, "client":Landroid/view/accessibility/IAccessibilityManagerClient;
    :try_start_d
    invoke-interface {v0, p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->setState(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_13
    .catchall {:try_start_d .. :try_end_10} :catchall_19

    .line 2105
    :goto_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2109
    :catch_13
    move-exception v2

    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_10

    .line 2114
    .end local v0    # "client":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_15
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2102
    return-void

    .line 2113
    .end local v1    # "i":I
    .end local v3    # "userClientCount":I
    :catchall_19
    move-exception v4

    .line 2114
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2113
    throw v4
.end method

.method private sendStateToClientsForUser(II)V
    .registers 6
    .param p1, "clientState"    # I
    .param p2, "userId"    # I

    .prologue
    .line 2095
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2096
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_14

    move-result-object v0

    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    monitor-exit v2

    .line 2098
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    .line 2093
    return-void

    .line 2095
    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2017
    iget v6, p1, Landroid/os/Message;->what:I

    .line 2018
    .local v6, "type":I
    packed-switch v6, :pswitch_data_aa

    .line 2016
    :goto_5
    :pswitch_5
    return-void

    .line 2020
    :pswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/accessibility/AccessibilityEvent;

    .line 2021
    .local v3, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 2022
    :try_start_11
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get5(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v10

    if-eqz v10, :cond_2a

    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get6(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v10

    if-eqz v10, :cond_2a

    .line 2023
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get6(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_2f

    :cond_2a
    monitor-exit v11

    .line 2026
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_5

    .line 2021
    :catchall_2f
    move-exception v10

    monitor-exit v11

    throw v10

    .line 2030
    .end local v3    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :pswitch_32
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    .line 2031
    .local v2, "event":Landroid/view/KeyEvent;
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 2032
    .local v4, "policyFlags":I
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 2033
    :try_start_3f
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get5(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v10

    if-eqz v10, :cond_58

    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get6(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v10

    if-eqz v10, :cond_58

    .line 2034
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get6(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v10

    invoke-virtual {v10, v2, v4}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V
    :try_end_58
    .catchall {:try_start_3f .. :try_end_58} :catchall_5d

    :cond_58
    monitor-exit v11

    .line 2037
    invoke-virtual {v2}, Landroid/view/KeyEvent;->recycle()V

    goto :goto_5

    .line 2032
    :catchall_5d
    move-exception v10

    monitor-exit v11

    throw v10

    .line 2041
    .end local v2    # "event":Landroid/view/KeyEvent;
    .end local v4    # "policyFlags":I
    :pswitch_60
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2042
    .local v1, "clientState":I
    iget v7, p1, Landroid/os/Message;->arg2:I

    .line 2043
    .local v7, "userId":I
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get3(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-direct {p0, v1, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    .line 2044
    invoke-direct {p0, v1, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClientsForUser(II)V

    goto :goto_5

    .line 2048
    .end local v1    # "clientState":I
    .end local v7    # "userId":I
    :pswitch_71
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 2049
    .restart local v7    # "userId":I
    const/4 v10, 0x0

    invoke-direct {p0, v10, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClientsForUser(II)V

    goto :goto_5

    .line 2053
    .end local v7    # "userId":I
    :pswitch_78
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->announceNewUserIfNeeded()V

    goto :goto_5

    .line 2057
    :pswitch_7c
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 2058
    .local v8, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap29(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto :goto_5

    .line 2062
    .end local v8    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :pswitch_86
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 2063
    .local v5, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap24(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    goto/16 :goto_5

    .line 2067
    .end local v5    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :pswitch_91
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 2069
    .local v9, "windowId":I
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 2070
    :try_start_9a
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    :try_end_9f
    .catchall {:try_start_9a .. :try_end_9f} :catchall_a6

    move-result-object v0

    .local v0, "bridge":Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    monitor-exit v11

    .line 2072
    invoke-virtual {v0, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->clearAccessibilityFocusNotLocked(I)V

    goto/16 :goto_5

    .line 2069
    .end local v0    # "bridge":Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    :catchall_a6
    move-exception v10

    monitor-exit v11

    throw v10

    .line 2018
    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_6
        :pswitch_60
        :pswitch_71
        :pswitch_5
        :pswitch_78
        :pswitch_7c
        :pswitch_86
        :pswitch_32
        :pswitch_91
    .end packed-switch
.end method

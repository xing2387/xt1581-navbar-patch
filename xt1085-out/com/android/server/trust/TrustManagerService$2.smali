.class Lcom/android/server/trust/TrustManagerService$2;
.super Landroid/os/Handler;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/trust/TrustManagerService;

    .prologue
    .line 889
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 892
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_92

    .line 891
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 894
    :pswitch_8
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/trust/ITrustListener;

    invoke-static {v5, v4}, Lcom/android/server/trust/TrustManagerService;->-wrap4(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    goto :goto_7

    .line 897
    :pswitch_12
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/trust/ITrustListener;

    invoke-static {v5, v4}, Lcom/android/server/trust/TrustManagerService;->-wrap9(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    goto :goto_7

    .line 900
    :pswitch_1c
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_23

    const/4 v4, 0x1

    :cond_23
    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-static {v5, v4, v6}, Lcom/android/server/trust/TrustManagerService;->-wrap5(Lcom/android/server/trust/TrustManagerService;ZI)V

    goto :goto_7

    .line 903
    :pswitch_29
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v6}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 905
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4, v6}, Lcom/android/server/trust/TrustManagerService;->-wrap7(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_7

    .line 908
    :pswitch_34
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v5}, Lcom/android/server/trust/TrustManagerService;->-get2(Lcom/android/server/trust/TrustManagerService;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/trust/TrustManagerService;->-wrap7(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_7

    .line 913
    :pswitch_40
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    goto :goto_7

    .line 916
    :pswitch_48
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5}, Lcom/android/server/trust/TrustManagerService;->-set0(Lcom/android/server/trust/TrustManagerService;I)I

    .line 917
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4, v6}, Lcom/android/server/trust/TrustManagerService;->-wrap7(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_7

    .line 921
    :pswitch_55
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-get8(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    monitor-enter v5

    .line 922
    :try_start_5c
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-get8(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_8e

    move-result-object v2

    .local v2, "usuallyManaged":Landroid/util/SparseBooleanArray;
    monitor-exit v5

    .line 925
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_68
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 926
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 927
    .local v1, "userId":I
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    .line 928
    .local v3, "value":Z
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-get5(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    move-result v4

    if-eq v3, v4, :cond_8b

    .line 929
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-get5(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setTrustUsuallyManaged(ZI)V

    .line 925
    :cond_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 921
    .end local v0    # "i":I
    .end local v1    # "userId":I
    .end local v2    # "usuallyManaged":Landroid/util/SparseBooleanArray;
    .end local v3    # "value":Z
    :catchall_8e
    move-exception v4

    monitor-exit v5

    throw v4

    .line 892
    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_8
        :pswitch_12
        :pswitch_1c
        :pswitch_29
        :pswitch_7
        :pswitch_34
        :pswitch_40
        :pswitch_40
        :pswitch_48
        :pswitch_55
        :pswitch_40
    .end packed-switch
.end method

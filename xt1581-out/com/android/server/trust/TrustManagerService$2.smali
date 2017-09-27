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
    .line 885
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 888
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_a2

    .line 887
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 890
    :pswitch_9
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/trust/ITrustListener;

    invoke-static {v5, v4}, Lcom/android/server/trust/TrustManagerService;->-wrap4(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    goto :goto_8

    .line 893
    :pswitch_13
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/trust/ITrustListener;

    invoke-static {v5, v4}, Lcom/android/server/trust/TrustManagerService;->-wrap9(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    goto :goto_8

    .line 896
    :pswitch_1d
    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_29

    :goto_23
    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v6, v4, v5}, Lcom/android/server/trust/TrustManagerService;->-wrap5(Lcom/android/server/trust/TrustManagerService;ZI)V

    goto :goto_8

    :cond_29
    move v4, v5

    goto :goto_23

    .line 899
    :pswitch_2b
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v7}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 901
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4, v7}, Lcom/android/server/trust/TrustManagerService;->-wrap7(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_8

    .line 904
    :pswitch_36
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v5}, Lcom/android/server/trust/TrustManagerService;->-get2(Lcom/android/server/trust/TrustManagerService;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/trust/TrustManagerService;->-wrap7(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_8

    .line 909
    :pswitch_42
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    goto :goto_8

    .line 912
    :pswitch_4a
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5}, Lcom/android/server/trust/TrustManagerService;->-set0(Lcom/android/server/trust/TrustManagerService;I)I

    .line 913
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4, v7}, Lcom/android/server/trust/TrustManagerService;->-wrap7(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_8

    .line 916
    :pswitch_57
    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v7, p1, Landroid/os/Message;->arg2:I

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_63

    :goto_5f
    invoke-virtual {v6, v7, v4}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    goto :goto_8

    :cond_63
    move v4, v5

    goto :goto_5f

    .line 920
    :pswitch_65
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-get8(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    monitor-enter v5

    .line 921
    :try_start_6c
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-get8(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_9e

    move-result-object v2

    .local v2, "usuallyManaged":Landroid/util/SparseBooleanArray;
    monitor-exit v5

    .line 924
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_78
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_8

    .line 925
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 926
    .local v1, "userId":I
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    .line 927
    .local v3, "value":Z
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-get5(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    move-result v4

    if-eq v3, v4, :cond_9b

    .line 928
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-get5(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setTrustUsuallyManaged(ZI)V

    .line 924
    :cond_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 920
    .end local v0    # "i":I
    .end local v1    # "userId":I
    .end local v2    # "usuallyManaged":Landroid/util/SparseBooleanArray;
    .end local v3    # "value":Z
    :catchall_9e
    move-exception v4

    monitor-exit v5

    throw v4

    .line 888
    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_13
        :pswitch_1d
        :pswitch_2b
        :pswitch_8
        :pswitch_36
        :pswitch_42
        :pswitch_42
        :pswitch_4a
        :pswitch_57
        :pswitch_65
        :pswitch_42
    .end packed-switch
.end method

.class Lcom/android/server/am/UserController$8;
.super Landroid/os/IRemoteCallback$Stub;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCount:I

.field final synthetic this$0:Lcom/android/server/am/UserController;

.field final synthetic val$newUserId:I

.field final synthetic val$observerCount:I

.field final synthetic val$oldUserId:I

.field final synthetic val$uss:Lcom/android/server/am/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;II)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/am/UserController;
    .param p2, "val$observerCount"    # I
    .param p3, "val$uss"    # Lcom/android/server/am/UserState;
    .param p4, "val$oldUserId"    # I
    .param p5, "val$newUserId"    # I

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/android/server/am/UserController$8;->this$0:Lcom/android/server/am/UserController;

    iput p2, p0, Lcom/android/server/am/UserController$8;->val$observerCount:I

    iput-object p3, p0, Lcom/android/server/am/UserController$8;->val$uss:Lcom/android/server/am/UserState;

    iput p4, p0, Lcom/android/server/am/UserController$8;->val$oldUserId:I

    iput p5, p0, Lcom/android/server/am/UserController$8;->val$newUserId:I

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 1063
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UserController$8;->mCount:I

    .line 1062
    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/server/am/UserController$8;->this$0:Lcom/android/server/am/UserController;

    invoke-static {v0}, Lcom/android/server/am/UserController;->-get1(Lcom/android/server/am/UserController;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1067
    iget-object v0, p0, Lcom/android/server/am/UserController$8;->this$0:Lcom/android/server/am/UserController;

    iget-object v0, v0, Lcom/android/server/am/UserController;->mCurUserSwitchCallback:Ljava/lang/Object;

    if-ne v0, p0, :cond_27

    .line 1068
    iget v0, p0, Lcom/android/server/am/UserController$8;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/UserController$8;->mCount:I

    .line 1069
    iget v0, p0, Lcom/android/server/am/UserController$8;->mCount:I

    iget v2, p0, Lcom/android/server/am/UserController$8;->val$observerCount:I

    if-ne v0, v2, :cond_27

    .line 1070
    iget-object v0, p0, Lcom/android/server/am/UserController$8;->this$0:Lcom/android/server/am/UserController;

    iget-object v2, p0, Lcom/android/server/am/UserController$8;->val$uss:Lcom/android/server/am/UserState;

    iget v3, p0, Lcom/android/server/am/UserController$8;->val$oldUserId:I

    iget v4, p0, Lcom/android/server/am/UserController$8;->val$newUserId:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_2c

    :cond_27
    monitor-exit v1

    .line 1066
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1065
    return-void

    .line 1066
    :catchall_2c
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.class Lcom/android/server/statusbar/StatusBarManagerService$6;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->setNavigationBarVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$vis:Z


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p2, "val$vis"    # Z

    .prologue
    .line 654
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput-boolean p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$vis:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 656
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-get0(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 658
    :try_start_8
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-get0(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$vis:Z

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBar;->setNavigationBarVisibility(Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_14

    .line 655
    :cond_13
    :goto_13
    return-void

    .line 659
    :catch_14
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_13
.end method

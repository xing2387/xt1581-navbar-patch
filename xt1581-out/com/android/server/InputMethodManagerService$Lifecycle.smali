.class public final Lcom/android/server/InputMethodManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/InputMethodManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 792
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 793
    new-instance v0, Lcom/android/server/InputMethodManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/InputMethodManagerService;

    .line 791
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .prologue
    .line 814
    const/16 v1, 0x226

    if-ne p1, v1, :cond_12

    .line 816
    const-string/jumbo v1, "statusbar"

    .line 815
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService;

    .line 817
    .local v0, "statusBarService":Lcom/android/server/statusbar/StatusBarManagerService;
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/InputMethodManagerService;->systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V

    .line 811
    .end local v0    # "statusBarService":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_12
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 798
    const-class v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 799
    new-instance v1, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;-><init>(Landroid/os/Handler;)V

    .line 798
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 800
    const-string/jumbo v0, "input_method"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 797
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/InputMethodManagerService;->onSwitchUser(I)V

    .line 804
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/InputMethodManagerService;->onUnlockUser(I)V

    .line 822
    return-void
.end method

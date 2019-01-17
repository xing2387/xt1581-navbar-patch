.class Lcom/android/server/policy/PhoneWindowManager$21;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/FingerprintGestureController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 7195
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintAssist()V
    .registers 4

    .prologue
    .line 7235
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->-wrap12(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;I)V

    .line 7234
    return-void
.end method

.method public onFingerprintDown()V
    .registers 1

    .prologue
    .line 7197
    return-void
.end method

.method public onFingerprintShowNotifications()V
    .registers 4

    .prologue
    .line 7212
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 7213
    .local v1, "service":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_b

    .line 7215
    :try_start_8
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    .line 7211
    :cond_b
    :goto_b
    return-void

    .line 7216
    :catch_c
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_b
.end method

.method public onFingerprintShowSettings()V
    .registers 4

    .prologue
    .line 7223
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 7224
    .local v1, "service":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_b

    .line 7227
    :try_start_8
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    .line 7222
    :cond_b
    :goto_b
    return-void

    .line 7228
    :catch_c
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_b
.end method

.method public onFingerprintShowTSB()V
    .registers 4

    .prologue
    .line 7206
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_f

    .line 7207
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v2, 0x0
    
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap17(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/MotionEvent;)V

    .line 7205
    :cond_f
    return-void
.end method

.method public onFingerprintUp()V
    .registers 1

    .prologue
    .line 7201
    return-void
.end method

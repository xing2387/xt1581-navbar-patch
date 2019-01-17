.class public Lcom/android/server/policy/PhoneWindowManagerWithMotoDisplay;
.super Lcom/android/server/policy/PhoneWindowManager;
.source "PhoneWindowManagerWithMotoDisplay.java"


# static fields
.field static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "PhoneWindowManagerWithMotoDisplay"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    return-void
.end method

.method static getMotoDisplayService()Landroid/app/IMotoDisplayIntService;
    .registers 2

    .prologue
    .line 34
    const-string/jumbo v1, "motodisplay_int_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 33
    invoke-static {v1}, Landroid/app/IMotoDisplayIntService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IMotoDisplayIntService;

    move-result-object v0

    .line 36
    .local v0, "motoDisplayService":Landroid/app/IMotoDisplayIntService;
    return-object v0
.end method

.method private isDreaming()Z
    .registers 6

    .prologue
    .line 65
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerWithMotoDisplay;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 66
    .local v0, "dreamManager":Landroid/service/dreams/IDreamManager;
    const/4 v2, 0x0

    .line 68
    .local v2, "isDreaming":Z
    if-eqz v0, :cond_e

    :try_start_7
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_f

    move-result v3

    if-eqz v3, :cond_e

    .line 69
    const/4 v2, 0x1

    .line 75
    :cond_e
    :goto_e
    return v2

    .line 71
    :catch_f
    move-exception v1

    .line 72
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "PhoneWindowManagerWithMotoDisplay"

    const-string/jumbo v4, "RemoteException when checking if dreaming"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method


# virtual methods
.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 42
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerWithMotoDisplay;->getMotoDisplayService()Landroid/app/IMotoDisplayIntService;

    move-result-object v1

    .line 44
    .local v1, "motoDisplayService":Landroid/app/IMotoDisplayIntService;
    if-eqz p1, :cond_1f

    .line 45
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_1f

    .line 46
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1f

    .line 47
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerWithMotoDisplay;->isDreaming()Z

    move-result v3

    .line 44
    if-eqz v3, :cond_1f

    .line 49
    if-eqz v1, :cond_2f

    .line 51
    :try_start_1c
    invoke-interface {v1}, Landroid/app/IMotoDisplayIntService;->notifyPowerKeyWakeup()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_24

    .line 59
    :cond_1f
    :goto_1f
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v2

    .line 60
    .local v2, "result":I
    return v2

    .line 52
    .end local v2    # "result":I
    :catch_24
    move-exception v0

    .line 53
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "PhoneWindowManagerWithMotoDisplay"

    const-string/jumbo v4, "remote exception for notifyPowerKeyWakeup"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 56
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2f
    const-string/jumbo v3, "PhoneWindowManagerWithMotoDisplay"

    const-string/jumbo v4, "MotoDisplay is not running"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

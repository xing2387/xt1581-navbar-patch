.class Lcom/android/server/pm/ShortcutService$MyShellCommand;
.super Landroid/os/ShellCommand;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyShellCommand"
.end annotation


# instance fields
.field private mUserId:I

.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutService;

    .prologue
    .line 2348
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2350
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 2348
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$MyShellCommand;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;-><init>(Lcom/android/server/pm/ShortcutService;)V

    return-void
.end method

.method private clearLauncher()V
    .registers 5

    .prologue
    .line 2501
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2502
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    .line 2503
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    const/4 v3, 0x0

    .line 2502
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/ShortcutUser;->setLauncherComponent(Lcom/android/server/pm/ShortcutService;Landroid/content/ComponentName;)V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_17

    monitor-exit v1

    .line 2500
    return-void

    .line 2501
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleClearDefaultLauncher()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .prologue
    .line 2518
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptions(Z)V

    .line 2520
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->clearLauncher()V

    .line 2517
    return-void
.end method

.method private handleClearShortcuts()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .prologue
    .line 2545
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptions(Z)V

    .line 2546
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2548
    .local v0, "packageName":Ljava/lang/String;
    const-string/jumbo v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cmd: handleClearShortcuts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-static {v1, v0, v2}, Lcom/android/server/pm/ShortcutService;->-wrap0(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 2544
    return-void
.end method

.method private handleGetDefaultLauncher()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .prologue
    .line 2524
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptions(Z)V

    .line 2526
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->showLauncher()V

    .line 2523
    return-void
.end method

.method private handleOverrideConfig()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .prologue
    .line 2481
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2483
    .local v0, "config":Ljava/lang/String;
    const-string/jumbo v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cmd: handleOverrideConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2486
    :try_start_25
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->updateConfigurationLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 2487
    new-instance v1, Lcom/android/server/pm/ShortcutService$CommandException;

    const-string/jumbo v3, "override-config failed.  See logcat for details."

    invoke-direct {v1, v3}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_36

    .line 2485
    :catchall_36
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_39
    monitor-exit v2

    .line 2480
    return-void
.end method

.method private handleRefreshDefaultLauncher()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .prologue
    .line 2530
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptions(Z)V

    .line 2532
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->clearLauncher()V

    .line 2533
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->showLauncher()V

    .line 2529
    return-void
.end method

.method private handleResetAllThrottling()V
    .registers 3

    .prologue
    .line 2465
    const-string/jumbo v0, "ShortcutService"

    const-string/jumbo v1, "cmd: handleResetAllThrottling"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->resetAllThrottlingInner()V

    .line 2464
    return-void
.end method

.method private handleResetConfig()V
    .registers 3

    .prologue
    .line 2493
    const-string/jumbo v0, "ShortcutService"

    const-string/jumbo v1, "cmd: handleResetConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2496
    :try_start_10
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-wrap5(Lcom/android/server/pm/ShortcutService;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_17

    monitor-exit v1

    .line 2492
    return-void

    .line 2495
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleResetPackageThrottling()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .prologue
    .line 2471
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptions(Z)V

    .line 2473
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2475
    .local v0, "packageName":Ljava/lang/String;
    const-string/jumbo v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cmd: handleResetPackageThrottling: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/ShortcutService;->resetPackageThrottling(Ljava/lang/String;I)V

    .line 2470
    return-void
.end method

.method private handleResetThrottling()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .prologue
    .line 2457
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptions(Z)V

    .line 2459
    const-string/jumbo v0, "ShortcutService"

    const-string/jumbo v1, "cmd: handleResetThrottling"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->resetThrottlingInner(I)V

    .line 2456
    return-void
.end method

.method private handleUnloadUser()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .prologue
    .line 2537
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptions(Z)V

    .line 2539
    const-string/jumbo v0, "ShortcutService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cmd: handleUnloadUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->handleCleanupUser(I)V

    .line 2536
    return-void
.end method

.method private parseOptions(Z)V
    .registers 6
    .param p1, "takeUser"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .prologue
    .line 2355
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_36

    .line 2356
    const-string/jumbo v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2358
    if-eqz p1, :cond_1c

    .line 2359
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    goto :goto_0

    .line 2364
    :cond_1c
    new-instance v1, Lcom/android/server/pm/ShortcutService$CommandException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2353
    :cond_36
    return-void
.end method

.method private showLauncher()V
    .registers 6

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2510
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    const-string/jumbo v2, "-"

    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermissionInner(Ljava/lang/String;I)Z

    .line 2512
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Launcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2513
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v4, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutUser;->getLauncherComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 2512
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_3a

    monitor-exit v1

    .line 2507
    return-void

    .line 2508
    :catchall_3a
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 6
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 2371
    if-nez p1, :cond_7

    .line 2372
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 2374
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 2376
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_b
    const-string/jumbo v2, "reset-package-throttling"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2378
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleResetPackageThrottling()V
    :try_end_17
    .catch Lcom/android/server/pm/ShortcutService$CommandException; {:try_start_b .. :try_end_17} :catch_2c

    .line 2414
    :goto_17
    const-string/jumbo v2, "Success"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2415
    const/4 v2, 0x0

    return v2

    .line 2376
    :cond_1f
    :try_start_1f
    const-string/jumbo v2, "reset-throttling"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2381
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleResetThrottling()V
    :try_end_2b
    .catch Lcom/android/server/pm/ShortcutService$CommandException; {:try_start_1f .. :try_end_2b} :catch_2c

    goto :goto_17

    .line 2410
    :catch_2c
    move-exception v0

    .line 2411
    .local v0, "e":Lcom/android/server/pm/ShortcutService$CommandException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService$CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2412
    const/4 v2, 0x1

    return v2

    .line 2376
    .end local v0    # "e":Lcom/android/server/pm/ShortcutService$CommandException;
    :cond_4a
    :try_start_4a
    const-string/jumbo v2, "reset-all-throttling"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 2384
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleResetAllThrottling()V

    goto :goto_17

    .line 2376
    :cond_57
    const-string/jumbo v2, "override-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 2387
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleOverrideConfig()V

    goto :goto_17

    .line 2376
    :cond_64
    const-string/jumbo v2, "reset-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 2390
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleResetConfig()V

    goto :goto_17

    .line 2376
    :cond_71
    const-string/jumbo v2, "clear-default-launcher"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 2393
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleClearDefaultLauncher()V

    goto :goto_17

    .line 2376
    :cond_7e
    const-string/jumbo v2, "get-default-launcher"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 2396
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleGetDefaultLauncher()V

    goto :goto_17

    .line 2376
    :cond_8b
    const-string/jumbo v2, "refresh-default-launcher"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 2399
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleRefreshDefaultLauncher()V

    goto :goto_17

    .line 2376
    :cond_98
    const-string/jumbo v2, "unload-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 2402
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleUnloadUser()V

    goto/16 :goto_17

    .line 2376
    :cond_a6
    const-string/jumbo v2, "clear-shortcuts"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 2405
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleClearShortcuts()V

    goto/16 :goto_17

    .line 2408
    :cond_b4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_b7
    .catch Lcom/android/server/pm/ShortcutService$CommandException; {:try_start_4a .. :try_end_b7} :catch_2c

    move-result v2

    return v2
.end method

.method public onHelp()V
    .registers 3

    .prologue
    .line 2420
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2421
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "Usage: cmd shortcut COMMAND [options ...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2422
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2423
    const-string/jumbo v1, "cmd shortcut reset-package-throttling [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2424
    const-string/jumbo v1, "    Reset throttling for a package"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2425
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2426
    const-string/jumbo v1, "cmd shortcut reset-throttling [--user USER_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2427
    const-string/jumbo v1, "    Reset throttling for all packages and users"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2428
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2429
    const-string/jumbo v1, "cmd shortcut reset-all-throttling"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2430
    const-string/jumbo v1, "    Reset the throttling state for all users"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2431
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2432
    const-string/jumbo v1, "cmd shortcut override-config CONFIG"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2433
    const-string/jumbo v1, "    Override the configuration for testing (will last until reboot)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2434
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2435
    const-string/jumbo v1, "cmd shortcut reset-config"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2436
    const-string/jumbo v1, "    Reset the configuration set with \"update-config\""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2437
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2438
    const-string/jumbo v1, "cmd shortcut clear-default-launcher [--user USER_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2439
    const-string/jumbo v1, "    Clear the cached default launcher"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2440
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2441
    const-string/jumbo v1, "cmd shortcut get-default-launcher [--user USER_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2442
    const-string/jumbo v1, "    Show the cached default launcher"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2443
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2444
    const-string/jumbo v1, "cmd shortcut refresh-default-launcher [--user USER_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2445
    const-string/jumbo v1, "    Refresh the cached default launcher"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2446
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2447
    const-string/jumbo v1, "cmd shortcut unload-user [--user USER_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2448
    const-string/jumbo v1, "    Unload a user from the memory"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2449
    const-string/jumbo v1, "    (This should not affect any observable behavior)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2450
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2451
    const-string/jumbo v1, "cmd shortcut clear-shortcuts [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2452
    const-string/jumbo v1, "    Remove all shortcuts from a package, including pinned shortcuts"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2453
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2419
    return-void
.end method

.class final Lcom/android/server/accounts/AccountManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 5618
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$SettingsObserver;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 5619
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5618
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .param p1, "SelfChange"    # Z

    .prologue
    const/4 v3, 0x1

    .line 5624
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$SettingsObserver;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-get1(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5625
    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    .line 5624
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2c

    .line 5626
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$SettingsObserver;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-get1(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 5627
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$SettingsObserver;->this$0:Lcom/android/server/accounts/AccountManagerService;

    monitor-enter v1

    .line 5628
    :try_start_25
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$SettingsObserver;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/accounts/AccountManagerService;->-set4(Lcom/android/server/accounts/AccountManagerService;Z)Z
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2d

    monitor-exit v1

    .line 5623
    :cond_2c
    return-void

    .line 5627
    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.class final Lcom/android/server/power/PowerManagerService$DockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 3199
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$DockReceiver;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3202
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get9(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3203
    :try_start_7
    const-string/jumbo v1, "android.intent.extra.DOCK_STATE"

    .line 3204
    const/4 v3, 0x0

    .line 3203
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3205
    .local v0, "dockState":I
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get5(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    if-eq v1, v0, :cond_2c

    .line 3206
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, v0}, Lcom/android/server/power/PowerManagerService;->-set1(Lcom/android/server/power/PowerManagerService;I)I

    .line 3207
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)I

    move-result v3

    or-int/lit16 v3, v3, 0x400

    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->-set0(Lcom/android/server/power/PowerManagerService;I)I

    .line 3208
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-wrap36(Lcom/android/server/power/PowerManagerService;)V
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2e

    :cond_2c
    monitor-exit v2

    .line 3201
    return-void

    .line 3202
    .end local v0    # "dockState":I
    :catchall_2e
    move-exception v1

    monitor-exit v2

    throw v1
.end method
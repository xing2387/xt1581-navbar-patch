.class Lcom/android/server/BatteryService$2;
.super Landroid/os/UEventObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 230
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v0, 0x1

    .line 231
    .local v0, "invalidCharger":I
    :goto_11
    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get11(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 232
    :try_start_18
    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get8(Lcom/android/server/BatteryService;)I

    move-result v1

    if-eq v1, v0, :cond_25

    .line 233
    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1, v0}, Lcom/android/server/BatteryService;->-set4(Lcom/android/server/BatteryService;I)I
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_29

    :cond_25
    monitor-exit v2

    .line 229
    return-void

    .line 230
    .end local v0    # "invalidCharger":I
    :cond_27
    const/4 v0, 0x0

    .restart local v0    # "invalidCharger":I
    goto :goto_11

    .line 231
    :catchall_29
    move-exception v1

    monitor-exit v2

    throw v1
.end method
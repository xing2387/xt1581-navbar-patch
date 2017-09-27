.class Lcom/android/server/BatteryService$1;
.super Landroid/os/UEventObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
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
    .line 1027
    iput-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 1030
    invoke-static {}, Lcom/android/server/BatteryService;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uevent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const-string/jumbo v2, "POWER_SUPPLY_CHARGE_RATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1033
    .local v1, "chargeRateStr":Ljava/lang/String;
    const-string/jumbo v2, "turbo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1034
    const/4 v0, 0x3

    .line 1042
    .local v0, "chargeRate":I
    :goto_2c
    iget-object v2, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get6(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1043
    :try_start_33
    iget-object v2, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get3(Lcom/android/server/BatteryService;)I

    move-result v2

    if-eq v2, v0, :cond_4e

    .line 1044
    iget-object v2, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2, v0}, Lcom/android/server/BatteryService;->-set0(Lcom/android/server/BatteryService;I)I

    .line 1045
    iget-object v2, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get2(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 1046
    iget-object v2, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/BatteryService;->-wrap2(Lcom/android/server/BatteryService;Z)V
    :try_end_4e
    .catchall {:try_start_33 .. :try_end_4e} :catchall_68

    :cond_4e
    monitor-exit v3

    .line 1029
    return-void

    .line 1035
    .end local v0    # "chargeRate":I
    :cond_50
    const-string/jumbo v2, "weak"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1036
    const/4 v0, 0x2

    .restart local v0    # "chargeRate":I
    goto :goto_2c

    .line 1037
    .end local v0    # "chargeRate":I
    :cond_5b
    const-string/jumbo v2, "normal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 1038
    const/4 v0, 0x1

    .restart local v0    # "chargeRate":I
    goto :goto_2c

    .line 1040
    .end local v0    # "chargeRate":I
    :cond_66
    const/4 v0, 0x0

    .restart local v0    # "chargeRate":I
    goto :goto_2c

    .line 1042
    :catchall_68
    move-exception v2

    monitor-exit v3

    throw v2
.end method

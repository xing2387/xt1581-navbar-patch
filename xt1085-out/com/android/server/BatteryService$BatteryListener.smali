.class final Lcom/android/server/BatteryService$BatteryListener;
.super Landroid/os/IBatteryPropertiesListener$Stub;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/android/server/BatteryService$BatteryListener;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/IBatteryPropertiesListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$BatteryListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$BatteryListener;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public batteryPropertiesChanged(Landroid/os/BatteryProperties;)V
    .registers 5
    .param p1, "props"    # Landroid/os/BatteryProperties;

    .prologue
    .line 1019
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1021
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/BatteryService$BatteryListener;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2, p1}, Lcom/android/server/BatteryService;->-wrap6(Lcom/android/server/BatteryService;Landroid/os/BatteryProperties;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 1023
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1018
    return-void

    .line 1022
    :catchall_d
    move-exception v2

    .line 1023
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1022
    throw v2
.end method

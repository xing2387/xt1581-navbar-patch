.class Lcom/android/server/DeviceIdleController$4;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$4;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 4

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$4;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v1

    .line 382
    :try_start_3
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$4;->this$0:Lcom/android/server/DeviceIdleController;

    const-string/jumbo v2, "s:alarm"

    invoke-virtual {v0, v2}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    .line 380
    return-void

    .line 381
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

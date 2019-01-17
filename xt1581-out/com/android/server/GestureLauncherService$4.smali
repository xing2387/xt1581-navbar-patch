.class Lcom/android/server/GestureLauncherService$4;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$4;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 528
    iget-object v1, p0, Lcom/android/server/GestureLauncherService$4;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->-wrap5(Lcom/android/server/GestureLauncherService;)V

    .line 529
    iget-object v1, p0, Lcom/android/server/GestureLauncherService$4;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v1, p1}, Lcom/android/server/GestureLauncherService;->-wrap1(Lcom/android/server/GestureLauncherService;Ljava/lang/String;)Z

    move-result v0

    .line 530
    .local v0, "rear":Z
    if-eqz v0, :cond_1a

    .line 531
    iget-object v2, p0, Lcom/android/server/GestureLauncherService$4;->this$0:Lcom/android/server/GestureLauncherService;

    monitor-enter v2

    .line 532
    :try_start_10
    iget-object v1, p0, Lcom/android/server/GestureLauncherService$4;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->-get7(Lcom/android/server/GestureLauncherService;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1b

    monitor-exit v2

    .line 525
    :cond_1a
    return-void

    .line 531
    :catchall_1b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 541
    iget-object v1, p0, Lcom/android/server/GestureLauncherService$4;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->-wrap5(Lcom/android/server/GestureLauncherService;)V

    .line 542
    iget-object v1, p0, Lcom/android/server/GestureLauncherService$4;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v1, p1}, Lcom/android/server/GestureLauncherService;->-wrap1(Lcom/android/server/GestureLauncherService;Ljava/lang/String;)Z

    move-result v0

    .line 543
    .local v0, "rear":Z
    if-eqz v0, :cond_1a

    .line 544
    iget-object v2, p0, Lcom/android/server/GestureLauncherService$4;->this$0:Lcom/android/server/GestureLauncherService;

    monitor-enter v2

    .line 545
    :try_start_10
    iget-object v1, p0, Lcom/android/server/GestureLauncherService$4;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->-get7(Lcom/android/server/GestureLauncherService;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1b

    monitor-exit v2

    .line 538
    :cond_1a
    return-void

    .line 544
    :catchall_1b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.class Lcom/android/server/AnyMotionDetector$3;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AnyMotionDetector;


# direct methods
.method constructor <init>(Lcom/android/server/AnyMotionDetector;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/AnyMotionDetector;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 295
    const/4 v0, -0x1

    .line 296
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->-get1(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 300
    :try_start_8
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->-wrap0(Lcom/android/server/AnyMotionDetector;)I
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_1c

    move-result v0

    monitor-exit v2

    .line 302
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 303
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->-get0(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;->onAnyMotionResult(I)V

    .line 294
    :cond_1b
    return-void

    .line 296
    :catchall_1c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

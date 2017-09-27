.class Lcom/android/server/LocationManagerService$LocationWorkerHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2851
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    .line 2852
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2851
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 2858
    const-wide/16 v0, 0x0

    .line 2860
    .local v0, "startTime":J
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_58

    .line 2856
    :cond_8
    :goto_8
    return-void

    .line 2863
    :pswitch_9
    invoke-static {}, Lcom/android/server/LocationManagerService;->-get9()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2864
    const-string/jumbo v2, "LocationManagerService"

    const-string/jumbo v4, "Entering handleLocationChanged"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2868
    :cond_1c
    iget-object v4, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_56

    :goto_26
    invoke-static {v4, v2, v3}, Lcom/android/server/LocationManagerService;->-wrap5(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V

    .line 2870
    invoke-static {}, Lcom/android/server/LocationManagerService;->-get9()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2871
    const-string/jumbo v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exiting handleLocationChanged - execution time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2872
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 2871
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2872
    const-string/jumbo v4, " ms"

    .line 2871
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2868
    :cond_56
    const/4 v3, 0x0

    goto :goto_26

    .line 2860
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

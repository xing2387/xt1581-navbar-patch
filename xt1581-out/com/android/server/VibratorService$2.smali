.class Lcom/android/server/VibratorService$2;
.super Landroid/content/BroadcastReceiver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 753
    iput-object p1, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 756
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 757
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->-get3(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 763
    :try_start_14
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->-get0(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 764
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->-get0(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/VibratorService$Vibration;->isSystemHapticFeedback()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 769
    :cond_28
    :goto_28
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->-get3(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 770
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_32
    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 771
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$Vibration;

    .line 772
    .local v1, "vibration":Lcom/android/server/VibratorService$Vibration;
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->-get0(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v2

    if-eq v1, v2, :cond_32

    .line 773
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2, v1}, Lcom/android/server/VibratorService;->-wrap3(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    .line 774
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_4e
    .catchall {:try_start_14 .. :try_end_4e} :catchall_4f

    goto :goto_32

    .line 757
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/VibratorService$Vibration;>;"
    .end local v1    # "vibration":Lcom/android/server/VibratorService$Vibration;
    :catchall_4f
    move-exception v2

    monitor-exit v3

    throw v2

    .line 765
    :cond_52
    :try_start_52
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->-wrap0(Lcom/android/server/VibratorService;)V
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_4f

    goto :goto_28

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_58
    monitor-exit v3

    .line 755
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_59
    return-void
.end method

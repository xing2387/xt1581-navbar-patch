.class Lcom/android/server/am/ActivityManagerService$20;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->logStrictModeViolationToDropBox(Lcom/android/server/am/ProcessRecord;Landroid/os/StrictMode$ViolationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Landroid/os/DropBoxManager;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$dbox"    # Landroid/os/DropBoxManager;
    .param p4, "val$dropboxTag"    # Ljava/lang/String;

    .prologue
    .line 13858
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$20;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dbox:Landroid/os/DropBoxManager;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dropboxTag:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 13863
    const-wide/16 v2, 0x1388

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_1e

    .line 13867
    :goto_5
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$20;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->-get7(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/StringBuilder;

    move-result-object v3

    monitor-enter v3

    .line 13868
    :try_start_c
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$20;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->-get7(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13869
    .local v1, "errorReport":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_46

    move-result v2

    if-nez v2, :cond_20

    monitor-exit v3

    .line 13870
    return-void

    .line 13864
    .end local v1    # "errorReport":Ljava/lang/String;
    :catch_1e
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_5

    .line 13872
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "errorReport":Ljava/lang/String;
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$20;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->-get7(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$20;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get7(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 13873
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$20;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->-get7(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->trimToSize()V
    :try_end_3d
    .catchall {:try_start_20 .. :try_end_3d} :catchall_46

    monitor-exit v3

    .line 13875
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 13860
    return-void

    .line 13867
    .end local v1    # "errorReport":Ljava/lang/String;
    :catchall_46
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.class Lcom/android/server/connectivity/PacManager$1;
.super Ljava/lang/Object;
.source "PacManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/PacManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PacManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 104
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->-get5(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 105
    :try_start_7
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v4}, Lcom/android/server/connectivity/PacManager;->-get4(Lcom/android/server/connectivity/PacManager;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_6b

    move-result v2

    if-eqz v2, :cond_17

    monitor-exit v3

    return-void

    .line 107
    :cond_17
    :try_start_17
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->-get4(Lcom/android/server/connectivity/PacManager;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->-wrap1(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_20} :catch_4e
    .catchall {:try_start_17 .. :try_end_20} :catchall_6b

    move-result-object v0

    :goto_21
    monitor-exit v3

    .line 113
    if-eqz v0, :cond_71

    .line 114
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->-get5(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 115
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->-get0(Lcom/android/server/connectivity/PacManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 116
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v2, v0}, Lcom/android/server/connectivity/PacManager;->-wrap0(Lcom/android/server/connectivity/PacManager;Ljava/lang/String;)Z
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_6e

    :cond_3c
    monitor-exit v3

    .line 119
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/connectivity/PacManager;->-set0(Lcom/android/server/connectivity/PacManager;Z)Z

    .line 120
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->-wrap4(Lcom/android/server/connectivity/PacManager;)V

    .line 121
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->-wrap2(Lcom/android/server/connectivity/PacManager;)V

    .line 102
    :goto_4d
    return-void

    .line 108
    :catch_4e
    move-exception v1

    .line 109
    .local v1, "ioe":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 110
    .local v0, "file":Ljava/lang/String;
    :try_start_50
    const-string/jumbo v2, "PacManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to load PAC file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_50 .. :try_end_6a} :catchall_6b

    goto :goto_21

    .line 104
    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_6b
    move-exception v2

    monitor-exit v3

    throw v2

    .line 114
    :catchall_6e
    move-exception v2

    monitor-exit v3

    throw v2

    .line 123
    :cond_71
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->-wrap3(Lcom/android/server/connectivity/PacManager;)V

    goto :goto_4d
.end method

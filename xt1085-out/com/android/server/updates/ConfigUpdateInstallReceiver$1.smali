.class Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;
.super Ljava/lang/Thread;
.source "ConfigUpdateInstallReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/updates/ConfigUpdateInstallReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iput-object p2, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const v10, 0xc864

    .line 65
    :try_start_3
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v8, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v7, v8, v9}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-wrap2(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)[B

    move-result-object v0

    .line 67
    .local v0, "altContent":[B
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v8, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v7, v8}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-wrap5(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)I

    move-result v2

    .line 69
    .local v2, "altVersion":I
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v8, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v7, v8}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-wrap7(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "altRequiredHash":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-static {v7}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-wrap4(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)I

    move-result v4

    .line 73
    .local v4, "currentVersion":I
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-static {v7}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-wrap3(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-wrap6([B)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "currentHash":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-static {v7, v4, v2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-wrap1(Lcom/android/server/updates/ConfigUpdateInstallReceiver;II)Z

    move-result v7

    if-nez v7, :cond_3f

    .line 75
    const-string/jumbo v7, "ConfigUpdateInstallReceiver"

    const-string/jumbo v8, "Not installing, new version is <= current version"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v0    # "altContent":[B
    .end local v1    # "altRequiredHash":Ljava/lang/String;
    .end local v2    # "altVersion":I
    .end local v3    # "currentHash":Ljava/lang/String;
    .end local v4    # "currentVersion":I
    :goto_3e
    return-void

    .line 76
    .restart local v0    # "altContent":[B
    .restart local v1    # "altRequiredHash":Ljava/lang/String;
    .restart local v2    # "altVersion":I
    .restart local v3    # "currentHash":Ljava/lang/String;
    .restart local v4    # "currentVersion":I
    :cond_3f
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-static {v7, v3, v1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-wrap0(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_72

    .line 78
    const-string/jumbo v7, "Current hash did not match required value"

    .line 77
    const v8, 0xc864

    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_50} :catch_51

    goto :goto_3e

    .line 86
    .end local v0    # "altContent":[B
    .end local v1    # "altRequiredHash":Ljava/lang/String;
    .end local v2    # "altVersion":I
    .end local v3    # "currentHash":Ljava/lang/String;
    .end local v4    # "currentVersion":I
    :catch_51
    move-exception v5

    .line 87
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "ConfigUpdateInstallReceiver"

    const-string/jumbo v8, "Could not update content!"

    invoke-static {v7, v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, "errMsg":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x64

    if-le v7, v8, :cond_6e

    .line 91
    const/4 v7, 0x0

    const/16 v8, 0x63

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 93
    :cond_6e
    invoke-static {v10, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    goto :goto_3e

    .line 81
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "errMsg":Ljava/lang/String;
    .restart local v0    # "altContent":[B
    .restart local v1    # "altRequiredHash":Ljava/lang/String;
    .restart local v2    # "altVersion":I
    .restart local v3    # "currentHash":Ljava/lang/String;
    .restart local v4    # "currentVersion":I
    :cond_72
    :try_start_72
    const-string/jumbo v7, "ConfigUpdateInstallReceiver"

    const-string/jumbo v8, "Found new update, installing..."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-virtual {v7, v0, v2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->install([BI)V

    .line 83
    const-string/jumbo v7, "ConfigUpdateInstallReceiver"

    const-string/jumbo v8, "Installation successful"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v8, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_92} :catch_51

    goto :goto_3e
.end method

.class Lcom/android/server/content/ContentService$1;
.super Landroid/content/BroadcastReceiver;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/ContentService;


# direct methods
.method constructor <init>(Lcom/android/server/content/ContentService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/content/ContentService;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 137
    iget-object v3, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    invoke-static {v3}, Lcom/android/server/content/ContentService;->-get0(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 138
    :try_start_7
    const-string/jumbo v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 139
    iget-object v3, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    invoke-static {v3}, Lcom/android/server/content/ContentService;->-get0(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_39

    :cond_1d
    :goto_1d
    monitor-exit v4

    .line 136
    return-void

    .line 141
    :cond_1f
    :try_start_1f
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 142
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_1d

    .line 143
    const-string/jumbo v3, "android.intent.extra.user_handle"

    .line 144
    const/16 v5, -0x2710

    .line 143
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 145
    .local v2, "userId":I
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    const/4 v5, 0x0

    invoke-static {v3, v2, v1, v5}, Lcom/android/server/content/ContentService;->-wrap0(Lcom/android/server/content/ContentService;ILjava/lang/String;Landroid/net/Uri;)V
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_39

    goto :goto_1d

    .line 137
    .end local v0    # "data":Landroid/net/Uri;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "userId":I
    :catchall_39
    move-exception v3

    monitor-exit v4

    throw v3
.end method
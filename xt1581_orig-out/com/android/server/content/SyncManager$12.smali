.class Lcom/android/server/content/SyncManager$12;
.super Landroid/database/ContentObserver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/server/content/SyncManager$12;->this$0:Lcom/android/server/content/SyncManager;

    iput-object p3, p0, Lcom/android/server/content/SyncManager$12;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/server/content/SyncManager$12;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get8(Lcom/android/server/content/SyncManager;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/content/SyncManager$12;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-wrap4(Lcom/android/server/content/SyncManager;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->-set3(Lcom/android/server/content/SyncManager;Z)Z

    .line 592
    iget-object v0, p0, Lcom/android/server/content/SyncManager$12;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get8(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 593
    iget-object v0, p0, Lcom/android/server/content/SyncManager$12;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get11(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncHandler;->onDeviceProvisioned()V

    .line 594
    iget-object v0, p0, Lcom/android/server/content/SyncManager$12;->val$resolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 590
    :cond_26
    return-void
.end method
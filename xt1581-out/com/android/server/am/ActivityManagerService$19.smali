.class Lcom/android/server/am/ActivityManagerService$19;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 13508
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$19;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 13510
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$19;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMemLeftHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13511
    new-instance v1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 13512
    .local v1, "mMemInfo":Lcom/android/internal/util/MemInfoReader;
    if-eqz v1, :cond_5b

    .line 13513
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 13514
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v0

    .line 13515
    .local v0, "infos":[J
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$19;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    const/4 v3, 0x3

    aget-wide v6, v0, v3

    add-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    iput-wide v4, v2, Lcom/android/server/am/ActivityManagerService;->mMemLeft:J

    .line 13516
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$19;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerService;->mMemLeft:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5b

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$19;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerService;->mMemLeft:J

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$19;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get7(Lcom/android/server/am/ActivityManagerService;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_5b

    .line 13517
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mMemLeft = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$19;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemLeft:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13521
    .end local v0    # "infos":[J
    :cond_5b
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$19;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMemLeftHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13509
    return-void
.end method

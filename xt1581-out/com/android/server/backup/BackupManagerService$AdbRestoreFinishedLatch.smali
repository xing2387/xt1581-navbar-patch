.class Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdbRestoreFinishedLatch"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "AdbRestoreFinishedLatch"


# instance fields
.field final mLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 6456
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6457
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 6456
    return-void
.end method


# virtual methods
.method await()V
    .registers 7

    .prologue
    .line 6461
    const/4 v1, 0x0

    .line 6463
    .local v1, "latched":Z
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_b} :catch_d

    move-result v1

    .line 6460
    .end local v1    # "latched":Z
    :goto_c
    return-void

    .line 6464
    .restart local v1    # "latched":Z
    :catch_d
    move-exception v0

    .line 6465
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "AdbRestoreFinishedLatch"

    const-string/jumbo v3, "Interrupted!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public execute()V
    .registers 1

    .prologue
    .line 6470
    return-void
.end method

.method public handleTimeout()V
    .registers 3

    .prologue
    .line 6485
    const-string/jumbo v0, "AdbRestoreFinishedLatch"

    const-string/jumbo v1, "adb onRestoreFinished() timed out"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6487
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6483
    return-void
.end method

.method public operationComplete(J)V
    .registers 4
    .param p1, "result"    # J

    .prologue
    .line 6479
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6475
    return-void
.end method

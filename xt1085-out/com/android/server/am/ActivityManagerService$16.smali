.class Lcom/android/server/am/ActivityManagerService$16;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->hang(Landroid/os/IBinder;Z)V
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
    .line 13250
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .prologue
    .line 13253
    monitor-enter p0

    .line 13254
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$16;->notifyAll()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 13252
    return-void

    .line 13253
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

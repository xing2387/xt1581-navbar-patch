.class Lcom/android/server/pm/PackageInstallerService$2;
.super Ljava/lang/Object;
.source "PackageInstallerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageInstallerService;->writeSessionsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerService;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$2;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$2;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-get3(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 557
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$2;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-wrap3(Lcom/android/server/pm/PackageInstallerService;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    monitor-exit v1

    .line 555
    return-void

    .line 556
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

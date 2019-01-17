.class Lcom/android/server/pm/PackageManagerService$MeasureParams$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$MeasureParams;->handleStartCopy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$MeasureParams;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/pm/PackageManagerService$MeasureParams;

    .prologue
    .line 12945
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 12947
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    .line 12948
    const/4 v1, 0x0

    .line 12950
    .local v1, "mounted":Z
    :try_start_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 12951
    .local v2, "status":Ljava/lang/String;
    const-string/jumbo v4, "mounted"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d9

    .line 12952
    const-string/jumbo v4, "mounted_ro"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_f5

    move-result v1

    .line 12956
    .end local v1    # "mounted":Z
    .end local v2    # "status":Ljava/lang/String;
    :goto_17
    if-eqz v1, :cond_d7

    .line 12957
    new-instance v3, Landroid/os/Environment$UserEnvironment;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->-get0(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-direct {v3, v4}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 12959
    .local v3, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->-get0(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v5

    .line 12960
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->-get0(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    .line 12959
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap17(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v6

    iput-wide v6, v4, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 12962
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->-get0(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v5

    .line 12963
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->-get0(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    .line 12962
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap17(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v6

    iput-wide v6, v4, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 12966
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->-get0(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v4

    iget-wide v6, v4, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->-get0(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v5

    iget-wide v8, v5, Landroid/content/pm/PackageStats;->externalCacheSize:J

    sub-long/2addr v6, v8

    iput-wide v6, v4, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 12968
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->-get0(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v5

    .line 12969
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->-get0(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    .line 12968
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap17(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v6

    iput-wide v6, v4, Landroid/content/pm/PackageStats;->externalMediaSize:J

    .line 12971
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->-get0(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v5

    .line 12972
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->-get0(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    .line 12971
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap17(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v6

    iput-wide v6, v4, Landroid/content/pm/PackageStats;->externalObbSize:J

    .line 12975
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->-get0(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v4

    iget-wide v4, v4, Landroid/content/pm/PackageStats;->externalCacheSize:J

    cmp-long v4, v4, v10

    if-ltz v4, :cond_d1

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->-get0(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v4

    iget-wide v4, v4, Landroid/content/pm/PackageStats;->externalDataSize:J

    cmp-long v4, v4, v10

    if-gez v4, :cond_dc

    .line 12977
    :cond_d1
    :goto_d1
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->-set0(Lcom/android/server/pm/PackageManagerService$MeasureParams;Z)Z

    .line 12981
    .end local v3    # "userEnv":Landroid/os/Environment$UserEnvironment;
    :cond_d7
    const/4 v4, 0x0

    return-object v4

    .line 12951
    .restart local v1    # "mounted":Z
    .restart local v2    # "status":Ljava/lang/String;
    :cond_d9
    const/4 v1, 0x1

    goto/16 :goto_17

    .line 12976
    .end local v1    # "mounted":Z
    .end local v2    # "status":Ljava/lang/String;
    .restart local v3    # "userEnv":Landroid/os/Environment$UserEnvironment;
    :cond_dc
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->-get0(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v4

    iget-wide v4, v4, Landroid/content/pm/PackageStats;->externalMediaSize:J

    cmp-long v4, v4, v10

    if-ltz v4, :cond_d1

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->-get0(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Landroid/content/pm/PackageStats;

    move-result-object v4

    iget-wide v4, v4, Landroid/content/pm/PackageStats;->externalObbSize:J

    cmp-long v4, v4, v10

    if-gez v4, :cond_d7

    goto :goto_d1

    .line 12953
    .end local v3    # "userEnv":Landroid/os/Environment$UserEnvironment;
    .restart local v1    # "mounted":Z
    :catch_f5
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto/16 :goto_17
.end method

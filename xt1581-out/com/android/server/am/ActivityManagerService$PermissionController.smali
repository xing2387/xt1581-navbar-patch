.class Lcom/android/server/am/ActivityManagerService$PermissionController;
.super Landroid/os/IPermissionController$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PermissionController"
.end annotation


# instance fields
.field mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 7914
    invoke-direct {p0}, Landroid/os/IPermissionController$Stub;-><init>()V

    .line 7915
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 7914
    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;II)Z
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 7920
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 7926
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRuntimePermission(Ljava/lang/String;)Z
    .registers 8
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7933
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 7934
    const/4 v5, 0x0

    .line 7933
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 7935
    .local v0, "info":Landroid/content/pm/PermissionInfo;
    iget v4, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_11} :catch_16

    if-ne v4, v2, :cond_14

    :goto_13
    return v2

    :cond_14
    move v2, v3

    goto :goto_13

    .line 7936
    .end local v0    # "info":Landroid/content/pm/PermissionInfo;
    :catch_16
    move-exception v1

    .line 7937
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No such permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7939
    return v3
.end method

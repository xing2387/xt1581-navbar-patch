.class Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageRemovedInfo"
.end annotation


# instance fields
.field appearedChildPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;",
            ">;"
        }
    .end annotation
.end field

.field args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field dataRemoved:Z

.field installedUsers:[I

.field isRemovedPackageSystemUpdate:Z

.field isUpdate:Z

.field origUsers:[I

.field removedAppId:I

.field removedChildPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;",
            ">;"
        }
    .end annotation
.end field

.field removedForAllUsers:Z

.field removedPackage:Ljava/lang/String;

.field removedUsers:[I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field uid:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 16217
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16219
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    .line 16220
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    .line 16222
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    .line 16223
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installedUsers:[I

    .line 16224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    .line 16229
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16217
    return-void
.end method

.method private sendPackageRemovedBroadcastInternal(Z)V
    .registers 10
    .param p1, "killApp"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 16358
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 16359
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "android.intent.extra.UID"

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v0, :cond_66

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    :goto_12
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16360
    const-string/jumbo v0, "android.intent.extra.DATA_REMOVED"

    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->dataRemoved:Z

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16361
    const-string/jumbo v2, "android.intent.extra.DONT_KILL_APP"

    if-eqz p1, :cond_69

    move v0, v4

    :goto_23
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16362
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isUpdate:Z

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v0, :cond_34

    .line 16363
    :cond_2e
    const-string/jumbo v0, "android.intent.extra.REPLACING"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16365
    :cond_34
    const-string/jumbo v0, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedForAllUsers:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16367
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v0, :cond_55

    .line 16368
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    .line 16369
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    move-object v6, v5

    .line 16368
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 16371
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->dataRemoved:Z

    if-eqz v0, :cond_55

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v0, :cond_6b

    .line 16376
    :cond_55
    :goto_55
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v0, :cond_65

    .line 16377
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.intent.action.UID_REMOVED"

    .line 16378
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    move-object v2, v5

    move-object v6, v5

    .line 16377
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 16357
    :cond_65
    return-void

    .line 16359
    :cond_66
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    goto :goto_12

    :cond_69
    move v0, v1

    .line 16361
    goto :goto_23

    .line 16372
    :cond_6b
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 16373
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    move-object v6, v5

    .line 16372
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    goto :goto_55
.end method

.method private sendSystemPackageUpdatedBroadcastsInternal()V
    .registers 15

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 16346
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 16347
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "android.intent.extra.UID"

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v0, :cond_4c

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    :goto_11
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16348
    const-string/jumbo v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16349
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    .line 16350
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->getSysUpdatedUserIds()[I

    move-result-object v7

    move-object v6, v5

    .line 16349
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 16351
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    .line 16352
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->getSysUpdatedUserIds()[I

    move-result-object v7

    move-object v6, v5

    .line 16351
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 16353
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v7, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 16354
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->getSysUpdatedUserIds()[I

    move-result-object v13

    move-object v8, v5

    move-object v9, v5

    move v10, v4

    move-object v12, v5

    .line 16353
    invoke-virtual/range {v6 .. v13}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 16345
    return-void

    .line 16347
    :cond_4c
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    goto :goto_11
.end method


# virtual methods
.method getSysNewUserIds()[I
    .registers 12

    .prologue
    const/4 v5, 0x0

    .line 16235
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installedUsers:[I

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installedUsers:[I

    array-length v4, v4

    if-nez v4, :cond_f

    .line 16236
    :cond_a
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get0()[I

    move-result-object v4

    return-object v4

    .line 16239
    :cond_f
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->origUsers:[I

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->origUsers:[I

    array-length v4, v4

    if-nez v4, :cond_1b

    .line 16240
    :cond_18
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installedUsers:[I

    return-object v4

    .line 16243
    :cond_1b
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get0()[I

    move-result-object v0

    .line 16244
    .local v0, "firstUsers":[I
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installedUsers:[I

    array-length v8, v7

    move v6, v5

    :goto_23
    if-ge v6, v8, :cond_40

    aget v1, v7, v6

    .line 16245
    .local v1, "installedUser":I
    const/4 v2, 0x1

    .line 16246
    .local v2, "isNew":Z
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->origUsers:[I

    array-length v10, v9

    move v4, v5

    :goto_2c
    if-ge v4, v10, :cond_33

    aget v3, v9, v4

    .line 16247
    .local v3, "origUser":I
    if-ne v3, v1, :cond_3d

    .line 16248
    const/4 v2, 0x0

    .line 16252
    .end local v3    # "origUser":I
    :cond_33
    if-eqz v2, :cond_39

    .line 16253
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    .line 16244
    :cond_39
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_23

    .line 16246
    .restart local v3    # "origUser":I
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 16257
    .end local v1    # "installedUser":I
    .end local v2    # "isNew":Z
    .end local v3    # "origUser":I
    :cond_40
    return-object v0
.end method

.method getSysUpdatedUserIds()[I
    .registers 12

    .prologue
    const/4 v5, 0x0

    .line 16261
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->origUsers:[I

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->origUsers:[I

    array-length v4, v4

    if-nez v4, :cond_f

    .line 16263
    :cond_a
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get0()[I

    move-result-object v4

    return-object v4

    .line 16262
    :cond_f
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installedUsers:[I

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installedUsers:[I

    array-length v4, v4

    if-eqz v4, :cond_a

    .line 16266
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get0()[I

    move-result-object v3

    .line 16267
    .local v3, "updateUsers":[I
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installedUsers:[I

    array-length v8, v7

    move v6, v5

    :goto_20
    if-ge v6, v8, :cond_3d

    aget v0, v7, v6

    .line 16268
    .local v0, "installedUser":I
    const/4 v1, 0x1

    .line 16269
    .local v1, "isNew":Z
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->origUsers:[I

    array-length v10, v9

    move v4, v5

    :goto_29
    if-ge v4, v10, :cond_30

    aget v2, v9, v4

    .line 16270
    .local v2, "origUser":I
    if-ne v2, v0, :cond_3a

    .line 16271
    const/4 v1, 0x0

    .line 16275
    .end local v2    # "origUser":I
    :cond_30
    if-nez v1, :cond_36

    .line 16276
    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 16267
    :cond_36
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_20

    .line 16269
    .restart local v2    # "origUser":I
    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 16280
    .end local v0    # "installedUser":I
    .end local v1    # "isNew":Z
    .end local v2    # "origUser":I
    :cond_3d
    return-object v3
.end method

.method sendPackageRemovedBroadcasts(Z)V
    .registers 6
    .param p1, "killApp"    # Z

    .prologue
    .line 16285
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendPackageRemovedBroadcastInternal(Z)V

    .line 16287
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 16288
    .local v0, "childCount":I
    :goto_d
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_20

    .line 16289
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 16290
    .local v1, "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    invoke-direct {v1, p1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendPackageRemovedBroadcastInternal(Z)V

    .line 16288
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 16287
    .end local v0    # "childCount":I
    .end local v1    # "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    .end local v2    # "i":I
    :cond_1e
    const/4 v0, 0x0

    .restart local v0    # "childCount":I
    goto :goto_d

    .line 16284
    .restart local v2    # "i":I
    :cond_20
    return-void
.end method

.method sendSystemPackageAppearedBroadcasts()V
    .registers 12

    .prologue
    .line 16331
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendSystemPackageVisibleBroadcasts()V

    .line 16334
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->appearedChildPackages:Landroid/util/ArrayMap;

    if-eqz v4, :cond_31

    .line 16335
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->appearedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 16336
    .local v2, "packageCount":I
    :goto_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v2, :cond_36

    .line 16337
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->appearedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 16338
    .local v1, "installedInfo":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    const/4 v4, 0x0

    array-length v6, v5

    :goto_1c
    if-ge v4, v6, :cond_33

    aget v3, v5, v4

    .line 16339
    .local v3, "userId":I
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    .line 16340
    iget v9, v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 16339
    const/4 v10, 0x1

    invoke-static {v7, v8, v10, v9, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap38(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZII)V

    .line 16338
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 16335
    .end local v0    # "i":I
    .end local v1    # "installedInfo":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .end local v2    # "packageCount":I
    .end local v3    # "userId":I
    :cond_31
    const/4 v2, 0x0

    .restart local v2    # "packageCount":I
    goto :goto_d

    .line 16336
    .restart local v0    # "i":I
    .restart local v1    # "installedInfo":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 16327
    .end local v1    # "installedInfo":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :cond_36
    return-void
.end method

.method sendSystemPackageUpdatedBroadcasts()V
    .registers 5

    .prologue
    .line 16295
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v3, :cond_28

    .line 16296
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendSystemPackageUpdatedBroadcastsInternal()V

    .line 16297
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    if-eqz v3, :cond_26

    .line 16298
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 16299
    .local v0, "childCount":I
    :goto_11
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_28

    .line 16300
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 16301
    .local v1, "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    iget-boolean v3, v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v3, :cond_23

    .line 16302
    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendSystemPackageUpdatedBroadcastsInternal()V

    .line 16299
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 16298
    .end local v0    # "childCount":I
    .end local v1    # "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    .end local v2    # "i":I
    :cond_26
    const/4 v0, 0x0

    .restart local v0    # "childCount":I
    goto :goto_11

    .line 16294
    .end local v0    # "childCount":I
    :cond_28
    return-void
.end method

.method sendSystemPackageVisibleBroadcasts()V
    .registers 12

    .prologue
    const/4 v4, 0x0

    .line 16309
    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v5, :cond_49

    .line 16310
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->getSysNewUserIds()[I

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_b
    if-ge v5, v7, :cond_28

    aget v3, v6, v5

    .line 16311
    .local v3, "userId":I
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    .line 16312
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v4, :cond_25

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    :goto_19
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 16311
    const/4 v10, 0x1

    invoke-static {v8, v9, v10, v4, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap38(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZII)V

    .line 16310
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_b

    .line 16312
    :cond_25
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    goto :goto_19

    .line 16316
    .end local v3    # "userId":I
    :cond_28
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    if-eqz v4, :cond_47

    .line 16317
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 16318
    .local v0, "childCount":I
    :goto_32
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33
    if-ge v2, v0, :cond_49

    .line 16319
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 16320
    .local v1, "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    iget-boolean v4, v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v4, :cond_44

    .line 16321
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendSystemPackageVisibleBroadcasts()V

    .line 16318
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 16317
    .end local v0    # "childCount":I
    .end local v1    # "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    .end local v2    # "i":I
    :cond_47
    const/4 v0, 0x0

    .restart local v0    # "childCount":I
    goto :goto_32

    .line 16308
    .end local v0    # "childCount":I
    :cond_49
    return-void
.end method

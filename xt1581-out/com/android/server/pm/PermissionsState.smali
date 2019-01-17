.class public final Lcom/android/server/pm/PermissionsState;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PermissionsState$PermissionData;,
        Lcom/android/server/pm/PermissionsState$PermissionState;
    }
.end annotation


# static fields
.field private static final NO_GIDS:[I

.field public static final PERMISSION_OPERATION_FAILURE:I = -0x1

.field public static final PERMISSION_OPERATION_SUCCESS:I = 0x0

.field public static final PERMISSION_OPERATION_SUCCESS_GIDS_CHANGED:I = 0x1


# instance fields
.field private mGlobalGids:[I

.field private mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

.field private mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PermissionsState$PermissionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PermissionsState;)V
    .registers 3
    .param p1, "prototype"    # Lcom/android/server/pm/PermissionsState;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState;->copyFrom(Lcom/android/server/pm/PermissionsState;)V

    .line 75
    return-void
.end method

.method private static appendInts([I[I)[I
    .registers 5
    .param p0, "current"    # [I
    .param p1, "added"    # [I

    .prologue
    .line 569
    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    .line 570
    const/4 v1, 0x0

    array-length v2, p1

    :goto_6
    if-ge v1, v2, :cond_11

    aget v0, p1, v1

    .line 571
    .local v0, "guid":I
    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p0

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 574
    .end local v0    # "guid":I
    :cond_11
    return-object p0
.end method

.method private static enforceValidUserId(I)V
    .registers 4
    .param p0, "userId"    # I

    .prologue
    .line 578
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1f

    if-gez p0, :cond_1f

    .line 579
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_1f
    return-void
.end method

.method private ensureNoPermissionData(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 596
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    .line 597
    return-void

    .line 599
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 601
    iput-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 595
    :cond_15
    return-void
.end method

.method private ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;
    .registers 5
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;

    .prologue
    .line 584
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_b

    .line 585
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 587
    :cond_b
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 588
    .local v0, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-nez v0, :cond_23

    .line 589
    new-instance v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    .end local v0    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-direct {v0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/BasePermission;)V

    .line 590
    .restart local v0    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    :cond_23
    return-object v0
.end method

.method private getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 484
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_6

    .line 485
    return-object v2

    .line 487
    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 488
    .local v0, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-nez v0, :cond_11

    .line 489
    return-object v2

    .line 491
    :cond_11
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v1

    return-object v1
.end method

.method private getPermissionStatesInternal(I)Ljava/util/List;
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 497
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v5, :cond_c

    .line 498
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 501
    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v4, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 504
    .local v1, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    if-ge v0, v1, :cond_2e

    .line 505
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 507
    .local v2, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v2, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v3

    .line 508
    .local v3, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v3, :cond_2b

    .line 509
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 513
    .end local v2    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    .end local v3    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_2e
    return-object v4
.end method

.method private grantPermission(Lcom/android/server/pm/BasePermission;I)I
    .registers 11
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 517
    iget-object v6, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p0, v6, p2}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 518
    return v7

    .line 521
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v6

    if-eqz v6, :cond_28

    move v0, v4

    .line 522
    .local v0, "hasGids":Z
    :goto_17
    if-eqz v0, :cond_2a

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v2

    .line 524
    .local v2, "oldGids":[I
    :goto_1d
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;

    move-result-object v3

    .line 526
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->grant(I)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 527
    return v7

    .end local v0    # "hasGids":Z
    .end local v2    # "oldGids":[I
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_28
    move v0, v5

    .line 521
    goto :goto_17

    .line 522
    .restart local v0    # "hasGids":Z
    :cond_2a
    sget-object v2, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    .restart local v2    # "oldGids":[I
    goto :goto_1d

    .line 530
    .restart local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_2d
    if-eqz v0, :cond_38

    .line 531
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v1

    .line 532
    .local v1, "newGids":[I
    array-length v6, v2

    array-length v7, v1

    if-eq v6, v7, :cond_38

    .line 533
    return v5

    .line 537
    .end local v1    # "newGids":[I
    :cond_38
    return v4
.end method

.method private revokePermission(Lcom/android/server/pm/BasePermission;I)I
    .registers 12
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v8, -0x1

    .line 541
    iget-object v6, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p0, v6, p2}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_c

    .line 542
    return v8

    .line 545
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v6

    if-eqz v6, :cond_2e

    move v0, v4

    .line 546
    .local v0, "hasGids":Z
    :goto_17
    if-eqz v0, :cond_30

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v2

    .line 548
    .local v2, "oldGids":[I
    :goto_1d
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v7, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 550
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->revoke(I)Z

    move-result v6

    if-nez v6, :cond_33

    .line 551
    return v8

    .end local v0    # "hasGids":Z
    .end local v2    # "oldGids":[I
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_2e
    move v0, v5

    .line 545
    goto :goto_17

    .line 546
    .restart local v0    # "hasGids":Z
    :cond_30
    sget-object v2, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    .restart local v2    # "oldGids":[I
    goto :goto_1d

    .line 554
    .restart local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_33
    invoke-virtual {v3}, Lcom/android/server/pm/PermissionsState$PermissionData;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 555
    iget-object v6, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/pm/PermissionsState;->ensureNoPermissionData(Ljava/lang/String;)V

    .line 558
    :cond_3e
    if-eqz v0, :cond_49

    .line 559
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v1

    .line 560
    .local v1, "newGids":[I
    array-length v6, v2

    array-length v7, v1

    if-eq v6, v7, :cond_49

    .line 561
    return v5

    .line 565
    .end local v1    # "newGids":[I
    :cond_49
    return v4
.end method


# virtual methods
.method public computeGids(I)[I
    .registers 9
    .param p1, "userId"    # I

    .prologue
    .line 435
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 437
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 439
    .local v0, "gids":[I
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v6, :cond_38

    .line 440
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 441
    .local v4, "permissionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v4, :cond_38

    .line 442
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 443
    .local v3, "permission":Ljava/lang/String;
    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_23

    .line 441
    :cond_20
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 446
    :cond_23
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 447
    .local v5, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v5, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->computeGids(I)[I

    move-result-object v2

    .line 448
    .local v2, "permGids":[I
    sget-object v6, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    if-eq v2, v6, :cond_20

    .line 449
    invoke-static {v0, v2}, Lcom/android/server/pm/PermissionsState;->appendInts([I[I)[I

    move-result-object v0

    goto :goto_20

    .line 454
    .end local v1    # "i":I
    .end local v2    # "permGids":[I
    .end local v3    # "permission":Ljava/lang/String;
    .end local v4    # "permissionCount":I
    .end local v5    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_38
    return-object v0
.end method

.method public computeGids([I)[I
    .registers 7
    .param p1, "userIds"    # [I

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 466
    .local v0, "gids":[I
    const/4 v3, 0x0

    array-length v4, p1

    :goto_4
    if-ge v3, v4, :cond_13

    aget v2, p1, v3

    .line 467
    .local v2, "userId":I
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v1

    .line 468
    .local v1, "userGids":[I
    invoke-static {v0, v1}, Lcom/android/server/pm/PermissionsState;->appendInts([I[I)[I

    move-result-object v0

    .line 466
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 471
    .end local v1    # "userGids":[I
    .end local v2    # "userId":I
    :cond_13
    return-object v0
.end method

.method public copyFrom(Lcom/android/server/pm/PermissionsState;)V
    .registers 11
    .param p1, "other"    # Lcom/android/server/pm/PermissionsState;

    .prologue
    const/4 v8, 0x0

    .line 96
    if-ne p1, p0, :cond_4

    .line 97
    return-void

    .line 99
    :cond_4
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v6, :cond_e

    .line 100
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v6, :cond_43

    .line 101
    iput-object v8, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 106
    :cond_e
    :goto_e
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v6, :cond_49

    .line 107
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v6, :cond_1d

    .line 108
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 110
    :cond_1d
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 111
    .local v2, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24
    if-ge v0, v2, :cond_49

    .line 112
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    .local v1, "name":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 114
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    new-instance v7, Lcom/android/server/pm/PermissionsState$PermissionData;

    invoke-direct {v7, v3}, Lcom/android/server/pm/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/PermissionsState$PermissionData;)V

    invoke-virtual {v6, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 103
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "permissionCount":I
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_43
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    goto :goto_e

    .line 118
    :cond_49
    sget-object v6, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    iput-object v6, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 119
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    sget-object v7, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    if-eq v6, v7, :cond_5e

    .line 120
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 121
    iget-object v7, p1, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    array-length v7, v7

    .line 120
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 124
    :cond_5e
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v6, :cond_68

    .line 125
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v6, :cond_8e

    .line 126
    iput-object v8, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 131
    :cond_68
    :goto_68
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v6, :cond_94

    .line 132
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v6, :cond_77

    .line 133
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 135
    :cond_77
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    .line 136
    .local v5, "userCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7e
    if-ge v0, v5, :cond_94

    .line 137
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 138
    .local v4, "reviewRequired":Z
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    .line 128
    .end local v0    # "i":I
    .end local v4    # "reviewRequired":Z
    .end local v5    # "userCount":I
    :cond_8e
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    goto :goto_68

    .line 95
    :cond_94
    return-void
.end method

.method public getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/PermissionsState$PermissionState;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 304
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PermissionsState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v0

    return-object v0
.end method

.method public getInstallPermissionStates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PermissionsState;->getPermissionStatesInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;I)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v0

    .line 347
    .local v0, "installPermState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v0, :cond_b

    .line 348
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    move-result v2

    return v2

    .line 350
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v1

    .line 351
    .local v1, "runtimePermState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v1, :cond_16

    .line 352
    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    move-result v2

    return v2

    .line 354
    :cond_16
    const/4 v2, 0x0

    return v2
.end method

.method public getPermissions(I)Ljava/util/Set;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 273
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v4, :cond_c

    .line 274
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    return-object v4

    .line 277
    :cond_c
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 279
    .local v3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 280
    .local v2, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    if-ge v0, v2, :cond_3a

    .line 281
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 283
    .local v1, "permission":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 284
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_2b
    const/4 v4, -0x1

    if-eq p1, v4, :cond_37

    .line 288
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 289
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 294
    .end local v1    # "permission":Ljava/lang/String;
    :cond_3a
    return-object v3
.end method

.method public getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 315
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 316
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v0

    return-object v0
.end method

.method public getRuntimePermissionStates(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 335
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->getPermissionStatesInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public grantInstallPermission(Lcom/android/server/pm/BasePermission;)I
    .registers 3
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;

    .prologue
    .line 156
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PermissionsState;->grantPermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public grantRuntimePermission(Lcom/android/server/pm/BasePermission;I)I
    .registers 4
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, -0x1

    .line 181
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 182
    if-ne p2, v0, :cond_7

    .line 183
    return v0

    .line 185
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->grantPermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public hasInstallPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public hasPermission(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 239
    iget-object v2, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v2, :cond_9

    .line 240
    return v1

    .line 243
    :cond_9
    iget-object v2, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 244
    .local v0, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-eqz v0, :cond_17

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v1

    :cond_17
    return v1
.end method

.method public hasRequestedPermission(Landroid/util/ArraySet;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 252
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_6

    .line 253
    return v3

    .line 255
    :cond_6
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_1f

    .line 256
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 257
    const/4 v1, 0x1

    return v1

    .line 255
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 260
    :cond_1f
    return v3
.end method

.method public hasRuntimePermission(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 214
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isPermissionReviewRequired(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 478
    sget-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 479
    iput-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 480
    iput-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 477
    return-void
.end method

.method public revokeInstallPermission(Lcom/android/server/pm/BasePermission;)I
    .registers 3
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;

    .prologue
    .line 168
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PermissionsState;->revokePermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public revokeRuntimePermission(Lcom/android/server/pm/BasePermission;I)I
    .registers 4
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, -0x1

    .line 198
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 199
    if-ne p2, v0, :cond_7

    .line 200
    return v0

    .line 202
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->revokePermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public setGlobalGids([I)V
    .registers 3
    .param p1, "globalGids"    # [I

    .prologue
    .line 85
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 86
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 84
    :cond_d
    return-void
.end method

.method public updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z
    .registers 14
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 367
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 369
    if-nez p4, :cond_9

    if-eqz p3, :cond_11

    :cond_9
    const/4 v0, 0x1

    .line 371
    .local v0, "mayChangeFlags":Z
    :goto_a
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v5, :cond_16

    .line 372
    if-nez v0, :cond_13

    .line 373
    return v7

    .line 369
    .end local v0    # "mayChangeFlags":Z
    :cond_11
    const/4 v0, 0x0

    .restart local v0    # "mayChangeFlags":Z
    goto :goto_a

    .line 375
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 378
    :cond_16
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v6, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 379
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-nez v3, :cond_29

    .line 380
    if-nez v0, :cond_25

    .line 381
    return v7

    .line 383
    :cond_25
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;

    move-result-object v3

    .line 386
    :cond_29
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->getFlags(I)I

    move-result v2

    .line 388
    .local v2, "oldFlags":I
    invoke-virtual {v3, p2, p3, p4}, Lcom/android/server/pm/PermissionsState$PermissionData;->updateFlags(III)Z

    move-result v4

    .line 389
    .local v4, "updated":Z
    if-eqz v4, :cond_50

    .line 390
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->getFlags(I)I

    move-result v1

    .line 391
    .local v1, "newFlags":I
    and-int/lit8 v5, v2, 0x40

    if-nez v5, :cond_51

    .line 392
    and-int/lit8 v5, v1, 0x40

    if-eqz v5, :cond_51

    .line 393
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v5, :cond_4a

    .line 394
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 396
    :cond_4a
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 407
    .end local v1    # "newFlags":I
    :cond_50
    :goto_50
    return v4

    .line 397
    .restart local v1    # "newFlags":I
    :cond_51
    and-int/lit8 v5, v2, 0x40

    if-eqz v5, :cond_50

    .line 398
    and-int/lit8 v5, v1, 0x40

    if-nez v5, :cond_50

    .line 399
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v5, :cond_50

    .line 400
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 401
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-gtz v5, :cond_50

    .line 402
    iput-object v8, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    goto :goto_50
.end method

.method public updatePermissionFlagsForAllPermissions(III)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "flagMask"    # I
    .param p3, "flagValues"    # I

    .prologue
    .line 412
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 414
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v4, :cond_9

    .line 415
    const/4 v4, 0x0

    return v4

    .line 417
    :cond_9
    const/4 v0, 0x0

    .line 418
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 419
    .local v2, "permissionCount":I
    const/4 v1, 0x0

    .end local v0    # "changed":Z
    .local v1, "i":I
    :goto_11
    if-ge v1, v2, :cond_23

    .line 420
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 421
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/pm/PermissionsState$PermissionData;->updateFlags(III)Z

    move-result v4

    or-int/2addr v0, v4

    .line 419
    .local v0, "changed":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 423
    .end local v0    # "changed":Z
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_23
    return v0
.end method

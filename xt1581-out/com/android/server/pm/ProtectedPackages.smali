.class public Lcom/android/server/pm/ProtectedPackages;
.super Ljava/lang/Object;
.source "ProtectedPackages.java"


# instance fields
.field private mDeviceOwnerPackage:Ljava/lang/String;

.field private mDeviceOwnerUserId:I

.field private final mLock:Ljava/lang/Object;

.field private mProfileOwnerPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mLock:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method private hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    if-nez p2, :cond_5

    .line 57
    return v2

    .line 59
    :cond_5
    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 61
    iget v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    if-ne v0, p1, :cond_1a

    .line 62
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_2e

    move-result v0

    .line 61
    if-eqz v0, :cond_1a

    monitor-exit v1

    .line 63
    return v3

    .line 66
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;

    if-eqz v0, :cond_2c

    .line 67
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_2e

    move-result v0

    if-eqz v0, :cond_2c

    monitor-exit v1

    .line 68
    return v3

    :cond_2c
    monitor-exit v1

    .line 72
    return v2

    .line 59
    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public canPackageBeWiped(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canPackageStateBeChanged(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V
    .registers 7
    .param p1, "deviceOwnerUserId"    # I
    .param p2, "deviceOwnerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "profileOwnerPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 46
    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_4
    iput p1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    .line 49
    const/16 v2, -0x2710

    if-ne p1, v2, :cond_b

    move-object p2, v0

    .line 48
    .end local p2    # "deviceOwnerPackage":Ljava/lang/String;
    :cond_b
    iput-object p2, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;

    .line 50
    if-nez p3, :cond_13

    :goto_f
    iput-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_18

    monitor-exit v1

    .line 45
    return-void

    .line 51
    :cond_13
    :try_start_13
    invoke-virtual {p3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_f

    .line 46
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

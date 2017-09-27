.class final Lcom/android/server/AppOpsService$ClientRestrictionState;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientRestrictionState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$ClientRestrictionState$-void_binderDied__LambdaImpl0;
    }
.end annotation


# instance fields
.field perUserExcludedPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field perUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[Z>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AppOpsService;

.field private final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2731
    iput-object p1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2733
    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2734
    iput-object p2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    .line 2732
    return-void
.end method

.method private isDefault([Z)Z
    .registers 7
    .param p1, "array"    # [Z

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2844
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Z)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2845
    return v4

    .line 2847
    :cond_9
    array-length v3, p1

    move v1, v2

    :goto_b
    if-ge v1, v3, :cond_15

    aget-boolean v0, p1, v1

    .line 2848
    .local v0, "value":Z
    if-eqz v0, :cond_12

    .line 2849
    return v2

    .line 2847
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2852
    .end local v0    # "value":Z
    :cond_15
    return v4
.end method


# virtual methods
.method synthetic -com_android_server_AppOpsService$ClientRestrictionState_lambda$1(I)V
    .registers 3
    .param p1, "changedCode"    # I

    .prologue
    .line 2831
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    invoke-static {v0, p1}, Lcom/android/server/AppOpsService;->-wrap1(Lcom/android/server/AppOpsService;I)V

    .line 0
    return-void
.end method

.method public binderDied()V
    .registers 10

    .prologue
    .line 2819
    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v7

    .line 2820
    :try_start_3
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    invoke-static {v6}, Lcom/android/server/AppOpsService;->-get0(Lcom/android/server/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2821
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_45

    if-nez v6, :cond_14

    monitor-exit v7

    .line 2822
    return-void

    .line 2824
    :cond_14
    :try_start_14
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 2825
    .local v5, "userCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    if-ge v1, v5, :cond_40

    .line 2826
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Z

    .line 2827
    .local v4, "restrictions":[Z
    array-length v3, v4

    .line 2828
    .local v3, "restrictionCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_27
    if-ge v2, v3, :cond_3d

    .line 2829
    aget-boolean v6, v4, v2

    if-eqz v6, :cond_3a

    .line 2830
    move v0, v2

    .line 2831
    .local v0, "changedCode":I
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    iget-object v6, v6, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/AppOpsService$ClientRestrictionState$-void_binderDied__LambdaImpl0;

    invoke-direct {v8, p0, v0}, Lcom/android/server/AppOpsService$ClientRestrictionState$-void_binderDied__LambdaImpl0;-><init>(Lcom/android/server/AppOpsService$ClientRestrictionState;I)V

    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2828
    .end local v0    # "changedCode":I
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 2825
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 2835
    .end local v2    # "j":I
    .end local v3    # "restrictionCount":I
    .end local v4    # "restrictions":[Z
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->destroy()V
    :try_end_43
    .catchall {:try_start_14 .. :try_end_43} :catchall_45

    monitor-exit v7

    .line 2818
    return-void

    .line 2819
    .end local v1    # "i":I
    .end local v5    # "userCount":I
    :catchall_45
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public destroy()V
    .registers 3

    .prologue
    .line 2840
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2839
    return-void
.end method

.method public hasRestriction(ILjava/lang/String;I)Z
    .registers 9
    .param p1, "restriction"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2784
    iget-object v4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v4, :cond_7

    .line 2785
    return v2

    .line 2787
    :cond_7
    iget-object v4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    .line 2788
    .local v1, "restrictions":[Z
    if-nez v1, :cond_12

    .line 2789
    return v2

    .line 2791
    :cond_12
    aget-boolean v4, v1, p1

    if-nez v4, :cond_17

    .line 2792
    return v2

    .line 2794
    :cond_17
    iget-object v4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-nez v4, :cond_1c

    .line 2795
    return v3

    .line 2797
    :cond_1c
    iget-object v4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v4, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2798
    .local v0, "perUserExclusions":[Ljava/lang/String;
    if-nez v0, :cond_27

    .line 2799
    return v3

    .line 2801
    :cond_27
    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    :goto_2d
    return v2

    :cond_2e
    move v2, v3

    goto :goto_2d
.end method

.method public isDefault()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2814
    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method

.method public removeUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2805
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v0, :cond_14

    .line 2806
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2807
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_14

    .line 2808
    iput-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 2804
    :cond_14
    return-void
.end method

.method public setRestriction(IZ[Ljava/lang/String;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "excludedPackages"    # [Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2739
    const/4 v0, 0x0

    .line 2741
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v3, :cond_f

    if-eqz p2, :cond_f

    .line 2742
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 2745
    :cond_f
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v3, :cond_5d

    .line 2746
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    .line 2747
    .local v2, "userRestrictions":[Z
    if-nez v2, :cond_28

    if-eqz p2, :cond_28

    .line 2748
    const/16 v3, 0x46

    new-array v2, v3, [Z

    .line 2749
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2751
    :cond_28
    if-eqz v2, :cond_3f

    aget-boolean v3, v2, p1

    if-eq v3, p2, :cond_3f

    .line 2752
    aput-boolean p2, v2, p1

    .line 2753
    if-nez p2, :cond_3e

    invoke-direct {p0, v2}, Lcom/android/server/AppOpsService$ClientRestrictionState;->isDefault([Z)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2754
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p4}, Landroid/util/SparseArray;->remove(I)V

    .line 2755
    const/4 v2, 0x0

    .line 2757
    .end local v2    # "userRestrictions":[Z
    :cond_3e
    const/4 v0, 0x1

    .line 2760
    :cond_3f
    if-eqz v2, :cond_5d

    .line 2761
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    .line 2762
    .local v1, "noExcludedPackages":Z
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-nez v3, :cond_4b

    if-eqz v1, :cond_5e

    .line 2765
    :cond_4b
    :goto_4b
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v3, :cond_5d

    .line 2766
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 2765
    invoke-static {p3, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 2780
    .end local v1    # "noExcludedPackages":Z
    :cond_5d
    :goto_5d
    return v0

    .line 2763
    .restart local v1    # "noExcludedPackages":Z
    :cond_5e
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    goto :goto_4b

    .line 2767
    :cond_66
    if-eqz v1, :cond_79

    .line 2768
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, p4}, Landroid/util/SparseArray;->remove(I)V

    .line 2769
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_77

    .line 2770
    iput-object v4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 2775
    :cond_77
    :goto_77
    const/4 v0, 0x1

    goto :goto_5d

    .line 2773
    :cond_79
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, p4, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_77
.end method

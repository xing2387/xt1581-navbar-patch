.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$1;,
        Lcom/android/server/AppOpsService$2;,
        Lcom/android/server/AppOpsService$3;,
        Lcom/android/server/AppOpsService$AskRunnable;,
        Lcom/android/server/AppOpsService$Callback;,
        Lcom/android/server/AppOpsService$ChangeRec;,
        Lcom/android/server/AppOpsService$ClientRestrictionState;,
        Lcom/android/server/AppOpsService$ClientState;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Ops;,
        Lcom/android/server/AppOpsService$Restriction;,
        Lcom/android/server/AppOpsService$Shell;,
        Lcom/android/server/AppOpsService$UidState;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEFAULT_POLICY_FILE:Ljava/lang/String; = "/system/etc/appops_policy.xml"

.field static final TAG:Ljava/lang/String; = "AppOps"

.field static final WRITE_DELAY:J = 0x1b7740L


# instance fields
.field private final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field final mAudioRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$Restriction;",
            ">;>;"
        }
    .end annotation
.end field

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mFastWriteScheduled:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field final mLooper:Landroid/os/Looper;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOpUserRestrictions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientRestrictionState;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field mPolicy:Lcom/android/server/AppOpsPolicy;

.field private mPowerManager:Landroid/os/PowerManager;

.field final mStrictEnable:Z

.field private mSuSessionChangedRunner:Ljava/lang/Runnable;

.field private final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/AppOpsService;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/AppOpsService;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/AppOpsService;I)V
    .registers 2
    .param p1, "op"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->broadcastOpIfNeeded(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/AppOpsService;I)V
    .registers 2
    .param p1, "code"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;)V
    .registers 5
    .param p1, "storagePath"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 112
    new-instance v0, Lcom/android/server/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 128
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 133
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 135
    new-instance v0, Lcom/android/server/AppOpsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$2;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mSuSessionChangedRunner:Ljava/lang/Runnable;

    .line 206
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 205
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 208
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 207
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 210
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 209
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 212
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 211
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    .line 235
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    .line 385
    new-instance v0, Lcom/android/server/AppOpsService$3;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$3;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 284
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    .line 285
    iput-object p2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 286
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mLooper:Landroid/os/Looper;

    .line 287
    invoke-static {}, Landroid/app/AppOpsManager;->isStrictEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mStrictEnable:Z

    .line 288
    iput-object p3, p0, Lcom/android/server/AppOpsService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 289
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readState()V

    .line 283
    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;
    .registers 13
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;II",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 742
    .local p0, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local p4, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez p4, :cond_3

    .line 743
    return-object p0

    .line 745
    :cond_3
    if-nez p0, :cond_a

    .line 746
    new-instance p0, Ljava/util/HashMap;

    .end local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 748
    .restart local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    :cond_a
    const/4 v1, 0x0

    .line 749
    .local v1, "duplicate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_53

    .line 750
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 751
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 752
    .local v6, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    if-nez v6, :cond_35

    .line 753
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .restart local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    invoke-virtual {p0, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    :cond_28
    :goto_28
    if-nez v1, :cond_32

    .line 766
    new-instance v7, Lcom/android/server/AppOpsService$ChangeRec;

    invoke-direct {v7, p1, p2, p3}, Lcom/android/server/AppOpsService$ChangeRec;-><init>(IILjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 756
    :cond_35
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 757
    .local v5, "reportCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3a
    if-ge v3, v5, :cond_28

    .line 758
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ChangeRec;

    .line 759
    .local v4, "report":Lcom/android/server/AppOpsService$ChangeRec;
    iget v7, v4, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    if-ne v7, p1, :cond_50

    iget-object v7, v4, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 760
    const/4 v1, 0x1

    .line 761
    goto :goto_28

    .line 757
    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 769
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v3    # "j":I
    .end local v4    # "report":Lcom/android/server/AppOpsService$ChangeRec;
    .end local v5    # "reportCount":I
    .end local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    :cond_53
    return-object p0
.end method

.method private askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    .registers 13
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "op"    # Lcom/android/server/AppOpsService$Op;

    .prologue
    .line 2573
    new-instance v6, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    invoke-direct {v6}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;-><init>()V

    .line 2574
    .local v6, "request":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/AppOpsService$AskRunnable;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AppOpsService$AskRunnable;-><init>(Lcom/android/server/AppOpsService;IILjava/lang/String;Lcom/android/server/AppOpsService$Op;Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2575
    return-object v6
.end method

.method private broadcastOpIfNeeded(I)V
    .registers 4
    .param p1, "op"    # I

    .prologue
    .line 2857
    packed-switch p1, :pswitch_data_c

    .line 2856
    :goto_3
    return-void

    .line 2859
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mSuSessionChangedRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 2857
    :pswitch_data_c
    .packed-switch 0x45
        :pswitch_4
    .end packed-switch
.end method

.method private checkRestrictionLocked(IIILjava/lang/String;)I
    .registers 8
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1026
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1027
    .local v1, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-eqz v1, :cond_1a

    .line 1028
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Restriction;

    .line 1029
    .local v0, "r":Lcom/android/server/AppOpsService$Restriction;
    if-eqz v0, :cond_1a

    iget-object v2, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1033
    .end local v0    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_1a
    const/4 v2, 0x0

    return v2

    .line 1030
    .restart local v0    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_1c
    iget v2, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    return v2
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .registers 6
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 2529
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2530
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_22

    .line 2531
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2532
    const-string/jumbo v3, " must by called by the system"

    .line 2531
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2528
    :cond_22
    return-void
.end method

.method private collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .registers 20
    .param p1, "pkgOps"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    const/16 v16, 0x0

    .line 468
    .local v16, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez p2, :cond_37

    .line 469
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v16, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v3

    if-ge v15, v3, :cond_6f

    .line 471
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Op;

    .line 472
    .local v2, "curOp":Lcom/android/server/AppOpsService$Op;
    new-instance v3, Landroid/app/AppOpsManager$OpEntry;

    iget v4, v2, Lcom/android/server/AppOpsService$Op;->op:I

    iget v5, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v6, v2, Lcom/android/server/AppOpsService$Op;->time:J

    .line 473
    iget-wide v8, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v10, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    iget v11, v2, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 474
    iget-object v12, v2, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    iget v13, v2, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    iget v14, v2, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    .line 472
    invoke-direct/range {v3 .. v14}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 477
    .end local v2    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v15    # "j":I
    .local v16, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_37
    const/4 v15, 0x0

    .end local v16    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v15    # "j":I
    :goto_38
    move-object/from16 v0, p2

    array-length v3, v0

    if-ge v15, v3, :cond_6f

    .line 478
    aget v3, p2, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Op;

    .line 479
    .restart local v2    # "curOp":Lcom/android/server/AppOpsService$Op;
    if-eqz v2, :cond_6c

    .line 480
    if-nez v16, :cond_50

    .line 481
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 483
    :cond_50
    new-instance v3, Landroid/app/AppOpsManager$OpEntry;

    iget v4, v2, Lcom/android/server/AppOpsService$Op;->op:I

    iget v5, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v6, v2, Lcom/android/server/AppOpsService$Op;->time:J

    .line 484
    iget-wide v8, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v10, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    iget v11, v2, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 485
    iget-object v12, v2, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    iget v13, v2, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    iget v14, v2, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    .line 483
    invoke-direct/range {v3 .. v14}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_6c
    add-int/lit8 v15, v15, 0x1

    goto :goto_38

    .line 489
    .end local v2    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_6f
    return-object v16
.end method

.method static dumpCommandHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2037
    const-string/jumbo v0, "AppOps service (appops) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2038
    const-string/jumbo v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2039
    const-string/jumbo v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2040
    const-string/jumbo v0, "  set [--user <USER_ID>] <PACKAGE> <OP> <MODE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2041
    const-string/jumbo v0, "    Set the mode for a particular application and operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2042
    const-string/jumbo v0, "  get [--user <USER_ID>] <PACKAGE> [<OP>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2043
    const-string/jumbo v0, "    Return the mode for a particular application and optional operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2044
    const-string/jumbo v0, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2045
    const-string/jumbo v0, "    Print all packages that currently have the given op in the given mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2046
    const-string/jumbo v0, "  reset [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2047
    const-string/jumbo v0, "    Reset the given application or all applications to default modes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2048
    const-string/jumbo v0, "  write-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2049
    const-string/jumbo v0, "    Immediately write pending changes to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2050
    const-string/jumbo v0, "  read-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2051
    const-string/jumbo v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2052
    const-string/jumbo v0, "  options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2053
    const-string/jumbo v0, "    <PACKAGE> an Android package name."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2054
    const-string/jumbo v0, "    <OP>      an AppOps operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2055
    const-string/jumbo v0, "    <MODE>    one of allow, ignore, deny, default or ask"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2056
    const-string/jumbo v0, "    <USER_ID> the user id under which the package is installed. If --user is not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2057
    const-string/jumbo v0, "              specified, the current user is assumed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2036
    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2252
    const-string/jumbo v0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2253
    const-string/jumbo v0, "  none"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2251
    return-void
.end method

.method private getDefaultMode(IILjava/lang/String;)I
    .registers 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2580
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsService;->isStrict(IILjava/lang/String;)Z

    move-result v2

    .line 2579
    invoke-static {p1, v2}, Landroid/app/AppOpsManager;->opToDefaultMode(IZ)I

    move-result v0

    .line 2581
    .local v0, "mode":I
    invoke-static {p1}, Landroid/app/AppOpsManager;->isStrictOp(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    if-eqz v2, :cond_1c

    .line 2582
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    invoke-virtual {v2, p1, p3}, Lcom/android/server/AppOpsPolicy;->getDefualtMode(ILjava/lang/String;)I

    move-result v1

    .line 2583
    .local v1, "policyMode":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1c

    .line 2584
    move v0, v1

    .line 2587
    .end local v1    # "policyMode":I
    :cond_1c
    return v0
.end method

.method private getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    .registers 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "edit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1485
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 1486
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_8

    .line 1487
    return-object v1

    .line 1489
    :cond_8
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    return-object v1
.end method

.method private getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;
    .registers 8
    .param p1, "ops"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "code"    # I
    .param p3, "edit"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1494
    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Op;

    .line 1495
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_24

    .line 1496
    if-nez p3, :cond_c

    .line 1497
    return-object v2

    .line 1499
    :cond_c
    iget-object v2, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v2, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    iget-object v3, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v0

    .line 1500
    .local v0, "mode":I
    new-instance v1, Lcom/android/server/AppOpsService$Op;

    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    iget-object v2, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v2, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    iget-object v3, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2, v0}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;II)V

    .line 1501
    .restart local v1    # "op":Lcom/android/server/AppOpsService$Op;
    invoke-virtual {p1, p2, v1}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 1503
    .end local v0    # "mode":I
    :cond_24
    if-eqz p3, :cond_29

    .line 1504
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 1506
    :cond_29
    return-object v1
.end method

.method private getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .registers 16
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    .prologue
    .line 1401
    invoke-direct {p0, p1, p3}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v8

    .line 1402
    .local v8, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v8, :cond_8

    .line 1403
    const/4 v9, 0x0

    return-object v9

    .line 1406
    :cond_8
    iget-object v9, v8, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v9, :cond_17

    .line 1407
    if-nez p3, :cond_10

    .line 1408
    const/4 v9, 0x0

    return-object v9

    .line 1410
    :cond_10
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    iput-object v9, v8, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1413
    :cond_17
    iget-object v9, v8, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v9, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;

    .line 1414
    .local v6, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v6, :cond_ce

    .line 1415
    if-nez p3, :cond_25

    .line 1416
    const/4 v9, 0x0

    return-object v9

    .line 1418
    :cond_25
    const/4 v3, 0x0

    .line 1421
    .local v3, "isPrivileged":Z
    if-eqz p1, :cond_c4

    .line 1422
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1424
    .local v4, "ident":J
    const/4 v7, -0x1

    .line 1426
    .local v7, "pkgUid":I
    :try_start_2d
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 1429
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 1428
    const/high16 v11, 0x10000000

    .line 1426
    invoke-interface {v9, p2, v11, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1430
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_8a

    .line 1431
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1432
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_41} :catch_b1
    .catchall {:try_start_2d .. :try_end_41} :catchall_bc

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_88

    const/4 v3, 0x1

    .line 1449
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_46
    :goto_46
    if-eq v7, p1, :cond_c1

    .line 1452
    :try_start_48
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "here"

    invoke-direct {v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1453
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1454
    const-string/jumbo v9, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Bad call: specified package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1455
    const-string/jumbo v11, " under uid "

    .line 1454
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1455
    const-string/jumbo v11, " but it is really "

    .line 1454
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catchall {:try_start_48 .. :try_end_83} :catchall_bc

    .line 1456
    const/4 v9, 0x0

    .line 1459
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1456
    return-object v9

    .line 1432
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_88
    const/4 v3, 0x0

    goto :goto_46

    .line 1435
    :cond_8a
    :try_start_8a
    const-string/jumbo v9, "media"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_97

    .line 1436
    const/16 v7, 0x3f5

    .line 1437
    const/4 v3, 0x0

    goto :goto_46

    .line 1438
    :cond_97
    const-string/jumbo v9, "audioserver"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a4

    .line 1439
    const/16 v7, 0x411

    .line 1440
    const/4 v3, 0x0

    goto :goto_46

    .line 1441
    :cond_a4
    const-string/jumbo v9, "cameraserver"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_aa} :catch_b1
    .catchall {:try_start_8a .. :try_end_aa} :catchall_bc

    move-result v9

    if-eqz v9, :cond_46

    .line 1442
    const/16 v7, 0x417

    .line 1443
    const/4 v3, 0x0

    goto :goto_46

    .line 1446
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_b1
    move-exception v1

    .line 1447
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_b2
    const-string/jumbo v9, "AppOps"

    const-string/jumbo v10, "Could not contact PackageManager"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bb
    .catchall {:try_start_b2 .. :try_end_bb} :catchall_bc

    goto :goto_46

    .line 1458
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_bc
    move-exception v9

    .line 1459
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1458
    throw v9

    .line 1459
    :cond_c1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1462
    .end local v4    # "ident":J
    .end local v7    # "pkgUid":I
    :cond_c4
    new-instance v6, Lcom/android/server/AppOpsService$Ops;

    .end local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-direct {v6, p2, v8, v3}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    .line 1463
    .restart local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    iget-object v9, v8, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v9, p2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    .end local v3    # "isPrivileged":Z
    :cond_ce
    return-object v6
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .registers 4
    .param p0, "uid"    # I

    .prologue
    .line 2714
    const/4 v1, 0x0

    .line 2716
    .local v1, "packageNames":[Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_f

    move-result-object v1

    .line 2720
    .end local v1    # "packageNames":[Ljava/lang/String;
    :goto_9
    if-nez v1, :cond_e

    .line 2721
    sget-object v2, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v2

    .line 2723
    :cond_e
    return-object v1

    .line 2717
    .restart local v1    # "packageNames":[Ljava/lang/String;
    :catch_f
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_9
.end method

.method private getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    .registers 6
    .param p1, "uid"    # I
    .param p2, "edit"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1389
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    .line 1390
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v0, :cond_18

    .line 1391
    if-nez p2, :cond_e

    .line 1392
    return-object v2

    .line 1394
    :cond_e
    new-instance v0, Lcom/android/server/AppOpsService$UidState;

    .end local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    invoke-direct {v0, p1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    .line 1395
    .restart local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1397
    :cond_18
    return-object v0
.end method

.method private isOpRestrictedLocked(IILjava/lang/String;)Z
    .registers 12
    .param p1, "uid"    # I
    .param p2, "code"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1510
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1511
    .local v4, "userHandle":I
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1513
    .local v2, "restrictionSetCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v2, :cond_39

    .line 1516
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .line 1517
    .local v3, "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    invoke-virtual {v3, p2, p3, v4}, Lcom/android/server/AppOpsService$ClientRestrictionState;->hasRestriction(ILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1518
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1520
    monitor-enter p0

    .line 1521
    const/4 v5, 0x1

    :try_start_25
    invoke-direct {p0, p1, p3, v5}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v1

    .line 1522
    .local v1, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v1, :cond_31

    iget-boolean v5, v1, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_33

    if-eqz v5, :cond_31

    monitor-exit p0

    .line 1523
    return v6

    :cond_31
    monitor-exit p0

    .line 1527
    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_32
    return v7

    .line 1520
    :catchall_33
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1513
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1530
    .end local v3    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :cond_39
    return v6
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1018
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1019
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1018
    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    return v1

    .line 1020
    :catch_d
    move-exception v0

    .line 1021
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Could not talk to package manager service"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isStrict(IILjava/lang/String;)Z
    .registers 5
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2591
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mStrictEnable:Z

    if-nez v0, :cond_6

    .line 2592
    const/4 v0, 0x0

    return v0

    .line 2594
    :cond_6
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    return v0
.end method

.method private noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I
    .registers 24
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "proxyUid"    # I
    .param p5, "proxyPackageName"    # Ljava/lang/String;

    .prologue
    .line 1114
    const/4 v7, 0x0

    .line 1115
    .local v7, "req":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v13, :cond_20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v13}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    .line 1116
    :goto_f
    monitor-enter p0

    .line 1117
    const/4 v13, 0x1

    :try_start_11
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v13}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1ab

    move-result-object v6

    .line 1118
    .local v6, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v6, :cond_22

    .line 1121
    const/4 v13, 0x2

    monitor-exit p0

    return v13

    .line 1115
    .end local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_20
    const/4 v4, 0x0

    .local v4, "isInteractive":Z
    goto :goto_f

    .line 1123
    .end local v4    # "isInteractive":Z
    .restart local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_22
    const/4 v13, 0x1

    :try_start_23
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v6, v1, v13}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v5

    .line 1124
    .local v5, "op":Lcom/android/server/AppOpsService$Op;
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_42

    .line 1125
    iget v13, v5, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v5, Lcom/android/server/AppOpsService$Op;->ignoredCount:I
    :try_end_3f
    .catchall {:try_start_23 .. :try_end_3f} :catchall_1ab

    .line 1126
    const/4 v13, 0x1

    monitor-exit p0

    return v13

    .line 1128
    :cond_42
    :try_start_42
    iget v13, v5, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_9b

    .line 1129
    const-string/jumbo v13, "AppOps"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Noting op not finished: uid "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " pkg "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1130
    const-string/jumbo v15, " code "

    .line 1129
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1130
    const-string/jumbo v15, " time="

    .line 1129
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1130
    iget-wide v0, v5, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v16, v0

    .line 1129
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1130
    const-string/jumbo v15, " duration="

    .line 1129
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1130
    iget v15, v5, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1129
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_9b
    const/4 v13, 0x0

    iput v13, v5, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1133
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v9

    .line 1134
    .local v9, "switchCode":I
    iget-object v12, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 1137
    .local v12, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v13, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v13, :cond_c0

    iget-object v13, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v13

    if-ltz v13, :cond_c0

    .line 1138
    iget-object v13, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    .line 1139
    .local v11, "uidMode":I
    if-eqz v11, :cond_16b

    .line 1143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v5, Lcom/android/server/AppOpsService$Op;->rejectTime:J
    :try_end_be
    .catchall {:try_start_42 .. :try_end_be} :catchall_1ab

    monitor-exit p0

    .line 1144
    return v11

    .line 1147
    .end local v11    # "uidMode":I
    :cond_c0
    move/from16 v0, p1

    if-eq v9, v0, :cond_e4

    const/4 v13, 0x1

    :try_start_c5
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v13}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v10

    .line 1148
    .local v10, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_cb
    iget v13, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v13, :cond_e6

    .line 1149
    iget v13, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    const/4 v14, 0x4

    if-eq v13, v14, :cond_e6

    .line 1154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v5, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1155
    iget v13, v5, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v5, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    .line 1156
    iget v13, v10, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_e2
    .catchall {:try_start_c5 .. :try_end_e2} :catchall_1ab

    monitor-exit p0

    return v13

    .line 1147
    .end local v10    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_e4
    move-object v10, v5

    .restart local v10    # "switchOp":Lcom/android/server/AppOpsService$Op;
    goto :goto_cb

    .line 1157
    :cond_e6
    :try_start_e6
    iget v13, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_16b

    .line 1158
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mLooper:Landroid/os/Looper;

    if-eq v13, v14, :cond_ff

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v13}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_140

    .line 1159
    :cond_ff
    const-string/jumbo v13, "AppOps"

    .line 1160
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "noteOperation: This method will deadlock if called from the main thread. (Code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1162
    const-string/jumbo v15, " uid: "

    .line 1160
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1164
    const-string/jumbo v15, " package: "

    .line 1160
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1165
    const-string/jumbo v15, ")"

    .line 1160
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1159
    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget v13, v10, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_13e
    .catchall {:try_start_e6 .. :try_end_13e} :catchall_1ab

    monitor-exit p0

    return v13

    .line 1191
    :cond_140
    if-eqz v4, :cond_191

    .line 1192
    :try_start_142
    iget-object v13, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget-object v13, v13, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    const/4 v14, 0x4

    if-ge v13, v14, :cond_18b

    .line 1193
    iget v13, v5, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    const/4 v14, 0x3

    if-ge v13, v14, :cond_18b

    .line 1197
    :cond_152
    iget v13, v5, Lcom/android/server/AppOpsService$Op;->delayedCount:I

    if-lez v13, :cond_159

    .line 1199
    const/4 v13, 0x0

    iput v13, v5, Lcom/android/server/AppOpsService$Op;->delayedCount:I

    .line 1202
    :cond_159
    iget v13, v5, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v5, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    .line 1203
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/android/server/AppOpsService;->askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    move-result-object v7

    .line 1213
    .end local v7    # "req":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    .end local v10    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_16b
    if-nez v7, :cond_1a2

    .line 1216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v5, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1217
    const-wide/16 v14, 0x0

    iput-wide v14, v5, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1218
    move/from16 v0, p4

    iput v0, v5, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 1219
    move-object/from16 v0, p5

    iput-object v0, v5, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 1220
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->broadcastOpIfNeeded(I)V

    .line 1221
    iget v13, v5, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v5, Lcom/android/server/AppOpsService$Op;->allowedCount:I
    :try_end_188
    .catchall {:try_start_142 .. :try_end_188} :catchall_1ab

    .line 1222
    const/4 v13, 0x0

    monitor-exit p0

    return v13

    .line 1194
    .restart local v7    # "req":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    .restart local v10    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_18b
    :try_start_18b
    iget v13, v5, Lcom/android/server/AppOpsService$Op;->delayedCount:I

    const/16 v14, 0xa

    if-gt v13, v14, :cond_152

    .line 1205
    :cond_191
    if-eqz v4, :cond_199

    .line 1206
    iget v13, v5, Lcom/android/server/AppOpsService$Op;->delayedCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v5, Lcom/android/server/AppOpsService$Op;->delayedCount:I

    .line 1208
    :cond_199
    iget v13, v5, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v5, Lcom/android/server/AppOpsService$Op;->ignoredCount:I
    :try_end_19f
    .catchall {:try_start_18b .. :try_end_19f} :catchall_1ab

    .line 1209
    const/4 v13, 0x1

    monitor-exit p0

    return v13

    .end local v7    # "req":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    .end local v10    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_1a2
    monitor-exit p0

    .line 1226
    invoke-virtual {v7}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->get()I

    move-result v8

    .line 1227
    .local v8, "result":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->broadcastOpIfNeeded(I)V

    .line 1228
    return v8

    .line 1116
    .end local v5    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "result":I
    .end local v9    # "switchCode":I
    .end local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_1ab
    move-exception v13

    monitor-exit p0

    throw v13
.end method

.method private notifyWatchersOfChange(I)V
    .registers 13
    .param p1, "code"    # I

    .prologue
    .line 2489
    monitor-enter p0

    .line 2490
    :try_start_1
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2e

    .line 2491
    .local v2, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v2, :cond_d

    monitor-exit p0

    .line 2492
    return-void

    .line 2494
    :cond_d
    :try_start_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_2e

    .local v3, "clonedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    monitor-exit p0

    .line 2500
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2502
    .local v6, "identity":J
    :try_start_17
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2503
    .local v1, "callbackCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1c
    if-ge v5, v1, :cond_41

    .line 2504
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_3c

    .line 2506
    .local v0, "callback":Lcom/android/server/AppOpsService$Callback;
    :try_start_24
    iget-object v8, v0, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-interface {v8, p1, v9, v10}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2b} :catch_31
    .catchall {:try_start_24 .. :try_end_2b} :catchall_3c

    .line 2503
    :goto_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 2489
    .end local v0    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v1    # "callbackCount":I
    .end local v2    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v3    # "clonedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v5    # "i":I
    .end local v6    # "identity":J
    :catchall_2e
    move-exception v8

    monitor-exit p0

    throw v8

    .line 2507
    .restart local v0    # "callback":Lcom/android/server/AppOpsService$Callback;
    .restart local v1    # "callbackCount":I
    .restart local v2    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "clonedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v5    # "i":I
    .restart local v6    # "identity":J
    :catch_31
    move-exception v4

    .line 2508
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_32
    const-string/jumbo v8, "AppOps"

    const-string/jumbo v9, "Error dispatching op op change"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_3c

    goto :goto_2b

    .line 2511
    .end local v0    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v1    # "callbackCount":I
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "i":I
    :catchall_3c
    move-exception v8

    .line 2512
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2511
    throw v8

    .line 2512
    .restart local v1    # "callbackCount":I
    .restart local v5    # "i":I
    :cond_41
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2487
    return-void
.end method

.method static onShellCommand(Lcom/android/server/AppOpsService$Shell;Ljava/lang/String;)I
    .registers 33
    .param p0, "shell"    # Lcom/android/server/AppOpsService$Shell;
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 2061
    if-nez p1, :cond_7

    .line 2062
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v25

    return v25

    .line 2064
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v19

    .line 2065
    .local v19, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    .line 2067
    .local v8, "err":Ljava/io/PrintWriter;
    :try_start_f
    const-string/jumbo v25, "set"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_29

    .line 2069
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v20

    .line 2070
    .local v20, "res":I
    if-gez v20, :cond_13b

    .line 2071
    return v20

    .line 2067
    .end local v20    # "res":I
    :cond_29
    const-string/jumbo v25, "get"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_43

    .line 2088
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v20

    .line 2089
    .restart local v20    # "res":I
    if-gez v20, :cond_17d

    .line 2090
    return v20

    .line 2067
    .end local v20    # "res":I
    :cond_43
    const-string/jumbo v25, "query-op"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5d

    .line 2150
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lcom/android/server/AppOpsService$Shell;->parseUserOpMode(ILjava/io/PrintWriter;)I

    move-result v20

    .line 2151
    .restart local v20    # "res":I
    if-gez v20, :cond_328

    .line 2152
    return v20

    .line 2067
    .end local v20    # "res":I
    :cond_5d
    const-string/jumbo v25, "reset"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_88

    .line 2178
    const/16 v17, 0x0

    .line 2179
    .local v17, "packageName":Ljava/lang/String;
    const/16 v21, -0x2

    .line 2180
    .end local v17    # "packageName":Ljava/lang/String;
    .local v21, "userId":I
    :goto_6e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .local v4, "argument":Ljava/lang/String;
    if-eqz v4, :cond_3e1

    .line 2181
    const-string/jumbo v25, "--user"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3bd

    .line 2182
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v24

    .line 2183
    .local v24, "userStr":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v21

    goto :goto_6e

    .line 2067
    .end local v4    # "argument":Ljava/lang/String;
    .end local v21    # "userId":I
    .end local v24    # "userStr":Ljava/lang/String;
    :cond_88
    const-string/jumbo v25, "write-settings"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f5

    .line 2214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    .line 2215
    const-string/jumbo v26, "android.permission.UPDATE_APP_OPS_STATS"

    .line 2216
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v27

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v28

    const/16 v29, 0x0

    .line 2214
    invoke-virtual/range {v25 .. v29}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2217
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_b4} :catch_2ae

    move-result-wide v22

    .line 2219
    .local v22, "token":J
    :try_start_b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_bc
    .catchall {:try_start_b5 .. :try_end_bc} :catchall_458

    .line 2220
    :try_start_bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_db
    .catchall {:try_start_bc .. :try_end_db} :catchall_455

    :try_start_db
    monitor-exit v26

    .line 2222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/AppOpsService;->writeState()V

    .line 2223
    const-string/jumbo v25, "Current settings written."

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_ef
    .catchall {:try_start_db .. :try_end_ef} :catchall_458

    .line 2225
    :try_start_ef
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2227
    const/16 v25, 0x0

    return v25

    .line 2067
    .end local v22    # "token":J
    :cond_f5
    const-string/jumbo v25, "read-settings"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_462

    .line 2230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    .line 2231
    const-string/jumbo v26, "android.permission.UPDATE_APP_OPS_STATS"

    .line 2232
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v27

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v28

    const/16 v29, 0x0

    .line 2230
    invoke-virtual/range {v25 .. v29}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2233
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_121
    .catch Landroid/os/RemoteException; {:try_start_ef .. :try_end_121} :catch_2ae

    move-result-wide v22

    .line 2235
    .restart local v22    # "token":J
    :try_start_122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/AppOpsService;->readState()V

    .line 2236
    const-string/jumbo v25, "Last settings read."

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_135
    .catchall {:try_start_122 .. :try_end_135} :catchall_45d

    .line 2238
    :try_start_135
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2240
    const/16 v25, 0x0

    return v25

    .line 2073
    .end local v22    # "token":J
    .restart local v20    # "res":I
    :cond_13b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v13

    .line 2074
    .local v13, "modeStr":Ljava/lang/String;
    if-nez v13, :cond_14c

    .line 2075
    const-string/jumbo v25, "Error: Mode not specified."

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2076
    const/16 v25, -0x1

    return v25

    .line 2079
    :cond_14c
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v12

    .line 2080
    .local v12, "mode":I
    if-gez v12, :cond_157

    .line 2081
    const/16 v25, -0x1

    return v25

    .line 2084
    :cond_157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3, v12}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2085
    const/16 v25, 0x0

    return v25

    .line 2093
    .end local v12    # "mode":I
    .end local v13    # "modeStr":Ljava/lang/String;
    :cond_17d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v26, v0

    .line 2094
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 2095
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v25, v0

    const/16 v29, -0x1

    move/from16 v0, v25

    move/from16 v1, v29

    if-eq v0, v1, :cond_1d0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v29, v0

    const/16 v30, 0x0

    aput v29, v25, v30

    .line 2093
    :goto_1af
    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v16

    .line 2096
    .local v16, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v16, :cond_1c3

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v25

    if-gtz v25, :cond_1d3

    .line 2097
    :cond_1c3
    const-string/jumbo v25, "No operations."

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2098
    const/16 v25, 0x0

    return v25

    .line 2095
    .end local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_1d0
    const/16 v25, 0x0

    goto :goto_1af

    .line 2100
    .restart local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_1d3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2101
    .local v14, "now":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1d8
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_325

    .line 2102
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual/range {v25 .. v25}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    .line 2103
    .local v7, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1ed
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_321

    .line 2104
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 2105
    .local v6, "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2106
    const-string/jumbo v25, ": "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2107
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v25

    packed-switch v25, :pswitch_data_468

    .line 2124
    const-string/jumbo v25, "mode="

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2125
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2128
    :goto_230
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_25b

    .line 2129
    const-string/jumbo v25, "; time="

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2130
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v26

    sub-long v26, v14, v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2131
    const-string/jumbo v25, " ago"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2133
    :cond_25b
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_286

    .line 2134
    const-string/jumbo v25, "; rejectTime="

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2135
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v26

    sub-long v26, v14, v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2136
    const-string/jumbo v25, " ago"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2138
    :cond_286
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v25

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2ff

    .line 2139
    const-string/jumbo v25, " (running)"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2144
    :cond_29c
    :goto_29c
    invoke-virtual/range {v19 .. v19}, Ljava/io/PrintWriter;->println()V

    .line 2103
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1ed

    .line 2109
    :pswitch_2a3
    const-string/jumbo v25, "allow"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_2ad
    .catch Landroid/os/RemoteException; {:try_start_135 .. :try_end_2ad} :catch_2ae

    goto :goto_230

    .line 2245
    .end local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v14    # "now":J
    .end local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v20    # "res":I
    :catch_2ae
    move-exception v5

    .line 2246
    .local v5, "e":Landroid/os/RemoteException;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Remote exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2248
    const/16 v25, -0x1

    return v25

    .line 2112
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    .restart local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v10    # "i":I
    .restart local v11    # "j":I
    .restart local v14    # "now":J
    .restart local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v20    # "res":I
    :pswitch_2cf
    :try_start_2cf
    const-string/jumbo v25, "ignore"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_230

    .line 2115
    :pswitch_2db
    const-string/jumbo v25, "deny"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_230

    .line 2118
    :pswitch_2e7
    const-string/jumbo v25, "default"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_230

    .line 2121
    :pswitch_2f3
    const-string/jumbo v25, "ask"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_230

    .line 2140
    :cond_2ff
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v25

    if-eqz v25, :cond_29c

    .line 2141
    const-string/jumbo v25, "; duration="

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2142
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    goto/16 :goto_29c

    .line 2101
    .end local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_321
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1d8

    .line 2147
    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11    # "j":I
    :cond_325
    const/16 v25, 0x0

    return v25

    .line 2154
    .end local v10    # "i":I
    .end local v14    # "now":J
    .end local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v25, v0

    .line 2155
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    .line 2154
    invoke-interface/range {v25 .. v26}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v16

    .line 2156
    .restart local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v16, :cond_34c

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v25

    if-gtz v25, :cond_359

    .line 2157
    :cond_34c
    const-string/jumbo v25, "No operations."

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2158
    const/16 v25, 0x0

    return v25

    .line 2160
    :cond_359
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_35a
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_3ba

    .line 2161
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/AppOpsManager$PackageOps;

    .line 2162
    .local v18, "pkg":Landroid/app/AppOpsManager$PackageOps;
    const/4 v9, 0x0

    .line 2163
    .local v9, "hasMatch":Z
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual/range {v25 .. v25}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    .line 2164
    .restart local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_378
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_3a7

    .line 2165
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 2166
    .restart local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3b7

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->mode:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3b7

    .line 2167
    const/4 v9, 0x1

    .line 2171
    .end local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_3a7
    if-eqz v9, :cond_3b4

    .line 2172
    invoke-virtual/range {v18 .. v18}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2160
    :cond_3b4
    add-int/lit8 v10, v10, 0x1

    goto :goto_35a

    .line 2164
    .restart local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_3b7
    add-int/lit8 v11, v11, 0x1

    goto :goto_378

    .line 2175
    .end local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v9    # "hasMatch":Z
    .end local v11    # "j":I
    .end local v18    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_3ba
    const/16 v25, 0x0

    return v25

    .line 2185
    .end local v10    # "i":I
    .end local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v20    # "res":I
    .restart local v4    # "argument":Ljava/lang/String;
    .restart local v21    # "userId":I
    :cond_3bd
    if-nez v17, :cond_3c3

    .line 2186
    move-object/from16 v17, v4

    .local v17, "packageName":Ljava/lang/String;
    goto/16 :goto_6e

    .line 2188
    .end local v17    # "packageName":Ljava/lang/String;
    :cond_3c3
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Error: Unsupported argument: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2189
    const/16 v25, -0x1

    return v25

    .line 2194
    :cond_3e1
    const/16 v25, -0x2

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_3ed

    .line 2195
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v21

    .line 2198
    :cond_3ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v21

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    .line 2199
    const-string/jumbo v25, "Reset all modes for: "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2200
    const/16 v25, -0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_431

    .line 2201
    const-string/jumbo v25, "all users"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2205
    :goto_418
    const-string/jumbo v25, ", "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2206
    if-nez v17, :cond_443

    .line 2207
    const-string/jumbo v25, "all packages"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2211
    :goto_42e
    const/16 v25, 0x0

    return v25

    .line 2203
    :cond_431
    const-string/jumbo v25, "user "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_418

    .line 2209
    :cond_443
    const-string/jumbo v25, "package "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_454
    .catch Landroid/os/RemoteException; {:try_start_2cf .. :try_end_454} :catch_2ae

    goto :goto_42e

    .line 2219
    .end local v4    # "argument":Ljava/lang/String;
    .end local v21    # "userId":I
    .restart local v22    # "token":J
    :catchall_455
    move-exception v25

    :try_start_456
    monitor-exit v26

    throw v25
    :try_end_458
    .catchall {:try_start_456 .. :try_end_458} :catchall_458

    .line 2224
    :catchall_458
    move-exception v25

    .line 2225
    :try_start_459
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2224
    throw v25

    .line 2237
    :catchall_45d
    move-exception v25

    .line 2238
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2237
    throw v25

    .line 2243
    .end local v22    # "token":J
    :cond_462
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_465
    .catch Landroid/os/RemoteException; {:try_start_459 .. :try_end_465} :catch_2ae

    move-result v25

    return v25

    .line 2107
    nop

    :pswitch_data_468
    .packed-switch 0x0
        :pswitch_2a3
        :pswitch_2cf
        :pswitch_2db
        :pswitch_2e7
        :pswitch_2f3
    .end packed-switch
.end method

.method private printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .registers 6
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "mode"    # I
    .param p3, "operation"    # Ljava/lang/String;

    .prologue
    .line 2598
    if-eqz p1, :cond_b

    .line 2599
    iget v1, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    .line 2600
    .local v0, "switchCode":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_c

    .line 2597
    .end local v0    # "switchCode":I
    :cond_b
    :goto_b
    return-void

    .line 2604
    .restart local v0    # "switchCode":I
    :cond_c
    if-nez p2, :cond_b

    goto :goto_b
.end method

.method private pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .registers 14
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 550
    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->time:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_3f

    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_3f

    .line 551
    invoke-direct {p0, p2, p3, v7}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 552
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v0, :cond_3f

    .line 553
    iget v3, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v3}, Lcom/android/server/AppOpsService$Ops;->remove(I)V

    .line 554
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v3

    if-gtz v3, :cond_3f

    .line 555
    iget-object v2, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 556
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v1, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 557
    .local v1, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v1, :cond_3f

    .line 558
    iget-object v3, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 560
    iput-object v6, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 562
    :cond_34
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 563
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 549
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_3f
    return-void
.end method

.method private readPolicy()V
    .registers 4

    .prologue
    .line 2867
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mStrictEnable:Z

    if-eqz v0, :cond_20

    .line 2868
    new-instance v0, Lcom/android/server/AppOpsPolicy;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/system/etc/appops_policy.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsPolicy;-><init>(Ljava/io/File;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    .line 2869
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    invoke-virtual {v0}, Lcom/android/server/AppOpsPolicy;->readPolicy()V

    .line 2870
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    invoke-virtual {v0}, Lcom/android/server/AppOpsPolicy;->debugPoilcy()V

    .line 2866
    :goto_1f
    return-void

    .line 2872
    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    goto :goto_1f
.end method

.method private recordOperationLocked(IILjava/lang/String;I)V
    .registers 15
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 2614
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 2615
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v2, :cond_2f

    .line 2616
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    if-eqz v3, :cond_13

    .line 2617
    const-string/jumbo v3, "noteOperartion"

    invoke-direct {p0, v2, p4, v3}, Lcom/android/server/AppOpsService;->printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 2618
    :cond_13
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    if-eqz v3, :cond_1d

    .line 2619
    const-string/jumbo v3, "startOperation"

    invoke-direct {p0, v2, p4, v3}, Lcom/android/server/AppOpsService;->printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 2620
    :cond_1d
    const/4 v3, 0x1

    if-ne p4, v3, :cond_30

    .line 2621
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 2646
    :cond_26
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2647
    iput v6, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    .line 2648
    iput v6, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    .line 2613
    :cond_2f
    return-void

    .line 2622
    :cond_30
    if-nez p4, :cond_26

    .line 2623
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    if-eqz v3, :cond_3e

    .line 2624
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->time:J

    .line 2625
    iput-wide v8, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 2627
    :cond_3e
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    if-eqz v3, :cond_26

    .line 2628
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v3, :cond_51

    .line 2629
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->time:J

    .line 2630
    iput-wide v8, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 2631
    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 2633
    :cond_51
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    iget v4, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 2634
    :goto_58
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_26

    .line 2635
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 2636
    .local v1, "clientToken":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 2637
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    if-eqz v0, :cond_7b

    .line 2638
    iget-object v3, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v3, :cond_7b

    .line 2639
    iget-object v3, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2642
    :cond_7b
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_58
.end method

.method private static resolvePackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2703
    if-nez p0, :cond_6

    .line 2704
    const-string/jumbo v0, "root"

    return-object v0

    .line 2705
    :cond_6
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_e

    .line 2706
    const-string/jumbo v0, "com.android.shell"

    return-object v0

    .line 2707
    :cond_e
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_18

    if-nez p1, :cond_18

    .line 2708
    const-string/jumbo v0, "android"

    return-object v0

    .line 2710
    :cond_18
    return-object p1
.end method

.method private scheduleFastWriteLocked()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1476
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_19

    .line 1477
    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 1478
    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    .line 1479
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1480
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1475
    :cond_19
    return-void
.end method

.method private scheduleWriteLocked()V
    .registers 5

    .prologue
    .line 1469
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_11

    .line 1470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 1471
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1468
    :cond_11
    return-void
.end method

.method private setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .registers 10
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 2458
    const/4 v1, 0x0

    .line 2460
    .local v1, "notifyChange":Z
    monitor-enter p0

    .line 2461
    :try_start_2
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$ClientRestrictionState;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_35

    .line 2463
    .local v2, "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    if-nez v2, :cond_16

    .line 2465
    :try_start_c
    new-instance v2, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .end local v2    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    invoke-direct {v2, p0, p3}, Lcom/android/server/AppOpsService$ClientRestrictionState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_32
    .catchall {:try_start_c .. :try_end_11} :catchall_35

    .line 2469
    .restart local v2    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :try_start_11
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2472
    :cond_16
    invoke-virtual {v2, p1, p2, p5, p4}, Lcom/android/server/AppOpsService$ClientRestrictionState;->setRestriction(IZ[Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2473
    const/4 v1, 0x1

    .line 2476
    :cond_1d
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$ClientRestrictionState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 2477
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2478
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$ClientRestrictionState;->destroy()V
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_35

    :cond_2b
    monitor-exit p0

    .line 2482
    if-eqz v1, :cond_31

    .line 2483
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(I)V

    .line 2457
    :cond_31
    return-void

    .line 2466
    .end local v2    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :catch_32
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    monitor-exit p0

    .line 2467
    return-void

    .line 2460
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_35
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private verifyIncomingOp(I)V
    .registers 5
    .param p1, "op"    # I

    .prologue
    .line 1382
    if-ltz p1, :cond_7

    const/16 v0, 0x46

    if-ge p1, v0, :cond_7

    .line 1383
    return-void

    .line 1385
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 1367
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_7

    .line 1369
    return-void

    .line 1371
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 1372
    return-void

    .line 1374
    :cond_e
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 1375
    return-void

    .line 1377
    :cond_19
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 1378
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 1377
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1366
    return-void
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .registers 11
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 996
    :try_start_0
    invoke-direct {p0, p4, p3}, Lcom/android/server/AppOpsService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_2d

    move-result v2

    .line 1002
    :goto_4
    if-eqz v2, :cond_30

    .line 1003
    const-string/jumbo v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Audio disabled for suspended package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const/4 v3, 0x1

    return v3

    .line 997
    :catch_2d
    move-exception v0

    .line 999
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    .local v2, "suspended":Z
    goto :goto_4

    .line 1007
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v2    # "suspended":Z
    :cond_30
    monitor-enter p0

    .line 1008
    :try_start_31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->checkRestrictionLocked(IIILjava/lang/String;)I
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3f

    move-result v1

    .line 1009
    .local v1, "mode":I
    if-eqz v1, :cond_39

    monitor-exit p0

    .line 1010
    return v1

    :cond_39
    monitor-exit p0

    .line 1013
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v3

    return v3

    .line 1007
    .end local v1    # "mode":I
    :catchall_3f
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public checkOperation(IILjava/lang/String;)I
    .registers 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 966
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 967
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 968
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 969
    .local v1, "resolvedPackageName":Ljava/lang/String;
    if-nez v1, :cond_e

    .line 970
    return v5

    .line 972
    :cond_e
    monitor-enter p0

    .line 973
    :try_start_f
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_41

    move-result v4

    if-eqz v4, :cond_17

    monitor-exit p0

    .line 974
    return v5

    .line 976
    :cond_17
    :try_start_17
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 977
    const/4 v4, 0x0

    invoke-direct {p0, p2, v4}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v3

    .line 978
    .local v3, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-eqz v3, :cond_30

    iget-object v4, v3, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v4, :cond_30

    .line 979
    iget-object v4, v3, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_41

    move-result v2

    .line 980
    .local v2, "uidMode":I
    if-eqz v2, :cond_30

    monitor-exit p0

    .line 981
    return v2

    .line 984
    .end local v2    # "uidMode":I
    :cond_30
    const/4 v4, 0x0

    :try_start_31
    invoke-direct {p0, p1, p2, v1, v4}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    .line 985
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_3d

    .line 986
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_41

    move-result v4

    monitor-exit p0

    return v4

    .line 988
    :cond_3d
    :try_start_3d
    iget v4, v0, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_3f
    .catchall {:try_start_3d .. :try_end_3f} :catchall_41

    monitor-exit p0

    return v4

    .line 972
    .end local v0    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v3    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_41
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public checkPackage(ILjava/lang/String;)I
    .registers 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1069
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    monitor-enter p0

    .line 1071
    const/4 v0, 0x1

    :try_start_5
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_11

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1072
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1074
    :cond_e
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    .line 1070
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 36
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string/jumbo v28, "android.permission.DUMP"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_3e

    .line 2260
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Permission Denial: can\'t dump ApOps service from from pid="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 2261
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v28

    .line 2260
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 2262
    const-string/jumbo v28, ", uid="

    .line 2260
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 2262
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v28

    .line 2260
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2263
    return-void

    .line 2266
    :cond_3e
    if-eqz p3, :cond_bf

    .line 2267
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_41
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v8, v0, :cond_bf

    .line 2268
    aget-object v4, p3, v8

    .line 2269
    .local v4, "arg":Ljava/lang/String;
    const-string/jumbo v27, "-h"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5f

    .line 2270
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2271
    return-void

    .line 2272
    :cond_5f
    const-string/jumbo v27, "-a"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6d

    .line 2267
    add-int/lit8 v8, v8, 0x1

    goto :goto_41

    .line 2274
    :cond_6d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_a1

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v27

    const/16 v28, 0x2d

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a1

    .line 2275
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Unknown option: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2276
    return-void

    .line 2278
    :cond_a1
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Unknown command: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2279
    return-void

    .line 2284
    .end local v4    # "arg":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_bf
    monitor-enter p0

    .line 2285
    :try_start_c0
    const-string/jumbo v27, "Current AppOps Service state:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2287
    .local v12, "now":J
    const/4 v11, 0x0

    .line 2288
    .local v11, "needSep":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    if-lez v27, :cond_161

    .line 2289
    const/4 v11, 0x1

    .line 2290
    const-string/jumbo v27, "  Op mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2291
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_161

    .line 2292
    const-string/jumbo v27, "    Op "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2293
    const-string/jumbo v27, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2295
    .local v5, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_12f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_15e

    .line 2296
    const-string/jumbo v27, "      #"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v27, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2297
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2295
    add-int/lit8 v9, v9, 0x1

    goto :goto_12f

    .line 2291
    :cond_15e
    add-int/lit8 v8, v8, 0x1

    goto :goto_e7

    .line 2301
    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    if-lez v27, :cond_1f1

    .line 2302
    const/4 v11, 0x1

    .line 2303
    const-string/jumbo v27, "  Package mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2304
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_1f1

    .line 2305
    const-string/jumbo v27, "    Pkg "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2306
    const-string/jumbo v27, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2308
    .restart local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_1bf
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_1ee

    .line 2309
    const-string/jumbo v27, "      #"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v27, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2310
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2308
    add-int/lit8 v9, v9, 0x1

    goto :goto_1bf

    .line 2304
    :cond_1ee
    add-int/lit8 v8, v8, 0x1

    goto :goto_179

    .line 2314
    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_1f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    if-lez v27, :cond_254

    .line 2315
    const/4 v11, 0x1

    .line 2316
    const-string/jumbo v27, "  All mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2317
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_254

    .line 2318
    const-string/jumbo v27, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2319
    const-string/jumbo v27, " -> "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2317
    add-int/lit8 v8, v8, 0x1

    goto :goto_209

    .line 2322
    .end local v8    # "i":I
    :cond_254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    if-lez v27, :cond_345

    .line 2323
    const/4 v11, 0x1

    .line 2324
    const-string/jumbo v27, "  Clients:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2325
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_26c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_345

    .line 2326
    const-string/jumbo v27, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v27, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$ClientState;

    .line 2328
    .local v7, "cs":Lcom/android/server/AppOpsService$ClientState;
    const-string/jumbo v27, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2329
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    if-eqz v27, :cond_341

    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_341

    .line 2330
    const-string/jumbo v27, "      Started ops:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2331
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_2d9
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_341

    .line 2332
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AppOpsService$Op;

    .line 2333
    .local v15, "op":Lcom/android/server/AppOpsService$Op;
    const-string/jumbo v27, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v27, "uid="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Lcom/android/server/AppOpsService$Op;->uid:I

    move/from16 v27, v0

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2334
    const-string/jumbo v27, " pkg="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2335
    const-string/jumbo v27, " op="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2331
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d9

    .line 2325
    .end local v9    # "j":I
    .end local v15    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_341
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_26c

    .line 2340
    .end local v7    # "cs":Lcom/android/server/AppOpsService$ClientState;
    .end local v8    # "i":I
    :cond_345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    if-lez v27, :cond_432

    .line 2341
    const/16 v22, 0x0

    .line 2342
    .local v22, "printedHeader":Z
    const/4 v14, 0x0

    .local v14, "o":I
    :goto_354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v14, v0, :cond_432

    .line 2343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v16

    .line 2344
    .local v16, "op":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 2345
    .local v24, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_381
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_42e

    .line 2346
    if-nez v22, :cond_398

    .line 2347
    const-string/jumbo v27, "  Audio Restrictions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2348
    const/16 v22, 0x1

    .line 2349
    const/4 v11, 0x1

    .line 2351
    :cond_398
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v26

    .line 2352
    .local v26, "usage":I
    const-string/jumbo v27, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2353
    const-string/jumbo v27, " usage="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v26 .. v26}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2354
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/AppOpsService$Restriction;

    .line 2355
    .local v23, "r":Lcom/android/server/AppOpsService$Restriction;
    const-string/jumbo v27, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    move/from16 v27, v0

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2356
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_42a

    .line 2357
    const-string/jumbo v27, "      Exceptions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2358
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_3fa
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArraySet;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_42a

    .line 2359
    const-string/jumbo v27, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2358
    add-int/lit8 v9, v9, 0x1

    goto :goto_3fa

    .line 2345
    .end local v9    # "j":I
    :cond_42a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_381

    .line 2342
    .end local v23    # "r":Lcom/android/server/AppOpsService$Restriction;
    .end local v26    # "usage":I
    :cond_42e
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_354

    .line 2365
    .end local v8    # "i":I
    .end local v14    # "o":I
    .end local v16    # "op":Ljava/lang/String;
    .end local v22    # "printedHeader":Z
    .end local v24    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :cond_432
    if-eqz v11, :cond_437

    .line 2366
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2368
    :cond_437
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_5d0

    .line 2369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/AppOpsService$UidState;

    .line 2371
    .local v25, "uidState":Lcom/android/server/AppOpsService$UidState;
    const-string/jumbo v27, "  Uid "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v27, v0

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v27, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2373
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    .line 2374
    .local v18, "opModes":Landroid/util/SparseIntArray;
    if-eqz v18, :cond_4b9

    .line 2375
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseIntArray;->size()I

    move-result v17

    .line 2376
    .local v17, "opModeCount":I
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_482
    move/from16 v0, v17

    if-ge v9, v0, :cond_4b9

    .line 2377
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 2378
    .local v6, "code":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 2379
    .local v10, "mode":I
    const-string/jumbo v27, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2380
    const-string/jumbo v27, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 2376
    add-int/lit8 v9, v9, 0x1

    goto :goto_482

    .line 2384
    .end local v6    # "code":I
    .end local v9    # "j":I
    .end local v10    # "mode":I
    .end local v17    # "opModeCount":I
    :cond_4b9
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    .line 2385
    .local v21, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v21, :cond_4c5

    .line 2368
    :cond_4c1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_438

    .line 2389
    :cond_4c5
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "ops$iterator":Ljava/util/Iterator;
    :cond_4cd
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_4c1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/AppOpsService$Ops;

    .line 2390
    .local v19, "ops":Lcom/android/server/AppOpsService$Ops;
    const-string/jumbo v27, "    Package "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v27, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2391
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_4fb
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_4cd

    .line 2392
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AppOpsService$Op;

    .line 2393
    .restart local v15    # "op":Lcom/android/server/AppOpsService$Op;
    const-string/jumbo v27, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2394
    const-string/jumbo v27, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v27, v0

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2395
    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v27, v28, v30

    if-eqz v27, :cond_564

    .line 2396
    const-string/jumbo v27, "; time="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v28, v0

    sub-long v28, v12, v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2397
    const-string/jumbo v27, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2399
    :cond_564
    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v27, v28, v30

    if-eqz v27, :cond_58f

    .line 2400
    const-string/jumbo v27, "; rejectTime="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v28, v0

    sub-long v28, v12, v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2401
    const-string/jumbo v27, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2403
    :cond_58f
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_5ac

    .line 2404
    const-string/jumbo v27, " (running)"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2408
    :cond_5a5
    :goto_5a5
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2391
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4fb

    .line 2405
    :cond_5ac
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v27, v0

    if-eqz v27, :cond_5a5

    .line 2406
    const-string/jumbo v27, "; duration="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V
    :try_end_5cc
    .catchall {:try_start_c0 .. :try_end_5cc} :catchall_5cd

    goto :goto_5a5

    .line 2284
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v11    # "needSep":Z
    .end local v12    # "now":J
    .end local v15    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v18    # "opModes":Landroid/util/SparseIntArray;
    .end local v19    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v20    # "ops$iterator":Ljava/util/Iterator;
    .end local v21    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v25    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_5cd
    move-exception v27

    monitor-exit p0

    throw v27

    .restart local v8    # "i":I
    .restart local v11    # "needSep":Z
    .restart local v12    # "now":J
    :cond_5d0
    monitor-exit p0

    .line 2257
    return-void
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1316
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1317
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1318
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1319
    .local v2, "resolvedPackageName":Ljava/lang/String;
    if-nez v2, :cond_d

    .line 1320
    return-void

    .line 1322
    :cond_d
    instance-of v3, p1, Lcom/android/server/AppOpsService$ClientState;

    if-nez v3, :cond_12

    .line 1323
    return-void

    :cond_12
    move-object v0, p1

    .line 1325
    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 1326
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    .line 1327
    const/4 v3, 0x1

    :try_start_17
    invoke-direct {p0, p2, p3, v2, v3}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_61

    move-result-object v1

    .line 1328
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_1f

    monitor-exit p0

    .line 1329
    return-void

    .line 1331
    :cond_1f
    :try_start_1f
    iget-object v3, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v3, :cond_64

    .line 1332
    iget-object v3, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 1333
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Operation not started: uid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1334
    const-string/jumbo v5, " pkg="

    .line 1333
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1334
    iget-object v5, v1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 1333
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1334
    const-string/jumbo v5, " op="

    .line 1333
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1334
    iget v5, v1, Lcom/android/server/AppOpsService$Op;->op:I

    .line 1333
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_61
    .catchall {:try_start_1f .. :try_end_61} :catchall_61

    .line 1326
    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_61
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1337
    .restart local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_64
    :try_start_64
    invoke-virtual {p0, v1}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_61

    monitor-exit p0

    .line 1339
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->broadcastOpIfNeeded(I)V

    .line 1315
    return-void
.end method

.method finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    .registers 6
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;

    .prologue
    const/4 v1, 0x1

    .line 1351
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-gt v0, v1, :cond_7d

    .line 1352
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-ne v0, v1, :cond_1f

    .line 1353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1354
    iget-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1360
    :goto_1b
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1350
    :goto_1e
    return-void

    .line 1356
    :cond_1f
    const-string/jumbo v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Finishing op nesting under-run: uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1357
    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 1356
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1357
    const-string/jumbo v2, " code "

    .line 1356
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1357
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    .line 1356
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1357
    const-string/jumbo v2, " time="

    .line 1356
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1357
    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1356
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1358
    const-string/jumbo v2, " duration="

    .line 1356
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1358
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1356
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1358
    const-string/jumbo v2, " nesting="

    .line 1356
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1358
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1356
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1362
    :cond_7d
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    goto :goto_1e
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .registers 14
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 526
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.GET_APP_OPS_STATS"

    .line 527
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 526
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 528
    invoke-static {p1, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 529
    .local v4, "resolvedPackageName":Ljava/lang/String;
    if-nez v4, :cond_1c

    .line 530
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 532
    :cond_1c
    monitor-enter p0

    .line 533
    const/4 v5, 0x0

    :try_start_1e
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_43

    move-result-object v0

    .line 534
    .local v0, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_26

    monitor-exit p0

    .line 535
    return-object v9

    .line 537
    :cond_26
    :try_start_26
    invoke-direct {p0, v0, p3}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_43

    move-result-object v2

    .line 538
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_2e

    monitor-exit p0

    .line 539
    return-object v9

    .line 541
    :cond_2e
    :try_start_2e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    .line 543
    iget-object v5, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v6, v6, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 542
    invoke-direct {v3, v5, v6, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 544
    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_2e .. :try_end_41} :catchall_43

    monitor-exit p0

    .line 545
    return-object v1

    .line 532
    .end local v0    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v3    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :catchall_43
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .registers 20
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "android.permission.GET_APP_OPS_STATS"

    .line 495
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    const/16 v17, 0x0

    .line 494
    invoke-virtual/range {v13 .. v17}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 496
    const/4 v7, 0x0

    .line 497
    .local v7, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    monitor-enter p0

    .line 498
    :try_start_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 499
    .local v12, "uidStateCount":I
    const/4 v2, 0x0

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v2, "i":I
    :goto_1f
    if-ge v2, v12, :cond_6d

    .line 500
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$UidState;

    .line 501
    .local v11, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v13, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v13, :cond_37

    iget-object v13, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3a

    .line 499
    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 504
    :cond_3a
    iget-object v5, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 505
    .local v5, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I
    :try_end_3f
    .catchall {:try_start_16 .. :try_end_3f} :catchall_6f

    move-result v4

    .line 506
    .local v4, "packageCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    move-object v8, v7

    .local v8, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_42
    if-ge v3, v4, :cond_79

    .line 507
    :try_start_44
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;

    .line 508
    .local v6, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v9

    .line 509
    .local v9, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v9, :cond_77

    .line 510
    if-nez v8, :cond_75

    .line 511
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_5b
    .catchall {:try_start_44 .. :try_end_5b} :catchall_72

    .line 513
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v7, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_5b
    :try_start_5b
    new-instance v10, Landroid/app/AppOpsManager$PackageOps;

    .line 514
    iget-object v13, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v14, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v14, v14, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 513
    invoke-direct {v10, v13, v14, v9}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 515
    .local v10, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catchall {:try_start_5b .. :try_end_69} :catchall_6f

    .line 506
    .end local v10    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :goto_69
    add-int/lit8 v3, v3, 0x1

    move-object v8, v7

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_42

    .end local v3    # "j":I
    .end local v4    # "packageCount":I
    .end local v5    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_6d
    monitor-exit p0

    .line 520
    return-object v7

    .line 497
    .end local v2    # "i":I
    .end local v12    # "uidStateCount":I
    :catchall_6f
    move-exception v13

    :goto_70
    monitor-exit p0

    throw v13

    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "packageCount":I
    .restart local v5    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v12    # "uidStateCount":I
    :catchall_72
    move-exception v13

    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_70

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_75
    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_5b

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_77
    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_69

    .end local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_79
    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_37
.end method

.method public getPrivacyGuardSettingForPackage(ILjava/lang/String;)Z
    .registers 11
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 2886
    sget-object v5, Landroid/app/AppOpsManager;->PRIVACY_GUARD_OP_STATES:[I

    array-length v6, v5

    move v3, v4

    :goto_6
    if-ge v3, v6, :cond_1a

    aget v1, v5, v3

    .line 2887
    .local v1, "op":I
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    .line 2888
    .local v2, "switchOp":I
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 2889
    .local v0, "mode":I
    if-eqz v0, :cond_17

    if-eq v0, v7, :cond_17

    .line 2890
    return v7

    .line 2886
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2893
    .end local v0    # "mode":I
    .end local v1    # "op":I
    .end local v2    # "switchOp":I
    :cond_1a
    return v4
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 4
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .prologue
    .line 954
    monitor-enter p0

    .line 955
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 956
    .local v0, "cs":Lcom/android/server/AppOpsService$ClientState;
    if-nez v0, :cond_15

    .line 957
    new-instance v0, Lcom/android/server/AppOpsService$ClientState;

    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    invoke-direct {v0, p0, p1}, Lcom/android/server/AppOpsService$ClientState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V

    .line 958
    .restart local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit p0

    .line 960
    return-object v0

    .line 954
    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isControlAllowed(ILjava/lang/String;)Z
    .registers 5
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2877
    const/4 v0, 0x1

    .line 2878
    .local v0, "isShow":Z
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    if-eqz v1, :cond_b

    .line 2879
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/AppOpsPolicy;->isControlAllowed(ILjava/lang/String;)Z

    move-result v0

    .line 2881
    .end local v0    # "isShow":Z
    :cond_b
    return v0
.end method

.method public noteOperation(IILjava/lang/String;)I
    .registers 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1103
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1104
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1105
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1106
    .local v3, "resolvedPackageName":Ljava/lang/String;
    if-nez v3, :cond_f

    .line 1107
    const/4 v0, 0x1

    return v0

    .line 1109
    :cond_f
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    .registers 15
    .param p1, "code"    # I
    .param p2, "proxyPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1082
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1083
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1084
    .local v2, "proxyUid":I
    invoke-static {v2, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1085
    .local v3, "resolveProxyPackageName":Ljava/lang/String;
    if-nez v3, :cond_10

    .line 1086
    return v6

    .line 1089
    :cond_10
    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    .line 1088
    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v8

    .line 1090
    .local v8, "proxyMode":I
    if-nez v8, :cond_1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, p3, :cond_20

    .line 1091
    :cond_1f
    return v8

    .line 1093
    :cond_20
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1094
    .local v7, "resolveProxiedPackageName":Ljava/lang/String;
    if-nez v7, :cond_27

    .line 1095
    return v6

    :cond_27
    move-object v4, p0

    move v5, p1

    move v6, p3

    move-object v9, v3

    .line 1097
    invoke-direct/range {v4 .. v9}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public notifyOperation(IILjava/lang/String;IZ)V
    .registers 16
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .param p5, "remember"    # Z

    .prologue
    .line 2654
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 2655
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 2656
    const/4 v4, 0x0

    .line 2657
    .local v4, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v6

    .line 2658
    .local v6, "switchCode":I
    monitor-enter p0

    .line 2659
    :try_start_c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->recordOperationLocked(IILjava/lang/String;I)V

    .line 2660
    const/4 v7, 0x1

    invoke-direct {p0, v6, p2, p3, v7}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v3

    .line 2661
    .local v3, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v3, :cond_69

    .line 2663
    iget-object v7, v3, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    invoke-virtual {v7}, Lcom/android/server/PermissionDialogReqQueue;->getDialog()Lcom/android/server/PermissionDialog;

    move-result-object v7

    if-eqz v7, :cond_29

    .line 2664
    iget-object v7, v3, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    invoke-virtual {v7, p4}, Lcom/android/server/PermissionDialogReqQueue;->notifyAll(I)V

    .line 2665
    iget-object v7, v3, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/PermissionDialogReqQueue;->setDialog(Lcom/android/server/PermissionDialog;)V

    .line 2667
    :cond_29
    if-eqz p5, :cond_69

    iget v7, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v7, p4, :cond_69

    .line 2668
    iput p4, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 2669
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2670
    .local v0, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_8e

    .line 2672
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_40
    .catchall {:try_start_c .. :try_end_40} :catchall_81

    .line 2674
    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v5, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :try_start_40
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2676
    :goto_43
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 2677
    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_8c

    .line 2678
    if-nez v5, :cond_8a

    .line 2679
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_54
    .catchall {:try_start_40 .. :try_end_54} :catchall_87

    .line 2681
    .end local v5    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v4, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :goto_54
    :try_start_54
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2683
    :goto_57
    iget v7, v3, Lcom/android/server/AppOpsService$Op;->op:I

    iget v8, v3, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object v9, v3, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v7

    if-ne p4, v7, :cond_66

    .line 2686
    invoke-direct {p0, v3, p2, p3}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 2688
    :cond_66
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V
    :try_end_69
    .catchall {:try_start_54 .. :try_end_69} :catchall_81

    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_69
    monitor-exit p0

    .line 2692
    if-eqz v4, :cond_84

    .line 2693
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_84

    .line 2695
    :try_start_73
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Callback;

    iget-object v7, v7, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v7, v6, p2, p3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_7e} :catch_85

    .line 2693
    :goto_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    .line 2658
    .end local v2    # "i":I
    .end local v3    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_81
    move-exception v7

    :goto_82
    monitor-exit p0

    throw v7

    .line 2653
    .restart local v3    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_84
    return-void

    .line 2696
    .restart local v2    # "i":I
    :catch_85
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_7e

    .line 2658
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .restart local v5    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_87
    move-exception v7

    move-object v4, v5

    .end local v5    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_82

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v5    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_8a
    move-object v4, v5

    .end local v5    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_54

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v5    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_8c
    move-object v4, v5

    .end local v5    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_57

    .local v4, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_8e
    move-object v5, v4

    .restart local v5    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_43
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 13
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 2033
    new-instance v0, Lcom/android/server/AppOpsService$Shell;

    invoke-direct {v0, p0, p0}, Lcom/android/server/AppOpsService$Shell;-><init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/AppOpsService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/AppOpsService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    .line 2032
    return-void
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 418
    monitor-enter p0

    .line 419
    :try_start_1
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$UidState;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_38

    .line 420
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v1, :cond_d

    monitor-exit p0

    .line 421
    return-void

    .line 424
    :cond_d
    const/4 v0, 0x0

    .line 427
    .local v0, "changed":Z
    :try_start_e
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1b

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 428
    const/4 v0, 0x1

    .line 432
    :cond_1b
    if-eqz v0, :cond_31

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 433
    invoke-static {p1}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_31

    .line 434
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 437
    :cond_31
    if-eqz v0, :cond_36

    .line 438
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_38

    :cond_36
    monitor-exit p0

    .line 417
    return-void

    .line 418
    .end local v0    # "changed":Z
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_38
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1344
    if-nez p1, :cond_4

    .line 1345
    const/4 v0, -0x1

    return v0

    .line 1347
    :cond_4
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public publish(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    .line 294
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->readPolicy()V

    .line 295
    const-string/jumbo v0, "appops"

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 292
    return-void
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 1632
    const-string/jumbo v4, "n"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1633
    .local v1, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1635
    .local v0, "outerDepth":I
    :cond_d
    :goto_d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_54

    .line 1636
    if-ne v3, v7, :cond_1c

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_54

    .line 1637
    :cond_1c
    if-eq v3, v7, :cond_d

    const/4 v4, 0x4

    if-eq v3, v4, :cond_d

    .line 1641
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1642
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1643
    invoke-virtual {p0, p1, v1}, Lcom/android/server/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_d

    .line 1645
    :cond_32
    const-string/jumbo v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1646
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1645
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_d

    .line 1631
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_54
    return-void
.end method

.method readState()V
    .registers 19

    .prologue
    .line 1534
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v15

    .line 1535
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_5 .. :try_end_6} :catchall_213

    .line 1538
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_d} :catch_69
    .catchall {:try_start_6 .. :try_end_d} :catchall_210

    move-result-object v10

    .line 1543
    .local v10, "stream":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 1544
    .local v11, "success":Z
    :try_start_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_210

    .line 1546
    :try_start_16
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 1547
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1549
    :cond_23
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x2

    if-eq v13, v14, :cond_2d

    .line 1550
    const/4 v14, 0x1

    if-ne v13, v14, :cond_23

    .line 1554
    :cond_2d
    const/4 v14, 0x2

    if-eq v13, v14, :cond_9a

    .line 1555
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string/jumbo v16, "no start tag found"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_3b} :catch_3b
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_3b} :catch_c7
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_3b} :catch_106
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_3b} :catch_15b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_3b} :catch_1cd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_3b} :catch_19d
    .catchall {:try_start_16 .. :try_end_3b} :catchall_200

    .line 1577
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    :catch_3b
    move-exception v3

    .line 1578
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_3c
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_3c .. :try_end_5a} :catchall_200

    .line 1590
    if-nez v11, :cond_63

    .line 1591
    :try_start_5c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_210

    .line 1594
    :cond_63
    :try_start_63
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_1fd
    .catchall {:try_start_63 .. :try_end_66} :catchall_210

    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_66
    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_213

    monitor-exit v15

    .line 1533
    return-void

    .line 1539
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "success":Z
    :catch_69
    move-exception v1

    .line 1540
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_6a
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "No existing app ops "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "; starting empty"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_6a .. :try_end_97} :catchall_210

    :try_start_97
    monitor-exit p0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_213

    monitor-exit v15

    .line 1541
    return-void

    .line 1558
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "success":Z
    .restart local v13    # "type":I
    :cond_9a
    :try_start_9a
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 1559
    .local v8, "outerDepth":I
    :cond_9e
    :goto_9e
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_18b

    .line 1560
    const/4 v14, 0x3

    if-ne v13, v14, :cond_ae

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v8, :cond_18b

    .line 1561
    :cond_ae
    const/4 v14, 0x3

    if-eq v13, v14, :cond_9e

    const/4 v14, 0x4

    if-eq v13, v14, :cond_9e

    .line 1565
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1566
    .local v12, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "pkg"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f7

    .line 1567
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_c6
    .catch Ljava/lang/IllegalStateException; {:try_start_9a .. :try_end_c6} :catch_3b
    .catch Ljava/lang/NullPointerException; {:try_start_9a .. :try_end_c6} :catch_c7
    .catch Ljava/lang/NumberFormatException; {:try_start_9a .. :try_end_c6} :catch_106
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9a .. :try_end_c6} :catch_15b
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_c6} :catch_1cd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9a .. :try_end_c6} :catch_19d
    .catchall {:try_start_9a .. :try_end_c6} :catchall_200

    goto :goto_9e

    .line 1579
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_c7
    move-exception v5

    .line 1580
    .local v5, "e":Ljava/lang/NullPointerException;
    :try_start_c8
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catchall {:try_start_c8 .. :try_end_e6} :catchall_200

    .line 1590
    if-nez v11, :cond_ef

    .line 1591
    :try_start_e8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_ef
    .catchall {:try_start_e8 .. :try_end_ef} :catchall_210

    .line 1594
    :cond_ef
    :try_start_ef
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f2} :catch_f4
    .catchall {:try_start_ef .. :try_end_f2} :catchall_210

    goto/16 :goto_66

    .line 1595
    :catch_f4
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_66

    .line 1568
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "tagName":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_f7
    :try_start_f7
    const-string/jumbo v14, "uid"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_136

    .line 1569
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/AppOpsService;->readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_105
    .catch Ljava/lang/IllegalStateException; {:try_start_f7 .. :try_end_105} :catch_3b
    .catch Ljava/lang/NullPointerException; {:try_start_f7 .. :try_end_105} :catch_c7
    .catch Ljava/lang/NumberFormatException; {:try_start_f7 .. :try_end_105} :catch_106
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f7 .. :try_end_105} :catch_15b
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_105} :catch_1cd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f7 .. :try_end_105} :catch_19d
    .catchall {:try_start_f7 .. :try_end_105} :catchall_200

    goto :goto_9e

    .line 1581
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_106
    move-exception v6

    .line 1582
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_107
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_125
    .catchall {:try_start_107 .. :try_end_125} :catchall_200

    .line 1590
    if-nez v11, :cond_12e

    .line 1591
    :try_start_127
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_12e
    .catchall {:try_start_127 .. :try_end_12e} :catchall_210

    .line 1594
    :cond_12e
    :try_start_12e
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_131} :catch_133
    .catchall {:try_start_12e .. :try_end_131} :catchall_210

    goto/16 :goto_66

    .line 1595
    :catch_133
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_66

    .line 1571
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "tagName":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_136
    :try_start_136
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unknown element under <app-ops>: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1572
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 1571
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_159
    .catch Ljava/lang/IllegalStateException; {:try_start_136 .. :try_end_159} :catch_3b
    .catch Ljava/lang/NullPointerException; {:try_start_136 .. :try_end_159} :catch_c7
    .catch Ljava/lang/NumberFormatException; {:try_start_136 .. :try_end_159} :catch_106
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_136 .. :try_end_159} :catch_15b
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_159} :catch_1cd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_136 .. :try_end_159} :catch_19d
    .catchall {:try_start_136 .. :try_end_159} :catchall_200

    goto/16 :goto_9e

    .line 1583
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_15b
    move-exception v7

    .line 1584
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_15c
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17a
    .catchall {:try_start_15c .. :try_end_17a} :catchall_200

    .line 1590
    if-nez v11, :cond_183

    .line 1591
    :try_start_17c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_183
    .catchall {:try_start_17c .. :try_end_183} :catchall_210

    .line 1594
    :cond_183
    :try_start_183
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_188
    .catchall {:try_start_183 .. :try_end_186} :catchall_210

    goto/16 :goto_66

    .line 1595
    :catch_188
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_66

    .line 1576
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "type":I
    :cond_18b
    const/4 v11, 0x1

    .line 1590
    if-nez v11, :cond_195

    .line 1591
    :try_start_18e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_195
    .catchall {:try_start_18e .. :try_end_195} :catchall_210

    .line 1594
    :cond_195
    :try_start_195
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_198} :catch_19a
    .catchall {:try_start_195 .. :try_end_198} :catchall_210

    goto/16 :goto_66

    .line 1595
    :catch_19a
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_66

    .line 1587
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    :catch_19d
    move-exception v4

    .line 1588
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_19e
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bc
    .catchall {:try_start_19e .. :try_end_1bc} :catchall_200

    .line 1590
    if-nez v11, :cond_1c5

    .line 1591
    :try_start_1be
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_1c5
    .catchall {:try_start_1be .. :try_end_1c5} :catchall_210

    .line 1594
    :cond_1c5
    :try_start_1c5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1c8
    .catch Ljava/io/IOException; {:try_start_1c5 .. :try_end_1c8} :catch_1ca
    .catchall {:try_start_1c5 .. :try_end_1c8} :catchall_210

    goto/16 :goto_66

    .line 1595
    :catch_1ca
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_66

    .line 1585
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1cd
    move-exception v2

    .line 1586
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_1ce
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ec
    .catchall {:try_start_1ce .. :try_end_1ec} :catchall_200

    .line 1590
    if-nez v11, :cond_1f5

    .line 1591
    :try_start_1ee
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_1f5
    .catchall {:try_start_1ee .. :try_end_1f5} :catchall_210

    .line 1594
    :cond_1f5
    :try_start_1f5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1f8
    .catch Ljava/io/IOException; {:try_start_1f5 .. :try_end_1f8} :catch_1fa
    .catchall {:try_start_1f5 .. :try_end_1f8} :catchall_210

    goto/16 :goto_66

    .line 1595
    :catch_1fa
    move-exception v2

    goto/16 :goto_66

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_1fd
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_66

    .line 1589
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catchall_200
    move-exception v14

    .line 1590
    if-nez v11, :cond_20c

    .line 1591
    :try_start_203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->clear()V
    :try_end_20c
    .catchall {:try_start_203 .. :try_end_20c} :catchall_210

    .line 1594
    :cond_20c
    :try_start_20c
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_20f
    .catch Ljava/io/IOException; {:try_start_20c .. :try_end_20f} :catch_216
    .catchall {:try_start_20c .. :try_end_20f} :catchall_210

    .line 1589
    :goto_20f
    :try_start_20f
    throw v14
    :try_end_210
    .catchall {:try_start_20f .. :try_end_210} :catchall_210

    .line 1535
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "success":Z
    :catchall_210
    move-exception v14

    :try_start_211
    monitor-exit p0

    throw v14
    :try_end_213
    .catchall {:try_start_211 .. :try_end_213} :catchall_213

    .line 1534
    :catchall_213
    move-exception v14

    monitor-exit v15

    throw v14

    .line 1595
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "success":Z
    :catch_216
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_20f
.end method

.method readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 33
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1654
    const-string/jumbo v27, "n"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 1655
    .local v25, "uid":I
    const-string/jumbo v27, "p"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1656
    .local v13, "isPrivilegedString":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1657
    .local v12, "isPrivileged":Z
    if-nez v13, :cond_200

    .line 1659
    :try_start_25
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v18

    .line 1660
    .local v18, "packageManager":Landroid/content/pm/IPackageManager;
    if-eqz v18, :cond_1ef

    .line 1661
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v27

    .line 1662
    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v28

    const/16 v29, 0x0

    .line 1661
    move-object/from16 v0, v27

    move-object/from16 v1, p2

    move/from16 v2, v29

    move/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 1663
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_4c

    .line 1664
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    move/from16 v27, v0
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_47} :catch_1f0

    and-int/lit8 v27, v27, 0x8

    if-eqz v27, :cond_1ec

    const/4 v12, 0x1

    .line 1677
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "isPrivileged":Z
    .end local v18    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_4c
    :goto_4c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    .line 1679
    .local v17, "outerDepth":I
    :cond_50
    :goto_50
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v24

    .local v24, "type":I
    const/16 v27, 0x1

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_24d

    .line 1680
    const/16 v27, 0x3

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_6e

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v17

    if-le v0, v1, :cond_24d

    .line 1681
    :cond_6e
    const/16 v27, 0x3

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_50

    const/16 v27, 0x4

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_50

    .line 1685
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v22

    .line 1686
    .local v22, "tagName":Ljava/lang/String;
    const-string/jumbo v27, "op"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_22a

    .line 1688
    const-string/jumbo v27, "n"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1687
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1690
    .local v6, "code":I
    const-string/jumbo v27, "ns"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1691
    .local v7, "codeNameStr":Ljava/lang/String;
    if-eqz v7, :cond_b7

    .line 1693
    invoke-static {v7}, Landroid/app/AppOpsManager;->nameToOp(Ljava/lang/String;)I

    move-result v6

    .line 1696
    :cond_b7
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v6, v0, :cond_50

    .line 1697
    const/16 v27, 0x46

    move/from16 v0, v27

    if-ge v6, v0, :cond_50

    .line 1700
    new-instance v15, Lcom/android/server/AppOpsService$Op;

    const/16 v27, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p2

    move/from16 v2, v27

    invoke-direct {v15, v0, v1, v6, v2}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;II)V

    .line 1701
    .local v15, "op":Lcom/android/server/AppOpsService$Op;
    const-string/jumbo v27, "m"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1702
    .local v14, "mode":Ljava/lang/String;
    if-eqz v14, :cond_206

    .line 1703
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    iput v0, v15, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1714
    :goto_e9
    const-string/jumbo v27, "t"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1715
    .local v23, "time":Ljava/lang/String;
    if-eqz v23, :cond_102

    .line 1716
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    move-wide/from16 v0, v28

    iput-wide v0, v15, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1718
    :cond_102
    const-string/jumbo v27, "r"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1719
    if-eqz v23, :cond_11b

    .line 1720
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    move-wide/from16 v0, v28

    iput-wide v0, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1722
    :cond_11b
    const-string/jumbo v27, "d"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1723
    .local v9, "dur":Ljava/lang/String;
    if-eqz v9, :cond_134

    .line 1724
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    iput v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1726
    :cond_134
    const-string/jumbo v27, "pu"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1727
    .local v20, "proxyUid":Ljava/lang/String;
    if-eqz v20, :cond_14d

    .line 1728
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    iput v0, v15, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 1730
    :cond_14d
    const-string/jumbo v27, "pp"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1731
    .local v19, "proxyPackageName":Ljava/lang/String;
    if-eqz v19, :cond_162

    .line 1732
    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 1734
    :cond_162
    const-string/jumbo v27, "ac"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1735
    .local v4, "allowed":Ljava/lang/String;
    if-eqz v4, :cond_17b

    .line 1736
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    iput v0, v15, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    .line 1738
    :cond_17b
    const-string/jumbo v27, "ic"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1739
    .local v11, "ignored":Ljava/lang/String;
    if-eqz v11, :cond_194

    .line 1740
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    iput v0, v15, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    .line 1742
    :cond_194
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v26

    .line 1743
    .local v26, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    if-nez v27, :cond_1b3

    .line 1744
    new-instance v27, Landroid/util/ArrayMap;

    invoke-direct/range {v27 .. v27}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1747
    :cond_1b3
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AppOpsService$Ops;

    .line 1748
    .local v16, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v16, :cond_1df

    .line 1749
    new-instance v16, Lcom/android/server/AppOpsService$Ops;

    .end local v16    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v12}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    .line 1750
    .restart local v16    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    :cond_1df
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v27, v0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1, v15}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    goto/16 :goto_50

    .line 1664
    .end local v4    # "allowed":Ljava/lang/String;
    .end local v6    # "code":I
    .end local v7    # "codeNameStr":Ljava/lang/String;
    .end local v9    # "dur":Ljava/lang/String;
    .end local v11    # "ignored":Ljava/lang/String;
    .end local v14    # "mode":Ljava/lang/String;
    .end local v15    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v16    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v17    # "outerDepth":I
    .end local v19    # "proxyPackageName":Ljava/lang/String;
    .end local v20    # "proxyUid":Ljava/lang/String;
    .end local v22    # "tagName":Ljava/lang/String;
    .end local v23    # "time":Ljava/lang/String;
    .end local v24    # "type":I
    .end local v26    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "isPrivileged":Z
    .restart local v18    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_1ec
    const/4 v12, 0x0

    goto/16 :goto_4c

    .line 1669
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1ef
    return-void

    .line 1671
    .end local v18    # "packageManager":Landroid/content/pm/IPackageManager;
    :catch_1f0
    move-exception v10

    .line 1672
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v27, "AppOps"

    const-string/jumbo v28, "Could not contact PackageManager"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4c

    .line 1675
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_200
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .local v12, "isPrivileged":Z
    goto/16 :goto_4c

    .line 1705
    .end local v12    # "isPrivileged":Z
    .restart local v6    # "code":I
    .restart local v7    # "codeNameStr":Ljava/lang/String;
    .restart local v14    # "mode":Ljava/lang/String;
    .restart local v15    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v17    # "outerDepth":I
    .restart local v22    # "tagName":Ljava/lang/String;
    .restart local v24    # "type":I
    :cond_206
    const-string/jumbo v27, "dm"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1707
    .local v21, "sDefualtMode":Ljava/lang/String;
    if-eqz v21, :cond_21f

    .line 1708
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1712
    .local v8, "defaultMode":I
    :goto_21b
    iput v8, v15, Lcom/android/server/AppOpsService$Op;->mode:I

    goto/16 :goto_e9

    .line 1710
    .end local v8    # "defaultMode":I
    :cond_21f
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v8

    .restart local v8    # "defaultMode":I
    goto :goto_21b

    .line 1754
    .end local v6    # "code":I
    .end local v7    # "codeNameStr":Ljava/lang/String;
    .end local v8    # "defaultMode":I
    .end local v14    # "mode":Ljava/lang/String;
    .end local v15    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v21    # "sDefualtMode":Ljava/lang/String;
    :cond_22a
    const-string/jumbo v27, "AppOps"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Unknown element under <pkg>: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1755
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v29

    .line 1754
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_50

    .line 1653
    .end local v22    # "tagName":Ljava/lang/String;
    :cond_24d
    return-void
.end method

.method readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1604
    const-string/jumbo v7, "n"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1605
    .local v5, "uid":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1607
    .local v2, "outerDepth":I
    :cond_12
    :goto_12
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v11, :cond_7f

    .line 1608
    if-ne v4, v12, :cond_20

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_7f

    .line 1609
    :cond_20
    if-eq v4, v12, :cond_12

    const/4 v7, 0x4

    if-eq v4, v7, :cond_12

    .line 1613
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1614
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "op"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 1615
    const-string/jumbo v7, "n"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1616
    .local v0, "code":I
    const-string/jumbo v7, "m"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1617
    .local v1, "mode":I
    invoke-direct {p0, v5, v11}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v6

    .line 1618
    .local v6, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v7, :cond_57

    .line 1619
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1621
    :cond_57
    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_12

    .line 1623
    .end local v0    # "code":I
    .end local v1    # "mode":I
    .end local v6    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_5d
    const-string/jumbo v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown element under <uid-ops>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1624
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1623
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_12

    .line 1603
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_7f
    return-void
.end method

.method public removeUser(I)V
    .registers 6
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2518
    const-string/jumbo v3, "removeUser"

    invoke-direct {p0, v3}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 2519
    monitor-enter p0

    .line 2520
    :try_start_7
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 2521
    .local v2, "tokenCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_f
    if-ltz v0, :cond_1f

    .line 2522
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .line 2523
    .local v1, "opRestrictions":Lcom/android/server/AppOpsService$ClientRestrictionState;
    invoke-virtual {v1, p1}, Lcom/android/server/AppOpsService$ClientRestrictionState;->removeUser(I)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_21

    .line 2521
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .end local v1    # "opRestrictions":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :cond_1f
    monitor-exit p0

    .line 2517
    return-void

    .line 2519
    .end local v0    # "i":I
    .end local v2    # "tokenCount":I
    :catchall_21
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .registers 34
    .param p1, "reqUserId"    # I
    .param p2, "reqPackageName"    # Ljava/lang/String;

    .prologue
    .line 786
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 787
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 788
    .local v3, "callingUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.UPDATE_APP_OPS_STATS"

    .line 789
    const/4 v6, 0x0

    .line 788
    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 791
    const-string/jumbo v7, "resetAllModes"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move/from16 v4, p1

    .line 790
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 793
    const/16 v28, -0x1

    .line 794
    .local v28, "reqUid":I
    if-eqz p2, :cond_31

    .line 796
    :try_start_23
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 797
    const/16 v5, 0x2000

    .line 796
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-interface {v4, v0, v5, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_30} :catch_1fd

    move-result v28

    .line 803
    :cond_31
    :goto_31
    const/4 v9, 0x0

    .line 804
    .local v9, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    monitor-enter p0

    .line 805
    const/4 v11, 0x0

    .line 806
    .local v11, "changed":Z
    :try_start_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v19, v4, -0x1

    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v19, "i":I
    :goto_3e
    if-ltz v19, :cond_1aa

    .line 807
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/AppOpsService$UidState;

    .line 809
    .local v30, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    .line 810
    .local v22, "opModes":Landroid/util/SparseIntArray;
    if-eqz v22, :cond_c9

    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v0, v28

    if-eq v4, v0, :cond_61

    const/4 v4, -0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_c9

    .line 811
    :cond_61
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseIntArray;->size()I

    move-result v29

    .line 812
    .local v29, "uidOpCount":I
    add-int/lit8 v21, v29, -0x1

    .local v21, "j":I
    :goto_67
    if-ltz v21, :cond_c9

    .line 813
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    .line 814
    .local v12, "code":I
    invoke-static {v12}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 815
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 816
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_89

    .line 817
    const/4 v4, 0x0

    move-object/from16 v0, v30

    iput-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 819
    :cond_89
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    array-length v7, v6

    move v5, v4

    :goto_94
    if-ge v5, v7, :cond_c6

    aget-object v23, v6, v5

    .line 820
    .local v23, "packageName":Ljava/lang/String;
    move-object/from16 v0, v30

    iget v8, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 821
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 820
    move-object/from16 v0, v23

    invoke-static {v9, v12, v8, v0, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    .line 822
    .local v9, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    move-object/from16 v0, v30

    iget v8, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 823
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 822
    move-object/from16 v0, v23

    invoke-static {v9, v12, v8, v0, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    .line 819
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_94

    .line 812
    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v23    # "packageName":Ljava/lang/String;
    :cond_c6
    add-int/lit8 v21, v21, -0x1

    goto :goto_67

    .line 829
    .end local v12    # "code":I
    .end local v21    # "j":I
    .end local v29    # "uidOpCount":I
    :cond_c9
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_d3

    .line 806
    :cond_cf
    :goto_cf
    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_3e

    .line 833
    :cond_d3
    const/4 v4, -0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_e4

    .line 834
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move/from16 v0, p1

    if-ne v0, v4, :cond_cf

    .line 839
    :cond_e4
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    .line 840
    .local v24, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 841
    .local v20, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    :cond_f2
    :goto_f2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_197

    .line 842
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 843
    .local v17, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 844
    .restart local v23    # "packageName":Ljava/lang/String;
    if-eqz p2, :cond_110

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 848
    :cond_110
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/AppOpsService$Ops;

    .line 849
    .local v25, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    add-int/lit8 v21, v4, -0x1

    .restart local v21    # "j":I
    :goto_11c
    if-ltz v21, :cond_189

    .line 850
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$Op;

    .line 851
    .local v13, "curOp":Lcom/android/server/AppOpsService$Op;
    iget v4, v13, Lcom/android/server/AppOpsService$Op;->op:I

    iget v5, v13, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 852
    iget-object v6, v13, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 851
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v14

    .line 853
    .local v14, "defaultMode":I
    iget v4, v13, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v4

    if-eqz v4, :cond_186

    .line 854
    iget v4, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v4, v14, :cond_186

    .line 855
    iput v14, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 856
    const/4 v11, 0x1

    .line 857
    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    iget v6, v13, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 858
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    iget v7, v13, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 857
    move-object/from16 v0, v23

    invoke-static {v9, v5, v6, v0, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    .line 859
    .restart local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    iget v6, v13, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 860
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 859
    move-object/from16 v0, v23

    invoke-static {v9, v5, v6, v0, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    .line 861
    iget-wide v4, v13, Lcom/android/server/AppOpsService$Op;->time:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_186

    iget-wide v4, v13, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_186

    .line 862
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->removeAt(I)V

    .line 849
    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    :cond_186
    add-int/lit8 v21, v21, -0x1

    goto :goto_11c

    .line 866
    .end local v13    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v14    # "defaultMode":I
    :cond_189
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    if-nez v4, :cond_f2

    .line 867
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V
    :try_end_192
    .catchall {:try_start_34 .. :try_end_192} :catchall_194

    goto/16 :goto_f2

    .line 804
    .end local v17    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v19    # "i":I
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v21    # "j":I
    .end local v22    # "opModes":Landroid/util/SparseIntArray;
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v24    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v25    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v30    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_194
    move-exception v4

    monitor-exit p0

    throw v4

    .line 870
    .restart local v19    # "i":I
    .restart local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .restart local v22    # "opModes":Landroid/util/SparseIntArray;
    .restart local v24    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v30    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_197
    :try_start_197
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 871
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_cf

    .line 875
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v22    # "opModes":Landroid/util/SparseIntArray;
    .end local v24    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v30    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_1aa
    if-eqz v11, :cond_1af

    .line 876
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_1af
    .catchall {:try_start_197 .. :try_end_1af} :catchall_194

    :cond_1af
    monitor-exit p0

    .line 879
    if-eqz v9, :cond_1fa

    .line 880
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "ent$iterator":Ljava/util/Iterator;
    :cond_1ba
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1fa

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 881
    .local v16, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AppOpsService$Callback;

    .line 882
    .local v10, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/ArrayList;

    .line 883
    .local v27, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    const/16 v19, 0x0

    :goto_1d4
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_1ba

    .line 884
    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/AppOpsService$ChangeRec;

    .line 886
    .local v26, "rep":Lcom/android/server/AppOpsService$ChangeRec;
    :try_start_1e6
    iget-object v4, v10, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    move-object/from16 v0, v26

    iget v6, v0, Lcom/android/server/AppOpsService$ChangeRec;->uid:I

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_1f7
    .catch Landroid/os/RemoteException; {:try_start_1e6 .. :try_end_1f7} :catch_1fb

    .line 883
    :goto_1f7
    add-int/lit8 v19, v19, 0x1

    goto :goto_1d4

    .line 785
    .end local v10    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v18    # "ent$iterator":Ljava/util/Iterator;
    .end local v26    # "rep":Lcom/android/server/AppOpsService$ChangeRec;
    .end local v27    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    :cond_1fa
    return-void

    .line 887
    .restart local v10    # "cb":Lcom/android/server/AppOpsService$Callback;
    .restart local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .restart local v18    # "ent$iterator":Ljava/util/Iterator;
    .restart local v26    # "rep":Lcom/android/server/AppOpsService$ChangeRec;
    .restart local v27    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    :catch_1fb
    move-exception v15

    .local v15, "e":Landroid/os/RemoteException;
    goto :goto_1f7

    .line 798
    .end local v10    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v11    # "changed":Z
    .end local v15    # "e":Landroid/os/RemoteException;
    .end local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v18    # "ent$iterator":Ljava/util/Iterator;
    .end local v19    # "i":I
    .end local v26    # "rep":Lcom/android/server/AppOpsService$ChangeRec;
    .end local v27    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    :catch_1fd
    move-exception v15

    .restart local v15    # "e":Landroid/os/RemoteException;
    goto/16 :goto_31
.end method

.method public resetCounters()V
    .registers 14

    .prologue
    .line 2907
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "android.permission.UPDATE_APP_OPS_STATS"

    .line 2908
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/4 v12, 0x0

    .line 2907
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2909
    monitor-enter p0

    .line 2910
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    :try_start_13
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_5e

    .line 2911
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$UidState;

    .line 2912
    .local v7, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v8, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ent$iterator":Ljava/util/Iterator;
    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2913
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2914
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;

    .line 2915
    .local v6, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_46
    invoke-virtual {v6}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v8

    if-ge v4, v8, :cond_2d

    .line 2916
    invoke-virtual {v6, v4}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 2917
    .local v0, "curOp":Lcom/android/server/AppOpsService$Op;
    const/4 v8, 0x0

    iput v8, v0, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    .line 2918
    const/4 v8, 0x0

    iput v8, v0, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    .line 2915
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 2910
    .end local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v4    # "j":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 2923
    .end local v2    # "ent$iterator":Ljava/util/Iterator;
    .end local v7    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_5e
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V
    :try_end_61
    .catchall {:try_start_13 .. :try_end_61} :catchall_63

    monitor-exit p0

    .line 2906
    return-void

    .line 2909
    :catchall_63
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .registers 13
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 1039
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1040
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1041
    monitor-enter p0

    .line 1042
    :try_start_7
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 1043
    .local v4, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-nez v4, :cond_1b

    .line 1044
    new-instance v4, Landroid/util/SparseArray;

    .end local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 1045
    .restart local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1047
    :cond_1b
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1048
    if-eqz p4, :cond_48

    .line 1049
    new-instance v3, Lcom/android/server/AppOpsService$Restriction;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/server/AppOpsService$Restriction;-><init>(Lcom/android/server/AppOpsService$Restriction;)V

    .line 1050
    .local v3, "r":Lcom/android/server/AppOpsService$Restriction;
    iput p4, v3, Lcom/android/server/AppOpsService$Restriction;->mode:I

    .line 1051
    if-eqz p5, :cond_45

    .line 1052
    array-length v0, p5

    .line 1053
    .local v0, "N":I
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 1054
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    if-ge v1, v0, :cond_45

    .line 1055
    aget-object v2, p5, v1

    .line 1056
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_42

    .line 1057
    iget-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1054
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 1061
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_45
    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_48
    .catchall {:try_start_7 .. :try_end_48} :catchall_4d

    .end local v3    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_48
    monitor-exit p0

    .line 1064
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(I)V

    .line 1038
    return-void

    .line 1041
    .end local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :catchall_4d
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setMode(IILjava/lang/String;I)V
    .registers 23
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 685
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    if-eq v13, v14, :cond_1e

    .line 686
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "android.permission.UPDATE_APP_OPS_STATS"

    .line 687
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    const/16 v17, 0x0

    .line 686
    invoke-virtual/range {v13 .. v17}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 689
    :cond_1e
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 690
    const/4 v10, 0x0

    .line 691
    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 692
    monitor-enter p0

    .line 693
    const/4 v13, 0x0

    :try_start_28
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v12

    .line 694
    .local v12, "uidState":Lcom/android/server/AppOpsService$UidState;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v7

    .line 695
    .local v7, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v7, :cond_8b

    .line 696
    iget v13, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v0, p4

    if-eq v13, v0, :cond_8b

    .line 697
    move/from16 v0, p4

    iput v0, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 698
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 699
    .local v4, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v4, :cond_c2

    .line 701
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_5c
    .catchall {:try_start_28 .. :try_end_5c} :catchall_ad

    .line 703
    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v11, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :try_start_5c
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 705
    :goto_5f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 706
    .restart local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v4, :cond_c0

    .line 707
    if-nez v11, :cond_be

    .line 708
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_74
    .catchall {:try_start_5c .. :try_end_74} :catchall_bb

    .line 710
    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :goto_74
    :try_start_74
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 712
    :goto_77
    invoke-direct/range {p0 .. p3}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v13

    move/from16 v0, p4

    if-ne v0, v13, :cond_88

    .line 715
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 717
    :cond_88
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_8b
    .catchall {:try_start_74 .. :try_end_8b} :catchall_ad

    .end local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_8b
    monitor-exit p0

    .line 721
    if-eqz v10, :cond_b3

    .line 725
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 727
    .local v8, "identity":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_93
    :try_start_93
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_b4

    move-result v13

    if-ge v6, v13, :cond_b0

    .line 729
    :try_start_99
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$Callback;

    iget-object v13, v13, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v13, v0, v1, v2}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_aa} :catch_b9
    .catchall {:try_start_99 .. :try_end_aa} :catchall_b4

    .line 727
    :goto_aa
    add-int/lit8 v6, v6, 0x1

    goto :goto_93

    .line 692
    .end local v6    # "i":I
    .end local v7    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v8    # "identity":J
    .end local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_ad
    move-exception v13

    :goto_ae
    monitor-exit p0

    throw v13

    .line 734
    .restart local v6    # "i":I
    .restart local v7    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v8    # "identity":J
    .restart local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_b0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 684
    .end local v6    # "i":I
    .end local v8    # "identity":J
    :cond_b3
    return-void

    .line 733
    .restart local v6    # "i":I
    .restart local v8    # "identity":J
    :catchall_b4
    move-exception v13

    .line 734
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 733
    throw v13

    .line 730
    :catch_b9
    move-exception v5

    .local v5, "e":Landroid/os/RemoteException;
    goto :goto_aa

    .line 692
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v6    # "i":I
    .end local v8    # "identity":J
    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_bb
    move-exception v13

    move-object v10, v11

    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_ae

    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_be
    move-object v10, v11

    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_74

    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_c0
    move-object v10, v11

    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_77

    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_c2
    move-object v11, v10

    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_5f
.end method

.method public setPrivacyGuardSettingForPackage(ILjava/lang/String;Z)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "state"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2898
    sget-object v5, Landroid/app/AppOpsManager;->PRIVACY_GUARD_OP_STATES:[I

    array-length v6, v5

    move v4, v3

    :goto_5
    if-ge v4, v6, :cond_19

    aget v0, v5, v4

    .line 2899
    .local v0, "op":I
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    .line 2900
    .local v1, "switchOp":I
    if-eqz p3, :cond_17

    .line 2901
    const/4 v2, 0x4

    .line 2900
    :goto_10
    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2898
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_5

    :cond_17
    move v2, v3

    .line 2901
    goto :goto_10

    .line 2897
    .end local v0    # "op":I
    .end local v1    # "switchOp":I
    :cond_19
    return-void
.end method

.method public setUidMode(III)V
    .registers 31
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .prologue
    .line 573
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_24

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "android.permission.UPDATE_APP_OPS_STATS"

    .line 575
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v24

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v25

    const/16 v26, 0x0

    .line 574
    invoke-virtual/range {v22 .. v26}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 577
    :cond_24
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 578
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 580
    monitor-enter p0

    .line 582
    :try_start_2c
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->isStrictOp(I)Z

    move-result v22

    .line 581
    move/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/app/AppOpsManager;->opToDefaultMode(IZ)I

    move-result v10

    .line 584
    .local v10, "defaultMode":I
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    :try_end_43
    .catchall {:try_start_2c .. :try_end_43} :catchall_e8

    move-result-object v21

    .line 585
    .local v21, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v21, :cond_be

    .line 586
    move/from16 v0, p3

    if-ne v0, v10, :cond_4c

    monitor-exit p0

    .line 587
    return-void

    .line 589
    :cond_4c
    :try_start_4c
    new-instance v21, Lcom/android/server/AppOpsService$UidState;

    .end local v21    # "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    .line 590
    .restart local v21    # "uidState":Lcom/android/server/AppOpsService$UidState;
    new-instance v22, Landroid/util/SparseIntArray;

    invoke-direct/range {v22 .. v22}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 591
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 593
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V
    :try_end_81
    .catchall {:try_start_4c .. :try_end_81} :catchall_e8

    :cond_81
    :goto_81
    monitor-exit p0

    .line 616
    invoke-static/range {p2 .. p2}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v20

    .line 617
    .local v20, "uidPackageNames":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 619
    .local v6, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    monitor-enter p0

    .line 620
    :try_start_88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 621
    .local v8, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v8, :cond_13c

    .line 622
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    :try_end_9d
    .catchall {:try_start_88 .. :try_end_9d} :catchall_193

    move-result v5

    .line 623
    .local v5, "callbackCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    move-object v7, v6

    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v7, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_a0
    if-ge v12, v5, :cond_13b

    .line 624
    :try_start_a2
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Callback;

    .line 625
    .local v4, "callback":Lcom/android/server/AppOpsService$Callback;
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 626
    .local v9, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, v20

    invoke-static {v9, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 627
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V
    :try_end_b7
    .catchall {:try_start_a2 .. :try_end_b7} :catchall_200

    .line 628
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v6, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :try_start_b7
    invoke-virtual {v6, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_193

    .line 623
    add-int/lit8 v12, v12, 0x1

    move-object v7, v6

    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_a0

    .line 594
    .end local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v5    # "callbackCount":I
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "i":I
    .end local v20    # "uidPackageNames":[Ljava/lang/String;
    :cond_be
    :try_start_be
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    if-nez v22, :cond_eb

    .line 595
    move/from16 v0, p3

    if-eq v0, v10, :cond_81

    .line 596
    new-instance v22, Landroid/util/SparseIntArray;

    invoke-direct/range {v22 .. v22}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 597
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 598
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V
    :try_end_e7
    .catchall {:try_start_be .. :try_end_e7} :catchall_e8

    goto :goto_81

    .line 580
    .end local v10    # "defaultMode":I
    .end local v21    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_e8
    move-exception v22

    monitor-exit p0

    throw v22

    .line 601
    .restart local v10    # "defaultMode":I
    .restart local v21    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_eb
    :try_start_eb
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_f8
    .catchall {:try_start_eb .. :try_end_f8} :catchall_e8

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p3

    if-ne v0, v1, :cond_101

    monitor-exit p0

    .line 602
    return-void

    .line 604
    :cond_101
    move/from16 v0, p3

    if-ne v0, v10, :cond_12b

    .line 605
    :try_start_105
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 606
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseIntArray;->size()I

    move-result v22

    if-gtz v22, :cond_126

    .line 607
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 612
    :cond_126
    :goto_126
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto/16 :goto_81

    .line 610
    :cond_12b
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_13a
    .catchall {:try_start_105 .. :try_end_13a} :catchall_e8

    goto :goto_126

    .restart local v5    # "callbackCount":I
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v12    # "i":I
    .restart local v20    # "uidPackageNames":[Ljava/lang/String;
    :cond_13b
    move-object v6, v7

    .line 632
    .end local v5    # "callbackCount":I
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v12    # "i":I
    :cond_13c
    const/16 v22, 0x0

    :try_start_13e
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0
    :try_end_143
    .catchall {:try_start_13e .. :try_end_143} :catchall_193

    move-object v7, v6

    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_144
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_18f

    :try_start_14a
    aget-object v19, v20, v22

    .line 633
    .local v19, "uidPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v8, Ljava/util/ArrayList;

    .line 634
    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v8, :cond_18a

    .line 635
    if-nez v7, :cond_203

    .line 636
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V
    :try_end_165
    .catchall {:try_start_14a .. :try_end_165} :catchall_200

    .line 638
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_165
    :try_start_165
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 639
    .restart local v5    # "callbackCount":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_16a
    if-ge v12, v5, :cond_18b

    .line 640
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Callback;

    .line 641
    .restart local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 642
    .restart local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v9, :cond_182

    .line 643
    new-instance v9, Landroid/util/ArraySet;

    .end local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 644
    .restart local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v6, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    :cond_182
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_187
    .catchall {:try_start_165 .. :try_end_187} :catchall_193

    .line 639
    add-int/lit8 v12, v12, 0x1

    goto :goto_16a

    .end local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v5    # "callbackCount":I
    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "i":I
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_18a
    move-object v6, v7

    .line 632
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_18b
    add-int/lit8 v22, v22, 0x1

    move-object v7, v6

    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_144

    .end local v19    # "uidPackageName":Ljava/lang/String;
    :cond_18f
    monitor-exit p0

    .line 652
    if-nez v7, :cond_196

    .line 653
    return-void

    .line 619
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_193
    move-exception v22

    :goto_194
    monitor-exit p0

    throw v22

    .line 659
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_196
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 661
    .local v14, "identity":J
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_19b
    :try_start_19b
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_1fc

    .line 662
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Callback;

    .line 663
    .restart local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/ArraySet;
    :try_end_1af
    .catchall {:try_start_19b .. :try_end_1af} :catchall_1f7

    .line 665
    .local v18, "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v18, :cond_1c5

    .line 666
    :try_start_1b1
    iget-object v0, v4, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V

    .line 661
    :cond_1c2
    :goto_1c2
    add-int/lit8 v12, v12, 0x1

    goto :goto_19b

    .line 668
    :cond_1c5
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArraySet;->size()I

    move-result v16

    .line 669
    .local v16, "reportedPackageCount":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1ca
    move/from16 v0, v16

    if-ge v13, v0, :cond_1c2

    .line 670
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 671
    .local v17, "reportedPackageName":Ljava/lang/String;
    iget-object v0, v4, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_1e5
    .catch Landroid/os/RemoteException; {:try_start_1b1 .. :try_end_1e5} :catch_1e8
    .catchall {:try_start_1b1 .. :try_end_1e5} :catchall_1f7

    .line 669
    add-int/lit8 v13, v13, 0x1

    goto :goto_1ca

    .line 674
    .end local v13    # "j":I
    .end local v16    # "reportedPackageCount":I
    .end local v17    # "reportedPackageName":Ljava/lang/String;
    :catch_1e8
    move-exception v11

    .line 675
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_1e9
    const-string/jumbo v22, "AppOps"

    const-string/jumbo v23, "Error dispatching op op change"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f6
    .catchall {:try_start_1e9 .. :try_end_1f6} :catchall_1f7

    goto :goto_1c2

    .line 678
    .end local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v18    # "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_1f7
    move-exception v22

    .line 679
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 678
    throw v22

    .line 679
    :cond_1fc
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 572
    return-void

    .line 619
    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v12    # "i":I
    .end local v14    # "identity":J
    :catchall_200
    move-exception v22

    move-object v6, v7

    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_194

    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v19    # "uidPackageName":Ljava/lang/String;
    :cond_203
    move-object v6, v7

    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto/16 :goto_165
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .registers 11
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 2438
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_1b

    .line 2439
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    .line 2440
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 2439
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2442
    :cond_1b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_40

    .line 2443
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_40

    .line 2445
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_40

    .line 2447
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2451
    :cond_40
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 2452
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2453
    invoke-direct/range {p0 .. p5}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 2437
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 2423
    const-string/jumbo v0, "setUserRestrictions"

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 2424
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2425
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2426
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    const/16 v0, 0x46

    if-ge v1, v0, :cond_26

    .line 2427
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v6

    .line 2428
    .local v6, "restriction":Ljava/lang/String;
    if-eqz v6, :cond_23

    .line 2429
    const/4 v0, 0x0

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 2426
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2422
    .end local v6    # "restriction":Ljava/lang/String;
    :cond_26
    return-void
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 453
    const-string/jumbo v1, "AppOps"

    const-string/jumbo v2, "Writing app ops before shutdown..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, "doWrite":Z
    monitor-enter p0

    .line 456
    :try_start_b
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_13

    .line 457
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1a

    .line 458
    const/4 v0, 0x1

    :cond_13
    monitor-exit p0

    .line 461
    if-eqz v0, :cond_19

    .line 462
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->writeState()V

    .line 452
    :cond_19
    return-void

    .line 455
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    .registers 23
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1235
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1236
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1237
    invoke-static/range {p3 .. p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1238
    .local v9, "resolvedPackageName":Ljava/lang/String;
    if-nez v9, :cond_16

    .line 1239
    const/4 v15, 0x1

    return v15

    :cond_16
    move-object/from16 v4, p1

    .line 1241
    check-cast v4, Lcom/android/server/AppOpsService$ClientState;

    .line 1242
    .local v4, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    .line 1243
    const/4 v15, 0x1

    :try_start_1c
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v9, v15}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_147

    move-result-object v7

    .line 1244
    .local v7, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v7, :cond_29

    .line 1247
    const/4 v15, 0x2

    monitor-exit p0

    return v15

    .line 1249
    :cond_29
    const/4 v15, 0x1

    :try_start_2a
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v7, v1, v15}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v6

    .line 1250
    .local v6, "op":Lcom/android/server/AppOpsService$Op;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v9}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_47

    .line 1251
    iget v15, v6, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v6, Lcom/android/server/AppOpsService$Op;->ignoredCount:I
    :try_end_44
    .catchall {:try_start_2a .. :try_end_44} :catchall_147

    .line 1252
    const/4 v15, 0x1

    monitor-exit p0

    return v15

    .line 1254
    :cond_47
    :try_start_47
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v11

    .line 1255
    .local v11, "switchCode":I
    iget-object v14, v7, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 1256
    .local v14, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v15, v14, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v15, :cond_63

    .line 1257
    iget-object v15, v14, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    .line 1258
    .local v13, "uidMode":I
    if-eqz v13, :cond_63

    .line 1262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J
    :try_end_61
    .catchall {:try_start_47 .. :try_end_61} :catchall_147

    monitor-exit p0

    .line 1263
    return v13

    .line 1266
    .end local v13    # "uidMode":I
    :cond_63
    move/from16 v0, p2

    if-eq v11, v0, :cond_8c

    const/4 v15, 0x1

    :try_start_68
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11, v15}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v12

    .line 1267
    .local v12, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_6e
    iget v15, v12, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v15, :cond_8e

    .line 1268
    iget v15, v12, Lcom/android/server/AppOpsService$Op;->mode:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v15, v0, :cond_8e

    .line 1273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1274
    iget v15, v6, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v6, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    .line 1275
    iget v15, v12, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_8a
    .catchall {:try_start_68 .. :try_end_8a} :catchall_147

    monitor-exit p0

    return v15

    .line 1266
    .end local v12    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_8c
    move-object v12, v6

    .restart local v12    # "switchOp":Lcom/android/server/AppOpsService$Op;
    goto :goto_6e

    .line 1276
    :cond_8e
    :try_start_8e
    iget v15, v12, Lcom/android/server/AppOpsService$Op;->mode:I

    if-nez v15, :cond_c6

    .line 1280
    iget v15, v6, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v15, :cond_ad

    .line 1281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v6, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1282
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1283
    const/4 v15, -0x1

    iput v15, v6, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1284
    iget v15, v6, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v6, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    .line 1286
    :cond_ad
    iget v15, v6, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v6, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1287
    iget-object v15, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v15, :cond_bc

    .line 1288
    iget-object v15, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    :cond_bc
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->broadcastOpIfNeeded(I)V
    :try_end_c3
    .catchall {:try_start_8e .. :try_end_c3} :catchall_147

    .line 1291
    const/4 v15, 0x0

    monitor-exit p0

    return v15

    .line 1293
    :cond_c6
    :try_start_c6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mLooper:Landroid/os/Looper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_de

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v15}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_123

    .line 1294
    :cond_de
    const-string/jumbo v15, "AppOps"

    .line 1295
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "startOperation: This method will deadlock if called from the main thread. (Code: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1297
    const-string/jumbo v17, " uid: "

    .line 1295
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1299
    const-string/jumbo v17, " package: "

    .line 1295
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1300
    const-string/jumbo v17, ")"

    .line 1295
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1294
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iget v15, v12, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_121
    .catchall {:try_start_c6 .. :try_end_121} :catchall_147

    monitor-exit p0

    return v15

    .line 1303
    :cond_123
    :try_start_123
    iget v15, v6, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v6, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    .line 1304
    iget-object v5, v4, Lcom/android/server/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    .line 1305
    .local v5, "clientToken":Landroid/os/IBinder;
    iget-object v15, v6, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v9, v12}, Lcom/android/server/AppOpsService;->askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    :try_end_139
    .catchall {:try_start_123 .. :try_end_139} :catchall_147

    move-result-object v8

    .local v8, "req":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    monitor-exit p0

    .line 1309
    invoke-virtual {v8}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->get()I

    move-result v10

    .line 1310
    .local v10, "result":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->broadcastOpIfNeeded(I)V

    .line 1311
    return v10

    .line 1242
    .end local v5    # "clientToken":Landroid/os/IBinder;
    .end local v6    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "req":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    .end local v10    # "result":I
    .end local v11    # "switchCode":I
    .end local v12    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .end local v14    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_147
    move-exception v15

    monitor-exit p0

    throw v15
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 9
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    const/4 v4, -0x1

    .line 896
    if-nez p3, :cond_4

    .line 897
    return-void

    .line 899
    :cond_4
    monitor-enter p0

    .line 900
    if-eq p1, v4, :cond_b

    :try_start_7
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 901
    :cond_b
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 902
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-nez v0, :cond_27

    .line 903
    new-instance v0, Lcom/android/server/AppOpsService$Callback;

    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-direct {v0, p0, p3}, Lcom/android/server/AppOpsService$Callback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 904
    .restart local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    :cond_27
    if-eq p1, v4, :cond_40

    .line 907
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 908
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_3d

    .line 909
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 910
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 912
    :cond_3d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_40
    if-eqz p2, :cond_59

    .line 915
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 916
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_56

    .line 917
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 918
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    :cond_56
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catchall {:try_start_7 .. :try_end_59} :catchall_5b

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_59
    monitor-exit p0

    .line 895
    return-void

    .line 899
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_5b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 7
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    .line 927
    if-nez p1, :cond_3

    .line 928
    return-void

    .line 930
    :cond_3
    monitor-enter p0

    .line 931
    :try_start_4
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 932
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-eqz v0, :cond_5b

    .line 933
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Callback;->unlinkToDeath()V

    .line 934
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1d
    if-ltz v2, :cond_38

    .line 935
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 936
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 937
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_35

    .line 938
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 934
    :cond_35
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 941
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_38
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_40
    if-ltz v2, :cond_5b

    .line 942
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 943
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 944
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_58

    .line 945
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_58
    .catchall {:try_start_4 .. :try_end_58} :catchall_5d

    .line 941
    :cond_58
    add-int/lit8 v2, v2, -0x1

    goto :goto_40

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v2    # "i":I
    :cond_5b
    monitor-exit p0

    .line 926
    return-void

    .line 930
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_5d
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public systemReady()V
    .registers 18

    .prologue
    .line 299
    monitor-enter p0

    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, "changed":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    add-int/lit8 v4, v13, -0x1

    .local v4, "i":I
    :goto_c
    if-ltz v4, :cond_d0

    .line 302
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppOpsService$UidState;

    .line 304
    .local v12, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget v13, v12, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v13}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 305
    .local v9, "packageNames":[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_32

    .line 306
    invoke-virtual {v12}, Lcom/android/server/AppOpsService$UidState;->clear()V

    .line 307
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13, v4}, Landroid/util/SparseArray;->removeAt(I)V

    .line 308
    const/4 v1, 0x1

    .line 301
    :cond_2f
    :goto_2f
    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    .line 312
    :cond_32
    iget-object v11, v12, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 313
    .local v11, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v11, :cond_2f

    .line 317
    invoke-virtual {v11}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 318
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    :cond_3e
    :goto_3e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_be

    .line 319
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Ops;
    :try_end_4a
    .catchall {:try_start_2 .. :try_end_4a} :catchall_cd

    .line 320
    .local v8, "ops":Lcom/android/server/AppOpsService$Ops;
    const/4 v2, -0x1

    .line 322
    .local v2, "curUid":I
    :try_start_4b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    iget-object v14, v8, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 324
    iget-object v15, v8, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v15, v15, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 323
    const/16 v16, 0x2000

    .line 322
    move/from16 v0, v16

    invoke-interface {v13, v14, v0, v15}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_60} :catch_110
    .catchall {:try_start_4b .. :try_end_60} :catchall_cd

    move-result v2

    .line 327
    :goto_61
    :try_start_61
    iget-object v13, v8, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v13, v13, Lcom/android/server/AppOpsService$UidState;->uid:I

    if-eq v2, v13, :cond_3e

    .line 332
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    iget-object v14, v8, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v14, v14, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v10

    .line 333
    .local v10, "pkgName":Ljava/lang/String;
    const/4 v13, -0x1

    if-ne v2, v13, :cond_7c

    if-nez v10, :cond_b5

    .line 334
    :cond_7c
    const-string/jumbo v13, "AppOps"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Pruning old package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 335
    const-string/jumbo v15, "/"

    .line 334
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 335
    iget-object v15, v8, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 334
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 335
    const-string/jumbo v15, ": new uid="

    .line 334
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 337
    const/4 v1, 0x1

    goto :goto_3e

    .line 333
    :cond_b5
    iget-object v13, v8, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7c

    goto :goto_3e

    .line 342
    .end local v2    # "curUid":I
    .end local v8    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_be
    invoke-virtual {v12}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v13

    if-eqz v13, :cond_2f

    .line 343
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13, v4}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_cb
    .catchall {:try_start_61 .. :try_end_cb} :catchall_cd

    goto/16 :goto_2f

    .line 299
    .end local v4    # "i":I
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .end local v9    # "packageNames":[Ljava/lang/String;
    .end local v11    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_cd
    move-exception v13

    monitor-exit p0

    throw v13

    .line 346
    .restart local v4    # "i":I
    :cond_d0
    if-eqz v1, :cond_d5

    .line 347
    :try_start_d2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_cd

    :cond_d5
    monitor-exit p0

    .line 352
    const-class v13, Landroid/os/storage/MountServiceInternal;

    .line 351
    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/MountServiceInternal;

    .line 354
    .local v7, "mountServiceInternal":Landroid/os/storage/MountServiceInternal;
    new-instance v13, Lcom/android/server/AppOpsService$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/AppOpsService$4;-><init>(Lcom/android/server/AppOpsService;)V

    .line 353
    invoke-virtual {v7, v13}, Landroid/os/storage/MountServiceInternal;->addExternalStoragePolicy(Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "power"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AppOpsService;->mPowerManager:Landroid/os/PowerManager;

    .line 380
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 381
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v13, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v13, v14, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 298
    return-void

    .line 325
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "mountServiceInternal":Landroid/os/storage/MountServiceInternal;
    .restart local v2    # "curUid":I
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v8    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v9    # "packageNames":[Ljava/lang/String;
    .restart local v11    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catch_110
    move-exception v5

    .local v5, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_61
.end method

.method public uidRemoved(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 444
    monitor-enter p0

    .line 445
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_11

    .line 446
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 447
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    .line 443
    return-void

    .line 444
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method writeState()V
    .registers 35

    .prologue
    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v30, v0

    monitor-enter v30

    .line 1763
    const/16 v29, 0x0

    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_391

    move-result-object v4

    .line 1767
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_109
    .catchall {:try_start_11 .. :try_end_1a} :catchall_391

    move-result-object v23

    .line 1774
    .local v23, "stream":Ljava/io/FileOutputStream;
    :try_start_1b
    new-instance v19, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1775
    .local v19, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v29, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v29 .. v29}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1776
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1777
    const-string/jumbo v29, "app-ops"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    move-result v28

    .line 1780
    .local v28, "uidStateCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_59
    move/from16 v0, v28

    if-ge v9, v0, :cond_13e

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/AppOpsService$UidState;

    .line 1782
    .local v27, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v29, v0

    if-eqz v29, :cond_13a

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseIntArray;->size()I

    move-result v29

    if-lez v29, :cond_13a

    .line 1783
    const-string/jumbo v29, "uid"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1784
    const-string/jumbo v29, "n"

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1785
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v26, v0

    .line 1786
    .local v26, "uidOpModes":Landroid/util/SparseIntArray;
    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseIntArray;->size()I

    move-result v16

    .line 1787
    .local v16, "opCount":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_b2
    move/from16 v0, v16

    if-ge v11, v0, :cond_12c

    .line 1788
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    .line 1789
    .local v14, "op":I
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    .line 1790
    .local v13, "mode":I
    const-string/jumbo v29, "op"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1791
    const-string/jumbo v29, "n"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1792
    const-string/jumbo v29, "m"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1793
    const-string/jumbo v29, "op"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_106} :catch_35e
    .catchall {:try_start_1b .. :try_end_106} :catchall_391

    .line 1787
    add-int/lit8 v11, v11, 0x1

    goto :goto_b2

    .line 1768
    .end local v9    # "i":I
    .end local v11    # "j":I
    .end local v13    # "mode":I
    .end local v14    # "op":I
    .end local v16    # "opCount":I
    .end local v19    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v23    # "stream":Ljava/io/FileOutputStream;
    .end local v26    # "uidOpModes":Landroid/util/SparseIntArray;
    .end local v27    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v28    # "uidStateCount":I
    :catch_109
    move-exception v8

    .line 1769
    .local v8, "e":Ljava/io/IOException;
    :try_start_10a
    const-string/jumbo v29, "AppOps"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Failed to write state: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12a
    .catchall {:try_start_10a .. :try_end_12a} :catchall_391

    monitor-exit v30

    .line 1770
    return-void

    .line 1795
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v9    # "i":I
    .restart local v11    # "j":I
    .restart local v16    # "opCount":I
    .restart local v19    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v23    # "stream":Ljava/io/FileOutputStream;
    .restart local v26    # "uidOpModes":Landroid/util/SparseIntArray;
    .restart local v27    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v28    # "uidStateCount":I
    :cond_12c
    :try_start_12c
    const-string/jumbo v29, "uid"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1780
    .end local v11    # "j":I
    .end local v16    # "opCount":I
    .end local v26    # "uidOpModes":Landroid/util/SparseIntArray;
    :cond_13a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_59

    .line 1799
    .end local v27    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_13e
    if-eqz v4, :cond_3b6

    .line 1800
    const/4 v12, 0x0

    .line 1801
    .local v12, "lastPkg":Ljava/lang/String;
    const/4 v9, 0x0

    .end local v12    # "lastPkg":Ljava/lang/String;
    :goto_142
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_3a6

    .line 1802
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/AppOpsManager$PackageOps;

    .line 1803
    .local v20, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual/range {v20 .. v20}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_18c

    .line 1804
    if-eqz v12, :cond_16c

    .line 1805
    const-string/jumbo v29, "pkg"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1807
    :cond_16c
    invoke-virtual/range {v20 .. v20}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1808
    .local v12, "lastPkg":Ljava/lang/String;
    const-string/jumbo v29, "pkg"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1809
    const-string/jumbo v29, "n"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1811
    .end local v12    # "lastPkg":Ljava/lang/String;
    :cond_18c
    const-string/jumbo v29, "uid"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1812
    const-string/jumbo v29, "n"

    invoke-virtual/range {v20 .. v20}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1813
    monitor-enter p0
    :try_end_1b3
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_1b3} :catch_35e
    .catchall {:try_start_12c .. :try_end_1b3} :catchall_391

    .line 1814
    :try_start_1b3
    invoke-virtual/range {v20 .. v20}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v29

    invoke-virtual/range {v20 .. v20}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v17

    .line 1817
    .local v17, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v17, :cond_343

    .line 1818
    const-string/jumbo v29, "p"

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1e5
    .catchall {:try_start_1b3 .. :try_end_1e5} :catchall_35b

    :goto_1e5
    :try_start_1e5
    monitor-exit p0

    .line 1823
    invoke-virtual/range {v20 .. v20}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v18

    .line 1824
    .local v18, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_1eb
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v11, v0, :cond_394

    .line 1825
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AppOpsManager$OpEntry;

    .line 1826
    .local v15, "op":Landroid/app/AppOpsManager$OpEntry;
    const-string/jumbo v29, "op"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1827
    const-string/jumbo v29, "n"

    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1828
    const-string/jumbo v29, "ns"

    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v31

    invoke-static/range {v31 .. v31}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1829
    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v29

    .line 1830
    invoke-virtual/range {v20 .. v20}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v31

    invoke-virtual/range {v20 .. v20}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v32

    .line 1829
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v6

    .line 1831
    .local v6, "defaultMode":I
    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v29

    move/from16 v0, v29

    if-eq v0, v6, :cond_37b

    .line 1832
    const-string/jumbo v29, "m"

    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1836
    :goto_271
    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v24

    .line 1837
    .local v24, "time":J
    const-wide/16 v32, 0x0

    cmp-long v29, v24, v32

    if-eqz v29, :cond_28f

    .line 1838
    const-string/jumbo v29, "t"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1840
    :cond_28f
    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v24

    .line 1841
    const-wide/16 v32, 0x0

    cmp-long v29, v24, v32

    if-eqz v29, :cond_2ad

    .line 1842
    const-string/jumbo v29, "r"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1844
    :cond_2ad
    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v7

    .line 1845
    .local v7, "dur":I
    if-eqz v7, :cond_2c7

    .line 1846
    const-string/jumbo v29, "d"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1848
    :cond_2c7
    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid()I

    move-result v22

    .line 1849
    .local v22, "proxyUid":I
    const/16 v29, -0x1

    move/from16 v0, v22

    move/from16 v1, v29

    if-eq v0, v1, :cond_2e7

    .line 1850
    const-string/jumbo v29, "pu"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1852
    :cond_2e7
    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName()Ljava/lang/String;

    move-result-object v21

    .line 1853
    .local v21, "proxyPackageName":Ljava/lang/String;
    if-eqz v21, :cond_2fd

    .line 1854
    const-string/jumbo v29, "pp"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1856
    :cond_2fd
    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getAllowedCount()I

    move-result v5

    .line 1857
    .local v5, "allowed":I
    if-eqz v5, :cond_317

    .line 1858
    const-string/jumbo v29, "ac"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1860
    :cond_317
    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getIgnoredCount()I

    move-result v10

    .line 1861
    .local v10, "ignored":I
    if-eqz v10, :cond_331

    .line 1862
    const-string/jumbo v29, "ic"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1864
    :cond_331
    const-string/jumbo v29, "op"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_33f
    .catch Ljava/io/IOException; {:try_start_1e5 .. :try_end_33f} :catch_35e
    .catchall {:try_start_1e5 .. :try_end_33f} :catchall_391

    .line 1824
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1eb

    .line 1820
    .end local v5    # "allowed":I
    .end local v6    # "defaultMode":I
    .end local v7    # "dur":I
    .end local v10    # "ignored":I
    .end local v11    # "j":I
    .end local v15    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v18    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v21    # "proxyPackageName":Ljava/lang/String;
    .end local v22    # "proxyUid":I
    .end local v24    # "time":J
    :cond_343
    :try_start_343
    const-string/jumbo v29, "p"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_359
    .catchall {:try_start_343 .. :try_end_359} :catchall_35b

    goto/16 :goto_1e5

    .line 1813
    .end local v17    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_35b
    move-exception v29

    :try_start_35c
    monitor-exit p0

    throw v29
    :try_end_35e
    .catch Ljava/io/IOException; {:try_start_35c .. :try_end_35e} :catch_35e
    .catchall {:try_start_35c .. :try_end_35e} :catchall_391

    .line 1876
    .end local v9    # "i":I
    .end local v19    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v20    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v28    # "uidStateCount":I
    :catch_35e
    move-exception v8

    .line 1877
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_35f
    const-string/jumbo v29, "AppOps"

    const-string/jumbo v31, "Failed to write state, restoring backup."

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_379
    .catchall {:try_start_35f .. :try_end_379} :catchall_391

    .end local v8    # "e":Ljava/io/IOException;
    :goto_379
    monitor-exit v30

    .line 1761
    return-void

    .line 1834
    .restart local v6    # "defaultMode":I
    .restart local v9    # "i":I
    .restart local v11    # "j":I
    .restart local v15    # "op":Landroid/app/AppOpsManager$OpEntry;
    .restart local v17    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v18    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v19    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v20    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v28    # "uidStateCount":I
    :cond_37b
    :try_start_37b
    const-string/jumbo v29, "dm"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_38f
    .catch Ljava/io/IOException; {:try_start_37b .. :try_end_38f} :catch_35e
    .catchall {:try_start_37b .. :try_end_38f} :catchall_391

    goto/16 :goto_271

    .line 1762
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "defaultMode":I
    .end local v9    # "i":I
    .end local v11    # "j":I
    .end local v15    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v17    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v18    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v19    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v20    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v23    # "stream":Ljava/io/FileOutputStream;
    .end local v28    # "uidStateCount":I
    :catchall_391
    move-exception v29

    monitor-exit v30

    throw v29

    .line 1866
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v9    # "i":I
    .restart local v11    # "j":I
    .restart local v17    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v18    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v19    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v20    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v23    # "stream":Ljava/io/FileOutputStream;
    .restart local v28    # "uidStateCount":I
    :cond_394
    :try_start_394
    const-string/jumbo v29, "uid"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1801
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_142

    .line 1868
    .end local v11    # "j":I
    .end local v17    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v18    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v20    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_3a6
    if-eqz v12, :cond_3b6

    .line 1869
    const-string/jumbo v29, "pkg"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1873
    :cond_3b6
    const-string/jumbo v29, "app-ops"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1874
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3d4
    .catch Ljava/io/IOException; {:try_start_394 .. :try_end_3d4} :catch_35e
    .catchall {:try_start_394 .. :try_end_3d4} :catchall_391

    goto :goto_379
.end method

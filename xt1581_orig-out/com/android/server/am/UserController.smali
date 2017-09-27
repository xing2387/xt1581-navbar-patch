.class final Lcom/android/server/am/UserController;
.super Ljava/lang/Object;
.source "UserController.java"


# static fields
.field static final MAX_RUNNING_USERS:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field static final USER_SWITCH_TIMEOUT:I = 0x7d0


# instance fields
.field mCurUserSwitchCallback:Ljava/lang/Object;

.field private mCurrentProfileIds:[I

.field private mCurrentUserId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartedUserArray:[I

.field private final mStartedUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetUserId:I

.field private final mUserLru:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mUserManager:Lcom/android/server/pm/UserManagerService;

.field private mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private final mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

.field private final mUserSwitchObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IUserSwitchObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/am/UserController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/UserController;)Lcom/android/server/am/ActivityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/UserController;)Lcom/android/server/pm/UserManagerService;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V
    .registers 2
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 107
    const-string/jumbo v0, "ActivityManager"

    sput-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    .line 106
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 122
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 128
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 138
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 142
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 147
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 153
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 152
    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 167
    iput-object p1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 168
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iput-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 170
    new-instance v0, Lcom/android/server/am/UserState;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-direct {v0, v1}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 171
    .local v0, "uss":Lcom/android/server/am/UserState;
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 174
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 166
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;)V
    .registers 3
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    .line 223
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V
    .registers 26
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "resultTo"    # Landroid/content/IIntentReceiver;

    .prologue
    .line 228
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 229
    .local v18, "userId":I
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Finishing user boot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_2a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_13c

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_40

    monitor-exit v22

    .line 230
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 232
    return-void

    .line 238
    :cond_40
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_42
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 239
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v0, v2

    move/from16 v21, v0

    .line 242
    .local v21, "uptimeSeconds":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "framework_locked_boot_completed"

    move/from16 v0, v21

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 245
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 246
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    const/high16 v2, 0x9000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 250
    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/4 v4, 0x0

    aput-object v3, v11, v4

    .line 251
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 249
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 251
    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    move-object/from16 v7, p2

    .line 249
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 256
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v21    # "uptimeSeconds":I
    :cond_a5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 257
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v19

    .line 258
    .local v19, "parent":Landroid/content/pm/UserInfo;
    if-eqz v19, :cond_107

    .line 259
    move-object/from16 v0, v19

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/UserController;->isUserRunningLocked(II)Z

    move-result v2

    .line 258
    if-eqz v2, :cond_107

    .line 260
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (parent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 261
    const-string/jumbo v4, "): attempting unlock because parent is unlocked"

    .line 260
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z
    :try_end_102
    .catchall {:try_start_42 .. :try_end_102} :catchall_13c

    .end local v19    # "parent":Landroid/content/pm/UserInfo;
    :goto_102
    monitor-exit v22

    .line 230
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 227
    return-void

    .line 264
    .restart local v19    # "parent":Landroid/content/pm/UserInfo;
    :cond_107
    if-nez v19, :cond_142

    :try_start_109
    const-string/jumbo v20, "<null>"

    .line 265
    .local v20, "parentId":Ljava/lang/String;
    :goto_10c
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (parent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 266
    const-string/jumbo v4, "): delaying unlock because parent is locked"

    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13b
    .catchall {:try_start_109 .. :try_end_13b} :catchall_13c

    goto :goto_102

    .line 230
    .end local v19    # "parent":Landroid/content/pm/UserInfo;
    .end local v20    # "parentId":Ljava/lang/String;
    :catchall_13c
    move-exception v2

    monitor-exit v22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 264
    .restart local v19    # "parent":Landroid/content/pm/UserInfo;
    :cond_142
    :try_start_142
    move-object/from16 v0, v19

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "parentId":Ljava/lang/String;
    goto :goto_10c

    .line 269
    .end local v19    # "parent":Landroid/content/pm/UserInfo;
    .end local v20    # "parentId":Ljava/lang/String;
    :cond_14b
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z
    :try_end_152
    .catchall {:try_start_142 .. :try_end_152} :catchall_13c

    goto :goto_102
.end method

.method private finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    .registers 41
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 366
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 367
    .local v18, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    monitor-enter v38

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_128

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_2b

    monitor-exit v38

    .line 367
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 369
    return-void

    .line 370
    :cond_2b
    :try_start_2b
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_128

    move-result-object v37

    .line 371
    .local v37, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v37, :cond_3a

    monitor-exit v38

    .line 367
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 372
    return-void

    .line 376
    :cond_3a
    :try_start_3a
    invoke-static/range {v18 .. v18}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_128

    move-result v2

    if-nez v2, :cond_45

    monitor-exit v38

    .line 367
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 376
    return-void

    .line 379
    :cond_45
    :try_start_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->onUserLoggedIn(I)V

    .line 381
    invoke-virtual/range {v37 .. v37}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_9d

    .line 382
    if-eqz v18, :cond_9d

    .line 383
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Initializing user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_INITIALIZE"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 387
    new-instance v7, Lcom/android/server/am/UserController$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v7, v0, v1}, Lcom/android/server/am/UserController$2;-><init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V

    .line 396
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 386
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 395
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 396
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    .line 386
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 400
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_9d
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending BOOT_COMPLETE user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v0, v2

    move/from16 v36, v0

    .line 402
    .local v36, "uptimeSeconds":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "framework_boot_completed"

    move/from16 v0, v36

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 403
    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 404
    .local v22, "bootIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    const/high16 v2, 0x9000000

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    new-instance v24, Lcom/android/server/am/UserController$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/UserController$3;-><init>(Lcom/android/server/am/UserController;)V

    .line 417
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v28, v0

    const-string/jumbo v2, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/4 v3, 0x0

    aput-object v2, v28, v3

    .line 418
    sget v33, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 407
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    .line 416
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 418
    const/16 v29, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v34, 0x3e8

    move/from16 v35, v18

    .line 407
    invoke-virtual/range {v19 .. v35}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_123
    .catchall {:try_start_45 .. :try_end_123} :catchall_128

    monitor-exit v38

    .line 367
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 365
    return-void

    .line 367
    .end local v22    # "bootIntent":Landroid/content/Intent;
    .end local v36    # "uptimeSeconds":I
    .end local v37    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_128
    move-exception v2

    monitor-exit v38

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private finishUserUnlocking(Lcom/android/server/am/UserState;)V
    .registers 7
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 279
    iget-object v1, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 280
    .local v0, "userId":I
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 282
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_6e

    move-result-object v1

    if-eq v1, p1, :cond_1f

    monitor-exit v2

    .line 280
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 282
    return-void

    .line 285
    :cond_1f
    :try_start_1f
    invoke-static {v0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_6e

    move-result v1

    if-nez v1, :cond_2a

    monitor-exit v2

    .line 280
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 285
    return-void

    .line 287
    :cond_2a
    const/4 v1, 0x1

    const/4 v3, 0x2

    :try_start_2c
    invoke-virtual {p1, v1, v3}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 288
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v1

    iget v3, p1, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v1, v0, v3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 289
    iget-object v1, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v1}, Lcom/android/internal/util/ProgressReporter;->start()V

    .line 292
    iget-object v1, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    .line 293
    iget-object v3, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10403aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 292
    const/4 v4, 0x5

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(ILjava/lang/CharSequence;)V

    .line 294
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerService;->onBeforeUnlockUser(I)V

    .line 295
    iget-object v1, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    const/16 v3, 0x14

    invoke-virtual {v1, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(I)V

    .line 299
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_69
    .catchall {:try_start_2c .. :try_end_69} :catchall_6e

    :cond_69
    monitor-exit v2

    .line 280
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 278
    return-void

    .line 280
    :catchall_6e
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private forceStopUserLocked(ILjava/lang/String;)V
    .registers 21
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 657
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v9, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 659
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.USER_STOPPED"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 660
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 662
    const-string/jumbo v1, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 663
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 665
    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 663
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 664
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 665
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x3e8

    const/16 v17, -0x1

    .line 663
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 656
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .registers 2

    .prologue
    .line 727
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method private getUserManager()Lcom/android/server/pm/UserManagerService;
    .registers 4

    .prologue
    .line 718
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 719
    .local v1, "userManager":Lcom/android/server/pm/UserManagerService;
    if-nez v1, :cond_13

    .line 720
    const-string/jumbo v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 721
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    .end local v1    # "userManager":Lcom/android/server/pm/UserManagerService;
    check-cast v1, Lcom/android/server/pm/UserManagerService;

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 723
    .end local v0    # "b":Landroid/os/IBinder;
    .restart local v1    # "userManager":Lcom/android/server/pm/UserManagerService;
    :cond_13
    return-object v1
.end method

.method private getUserManagerInternal()Landroid/os/UserManagerInternal;
    .registers 2

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    if-nez v0, :cond_e

    .line 1516
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/UserController;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1518
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    return-object v0
.end method

.method private getUsersToStopLocked(I)[I
    .registers 15
    .param p1, "userId"    # I

    .prologue
    const/16 v12, -0x2710

    .line 631
    iget-object v9, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 632
    .local v5, "startedUsersSize":I
    new-instance v7, Landroid/util/IntArray;

    invoke-direct {v7}, Landroid/util/IntArray;-><init>()V

    .line 633
    .local v7, "userIds":Landroid/util/IntArray;
    invoke-virtual {v7, p1}, Landroid/util/IntArray;->add(I)V

    .line 634
    iget-object v10, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v10

    .line 635
    :try_start_13
    iget-object v9, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 636
    const/16 v11, -0x2710

    .line 635
    invoke-virtual {v9, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 637
    .local v6, "userGroupId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    if-ge v0, v5, :cond_50

    .line 638
    iget-object v9, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/UserState;

    .line 639
    .local v8, "uss":Lcom/android/server/am/UserState;
    iget-object v9, v8, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 641
    .local v4, "startedUserId":I
    iget-object v9, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 642
    const/16 v11, -0x2710

    .line 641
    invoke-virtual {v9, v4, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 643
    .local v3, "startedUserGroupId":I
    if-eq v6, v12, :cond_45

    .line 644
    if-ne v6, v3, :cond_43

    const/4 v1, 0x1

    .line 646
    .local v1, "sameGroup":Z
    :goto_39
    if-ne v4, p1, :cond_47

    const/4 v2, 0x1

    .line 647
    .local v2, "sameUserId":Z
    :goto_3c
    if-eqz v1, :cond_40

    if-eqz v2, :cond_49

    .line 637
    :cond_40
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 644
    .end local v1    # "sameGroup":Z
    .end local v2    # "sameUserId":Z
    :cond_43
    const/4 v1, 0x0

    .restart local v1    # "sameGroup":Z
    goto :goto_39

    .line 643
    .end local v1    # "sameGroup":Z
    :cond_45
    const/4 v1, 0x0

    .restart local v1    # "sameGroup":Z
    goto :goto_39

    .line 646
    :cond_47
    const/4 v2, 0x0

    .restart local v2    # "sameUserId":Z
    goto :goto_3c

    .line 650
    :cond_49
    invoke-virtual {v7, v4}, Landroid/util/IntArray;->add(I)V
    :try_end_4c
    .catchall {:try_start_13 .. :try_end_4c} :catchall_4d

    goto :goto_40

    .line 634
    .end local v0    # "i":I
    .end local v1    # "sameGroup":Z
    .end local v2    # "sameUserId":Z
    .end local v3    # "startedUserGroupId":I
    .end local v4    # "startedUserId":I
    .end local v6    # "userGroupId":I
    .end local v8    # "uss":Lcom/android/server/am/UserState;
    :catchall_4d
    move-exception v9

    monitor-exit v10

    throw v9

    .restart local v0    # "i":I
    .restart local v6    # "userGroupId":I
    :cond_50
    monitor-exit v10

    .line 653
    invoke-virtual {v7}, Landroid/util/IntArray;->toArray()[I

    move-result-object v9

    return-object v9
.end method

.method private isCurrentUserLocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1435
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLocked()I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static notifyFinished(ILandroid/os/IProgressListener;)V
    .registers 4
    .param p0, "userId"    # I
    .param p1, "listener"    # Landroid/os/IProgressListener;

    .prologue
    .line 953
    if-nez p1, :cond_3

    return-void

    .line 955
    :cond_3
    const/4 v1, 0x0

    :try_start_4
    invoke-interface {p1, p0, v1}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 952
    :goto_7
    return-void

    .line 956
    :catch_8
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_7
.end method

.method private stopBackgroundUsersIfEnforced(I)V
    .registers 6
    .param p1, "oldUserId"    # I

    .prologue
    .line 1035
    if-nez p1, :cond_3

    .line 1036
    return-void

    .line 1039
    :cond_3
    const-string/jumbo v1, "no_run_in_background"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    .line 1041
    .local v0, "disallowRunInBg":Z
    if-nez v0, :cond_d

    .line 1042
    return-void

    .line 1044
    :cond_d
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1047
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1d

    monitor-exit v2

    .line 1044
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1033
    return-void

    .line 1044
    :catchall_1d
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private stopGuestOrEphemeralUserIfBackground()V
    .registers 10

    .prologue
    .line 672
    iget-object v6, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 673
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 674
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_70

    .line 675
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 676
    .local v2, "oldUserId":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 677
    .local v3, "oldUss":Lcom/android/server/am/UserState;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v5, v7, :cond_34

    .line 674
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 678
    :cond_34
    iget v5, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x4

    if-eq v5, v7, :cond_31

    .line 679
    iget v5, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x5

    if-eq v5, v7, :cond_31

    .line 682
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 683
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 684
    const-class v5, Landroid/os/UserManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManagerInternal;

    .line 685
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 684
    invoke-virtual {v5, v7}, Landroid/os/UserManagerInternal;->onEphemeralUserStop(I)V

    .line 687
    :cond_5b
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    if-nez v5, :cond_67

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 689
    :cond_67
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v5, v7, v8}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_75

    .end local v2    # "oldUserId":Ljava/lang/Integer;
    .end local v3    # "oldUss":Lcom/android/server/am/UserState;
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_70
    monitor-exit v6

    .line 672
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 671
    return-void

    .line 672
    .end local v0    # "i":I
    .end local v1    # "num":I
    :catchall_75
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method private stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V
    .registers 27
    .param p1, "userId"    # I
    .param p2, "callback"    # Landroid/app/IStopUserCallback;

    .prologue
    .line 479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/UserState;

    .line 480
    .local v21, "uss":Lcom/android/server/am/UserState;
    if-nez v21, :cond_23

    .line 483
    if-eqz p2, :cond_22

    .line 484
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/am/UserController$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/am/UserController$4;-><init>(Lcom/android/server/am/UserController;Landroid/app/IStopUserCallback;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 494
    :cond_22
    return-void

    .line 497
    :cond_23
    if-eqz p2, :cond_2e

    .line 498
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_2e
    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_ab

    .line 502
    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_ab

    .line 503
    const/4 v4, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/am/UserState;->setState(I)V

    .line 504
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 505
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 507
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 512
    .local v22, "ident":J
    :try_start_56
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.USER_STOPPING"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    .local v7, "stoppingIntent":Landroid/content/Intent;
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 514
    const-string/jumbo v4, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v7, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 515
    const-string/jumbo v4, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    const/4 v5, 0x1

    invoke-virtual {v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 517
    new-instance v9, Lcom/android/server/am/UserController$5;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v9, v0, v1, v2}, Lcom/android/server/am/UserController$5;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    .line 530
    .local v9, "stoppingReceiver":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->clearBroadcastQueueForUserLocked(I)Z

    .line 532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 534
    const/4 v5, 0x1

    new-array v13, v5, [Ljava/lang/String;

    const-string/jumbo v5, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v6, 0x0

    aput-object v5, v13, v6

    .line 535
    sget v18, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 532
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 533
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 534
    const/4 v14, -0x1

    .line 535
    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v19, 0x3e8

    const/16 v20, -0x1

    .line 532
    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_a8
    .catchall {:try_start_56 .. :try_end_a8} :catchall_ac

    .line 537
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 477
    .end local v7    # "stoppingIntent":Landroid/content/Intent;
    .end local v9    # "stoppingReceiver":Landroid/content/IIntentReceiver;
    .end local v22    # "ident":J
    :cond_ab
    return-void

    .line 536
    .restart local v22    # "ident":J
    :catchall_ac
    move-exception v4

    .line 537
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 536
    throw v4
.end method

.method private stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    .registers 12
    .param p1, "userId"    # I
    .param p2, "force"    # Z
    .param p3, "callback"    # Landroid/app/IStopUserCallback;

    .prologue
    const/4 v6, 0x0

    .line 447
    if-nez p1, :cond_5

    .line 448
    const/4 v4, -0x3

    return v4

    .line 450
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->isCurrentUserLocked(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 451
    const/4 v4, -0x2

    return v4

    .line 453
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUsersToStopLocked(I)[I

    move-result-object v3

    .line 455
    .local v3, "usersToStop":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    array-length v4, v3

    if-ge v0, v4, :cond_4a

    .line 456
    aget v1, v3, v0

    .line 457
    .local v1, "relatedUserId":I
    if-eqz v1, :cond_1f

    invoke-direct {p0, v1}, Lcom/android/server/am/UserController;->isCurrentUserLocked(I)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 461
    :cond_1f
    if-eqz p2, :cond_45

    .line 462
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    .line 463
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Force stop user "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ". Related users will not be stopped"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 462
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/UserController;->stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V

    .line 465
    return v6

    .line 467
    :cond_45
    const/4 v4, -0x4

    return v4

    .line 455
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 471
    .end local v1    # "relatedUserId":I
    :cond_4a
    array-length v7, v3

    move v5, v6

    :goto_4c
    if-ge v5, v7, :cond_5c

    aget v2, v3, v5

    .line 472
    .local v2, "userIdToStop":I
    if-ne v2, p1, :cond_5a

    move-object v4, p3

    :goto_53
    invoke-direct {p0, v2, v4}, Lcom/android/server/am/UserController;->stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V

    .line 471
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_4c

    .line 472
    :cond_5a
    const/4 v4, 0x0

    goto :goto_53

    .line 474
    .end local v2    # "userIdToStop":I
    :cond_5c
    return v6
.end method

.method private updateCurrentProfileIdsLocked()V
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 1332
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    iget v6, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2

    .line 1334
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [I

    .line 1335
    .local v0, "currentProfileIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    array-length v5, v0

    if-ge v1, v5, :cond_22

    .line 1336
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    aput v5, v0, v1

    .line 1335
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1338
    :cond_22
    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 1340
    iget-object v6, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v6

    .line 1341
    :try_start_27
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 1342
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 1343
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    :goto_36
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_54

    .line 1344
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1345
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v7, -0x2710

    if-eq v5, v7, :cond_51

    .line 1346
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    iget v8, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_51
    .catchall {:try_start_27 .. :try_end_51} :catchall_56

    .line 1343
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_54
    monitor-exit v6

    .line 1331
    return-void

    .line 1340
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_56
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private updateStartedUserArrayLocked()V
    .registers 9

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    .line 1295
    const/4 v1, 0x0

    .line 1296
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_21

    .line 1297
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 1299
    .local v3, "uss":Lcom/android/server/am/UserState;
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v6, :cond_1e

    .line 1300
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v7, :cond_1e

    .line 1301
    add-int/lit8 v1, v1, 0x1

    .line 1296
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1304
    .end local v3    # "uss":Lcom/android/server/am/UserState;
    :cond_21
    new-array v4, v1, [I

    iput-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 1305
    const/4 v1, 0x0

    .line 1306
    const/4 v0, 0x0

    :goto_27
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_4f

    .line 1307
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 1308
    .restart local v3    # "uss":Lcom/android/server/am/UserState;
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v6, :cond_4c

    .line 1309
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v7, :cond_4c

    .line 1310
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "num":I
    .local v2, "num":I
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v4, v1

    move v1, v2

    .line 1306
    .end local v2    # "num":I
    .restart local v1    # "num":I
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 1294
    .end local v3    # "uss":Lcom/android/server/am/UserState;
    :cond_4f
    return-void
.end method


# virtual methods
.method continueUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 9
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    const/16 v4, 0x38

    const/4 v3, 0x0

    .line 1103
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Continue user switch oldUser #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", newUser #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_2a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1105
    iget-object v0, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_51

    monitor-exit v1

    .line 1104
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1107
    iput-boolean v3, p1, Lcom/android/server/am/UserState;->switching:Z

    .line 1108
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1109
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1111
    invoke-direct {p0}, Lcom/android/server/am/UserController;->stopGuestOrEphemeralUserIfBackground()V

    .line 1112
    invoke-direct {p0, p2}, Lcom/android/server/am/UserController;->stopBackgroundUsersIfEnforced(I)V

    .line 1102
    return-void

    .line 1104
    :catchall_51
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method dispatchForegroundProfileChanged(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1010
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1011
    .local v2, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v2, :cond_17

    .line 1013
    :try_start_9
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUserSwitchObserver;

    invoke-interface {v3, p1}, Landroid/app/IUserSwitchObserver;->onForegroundProfileSwitch(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_1d

    .line 1011
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1018
    :cond_17
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1009
    return-void

    .line 1014
    :catch_1d
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_14
.end method

.method dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 12
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    .line 1059
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Dispatch onUserSwitching oldUser #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " newUser #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1061
    .local v2, "observerCount":I
    if-lez v2, :cond_5b

    .line 1062
    new-instance v0, Lcom/android/server/am/UserController$8;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/UserController$8;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;II)V

    .line 1076
    .local v0, "callback":Landroid/os/IRemoteCallback;
    iget-object v3, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_38
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1077
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/UserState;->switching:Z

    .line 1078
    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurUserSwitchCallback:Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_55

    monitor-exit v3

    .line 1076
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1080
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_45
    if-ge v7, v2, :cond_68

    .line 1082
    :try_start_47
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/IUserSwitchObserver;

    invoke-interface {v1, p3, v0}, Landroid/app/IUserSwitchObserver;->onUserSwitching(ILandroid/os/IRemoteCallback;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_52} :catch_74

    .line 1080
    :goto_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 1076
    .end local v7    # "i":I
    :catchall_55
    move-exception v1

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1088
    .end local v0    # "callback":Landroid/os/IRemoteCallback;
    :cond_5b
    iget-object v3, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_5e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1089
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_6e

    monitor-exit v3

    .line 1088
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1092
    :cond_68
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1058
    return-void

    .line 1088
    :catchall_6e
    move-exception v1

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1084
    .restart local v0    # "callback":Landroid/os/IRemoteCallback;
    .restart local v7    # "i":I
    :catch_74
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_52
.end method

.method dispatchUserSwitchComplete(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1023
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1024
    .local v2, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v2, :cond_17

    .line 1026
    :try_start_9
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUserSwitchObserver;

    invoke-interface {v3, p1}, Landroid/app/IUserSwitchObserver;->onUserSwitchComplete(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_1d

    .line 1024
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1030
    :cond_17
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1022
    return-void

    .line 1027
    :catch_1d
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_14
.end method

.method dump(Ljava/io/PrintWriter;Z)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .prologue
    .line 1522
    const-string/jumbo v2, "  mStartedUsers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1523
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_35

    .line 1524
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 1525
    .local v1, "uss":Lcom/android/server/am/UserState;
    const-string/jumbo v2, "    User #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1526
    const-string/jumbo v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/UserState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1523
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1528
    .end local v1    # "uss":Lcom/android/server/am/UserState;
    :cond_35
    const-string/jumbo v2, "  mStartedUserArray: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1529
    const/4 v0, 0x0

    :goto_3c
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v2, v2

    if-ge v0, v2, :cond_53

    .line 1530
    if-lez v0, :cond_49

    const-string/jumbo v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1531
    :cond_49
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1529
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 1533
    :cond_53
    const-string/jumbo v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1534
    const-string/jumbo v2, "  mUserLru: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1535
    const/4 v0, 0x0

    :goto_60
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7c

    .line 1536
    if-lez v0, :cond_70

    const-string/jumbo v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1537
    :cond_70
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1535
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 1539
    :cond_7c
    const-string/jumbo v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1540
    if-eqz p2, :cond_93

    .line 1541
    const-string/jumbo v2, "  mStartedUserArray: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1543
    :cond_93
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v3

    .line 1544
    :try_start_96
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_ce

    .line 1545
    const-string/jumbo v2, "  mUserProfileGroupIds:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1546
    const/4 v0, 0x0

    :goto_a5
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_ce

    .line 1547
    const-string/jumbo v2, "    User #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1548
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1549
    const-string/jumbo v2, " -> profile #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1550
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V
    :try_end_cb
    .catchall {:try_start_96 .. :try_end_cb} :catchall_d0

    .line 1546
    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    :cond_ce
    monitor-exit v3

    .line 1521
    return-void

    .line 1543
    :catchall_d0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method exists(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1456
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    return v0
.end method

.method finishUserStopped(Lcom/android/server/am/UserState;)V
    .registers 10
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 582
    iget-object v5, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 585
    .local v4, "userId":I
    iget-object v6, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 586
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 587
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_61

    move-result-object v5

    if-eq v5, p1, :cond_35

    .line 588
    const/4 v3, 0x0

    .local v3, "stopped":Z
    :goto_1c
    monitor-exit v6

    .line 585
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 606
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_73

    .line 608
    if-eqz v3, :cond_67

    :try_start_29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/IStopUserCallback;

    invoke-interface {v5, v4}, Landroid/app/IStopUserCallback;->userStopped(I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_32} :catch_71

    .line 606
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 589
    .end local v2    # "i":I
    .end local v3    # "stopped":Z
    :cond_35
    :try_start_35
    iget v5, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x5

    if-eq v5, v7, :cond_3c

    .line 590
    const/4 v3, 0x0

    .restart local v3    # "stopped":Z
    goto :goto_1c

    .line 592
    .end local v3    # "stopped":Z
    :cond_3c
    const/4 v3, 0x1

    .line 594
    .restart local v3    # "stopped":Z
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 595
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/UserManagerInternal;->removeUserState(I)V

    .line 596
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 597
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 599
    iget-object v5, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService;->onUserStoppedLocked(I)V

    .line 602
    const-string/jumbo v5, "finish user"

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/UserController;->forceStopUserLocked(ILjava/lang/String;)V
    :try_end_60
    .catchall {:try_start_35 .. :try_end_60} :catchall_61

    goto :goto_1c

    .line 585
    .end local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    .end local v3    # "stopped":Z
    :catchall_61
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    .line 609
    .restart local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    .restart local v2    # "i":I
    .restart local v3    # "stopped":Z
    :cond_67
    :try_start_67
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/IStopUserCallback;

    invoke-interface {v5, v4}, Landroid/app/IStopUserCallback;->userStopAborted(I)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_70} :catch_71

    goto :goto_32

    .line 610
    :catch_71
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_32

    .line 614
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_73
    if-eqz v3, :cond_9c

    .line 615
    iget-object v5, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v4}, Lcom/android/server/SystemServiceManager;->cleanupUser(I)V

    .line 616
    iget-object v6, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_7f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 617
    iget-object v5, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removeUserLocked(I)V
    :try_end_89
    .catchall {:try_start_7f .. :try_end_89} :catchall_9d

    monitor-exit v6

    .line 616
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 620
    invoke-virtual {p0, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 621
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    .line 581
    :cond_9c
    return-void

    .line 616
    :catchall_9d
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method finishUserStopping(ILcom/android/server/am/UserState;)V
    .registers 23
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 544
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    .local v5, "shutdownIntent":Landroid/content/Intent;
    new-instance v7, Lcom/android/server/am/UserController$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lcom/android/server/am/UserController$6;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    .line 559
    .local v7, "shutdownReceiver":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 560
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/server/am/UserState;->state:I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_7f

    const/4 v4, 0x4

    if-eq v2, v4, :cond_25

    monitor-exit v3

    .line 559
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 562
    return-void

    .line 564
    :cond_25
    const/4 v2, 0x5

    :try_start_26
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/server/am/UserState;->setState(I)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_7f

    monitor-exit v3

    .line 559
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 566
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 570
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 569
    const/16 v4, 0x4007

    .line 568
    move/from16 v0, p1

    invoke-virtual {v2, v4, v3, v0}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/SystemServiceManager;->stopUser(I)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_5f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 577
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 574
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 575
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 576
    const/4 v12, -0x1

    .line 577
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    move/from16 v18, p1

    .line 574
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_7a
    .catchall {:try_start_5f .. :try_end_7a} :catchall_85

    monitor-exit v19

    .line 573
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 542
    return-void

    .line 559
    :catchall_7f
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 573
    :catchall_85
    move-exception v2

    monitor-exit v19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method finishUserSwitch(Lcom/android/server/am/UserState;)V
    .registers 4
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 179
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfilesLocked()V

    .line 182
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->stopRunningUsersLocked(I)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_15

    monitor-exit v1

    .line 178
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 177
    return-void

    .line 178
    :catchall_15
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method finishUserUnlocked(Lcom/android/server/am/UserState;)V
    .registers 41
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 310
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 311
    .local v18, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    monitor-enter v38

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_113

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_2b

    monitor-exit v38

    .line 311
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 313
    return-void

    .line 316
    :cond_2b
    :try_start_2b
    invoke-static/range {v18 .. v18}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_113

    move-result v2

    if-nez v2, :cond_36

    monitor-exit v38

    .line 311
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 316
    return-void

    .line 318
    :cond_36
    const/4 v2, 0x2

    const/4 v3, 0x3

    :try_start_38
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 319
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 320
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v2}, Lcom/android/internal/util/ProgressReporter;->finish()V

    .line 323
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .local v5, "unlockedIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    const/high16 v2, 0x50000000

    .line 325
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 328
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 327
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 328
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    .line 327
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 331
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 332
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v37

    .line 333
    .local v37, "parent":Landroid/content/pm/UserInfo;
    if-eqz v37, :cond_e2

    .line 334
    new-instance v22, Landroid/content/Intent;

    .line 335
    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    .line 334
    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v22, "profileUnlockedIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.USER"

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 338
    const/high16 v2, 0x50000000

    .line 337
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    .line 342
    sget v33, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 343
    move-object/from16 v0, v37

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v35, v0

    .line 340
    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 341
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, -0x1

    .line 342
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x3e8

    .line 340
    invoke-virtual/range {v19 .. v35}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 350
    .end local v22    # "profileUnlockedIntent":Landroid/content/Intent;
    .end local v37    # "parent":Landroid/content/pm/UserInfo;
    :cond_e2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v36

    .line 351
    .local v36, "info":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v36

    iget-object v2, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10f

    .line 352
    new-instance v15, Lcom/android/server/am/UserController$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v16, p0

    move-object/from16 v20, p1

    invoke-direct/range {v15 .. v20}, Lcom/android/server/am/UserController$1;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;Lcom/android/server/am/UserState;)V

    invoke-virtual {v15}, Lcom/android/server/am/UserController$1;->sendNext()V
    :try_end_10a
    .catchall {:try_start_38 .. :try_end_10a} :catchall_113

    .end local v5    # "unlockedIntent":Landroid/content/Intent;
    .end local v36    # "info":Landroid/content/pm/UserInfo;
    :cond_10a
    :goto_10a
    monitor-exit v38

    .line 311
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 309
    return-void

    .line 359
    .restart local v5    # "unlockedIntent":Landroid/content/Intent;
    .restart local v36    # "info":Landroid/content/pm/UserInfo;
    :cond_10f
    :try_start_10f
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    :try_end_112
    .catchall {:try_start_10f .. :try_end_112} :catchall_113

    goto :goto_10a

    .line 311
    .end local v5    # "unlockedIntent":Landroid/content/Intent;
    .end local v36    # "info":Landroid/content/pm/UserInfo;
    :catchall_113
    move-exception v2

    monitor-exit v38

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method getCurrentOrTargetUserIdLocked()I
    .registers 3

    .prologue
    .line 1427
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    goto :goto_8
.end method

.method getCurrentProfileIdsLocked()[I
    .registers 2

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    return-object v0
.end method

.method getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 4

    .prologue
    .line 1405
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_56

    .line 1407
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    .line 1406
    if-eqz v1, :cond_56

    .line 1409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: getCurrentUser() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1410
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1409
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1411
    const-string/jumbo v2, ", uid="

    .line 1409
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1411
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1409
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1412
    const-string/jumbo v2, " requires "

    .line 1409
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1412
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 1409
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1413
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1416
    .end local v0    # "msg":Ljava/lang/String;
    :cond_56
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_59
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1417
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserLocked()Landroid/content/pm/UserInfo;
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_65

    move-result-object v1

    monitor-exit v2

    .line 1416
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1417
    return-object v1

    .line 1416
    :catchall_65
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getCurrentUserIdLocked()I
    .registers 2

    .prologue
    .line 1431
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    return v0
.end method

.method getCurrentUserLocked()Landroid/content/pm/UserInfo;
    .registers 4

    .prologue
    .line 1422
    iget v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_d

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 1423
    .local v0, "userId":I
    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1

    .line 1422
    .end local v0    # "userId":I
    :cond_d
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    goto :goto_8
.end method

.method getProfileIds(I)Ljava/util/Set;
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1464
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1465
    .local v3, "userIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    .line 1466
    const/4 v5, 0x0

    .line 1465
    invoke-virtual {v4, p1, v5}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 1467
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "user$iterator":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1468
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1470
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_28
    return-object v3
.end method

.method getStartedUserArrayLocked()[I
    .registers 2

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    return-object v0
.end method

.method getStartedUserStateLocked(I)Lcom/android/server/am/UserState;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState;

    return-object v0
.end method

.method getUserIds()[I
    .registers 2

    .prologue
    .line 1452
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1448
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method getUsers()[I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1443
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 1444
    .local v0, "ums":Lcom/android/server/pm/UserManagerService;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    goto :goto_b
.end method

.method handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .registers 20
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "allowAll"    # Z
    .param p5, "allowMode"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "callerPackage"    # Ljava/lang/String;

    .prologue
    .line 1177
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1178
    .local v9, "callingUserId":I
    if-ne v9, p3, :cond_7

    .line 1179
    return p3

    .line 1188
    :cond_7
    invoke-virtual {p0, p3}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUserLocked(I)I

    move-result v11

    .line 1190
    .local v11, "targetUserId":I
    if-eqz p2, :cond_36

    const/16 v1, 0x3e8

    if-eq p2, v1, :cond_36

    .line 1192
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1193
    const/4 v5, -0x1

    const/4 v6, 0x1

    move v3, p1

    move v4, p2

    .line 1192
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-eqz v1, :cond_2f

    .line 1195
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "com.motorola.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1196
    const/4 v5, -0x1

    const/4 v6, 0x1

    move v3, p1

    move v4, p2

    .line 1195
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-nez v1, :cond_54

    .line 1198
    :cond_2f
    const/4 v7, 0x1

    .line 1216
    :goto_30
    if-nez v7, :cond_36

    .line 1217
    const/4 v1, -0x3

    if-ne p3, v1, :cond_96

    .line 1220
    move v11, v9

    .line 1245
    :cond_36
    if-nez p4, :cond_f7

    if-gez v11, :cond_f7

    .line 1246
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Call does not support special user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1246
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1199
    :cond_54
    const/4 v1, 0x2

    move/from16 v0, p5

    if-ne v0, v1, :cond_5b

    .line 1201
    const/4 v7, 0x0

    .local v7, "allow":Z
    goto :goto_30

    .line 1202
    .end local v7    # "allow":Z
    :cond_5b
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 1203
    const/4 v5, -0x1

    const/4 v6, 0x1

    move v3, p1

    move v4, p2

    .line 1202
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-eqz v1, :cond_6c

    .line 1205
    const/4 v7, 0x0

    .restart local v7    # "allow":Z
    goto :goto_30

    .line 1206
    .end local v7    # "allow":Z
    :cond_6c
    if-nez p5, :cond_70

    .line 1208
    const/4 v7, 0x1

    .restart local v7    # "allow":Z
    goto :goto_30

    .line 1209
    .end local v7    # "allow":Z
    :cond_70
    const/4 v1, 0x1

    move/from16 v0, p5

    if-ne v0, v1, :cond_7a

    .line 1212
    invoke-virtual {p0, v9, v11}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v7

    .local v7, "allow":Z
    goto :goto_30

    .line 1214
    .end local v7    # "allow":Z
    :cond_7a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1222
    :cond_96
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1223
    .local v8, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Permission Denial: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    if-eqz p7, :cond_b5

    .line 1226
    const-string/jumbo v1, " from "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    :cond_b5
    const-string/jumbo v1, " asks to run as user "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1231
    const-string/jumbo v1, " but is calling from user "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1233
    const-string/jumbo v1, "; this requires "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    const/4 v1, 0x2

    move/from16 v0, p5

    if-eq v0, v1, :cond_e8

    .line 1236
    const-string/jumbo v1, " or "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    :cond_e8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1240
    .local v10, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1250
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .end local v10    # "msg":Ljava/lang/String;
    :cond_f7
    const/16 v1, 0x7d0

    if-ne p2, v1, :cond_130

    if-ltz v11, :cond_130

    .line 1251
    const-string/jumbo v1, "no_debugging_features"

    invoke-virtual {p0, v1, v11}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_130

    .line 1252
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Shell does not have permission to access user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1253
    const-string/jumbo v3, "\n "

    .line 1252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1253
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 1252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1256
    :cond_130
    return v11
.end method

.method hasStartedUserState(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method hasUserRestriction(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1460
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isCurrentProfileLocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method isLockScreenDisabled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    return v0
.end method

.method isSameProfileGroup(II)Z
    .registers 10
    .param p1, "callingUserId"    # I
    .param p2, "targetUserId"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v6, -0x2710

    .line 1474
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v3

    .line 1475
    :try_start_6
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 1476
    const/16 v5, -0x2710

    .line 1475
    invoke-virtual {v4, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1477
    .local v0, "callingProfile":I
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 1478
    const/16 v5, -0x2710

    .line 1477
    invoke-virtual {v4, p2, v5}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_1d

    move-result v1

    .line 1479
    .local v1, "targetProfile":I
    if-eq v0, v6, :cond_1b

    .line 1480
    if-ne v0, v1, :cond_1b

    const/4 v2, 0x1

    :cond_1b
    monitor-exit v3

    .line 1479
    return v2

    .line 1474
    .end local v0    # "callingProfile":I
    .end local v1    # "targetProfile":I
    :catchall_1d
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method isUserRunningLocked(II)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1366
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserStateLocked(I)Lcom/android/server/am/UserState;

    move-result-object v0

    .line 1367
    .local v0, "state":Lcom/android/server/am/UserState;
    if-nez v0, :cond_9

    .line 1368
    return v2

    .line 1370
    :cond_9
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_e

    .line 1371
    return v3

    .line 1373
    :cond_e
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_19

    .line 1374
    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v1, :pswitch_data_30

    .line 1379
    return v2

    .line 1377
    :pswitch_18
    return v3

    .line 1382
    :cond_19
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_24

    .line 1383
    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v1, :pswitch_data_38

    .line 1388
    return v2

    .line 1386
    :pswitch_23
    return v3

    .line 1391
    :cond_24
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2f

    .line 1392
    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v1, :pswitch_data_40

    .line 1396
    return v2

    .line 1394
    :pswitch_2e
    return v3

    .line 1401
    :cond_2f
    return v3

    .line 1374
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_18
        :pswitch_18
    .end packed-switch

    .line 1383
    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_23
        :pswitch_23
    .end packed-switch

    .line 1392
    :pswitch_data_40
    .packed-switch 0x3
        :pswitch_2e
    .end packed-switch
.end method

.method isUserStoppingOrShuttingDownLocked(I)Z
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1357
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserStateLocked(I)Lcom/android/server/am/UserState;

    move-result-object v0

    .line 1358
    .local v0, "state":Lcom/android/server/am/UserState;
    if-nez v0, :cond_9

    .line 1359
    return v2

    .line 1361
    :cond_9
    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_13

    .line 1362
    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_14

    .line 1361
    :cond_13
    :goto_13
    return v1

    :cond_14
    move v1, v2

    .line 1362
    goto :goto_13
.end method

.method maybeUnlockUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 949
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z

    move-result v0

    return v0
.end method

.method moveUserToForegroundLocked(Lcom/android/server/am/UserState;II)V
    .registers 7
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    .line 1116
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->switchUserLocked(ILcom/android/server/am/UserState;)Z

    move-result v0

    .line 1117
    .local v0, "homeInFront":Z
    if-eqz v0, :cond_19

    .line 1118
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "moveUserToForeground"

    invoke-virtual {v1, p3, v2}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(ILjava/lang/String;)Z

    .line 1122
    :goto_12
    invoke-static {p3}, Lcom/android/server/am/EventLogTags;->writeAmSwitchUser(I)V

    .line 1123
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/UserController;->sendUserSwitchBroadcastsLocked(II)V

    .line 1115
    return-void

    .line 1120
    :cond_19
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    goto :goto_12
.end method

.method onSystemReady()V
    .registers 1

    .prologue
    .line 1323
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIdsLocked()V

    .line 1322
    return-void
.end method

.method registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;

    .prologue
    .line 1265
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_56

    .line 1268
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "com.motorola.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_56

    .line 1271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: registerUserSwitchObserver() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1272
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1273
    const-string/jumbo v2, ", uid="

    .line 1271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1273
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1274
    const-string/jumbo v2, " requires "

    .line 1271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1274
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1275
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1279
    .end local v0    # "msg":Ljava/lang/String;
    :cond_56
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1264
    return-void
.end method

.method sendBootCompletedLocked(Landroid/content/IIntentReceiver;)V
    .registers 5
    .param p1, "resultTo"    # Landroid/content/IIntentReceiver;

    .prologue
    .line 1316
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 1317
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 1318
    .local v1, "uss":Lcom/android/server/am/UserState;
    invoke-direct {p0, v1, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    .line 1316
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1315
    .end local v1    # "uss":Lcom/android/server/am/UserState;
    :cond_17
    return-void
.end method

.method sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    .registers 7
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    .line 1096
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurUserSwitchCallback:Ljava/lang/Object;

    .line 1097
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1098
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x23

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1095
    return-void
.end method

.method sendUserSwitchBroadcastsLocked(II)V
    .registers 44
    .param p1, "oldUserId"    # I
    .param p2, "newUserId"    # I

    .prologue
    .line 1127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v38

    .line 1130
    .local v38, "ident":J
    if-ltz p1, :cond_5a

    .line 1132
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v40

    .line 1133
    .local v40, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v36

    .line 1134
    .local v36, "count":I
    const/16 v37, 0x0

    .local v37, "i":I
    :goto_17
    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_5a

    .line 1135
    move-object/from16 v0, v40

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    move/from16 v18, v0

    .line 1136
    .local v18, "profileUserId":I
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1137
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1139
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1142
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1140
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1141
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 1142
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    .line 1140
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 1134
    add-int/lit8 v37, v37, 0x1

    goto :goto_17

    .line 1145
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v18    # "profileUserId":I
    .end local v36    # "count":I
    .end local v37    # "i":I
    .end local v40    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5a
    if-ltz p2, :cond_f7

    .line 1147
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v40

    .line 1148
    .restart local v40    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v36

    .line 1149
    .restart local v36    # "count":I
    const/16 v37, 0x0

    .restart local v37    # "i":I
    :goto_6d
    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_b0

    .line 1150
    move-object/from16 v0, v40

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    move/from16 v18, v0

    .line 1151
    .restart local v18    # "profileUserId":I
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1152
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1154
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1157
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1155
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1156
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 1157
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    .line 1155
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 1149
    add-int/lit8 v37, v37, 0x1

    goto :goto_6d

    .line 1159
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v18    # "profileUserId":I
    :cond_b0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1160
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1162
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, p2

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    .line 1165
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v28, v0

    const-string/jumbo v2, "android.permission.MANAGE_USERS"

    const/4 v3, 0x0

    aput-object v2, v28, v3

    .line 1166
    sget v33, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1163
    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 1164
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 1166
    const/16 v29, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x3e8

    .line 1167
    const/16 v35, -0x1

    move-object/from16 v22, v5

    .line 1163
    invoke-virtual/range {v19 .. v35}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_f7
    .catchall {:try_start_6 .. :try_end_f7} :catchall_fb

    .line 1170
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v36    # "count":I
    .end local v37    # "i":I
    .end local v40    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_f7
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1126
    return-void

    .line 1169
    :catchall_fb
    move-exception v2

    .line 1170
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1169
    throw v2
.end method

.method setTargetUserIdLocked(I)I
    .registers 2
    .param p1, "targetUserId"    # I

    .prologue
    .line 1439
    iput p1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    return p1
.end method

.method shouldConfirmCredentials(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1497
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1498
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_21

    move-result-object v3

    if-nez v3, :cond_14

    monitor-exit v2

    .line 1497
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1499
    return v1

    :cond_14
    monitor-exit v2

    .line 1497
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1502
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-nez v2, :cond_27

    .line 1503
    return v1

    .line 1497
    :catchall_21
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1505
    :cond_27
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1506
    const-string/jumbo v3, "keyguard"

    .line 1505
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1507
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    :cond_3e
    return v1
.end method

.method showUserSwitchDialog(Landroid/util/Pair;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/pm/UserInfo;",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1004
    .local p1, "fromToUserPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog;

    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1005
    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/UserInfo;

    const/4 v5, 0x1

    .line 1004
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/UserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Z)V

    .line 1006
    .local v0, "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1002
    return-void
.end method

.method startProfilesLocked()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 698
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    .line 699
    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 698
    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 700
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 701
    .local v2, "profilesToStart":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "user$iterator":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 702
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v6, v4, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v6, v6, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_18

    .line 703
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-eq v6, v7, :cond_18

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v6

    if-nez v6, :cond_18

    .line 704
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 707
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_3c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 708
    .local v3, "profilesToStartSize":I
    const/4 v0, 0x0

    .line 709
    .local v0, "i":I
    :goto_41
    if-ge v0, v3, :cond_54

    const/4 v6, 0x2

    if-ge v0, v6, :cond_54

    .line 710
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6, v8}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 712
    :cond_54
    if-ge v0, v3, :cond_5e

    .line 713
    sget-object v6, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "More profiles than MAX_RUNNING_USERS"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_5e
    return-void
.end method

.method startUser(IZ)Z
    .registers 35
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z

    .prologue
    .line 760
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_51

    .line 762
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission Denial: switchUser() from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 763
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 762
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 764
    const-string/jumbo v5, ", uid="

    .line 762
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 764
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 762
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 765
    const-string/jumbo v5, " requires "

    .line 762
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 765
    const-string/jumbo v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 762
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 766
    .local v24, "msg":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    new-instance v4, Ljava/lang/SecurityException;

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 770
    .end local v24    # "msg":Ljava/lang/String;
    :cond_51
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting userid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " fg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 774
    .local v22, "ident":J
    :try_start_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v31, v0

    monitor-enter v31
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_2fa

    :try_start_84
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 775
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    move/from16 v26, v0
    :try_end_8d
    .catchall {:try_start_84 .. :try_end_8d} :catchall_2f4

    .line 776
    .local v26, "oldUserId":I
    move/from16 v0, v26

    move/from16 v1, p1

    if-ne v0, v1, :cond_9c

    :try_start_93
    monitor-exit v31

    .line 774
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_97
    .catchall {:try_start_93 .. :try_end_97} :catchall_2fa

    .line 777
    const/4 v4, 0x1

    .line 907
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 777
    return v4

    .line 780
    :cond_9c
    :try_start_9c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 781
    const-string/jumbo v5, "startUser"

    .line 780
    const/4 v6, 0x0

    .line 781
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 780
    invoke-virtual {v4, v6, v8, v5, v9}, Lcom/android/server/am/ActivityStackSupervisor;->setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    .line 783
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v28

    .line 784
    .local v28, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v28, :cond_d5

    .line 785
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No user info for user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catchall {:try_start_9c .. :try_end_cc} :catchall_2f4

    :try_start_cc
    monitor-exit v31

    .line 774
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_d0
    .catchall {:try_start_cc .. :try_end_d0} :catchall_2fa

    .line 786
    const/4 v4, 0x0

    .line 907
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 786
    return v4

    .line 788
    :cond_d5
    if-eqz p2, :cond_108

    :try_start_d7
    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_108

    .line 789
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot switch to User #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": not a full user"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catchall {:try_start_d7 .. :try_end_ff} :catchall_2f4

    :try_start_ff
    monitor-exit v31

    .line 774
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_103
    .catchall {:try_start_ff .. :try_end_103} :catchall_2fa

    .line 790
    const/4 v4, 0x0

    .line 907
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 790
    return v4

    .line 793
    :cond_108
    if-eqz p2, :cond_119

    .line 794
    :try_start_10a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 795
    const v5, 0x10a0081

    const v6, 0x10a0080

    .line 794
    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V

    .line 798
    :cond_119
    const/16 v25, 0x0

    .line 802
    .local v25, "needStart":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_14f

    .line 803
    new-instance v29, Lcom/android/server/am/UserState;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 804
    .local v29, "userState":Lcom/android/server/am/UserState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 805
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 806
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 807
    const/16 v25, 0x1

    .line 810
    .end local v29    # "userState":Lcom/android/server/am/UserState;
    :cond_14f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/am/UserState;

    .line 811
    .local v30, "uss":Lcom/android/server/am/UserState;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 812
    .local v27, "userIdInt":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 813
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    if-eqz p2, :cond_2c8

    .line 816
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 817
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateUserConfigurationLocked()V

    .line 818
    const/16 v4, -0x2710

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 819
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIdsLocked()V

    .line 820
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I[I)V

    .line 823
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 834
    :goto_1a2
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2ff

    .line 838
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/am/UserState;->lastState:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/android/server/am/UserState;->setState(I)V

    .line 839
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 840
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 841
    const/16 v25, 0x1

    .line 851
    :cond_1c4
    :goto_1c4
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    if-nez v4, :cond_1e7

    .line 854
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/pm/UserManagerService;->onBeforeStartUser(I)V

    .line 859
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x2a

    const/4 v8, 0x0

    move/from16 v0, p1

    invoke-virtual {v5, v6, v0, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 862
    :cond_1e7
    if-eqz p2, :cond_240

    .line 863
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x2b

    move/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v5, v6, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 865
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 866
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 867
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x22

    move/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x24

    move/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 870
    const-wide/16 v8, 0x7d0

    .line 869
    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 873
    :cond_240
    if-eqz v25, :cond_272

    .line 875
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.USER_STARTED"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 876
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v4, 0x50000000

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 878
    const-string/jumbo v4, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v7, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 879
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 881
    sget v18, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 879
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 880
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    .line 881
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x3e8

    move/from16 v20, p1

    .line 879
    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 884
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_272
    if-eqz p2, :cond_320

    .line 885
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController;->moveUserToForegroundLocked(Lcom/android/server/am/UserState;II)V

    .line 890
    :goto_27f
    if-eqz v25, :cond_2bf

    .line 891
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.USER_STARTING"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 892
    .restart local v7    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 893
    const-string/jumbo v4, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v7, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 895
    new-instance v9, Lcom/android/server/am/UserController$7;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/server/am/UserController$7;-><init>(Lcom/android/server/am/UserController;)V

    .line 902
    const/4 v5, 0x1

    new-array v13, v5, [Ljava/lang/String;

    const-string/jumbo v5, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v6, 0x0

    aput-object v5, v13, v6

    .line 903
    sget v18, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 894
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 895
    const/4 v8, 0x0

    .line 901
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 902
    const/4 v14, -0x1

    .line 903
    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v19, 0x3e8

    const/16 v20, -0x1

    .line 894
    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_2bf
    .catchall {:try_start_10a .. :try_end_2bf} :catchall_2f4

    .end local v7    # "intent":Landroid/content/Intent;
    :cond_2bf
    :try_start_2bf
    monitor-exit v31

    .line 774
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2c3
    .catchall {:try_start_2bf .. :try_end_2c3} :catchall_2fa

    .line 907
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 910
    const/4 v4, 0x1

    return v4

    .line 825
    :cond_2c8
    :try_start_2c8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 826
    .local v21, "currentUserIdInt":Ljava/lang/Integer;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIdsLocked()V

    .line 827
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->setCurrentProfileIds([I)V

    .line 828
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 829
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2f2
    .catchall {:try_start_2c8 .. :try_end_2f2} :catchall_2f4

    goto/16 :goto_1a2

    .line 774
    .end local v21    # "currentUserIdInt":Ljava/lang/Integer;
    .end local v25    # "needStart":Z
    .end local v26    # "oldUserId":I
    .end local v27    # "userIdInt":Ljava/lang/Integer;
    .end local v28    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v30    # "uss":Lcom/android/server/am/UserState;
    :catchall_2f4
    move-exception v4

    :try_start_2f5
    monitor-exit v31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_2fa
    .catchall {:try_start_2f5 .. :try_end_2fa} :catchall_2fa

    .line 906
    :catchall_2fa
    move-exception v4

    .line 907
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 906
    throw v4

    .line 842
    .restart local v25    # "needStart":Z
    .restart local v26    # "oldUserId":I
    .restart local v27    # "userIdInt":Ljava/lang/Integer;
    .restart local v28    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v30    # "uss":Lcom/android/server/am/UserState;
    :cond_2ff
    :try_start_2ff
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1c4

    .line 845
    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/android/server/am/UserState;->setState(I)V

    .line 846
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 847
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 848
    const/16 v25, 0x1

    goto/16 :goto_1c4

    .line 887
    :cond_320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V
    :try_end_32b
    .catchall {:try_start_2ff .. :try_end_32b} :catchall_2f4

    goto/16 :goto_27f
.end method

.method startUserInForeground(ILandroid/app/Dialog;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "dlg"    # Landroid/app/Dialog;

    .prologue
    .line 917
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    move-result v0

    .line 918
    .local v0, "result":Z
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 919
    return v0
.end method

.method stopRunningUsersLocked(I)V
    .registers 10
    .param p1, "maxRunningUsers"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 187
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 188
    .local v1, "num":I
    const/4 v0, 0x0

    .line 189
    .local v0, "i":I
    :goto_9
    if-le v1, p1, :cond_6e

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6e

    .line 190
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 191
    .local v2, "oldUserId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 192
    .local v3, "oldUss":Lcom/android/server/am/UserState;
    if-nez v3, :cond_31

    .line 194
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 195
    add-int/lit8 v1, v1, -0x1

    .line 196
    goto :goto_9

    .line 198
    :cond_31
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3b

    .line 199
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_40

    .line 201
    :cond_3b
    add-int/lit8 v1, v1, -0x1

    .line 202
    add-int/lit8 v0, v0, 0x1

    .line 203
    goto :goto_9

    .line 205
    :cond_40
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_4e

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v4, v5, :cond_5d

    .line 208
    :cond_4e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/content/pm/UserInfo;->isSystemOnly(I)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 209
    add-int/lit8 v1, v1, -0x1

    .line 211
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    .line 212
    goto :goto_9

    .line 215
    :cond_5d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I

    move-result v4

    if-eqz v4, :cond_69

    .line 216
    add-int/lit8 v1, v1, -0x1

    .line 218
    :cond_69
    add-int/lit8 v1, v1, -0x1

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 186
    .end local v2    # "oldUserId":Ljava/lang/Integer;
    .end local v3    # "oldUss":Lcom/android/server/am/UserState;
    :cond_6e
    return-void
.end method

.method stopUser(IZLandroid/app/IStopUserCallback;)I
    .registers 8
    .param p1, "userId"    # I
    .param p2, "force"    # Z
    .param p3, "callback"    # Landroid/app/IStopUserCallback;

    .prologue
    .line 423
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4b

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: switchUser() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 426
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 425
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 427
    const-string/jumbo v2, ", uid="

    .line 425
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 427
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 425
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 428
    const-string/jumbo v2, " requires "

    .line 425
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 428
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 425
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 432
    .end local v0    # "msg":Ljava/lang/String;
    :cond_4b
    if-ltz p1, :cond_4f

    if-nez p1, :cond_69

    .line 433
    :cond_4f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t stop system user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 435
    :cond_69
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "no_debugging_features"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ActivityManagerService;->enforceShellRestriction(Ljava/lang/String;I)V

    .line 437
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_74
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 438
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    :try_end_7a
    .catchall {:try_start_74 .. :try_end_7a} :catchall_80

    move-result v1

    monitor-exit v2

    .line 437
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 438
    return v1

    .line 437
    :catchall_80
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method timeoutUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 8
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    .line 1052
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1053
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User switch timeout: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_32

    monitor-exit v1

    .line 1052
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1051
    return-void

    .line 1052
    :catchall_32
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    .registers 10
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .param p4, "listener"    # Landroid/os/IProgressListener;

    .prologue
    .line 923
    iget-object v3, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4b

    .line 925
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission Denial: unlockUser() from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 926
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 925
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 927
    const-string/jumbo v4, ", uid="

    .line 925
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 927
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 925
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 928
    const-string/jumbo v4, " requires "

    .line 925
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 928
    const-string/jumbo v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 925
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 929
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 933
    .end local v2    # "msg":Ljava/lang/String;
    :cond_4b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 935
    .local v0, "binderToken":J
    :try_start_4f
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_57

    move-result v3

    .line 937
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 935
    return v3

    .line 936
    :catchall_57
    move-exception v3

    .line 937
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 936
    throw v3
.end method

.method unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z
    .registers 16
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .param p4, "listener"    # Landroid/os/IProgressListener;

    .prologue
    .line 962
    iget-object v8, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 964
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v7

    if-nez v7, :cond_19

    .line 965
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 966
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getMountService()Landroid/os/storage/IMountService;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_4b

    move-result-object v2

    .line 969
    .local v2, "mountService":Landroid/os/storage/IMountService;
    :try_start_14
    iget v7, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v2, p1, v7, p2, p3}, Landroid/os/storage/IMountService;->unlockUserKey(II[B[B)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_19} :catch_2c
    .catchall {:try_start_14 .. :try_end_19} :catchall_4b

    .line 976
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_19
    :goto_19
    :try_start_19
    iget-object v7, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/UserState;

    .line 977
    .local v6, "uss":Lcom/android/server/am/UserState;
    if-nez v6, :cond_51

    .line 978
    invoke-static {p1, p4}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_4b

    .line 979
    const/4 v7, 0x0

    monitor-exit v8

    .line 962
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 979
    return v7

    .line 970
    .end local v6    # "uss":Lcom/android/server/am/UserState;
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    .restart local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_2c
    move-exception v0

    .line 971
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2d
    sget-object v7, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to unlock: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_2d .. :try_end_4a} :catchall_4b

    goto :goto_19

    .line 962
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_4b
    move-exception v7

    monitor-exit v8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v7

    .line 981
    .restart local v6    # "uss":Lcom/android/server/am/UserState;
    :cond_51
    :try_start_51
    iget-object v7, v6, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v7, p4}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 984
    invoke-direct {p0, v6}, Lcom/android/server/am/UserController;->finishUserUnlocking(Lcom/android/server/am/UserState;)V

    .line 988
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5a
    iget-object v7, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v1, v7, :cond_ab

    .line 989
    iget-object v7, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 990
    .local v4, "testUserId":I
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 991
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_a8

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v7, p1, :cond_a8

    if-eq v4, p1, :cond_a8

    .line 992
    sget-object v7, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "User "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " (parent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 993
    const-string/jumbo v10, "): attempting unlock because parent was just unlocked"

    .line 992
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-virtual {p0, v4}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z
    :try_end_a8
    .catchall {:try_start_51 .. :try_end_a8} :catchall_4b

    .line 988
    :cond_a8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .end local v3    # "parent":Landroid/content/pm/UserInfo;
    .end local v4    # "testUserId":I
    :cond_ab
    monitor-exit v8

    .line 962
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 999
    const/4 v7, 0x1

    return v7
.end method

.method unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1282
    return-void
.end method

.method unsafeConvertIncomingUserLocked(I)I
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1260
    const/4 v0, -0x2

    if-eq p1, v0, :cond_6

    const/4 v0, -0x3

    if-ne p1, v0, :cond_a

    .line 1261
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserIdLocked()I

    move-result p1

    .line 1260
    .end local p1    # "userId":I
    :cond_a
    return p1
.end method

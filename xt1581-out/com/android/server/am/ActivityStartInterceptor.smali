.class Lcom/android/server/am/ActivityStartInterceptor;
.super Ljava/lang/Object;
.source "ActivityStartInterceptor.java"


# instance fields
.field mAInfo:Landroid/content/pm/ActivityInfo;

.field mActivityOptions:Landroid/app/ActivityOptions;

.field private mCallingPackage:Ljava/lang/String;

.field mCallingPid:I

.field mCallingUid:I

.field mInTask:Lcom/android/server/am/TaskRecord;

.field mIntent:Landroid/content/Intent;

.field mRInfo:Landroid/content/pm/ResolveInfo;

.field private mRealCallingPid:I

.field private mRealCallingUid:I

.field mResolvedType:Ljava/lang/String;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 84
    iput-object p2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 82
    return-void
.end method

.method private interceptQuietProfileIfNeeded()Z
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 122
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 123
    return v7

    .line 125
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 126
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    .line 127
    new-array v8, v14, [Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    aput-object v1, v8, v7

    new-array v9, v14, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    aput-object v1, v9, v7

    .line 126
    const/4 v1, 0x2

    .line 128
    const/high16 v10, 0x50000000

    move-object v6, v5

    move-object v11, v5

    .line 125
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v13

    .line 130
    .local v13, "target":Landroid/content/IIntentSender;
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    .line 131
    new-instance v1, Landroid/content/IntentSender;

    invoke-direct {v1, v13}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 130
    invoke-static {v0, v1}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(ILandroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 132
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    iput v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 133
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    iput v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 134
    iput-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    .line 137
    .local v12, "parent":Landroid/content/pm/UserInfo;
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v3, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 138
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 139
    return v14
.end method

.method private interceptSuspendPackageIfNeed()Z
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 144
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_d

    .line 146
    :cond_c
    return v4

    .line 145
    :cond_d
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    .line 149
    const-class v2, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 148
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 150
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManagerInternal;
    if-nez v0, :cond_23

    .line 151
    return v4

    .line 154
    :cond_23
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    .line 153
    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->createPackageSuspendedDialogIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 155
    iget v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    iput v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 156
    iget v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    iput v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 157
    iput-object v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 159
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 160
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_61

    .line 161
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 165
    :goto_51
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 166
    const/4 v2, 0x1

    return v2

    .line 163
    :cond_61
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_51
.end method

.method private interceptWithConfirmCredentialsIfNeeded(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 211
    const/4 v1, 0x0

    return-object v1

    .line 213
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 215
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v2, 0x1

    new-array v9, v2, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object p1, v9, v2

    .line 216
    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v10, v2

    .line 214
    const/4 v2, 0x2

    .line 215
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 217
    const/high16 v11, 0x54000000

    const/4 v12, 0x0

    move-object/from16 v3, p4

    move/from16 v5, p5

    .line 213
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v15

    .line 218
    .local v15, "target":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 219
    const-string/jumbo v2, "keyguard"

    .line 218
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/KeyguardManager;

    .line 220
    .local v13, "km":Landroid/app/KeyguardManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 v0, p5

    invoke-virtual {v13, v1, v2, v0}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v14

    .line 221
    .local v14, "newIntent":Landroid/content/Intent;
    if-nez v14, :cond_4e

    .line 222
    const/4 v1, 0x0

    return-object v1

    .line 224
    :cond_4e
    const v1, 0x10804000

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 226
    const-string/jumbo v1, "android.intent.extra.PACKAGE_NAME"

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string/jumbo v1, "android.intent.extra.INTENT"

    new-instance v2, Landroid/content/IntentSender;

    invoke-direct {v2, v15}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    return-object v14
.end method

.method private interceptWorkProfileChallengeIfNeeded()Z
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 170
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 171
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    move-object v0, p0

    .line 170
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStartInterceptor;->interceptWithConfirmCredentialsIfNeeded(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 172
    .local v7, "interceptingIntent":Landroid/content/Intent;
    if-nez v7, :cond_14

    .line 173
    const/4 v0, 0x0

    return v0

    .line 175
    :cond_14
    iput-object v7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 176
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    iput v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 177
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    iput v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 178
    iput-object v9, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_32

    .line 183
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.TASK_ID"

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    iput-object v9, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 186
    :cond_32
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-nez v0, :cond_3c

    .line 187
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 190
    :cond_3c
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 191
    .local v6, "homeActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_51

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_51

    .line 194
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    iget-object v1, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 197
    :cond_51
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 198
    .local v8, "parent":Landroid/content/pm/UserInfo;
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v3, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 199
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 200
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/am/TaskRecord;IILandroid/app/ActivityOptions;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p6, "callingPid"    # I
    .param p7, "callingUid"    # I
    .param p8, "activityOptions"    # Landroid/app/ActivityOptions;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    .line 99
    iput-object p1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 100
    iput p6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 101
    iput p7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 102
    iput-object p2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 103
    iput-object p3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 104
    iput-object p4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 105
    iput-object p5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 106
    iput-object p8, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 107
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptSuspendPackageIfNeed()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 110
    return-void

    .line 112
    :cond_21
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptQuietProfileIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 115
    return-void

    .line 117
    :cond_28
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptWorkProfileChallengeIfNeeded()Z

    .line 97
    return-void
.end method

.method setStates(IIIILjava/lang/String;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "realCallingPid"    # I
    .param p3, "realCallingUid"    # I
    .param p4, "startFlags"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 89
    iput p2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    .line 90
    iput p3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    .line 91
    iput p1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    .line 92
    iput p4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    .line 93
    iput-object p5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    .line 88
    return-void
.end method

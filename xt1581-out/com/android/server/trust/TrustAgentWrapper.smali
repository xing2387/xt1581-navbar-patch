.class public Lcom/android/server/trust/TrustAgentWrapper;
.super Ljava/lang/Object;
.source "TrustAgentWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/trust/TrustAgentWrapper$1;,
        Lcom/android/server/trust/TrustAgentWrapper$2;,
        Lcom/android/server/trust/TrustAgentWrapper$3;,
        Lcom/android/server/trust/TrustAgentWrapper$4;
    }
.end annotation


# static fields
.field private static final DATA_DURATION:Ljava/lang/String; = "duration"

.field private static final DEBUG:Z = false

.field private static final EXTRA_COMPONENT_NAME:Ljava/lang/String; = "componentName"

.field private static final MSG_GRANT_TRUST:I = 0x1

.field private static final MSG_MANAGING_TRUST:I = 0x6

.field private static final MSG_RESTART_TIMEOUT:I = 0x4

.field private static final MSG_REVOKE_TRUST:I = 0x2

.field private static final MSG_SET_TRUST_AGENT_FEATURES_COMPLETED:I = 0x5

.field private static final MSG_TRUST_TIMEOUT:I = 0x3

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.PROVIDE_TRUST_AGENT"

.field private static final RESTART_TIMEOUT_MILLIS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "TrustAgentWrapper"

.field private static final TRUST_EXPIRED_ACTION:Ljava/lang/String; = "android.server.trust.TRUST_EXPIRED_ACTION"


# instance fields
.field private final mAlarmIntent:Landroid/content/Intent;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmPendingIntent:Landroid/app/PendingIntent;

.field private mBound:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mManagingTrust:Z

.field private mMaximumTimeToLock:J

.field private mMessage:Ljava/lang/CharSequence;

.field private final mName:Landroid/content/ComponentName;

.field private mPendingSuccessfulUnlock:Z

.field private mScheduledRestartUptimeMillis:J

.field private mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

.field private mTrustAgentService:Landroid/service/trust/ITrustAgentService;

.field private mTrustDisabledByDpm:Z

.field private final mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

.field private mTrusted:Z

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/AlarmManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/trust/TrustAgentWrapper;)I
    .registers 2

    iget v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentServiceCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/trust/TrustAgentWrapper;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    return-wide v0
.end method

.method static synthetic -get9(Lcom/android/server/trust/TrustAgentWrapper;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/trust/TrustAgentWrapper;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2

    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/trust/TrustAgentWrapper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/trust/TrustAgentWrapper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/trust/TrustAgentWrapper;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentService;)Landroid/service/trust/ITrustAgentService;
    .registers 2

    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/server/trust/TrustAgentWrapper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/trust/TrustAgentWrapper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/trust/TrustAgentWrapper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/trust/TrustAgentWrapper;->onTrustTimeout()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/trust/TrustAgentWrapper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/trust/TrustAgentWrapper;->scheduleRestart()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentServiceCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/service/trust/ITrustAgentServiceCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trustManagerService"    # Lcom/android/server/trust/TrustManagerService;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    .line 96
    new-instance v3, Lcom/android/server/trust/TrustAgentWrapper$1;

    invoke-direct {v3, p0}, Lcom/android/server/trust/TrustAgentWrapper$1;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    new-instance v3, Lcom/android/server/trust/TrustAgentWrapper$2;

    invoke-direct {v3, p0}, Lcom/android/server/trust/TrustAgentWrapper$2;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    .line 202
    new-instance v3, Lcom/android/server/trust/TrustAgentWrapper$3;

    invoke-direct {v3, p0}, Lcom/android/server/trust/TrustAgentWrapper$3;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    .line 235
    new-instance v3, Lcom/android/server/trust/TrustAgentWrapper$4;

    invoke-direct {v3, p0}, Lcom/android/server/trust/TrustAgentWrapper$4;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    .line 274
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    .line 275
    iput-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 276
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 277
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iput v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 278
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 280
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.server.trust.TRUST_EXPIRED_ACTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "componentName"

    iget-object v5, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    .line 281
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    invoke-virtual {v4, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 282
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.server.trust.TRUST_EXPIRED_ACTION"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, "alarmFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 286
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    invoke-virtual {v3, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "pathUri":Ljava/lang/String;
    invoke-virtual {v0, v2, v6}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 290
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 291
    .local v1, "packageChangeFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string/jumbo v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 294
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 295
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    invoke-direct {p0}, Lcom/android/server/trust/TrustAgentWrapper;->scheduleRestart()V

    .line 301
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    .line 302
    const v4, 0x4000001

    .line 301
    invoke-virtual {p1, p3, v3, v4, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    .line 303
    iget-boolean v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    if-eqz v3, :cond_ca

    .line 304
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v5, "android.permission.PROVIDE_TRUST_AGENT"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 273
    :goto_c9
    return-void

    .line 306
    :cond_ca
    const-string/jumbo v3, "TrustAgentWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t bind to TrustAgent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c9
.end method

.method private onError(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 311
    const-string/jumbo v0, "TrustAgentWrapper"

    const-string/jumbo v1, "Remote Exception"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    return-void
.end method

.method private onTrustTimeout()V
    .registers 3

    .prologue
    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v1}, Landroid/service/trust/ITrustAgentService;->onTrustTimeout()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 314
    :cond_9
    :goto_9
    return-void

    .line 317
    :catch_a
    move-exception v0

    .line 318
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    goto :goto_9
.end method

.method private scheduleRestart()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    .line 462
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 463
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    .line 464
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 461
    return-void
.end method

.method private setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/service/trust/ITrustAgentServiceCallback;

    .prologue
    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_9

    .line 362
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v1, p1}, Landroid/service/trust/ITrustAgentService;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 359
    :cond_9
    :goto_9
    return-void

    .line 364
    :catch_a
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    goto :goto_9
.end method


# virtual methods
.method public destroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 429
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 431
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    if-nez v0, :cond_c

    .line 432
    return-void

    .line 435
    :cond_c
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustArchive;->logAgentStopped(ILandroid/content/ComponentName;)V

    .line 436
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    .line 438
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 439
    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 440
    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    .line 441
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 428
    return-void
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getScheduledRestartUptimeMillis()J
    .registers 3

    .prologue
    .line 458
    iget-wide v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    return-wide v0
.end method

.method public isBound()Z
    .registers 2

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isManagingTrust()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 421
    iget-boolean v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isTrusted()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 417
    iget-boolean v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public onDeviceLocked()V
    .registers 3

    .prologue
    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v1}, Landroid/service/trust/ITrustAgentService;->onDeviceLocked()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 340
    :cond_9
    :goto_9
    return-void

    .line 343
    :catch_a
    move-exception v0

    .line 344
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    goto :goto_9
.end method

.method public onDeviceUnlocked()V
    .registers 3

    .prologue
    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v1}, Landroid/service/trust/ITrustAgentService;->onDeviceUnlocked()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 351
    :cond_9
    :goto_9
    return-void

    .line 354
    :catch_a
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    goto :goto_9
.end method

.method public onUnlockAttempt(Z)V
    .registers 4
    .param p1, "successful"    # Z

    .prologue
    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_a

    .line 328
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v1, p1}, Landroid/service/trust/ITrustAgentService;->onUnlockAttempt(Z)V

    .line 325
    :goto_9
    return-void

    .line 330
    :cond_a
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_9

    .line 332
    :catch_d
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    goto :goto_9
.end method

.method updateDevicePolicyFeatures()Z
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 370
    const/4 v3, 0x0

    .line 373
    .local v3, "trustDisabled":Z
    :try_start_2
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v6, :cond_5e

    .line 375
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 377
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v6}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_6c

    .line 380
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    iget v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    const/4 v8, 0x0

    .line 379
    invoke-virtual {v1, v8, v6, v7}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    .line 381
    .local v0, "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    const/4 v3, 0x1

    .line 383
    if-eqz v0, :cond_3c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3c

    .line 388
    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    iput-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    .line 389
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    iget-object v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    invoke-interface {v6, v0, v7}, Landroid/service/trust/ITrustAgentService;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V

    .line 394
    .end local v0    # "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_3c
    :goto_3c
    iget v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLockForUserAndProfiles(I)J

    move-result-wide v4

    .line 395
    .local v4, "maxTimeToLock":J
    iget-wide v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    cmp-long v6, v4, v6

    if-eqz v6, :cond_5e

    .line 398
    iput-wide v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    .line 399
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_5e

    .line 400
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 401
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 402
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5e} :catch_75

    .line 409
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "maxTimeToLock":J
    :cond_5e
    :goto_5e
    iget-boolean v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-eq v6, v3, :cond_6b

    .line 410
    iput-boolean v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    .line 411
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v6, v7, v9}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 413
    :cond_6b
    return v3

    .line 392
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_6c
    :try_start_6c
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/service/trust/ITrustAgentService;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_74} :catch_75

    goto :goto_3c

    .line 406
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catch_75
    move-exception v2

    .line 407
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    goto :goto_5e
.end method

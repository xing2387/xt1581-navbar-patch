.class final Lcom/android/server/dreams/DreamController;
.super Ljava/lang/Object;
.source "DreamController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/dreams/DreamController$1;,
        Lcom/android/server/dreams/DreamController$2;,
        Lcom/android/server/dreams/DreamController$DreamRecord;,
        Lcom/android/server/dreams/DreamController$Listener;
    }
.end annotation


# static fields
.field private static final DREAM_CONNECTION_TIMEOUT:I = 0x1388

.field private static final DREAM_FINISH_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DreamController"


# instance fields
.field private final mCloseNotificationShadeIntent:Landroid/content/Intent;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

.field private mDreamStartTime:J

.field private final mDreamingStartedIntent:Landroid/content/Intent;

.field private final mDreamingStoppedIntent:Landroid/content/Intent;

.field private final mHandler:Landroid/os/Handler;

.field private final mIWindowManager:Landroid/view/IWindowManager;

.field private final mListener:Lcom/android/server/dreams/DreamController$Listener;

.field private final mStopStubbornDreamRunnable:Ljava/lang/Runnable;

.field private final mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;
    .registers 2

    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$Listener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mListener:Lcom/android/server/dreams/DreamController$Listener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/dreams/DreamController;Landroid/service/dreams/IDreamService;)V
    .registers 2
    .param p1, "service"    # Landroid/service/dreams/IDreamService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamController;->attach(Landroid/service/dreams/IDreamService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/dreams/DreamController$Listener;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/dreams/DreamController$Listener;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DREAMING_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mDreamingStartedIntent:Landroid/content/Intent;

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DREAMING_STOPPED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mDreamingStoppedIntent:Landroid/content/Intent;

    .line 73
    new-instance v0, Lcom/android/server/dreams/DreamController$1;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$1;-><init>(Lcom/android/server/dreams/DreamController;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    .line 83
    new-instance v0, Lcom/android/server/dreams/DreamController$2;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$2;-><init>(Lcom/android/server/dreams/DreamController;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    .line 92
    iput-object p1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    .line 94
    iput-object p3, p0, Lcom/android/server/dreams/DreamController;->mListener:Lcom/android/server/dreams/DreamController$Listener;

    .line 95
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mIWindowManager:Landroid/view/IWindowManager;

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;

    .line 97
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;

    const-string/jumbo v1, "reason"

    const-string/jumbo v2, "dream"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    return-void
.end method

.method private attach(Landroid/service/dreams/IDreamService;)V
    .registers 7
    .param p1, "service"    # Landroid/service/dreams/IDreamService;

    .prologue
    const/4 v4, 0x1

    .line 253
    :try_start_1
    invoke-interface {p1}, Landroid/service/dreams/IDreamService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 254
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v2, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    invoke-interface {p1, v1, v2}, Landroid/service/dreams/IDreamService;->attach(Landroid/os/IBinder;Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_2e

    .line 261
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-object p1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 263
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsTest:Z

    if-nez v1, :cond_2d

    .line 264
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mDreamingStartedIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 265
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-boolean v4, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mSentStartBroadcast:Z

    .line 251
    :cond_2d
    return-void

    .line 255
    :catch_2e
    move-exception v0

    .line 256
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DreamController"

    const-string/jumbo v2, "The dream service died unexpectedly."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    invoke-virtual {p0, v4}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V

    .line 258
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 101
    const-string/jumbo v0, "Dreamland:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-eqz v0, :cond_104

    .line 103
    const-string/jumbo v0, "  mCurrentDream:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mIsTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsTest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mCanDoze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mSentStartBroadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mSentStartBroadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mWakingGently="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    :goto_103
    return-void

    .line 114
    :cond_104
    const-string/jumbo v0, "  mCurrentDream: null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_103
.end method

.method public startDream(Landroid/os/Binder;Landroid/content/ComponentName;ZZI)V
    .registers 16
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "isTest"    # Z
    .param p4, "canDoze"    # Z
    .param p5, "userId"    # I

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V

    .line 122
    const-string/jumbo v0, "startDream"

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 125
    :try_start_d
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 127
    const-string/jumbo v0, "DreamController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Starting dream: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    const-string/jumbo v2, ", isTest="

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    const-string/jumbo v2, ", canDoze="

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    const-string/jumbo v2, ", userId="

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/dreams/DreamController$DreamRecord;-><init>(Lcom/android/server/dreams/DreamController;Landroid/os/Binder;Landroid/content/ComponentName;ZZI)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/dreams/DreamController;->mDreamStartTime:J

    .line 134
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 135
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    if-eqz v0, :cond_bf

    const/16 v0, 0xdf

    .line 134
    :goto_6e
    invoke-static {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V
    :try_end_71
    .catchall {:try_start_d .. :try_end_71} :catchall_112

    .line 138
    :try_start_71
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mIWindowManager:Landroid/view/IWindowManager;

    const/16 v1, 0x7e7

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_78} :catch_c2
    .catchall {:try_start_71 .. :try_end_78} :catchall_112

    .line 145
    :try_start_78
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "android.service.dreams.DreamService"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 147
    const/high16 v0, 0x800000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_88
    .catchall {:try_start_78 .. :try_end_88} :catchall_112

    .line 149
    :try_start_88
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 151
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p5}, Landroid/os/UserHandle;-><init>(I)V

    .line 150
    const v3, 0x4000001

    .line 149
    invoke-virtual {v0, v9, v1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_fd

    .line 152
    const-string/jumbo v0, "DreamController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to bind dream service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V
    :try_end_b8
    .catch Ljava/lang/SecurityException; {:try_start_88 .. :try_end_b8} :catch_d7
    .catchall {:try_start_88 .. :try_end_b8} :catchall_112

    .line 165
    const-wide/32 v0, 0x20000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 154
    return-void

    .line 135
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_bf
    const/16 v0, 0xde

    goto :goto_6e

    .line 139
    :catch_c2
    move-exception v7

    .line 140
    .local v7, "ex":Landroid/os/RemoteException;
    :try_start_c3
    const-string/jumbo v0, "DreamController"

    const-string/jumbo v1, "Unable to add window token for dream."

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V
    :try_end_d0
    .catchall {:try_start_c3 .. :try_end_d0} :catchall_112

    .line 165
    const-wide/32 v0, 0x20000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 142
    return-void

    .line 156
    .end local v7    # "ex":Landroid/os/RemoteException;
    .restart local v9    # "intent":Landroid/content/Intent;
    :catch_d7
    move-exception v8

    .line 157
    .local v8, "ex":Ljava/lang/SecurityException;
    :try_start_d8
    const-string/jumbo v0, "DreamController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to bind dream service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V
    :try_end_f6
    .catchall {:try_start_d8 .. :try_end_f6} :catchall_112

    .line 165
    const-wide/32 v0, 0x20000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 159
    return-void

    .line 162
    .end local v8    # "ex":Ljava/lang/SecurityException;
    :cond_fd
    :try_start_fd
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    .line 163
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_10b
    .catchall {:try_start_fd .. :try_end_10b} :catchall_112

    .line 165
    const-wide/32 v0, 0x20000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 119
    return-void

    .line 164
    .end local v9    # "intent":Landroid/content/Intent;
    :catchall_112
    move-exception v0

    .line 165
    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 164
    throw v0
.end method

.method public stopDream(Z)V
    .registers 14
    .param p1, "immediate"    # Z

    .prologue
    const-wide/32 v10, 0x20000

    .line 170
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-nez v3, :cond_8

    .line 171
    return-void

    .line 174
    :cond_8
    const-string/jumbo v3, "stopDream"

    invoke-static {v10, v11, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 176
    if-nez p1, :cond_3a

    .line 177
    :try_start_10
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v3, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_106

    if-eqz v3, :cond_1a

    .line 247
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 178
    return-void

    .line 181
    :cond_1a
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v3, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    if-eqz v3, :cond_3a

    .line 183
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_106

    .line 185
    :try_start_25
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v3, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-interface {v3}, Landroid/service/dreams/IDreamService;->wakeUp()V

    .line 186
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_35} :catch_39
    .catchall {:try_start_25 .. :try_end_35} :catchall_106

    .line 247
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 187
    return-void

    .line 188
    :catch_39
    move-exception v0

    .line 194
    :cond_3a
    :try_start_3a
    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 195
    .local v2, "oldDream":Lcom/android/server/dreams/DreamController$DreamRecord;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 196
    const-string/jumbo v3, "DreamController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Stopping dream: name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 197
    const-string/jumbo v5, ", isTest="

    .line 196
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 197
    iget-boolean v5, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsTest:Z

    .line 196
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 197
    const-string/jumbo v5, ", canDoze="

    .line 196
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 197
    iget-boolean v5, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    .line 196
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 198
    const-string/jumbo v5, ", userId="

    .line 196
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 198
    iget v5, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    .line 196
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 200
    iget-boolean v3, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    if-eqz v3, :cond_f4

    const/16 v3, 0xdf

    .line 199
    :goto_8a
    invoke-static {v4, v3}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 201
    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 202
    iget-boolean v3, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    if-eqz v3, :cond_f7

    const-string/jumbo v3, "dozing_minutes"

    .line 203
    :goto_96
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/dreams/DreamController;->mDreamStartTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    long-to-int v5, v6

    .line 201
    invoke-static {v4, v3, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 205
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    iget-boolean v3, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mSentStartBroadcast:Z

    if-eqz v3, :cond_c0

    .line 209
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mDreamingStoppedIntent:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 212
    :cond_c0
    iget-object v3, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;
    :try_end_c2
    .catchall {:try_start_3a .. :try_end_c2} :catchall_106

    if-eqz v3, :cond_d6

    .line 217
    :try_start_c4
    iget-object v3, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-interface {v3}, Landroid/service/dreams/IDreamService;->detach()V
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_c9} :catch_10d
    .catchall {:try_start_c4 .. :try_end_c9} :catchall_106

    .line 223
    :goto_c9
    :try_start_c9
    iget-object v3, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-interface {v3}, Landroid/service/dreams/IDreamService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_d3
    .catch Ljava/util/NoSuchElementException; {:try_start_c9 .. :try_end_d3} :catch_10b
    .catchall {:try_start_c9 .. :try_end_d3} :catchall_106

    .line 227
    :goto_d3
    const/4 v3, 0x0

    :try_start_d4
    iput-object v3, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 230
    :cond_d6
    iget-boolean v3, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    if-eqz v3, :cond_df

    .line 231
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_df
    .catchall {:try_start_d4 .. :try_end_df} :catchall_106

    .line 235
    :cond_df
    :try_start_df
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v4, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_e6
    .catch Landroid/os/RemoteException; {:try_start_df .. :try_end_e6} :catch_fb
    .catchall {:try_start_df .. :try_end_e6} :catchall_106

    .line 240
    :goto_e6
    :try_start_e6
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/dreams/DreamController$3;

    invoke-direct {v4, p0, v2}, Lcom/android/server/dreams/DreamController$3;-><init>(Lcom/android/server/dreams/DreamController;Lcom/android/server/dreams/DreamController$DreamRecord;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_f0
    .catchall {:try_start_e6 .. :try_end_f0} :catchall_106

    .line 247
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 169
    return-void

    .line 200
    :cond_f4
    const/16 v3, 0xde

    goto :goto_8a

    .line 202
    :cond_f7
    :try_start_f7
    const-string/jumbo v3, "dreaming_minutes"

    goto :goto_96

    .line 236
    :catch_fb
    move-exception v0

    .line 237
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "DreamController"

    const-string/jumbo v4, "Error removing window token for dream."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_105
    .catchall {:try_start_f7 .. :try_end_105} :catchall_106

    goto :goto_e6

    .line 246
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "oldDream":Lcom/android/server/dreams/DreamController$DreamRecord;
    :catchall_106
    move-exception v3

    .line 247
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 246
    throw v3

    .line 224
    .restart local v2    # "oldDream":Lcom/android/server/dreams/DreamController$DreamRecord;
    :catch_10b
    move-exception v1

    .local v1, "ex":Ljava/util/NoSuchElementException;
    goto :goto_d3

    .line 218
    .end local v1    # "ex":Ljava/util/NoSuchElementException;
    :catch_10d
    move-exception v0

    .restart local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_c9
.end method
